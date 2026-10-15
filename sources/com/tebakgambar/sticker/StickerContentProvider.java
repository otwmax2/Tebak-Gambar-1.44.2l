package com.tebakgambar.sticker;

import android.content.ContentProvider;
import android.content.ContentValues;
import android.content.Context;
import android.content.UriMatcher;
import android.content.res.AssetFileDescriptor;
import android.database.Cursor;
import android.database.MatrixCursor;
import android.net.Uri;
import android.os.Bundle;
import android.os.ParcelFileDescriptor;
import android.text.TextUtils;
import com.tebakgambar.database.StickerPackDatabase;
import com.tebakgambar.sticker.model.Sticker;
import com.tebakgambar.sticker.model.StickerPack;
import java.io.File;
import java.io.FileNotFoundException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;

/* JADX INFO: loaded from: classes2.dex */
public class StickerContentProvider extends ContentProvider {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public static Uri f27199o = new Uri.Builder().scheme("content").authority("com.tebakgambar.stickercontentprovider").appendPath("metadata").build();

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private static final UriMatcher f27200p = new UriMatcher(-1);

    private Cursor a(Uri uri) {
        String lastPathSegment = uri.getLastPathSegment();
        for (StickerPack stickerPack : f()) {
            if (lastPathSegment.equals(stickerPack.identifier)) {
                return e(uri, Collections.singletonList(stickerPack));
            }
        }
        return e(uri, new ArrayList());
    }

    private AssetFileDescriptor b(String str, String str2) throws FileNotFoundException {
        File fileN = y8.h.n(getContext(), str2 + "/" + str);
        return new AssetFileDescriptor(ParcelFileDescriptor.open(fileN, 268435456), 0L, fileN.length());
    }

    private AssetFileDescriptor c(Uri uri) throws IllegalArgumentException, FileNotFoundException {
        List<String> pathSegments = uri.getPathSegments();
        if (pathSegments.size() != 3) {
            throw new IllegalArgumentException("path segments should be 3, uri is: " + uri);
        }
        String str = pathSegments.get(pathSegments.size() - 1);
        String str2 = pathSegments.get(pathSegments.size() - 2);
        if (TextUtils.isEmpty(str2)) {
            throw new IllegalArgumentException("identifier is empty, uri: " + uri);
        }
        if (TextUtils.isEmpty(str)) {
            throw new IllegalArgumentException("file name is empty, uri: " + uri);
        }
        for (StickerPack stickerPack : f()) {
            if (str2.equals(stickerPack.identifier)) {
                if (str.equals(stickerPack.trayImageName)) {
                    return b(str, str2);
                }
                Iterator<Sticker> it = stickerPack.stickers.iterator();
                while (it.hasNext()) {
                    if (str.equals(it.next().imageName)) {
                        return b(str, str2);
                    }
                }
            }
        }
        return null;
    }

    private Cursor d(Uri uri) {
        return e(uri, f());
    }

    private Cursor e(Uri uri, List<StickerPack> list) {
        MatrixCursor matrixCursor = new MatrixCursor(new String[]{"sticker_pack_identifier", "sticker_pack_name", "sticker_pack_publisher", "sticker_pack_icon", "android_play_store_link", "ios_app_download_link", "sticker_pack_publisher_email", "sticker_pack_publisher_website", "sticker_pack_privacy_policy_website", "sticker_pack_license_agreement_website"});
        for (StickerPack stickerPack : list) {
            MatrixCursor.RowBuilder rowBuilderNewRow = matrixCursor.newRow();
            rowBuilderNewRow.add(stickerPack.identifier);
            rowBuilderNewRow.add(stickerPack.name);
            rowBuilderNewRow.add(stickerPack.publisher);
            rowBuilderNewRow.add(stickerPack.trayImageName);
            rowBuilderNewRow.add(stickerPack.androidPlayStoreLink);
            rowBuilderNewRow.add(stickerPack.iosAppStoreLink);
            rowBuilderNewRow.add("maintebakgambar@gmail.com");
            rowBuilderNewRow.add(stickerPack.publisherWebsite);
            rowBuilderNewRow.add(stickerPack.privacyPolicyWebsite);
            rowBuilderNewRow.add(stickerPack.licenseAgreementWebsite);
        }
        Context context = getContext();
        Objects.requireNonNull(context);
        matrixCursor.setNotificationUri(context.getContentResolver(), uri);
        return matrixCursor;
    }

    private Cursor g(Uri uri) {
        String lastPathSegment = uri.getLastPathSegment();
        MatrixCursor matrixCursor = new MatrixCursor(new String[]{"sticker_file_name", "sticker_emoji"});
        for (StickerPack stickerPack : f()) {
            if (lastPathSegment.equals(stickerPack.identifier)) {
                for (Sticker sticker : stickerPack.stickers) {
                    matrixCursor.addRow(new Object[]{sticker.imageName, TextUtils.join(",", sticker.emojis)});
                }
            }
        }
        Context context = getContext();
        Objects.requireNonNull(context);
        matrixCursor.setNotificationUri(context.getContentResolver(), uri);
        return matrixCursor;
    }

    private void h() {
        for (StickerPack stickerPack : f()) {
            f27200p.addURI("com.tebakgambar.stickercontentprovider", "stickers_asset/" + stickerPack.identifier + "/" + stickerPack.trayImageName, 5);
            for (Sticker sticker : stickerPack.stickers) {
                f27200p.addURI("com.tebakgambar.stickercontentprovider", "stickers_asset/" + stickerPack.identifier + "/" + sticker.imageName, 4);
            }
        }
    }

    public static void i(Context context) {
        context.getContentResolver().call(f27199o, "refreshMatcher", (String) null, (Bundle) null);
    }

    @Override // android.content.ContentProvider
    public Bundle call(String str, String str2, Bundle bundle) {
        if (str.equals("refreshMatcher")) {
            h();
        }
        return super.call(str, str2, bundle);
    }

    @Override // android.content.ContentProvider
    public int delete(Uri uri, String str, String[] strArr) {
        throw new UnsupportedOperationException("Not supported");
    }

    public List<StickerPack> f() {
        return StickerPackDatabase.C(getContext()).D().a();
    }

    @Override // android.content.ContentProvider
    public String getType(Uri uri) {
        int iMatch = f27200p.match(uri);
        if (iMatch == 1) {
            return "vnd.android.cursor.dir/vnd.com.tebakgambar.stickercontentprovider.metadata";
        }
        if (iMatch == 2) {
            return "vnd.android.cursor.item/vnd.com.tebakgambar.stickercontentprovider.metadata";
        }
        if (iMatch == 3) {
            return "vnd.android.cursor.dir/vnd.com.tebakgambar.stickercontentprovider.stickers";
        }
        if (iMatch == 4) {
            return "image/webp";
        }
        if (iMatch == 5) {
            return "image/png";
        }
        throw new IllegalArgumentException("Unknown URI: " + uri);
    }

    @Override // android.content.ContentProvider
    public Uri insert(Uri uri, ContentValues contentValues) {
        throw new UnsupportedOperationException("Not supported");
    }

    @Override // android.content.ContentProvider
    public boolean onCreate() {
        Context context = getContext();
        Objects.requireNonNull(context);
        if (!"com.tebakgambar.stickercontentprovider".startsWith(context.getPackageName())) {
            throw new IllegalStateException("your authority (com.tebakgambar.stickercontentprovider) for the content provider should start with your package name: " + getContext().getPackageName());
        }
        UriMatcher uriMatcher = f27200p;
        uriMatcher.addURI("com.tebakgambar.stickercontentprovider", "metadata", 1);
        uriMatcher.addURI("com.tebakgambar.stickercontentprovider", "metadata/*", 2);
        uriMatcher.addURI("com.tebakgambar.stickercontentprovider", "stickers/*", 3);
        h();
        return true;
    }

    @Override // android.content.ContentProvider
    public AssetFileDescriptor openAssetFile(Uri uri, String str) {
        int iMatch = f27200p.match(uri);
        if (iMatch != 4 && iMatch != 5) {
            return null;
        }
        try {
            return c(uri);
        } catch (FileNotFoundException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // android.content.ContentProvider
    public Cursor query(Uri uri, String[] strArr, String str, String[] strArr2, String str2) {
        int iMatch = f27200p.match(uri);
        if (iMatch == 1) {
            return d(uri);
        }
        if (iMatch == 2) {
            return a(uri);
        }
        if (iMatch == 3) {
            return g(uri);
        }
        throw new IllegalArgumentException("Unknown URI: " + uri);
    }

    @Override // android.content.ContentProvider
    public int update(Uri uri, ContentValues contentValues, String str, String[] strArr) {
        throw new UnsupportedOperationException("Not supported");
    }
}
