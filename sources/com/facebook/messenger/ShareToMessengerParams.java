package com.facebook.messenger;

import android.net.Uri;
import com.facebook.gamingservices.internal.TournamentShareDialogURIBuilder;
import com.facebook.share.internal.ShareConstants;
import com.facebook.share.internal.ShareInternalUtility;
import i9.t;
import java.util.HashSet;
import java.util.Set;
import t9.g;
import t9.m;

/* JADX INFO: compiled from: ShareToMessengerParams.kt */
/* JADX INFO: loaded from: classes.dex */
public final class ShareToMessengerParams {
    public static final Companion Companion = new Companion(null);
    private static final Set<String> VALID_EXTERNAL_URI_SCHEMES;
    private static final Set<String> VALID_MIME_TYPES;
    private static final Set<String> VALID_URI_SCHEMES;
    private final Uri externalUri;
    private final String metaData;
    private final String mimeType;
    private final Uri uri;

    /* JADX INFO: compiled from: ShareToMessengerParams.kt */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(g gVar) {
            this();
        }

        public final Set<String> getVALID_EXTERNAL_URI_SCHEMES() {
            return ShareToMessengerParams.VALID_EXTERNAL_URI_SCHEMES;
        }

        public final Set<String> getVALID_MIME_TYPES() {
            return ShareToMessengerParams.VALID_MIME_TYPES;
        }

        public final Set<String> getVALID_URI_SCHEMES() {
            return ShareToMessengerParams.VALID_URI_SCHEMES;
        }

        public final ShareToMessengerParamsBuilder newBuilder(Uri uri, String str) {
            m.e(uri, ShareConstants.MEDIA_URI);
            m.e(str, "mimeType");
            return new ShareToMessengerParamsBuilder(uri, str);
        }
    }

    static {
        HashSet hashSet = new HashSet();
        hashSet.add("image/*");
        hashSet.add("image/jpeg");
        hashSet.add("image/png");
        hashSet.add("image/gif");
        hashSet.add("image/webp");
        hashSet.add("video/*");
        hashSet.add("video/mp4");
        hashSet.add("audio/*");
        hashSet.add("audio/mpeg");
        VALID_MIME_TYPES = t.S(hashSet);
        HashSet hashSet2 = new HashSet();
        hashSet2.add("content");
        hashSet2.add("android.resource");
        hashSet2.add(ShareInternalUtility.STAGING_PARAM);
        VALID_URI_SCHEMES = t.S(hashSet2);
        HashSet hashSet3 = new HashSet();
        hashSet3.add("http");
        hashSet3.add(TournamentShareDialogURIBuilder.scheme);
        VALID_EXTERNAL_URI_SCHEMES = t.S(hashSet3);
    }

    public ShareToMessengerParams(ShareToMessengerParamsBuilder shareToMessengerParamsBuilder) {
        m.e(shareToMessengerParamsBuilder, "builder");
        Uri uri = shareToMessengerParamsBuilder.getUri();
        if (uri == null) {
            throw new IllegalStateException("Must provide non-null uri".toString());
        }
        this.uri = uri;
        String mimeType = shareToMessengerParamsBuilder.getMimeType();
        if (mimeType == null) {
            throw new IllegalStateException("Must provide mimeType".toString());
        }
        this.mimeType = mimeType;
        this.metaData = shareToMessengerParamsBuilder.getMetaData();
        Uri externalUri = shareToMessengerParamsBuilder.getExternalUri();
        this.externalUri = externalUri;
        if (!t.p(VALID_URI_SCHEMES, uri.getScheme())) {
            throw new IllegalArgumentException(m.k("Unsupported URI scheme: ", getUri().getScheme()).toString());
        }
        if (!VALID_MIME_TYPES.contains(mimeType)) {
            throw new IllegalArgumentException(m.k("Unsupported mime-type: ", getMimeType()).toString());
        }
        if (externalUri != null && !t.p(VALID_EXTERNAL_URI_SCHEMES, externalUri.getScheme())) {
            throw new IllegalArgumentException(m.k("Unsupported external uri scheme: ", getExternalUri().getScheme()).toString());
        }
    }

    public static final ShareToMessengerParamsBuilder newBuilder(Uri uri, String str) {
        return Companion.newBuilder(uri, str);
    }

    public final Uri getExternalUri() {
        return this.externalUri;
    }

    public final String getMetaData() {
        return this.metaData;
    }

    public final String getMimeType() {
        return this.mimeType;
    }

    public final Uri getUri() {
        return this.uri;
    }
}
