package com.facebook.internal;

import android.graphics.Bitmap;
import android.net.Uri;
import android.util.Log;
import com.facebook.FacebookContentProvider;
import com.facebook.FacebookException;
import com.facebook.FacebookSdk;
import com.facebook.share.internal.ShareConstants;
import com.facebook.share.internal.ShareInternalUtility;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.Collection;
import java.util.UUID;

/* JADX INFO: compiled from: NativeAppCallAttachmentStore.kt */
/* JADX INFO: loaded from: classes.dex */
public final class NativeAppCallAttachmentStore {
    public static final String ATTACHMENTS_DIR_NAME = "com.facebook.NativeAppCallAttachmentStore.files";
    public static final NativeAppCallAttachmentStore INSTANCE = new NativeAppCallAttachmentStore();
    private static final String TAG = NativeAppCallAttachmentStore.class.getName();
    private static File attachmentsDirectory;

    /* JADX INFO: compiled from: NativeAppCallAttachmentStore.kt */
    public static final class Attachment {
        private final String attachmentName;
        private final String attachmentUrl;
        private final Bitmap bitmap;
        private final UUID callId;
        private boolean isContentUri;
        private final Uri originalUri;
        private boolean shouldCreateFile;

        public Attachment(UUID uuid, Bitmap bitmap, Uri uri) {
            String attachmentUrl;
            t9.m.e(uuid, "callId");
            this.callId = uuid;
            this.bitmap = bitmap;
            this.originalUri = uri;
            if (uri != null) {
                String scheme = uri.getScheme();
                if (ba.p.m("content", scheme, true)) {
                    this.isContentUri = true;
                    String authority = uri.getAuthority();
                    this.shouldCreateFile = (authority == null || ba.p.u(authority, ShareConstants.WEB_DIALOG_PARAM_MEDIA, false, 2, null)) ? false : true;
                } else if (ba.p.m(ShareInternalUtility.STAGING_PARAM, uri.getScheme(), true)) {
                    this.shouldCreateFile = true;
                } else {
                    Utility utility = Utility.INSTANCE;
                    if (!Utility.isWebUri(uri)) {
                        throw new FacebookException(t9.m.k("Unsupported scheme for media Uri : ", scheme));
                    }
                }
            } else {
                if (bitmap == null) {
                    throw new FacebookException("Cannot share media without a bitmap or Uri set");
                }
                this.shouldCreateFile = true;
            }
            String string = this.shouldCreateFile ? UUID.randomUUID().toString() : null;
            this.attachmentName = string;
            if (this.shouldCreateFile) {
                FacebookContentProvider.Companion companion = FacebookContentProvider.Companion;
                FacebookSdk facebookSdk = FacebookSdk.INSTANCE;
                attachmentUrl = companion.getAttachmentUrl(FacebookSdk.getApplicationId(), uuid, string);
            } else {
                attachmentUrl = String.valueOf(uri);
            }
            this.attachmentUrl = attachmentUrl;
        }

        public final String getAttachmentName() {
            return this.attachmentName;
        }

        public final String getAttachmentUrl() {
            return this.attachmentUrl;
        }

        public final Bitmap getBitmap() {
            return this.bitmap;
        }

        public final UUID getCallId() {
            return this.callId;
        }

        public final Uri getOriginalUri() {
            return this.originalUri;
        }

        public final boolean getShouldCreateFile() {
            return this.shouldCreateFile;
        }

        public final boolean isContentUri() {
            return this.isContentUri;
        }

        public final void setContentUri(boolean z10) {
            this.isContentUri = z10;
        }

        public final void setShouldCreateFile(boolean z10) {
            this.shouldCreateFile = z10;
        }
    }

    private NativeAppCallAttachmentStore() {
    }

    public static final void addAttachments(Collection<Attachment> collection) throws FacebookException {
        if (collection == null || collection.isEmpty()) {
            return;
        }
        if (attachmentsDirectory == null) {
            cleanupAllAttachments();
        }
        ensureAttachmentsDirectoryExists();
        ArrayList<File> arrayList = new ArrayList();
        try {
            for (Attachment attachment : collection) {
                if (attachment.getShouldCreateFile()) {
                    NativeAppCallAttachmentStore nativeAppCallAttachmentStore = INSTANCE;
                    File attachmentFile = getAttachmentFile(attachment.getCallId(), attachment.getAttachmentName(), true);
                    if (attachmentFile != null) {
                        arrayList.add(attachmentFile);
                        if (attachment.getBitmap() != null) {
                            nativeAppCallAttachmentStore.processAttachmentBitmap(attachment.getBitmap(), attachmentFile);
                        } else if (attachment.getOriginalUri() != null) {
                            nativeAppCallAttachmentStore.processAttachmentFile(attachment.getOriginalUri(), attachment.isContentUri(), attachmentFile);
                        }
                    }
                }
            }
        } catch (IOException e10) {
            Log.e(TAG, t9.m.k("Got unexpected exception:", e10));
            for (File file : arrayList) {
                if (file != null) {
                    try {
                        file.delete();
                    } catch (Exception unused) {
                    }
                }
            }
            throw new FacebookException(e10);
        }
    }

    public static final void cleanupAllAttachments() {
        File attachmentsDirectory2 = getAttachmentsDirectory();
        if (attachmentsDirectory2 == null) {
            return;
        }
        q9.k.c(attachmentsDirectory2);
    }

    public static final void cleanupAttachmentsForCall(UUID uuid) {
        t9.m.e(uuid, "callId");
        File attachmentsDirectoryForCall = getAttachmentsDirectoryForCall(uuid, false);
        if (attachmentsDirectoryForCall == null) {
            return;
        }
        q9.k.c(attachmentsDirectoryForCall);
    }

    public static final Attachment createAttachment(UUID uuid, Bitmap bitmap) {
        t9.m.e(uuid, "callId");
        t9.m.e(bitmap, "attachmentBitmap");
        return new Attachment(uuid, bitmap, null);
    }

    public static final File ensureAttachmentsDirectoryExists() {
        File attachmentsDirectory2 = getAttachmentsDirectory();
        if (attachmentsDirectory2 != null) {
            attachmentsDirectory2.mkdirs();
        }
        return attachmentsDirectory2;
    }

    public static final File getAttachmentFile(UUID uuid, String str, boolean z10) throws IOException {
        t9.m.e(uuid, "callId");
        File attachmentsDirectoryForCall = getAttachmentsDirectoryForCall(uuid, z10);
        if (attachmentsDirectoryForCall == null) {
            return null;
        }
        try {
            return new File(attachmentsDirectoryForCall, URLEncoder.encode(str, "UTF-8"));
        } catch (UnsupportedEncodingException unused) {
            return null;
        }
    }

    public static final synchronized File getAttachmentsDirectory() {
        if (attachmentsDirectory == null) {
            FacebookSdk facebookSdk = FacebookSdk.INSTANCE;
            attachmentsDirectory = new File(FacebookSdk.getApplicationContext().getCacheDir(), ATTACHMENTS_DIR_NAME);
        }
        return attachmentsDirectory;
    }

    public static final File getAttachmentsDirectoryForCall(UUID uuid, boolean z10) {
        t9.m.e(uuid, "callId");
        if (attachmentsDirectory == null) {
            return null;
        }
        File file = new File(attachmentsDirectory, uuid.toString());
        if (z10 && !file.exists()) {
            file.mkdirs();
        }
        return file;
    }

    public static final File openAttachment(UUID uuid, String str) throws FileNotFoundException {
        Utility utility = Utility.INSTANCE;
        if (Utility.isNullOrEmpty(str) || uuid == null) {
            throw new FileNotFoundException();
        }
        try {
            return getAttachmentFile(uuid, str, false);
        } catch (IOException unused) {
            throw new FileNotFoundException();
        }
    }

    private final void processAttachmentBitmap(Bitmap bitmap, File file) throws IOException {
        FileOutputStream fileOutputStream = new FileOutputStream(file);
        try {
            bitmap.compress(Bitmap.CompressFormat.JPEG, 100, fileOutputStream);
        } finally {
            Utility utility = Utility.INSTANCE;
            Utility.closeQuietly(fileOutputStream);
        }
    }

    private final void processAttachmentFile(Uri uri, boolean z10, File file) throws IOException {
        InputStream inputStreamOpenInputStream;
        FileOutputStream fileOutputStream = new FileOutputStream(file);
        try {
            if (z10) {
                FacebookSdk facebookSdk = FacebookSdk.INSTANCE;
                inputStreamOpenInputStream = FacebookSdk.getApplicationContext().getContentResolver().openInputStream(uri);
            } else {
                inputStreamOpenInputStream = new FileInputStream(uri.getPath());
            }
            Utility utility = Utility.INSTANCE;
            Utility.copyAndCloseInputStream(inputStreamOpenInputStream, fileOutputStream);
            Utility.closeQuietly(fileOutputStream);
        } catch (Throwable th) {
            Utility utility2 = Utility.INSTANCE;
            Utility.closeQuietly(fileOutputStream);
            throw th;
        }
    }

    public static final Attachment createAttachment(UUID uuid, Uri uri) {
        t9.m.e(uuid, "callId");
        t9.m.e(uri, "attachmentUri");
        return new Attachment(uuid, null, uri);
    }
}
