package com.facebook.gamingservices.internal;

import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Bundle;
import com.facebook.AccessToken;
import com.facebook.GraphRequest;
import com.facebook.GraphRequestAsyncTask;
import com.facebook.HttpMethod;
import com.facebook.internal.Utility;
import com.facebook.internal.instrument.crashshield.AutoHandleExceptions;
import com.facebook.share.internal.ShareConstants;
import java.io.File;
import java.io.FileNotFoundException;
import t9.m;

/* JADX INFO: compiled from: GamingMediaUploader.kt */
/* JADX INFO: loaded from: classes.dex */
@AutoHandleExceptions
public final class GamingMediaUploader {
    public static final GamingMediaUploader INSTANCE = new GamingMediaUploader();
    private static final String photoUploadEdge = "me/photos";

    private GamingMediaUploader() {
    }

    public static final GraphRequestAsyncTask uploadToGamingServices(String str, Bitmap bitmap, Bundle bundle, GraphRequest.Callback callback) {
        m.e(bitmap, "imageBitmap");
        return GraphRequest.Companion.newUploadPhotoRequest(AccessToken.Companion.getCurrentAccessToken(), photoUploadEdge, bitmap, str, bundle, callback).executeAsync();
    }

    public static final GraphRequestAsyncTask uploadToGamingServices(String str, File file, Bundle bundle, GraphRequest.Callback callback) throws FileNotFoundException {
        m.e(file, "imageFile");
        return GraphRequest.Companion.newUploadPhotoRequest(AccessToken.Companion.getCurrentAccessToken(), photoUploadEdge, file, str, bundle, callback).executeAsync();
    }

    public static final GraphRequestAsyncTask uploadToGamingServices(String str, Uri uri, Bundle bundle, GraphRequest.Callback callback) throws FileNotFoundException {
        m.e(uri, "imageUri");
        Utility utility = Utility.INSTANCE;
        if (!Utility.isFileUri(uri) && !Utility.isContentUri(uri)) {
            Bundle bundle2 = new Bundle();
            if (bundle != null) {
                bundle2.putAll(bundle);
            }
            bundle2.putString("url", uri.toString());
            if (!(str == null || str.length() == 0)) {
                bundle2.putString(ShareConstants.FEED_CAPTION_PARAM, str);
            }
            return new GraphRequest(AccessToken.Companion.getCurrentAccessToken(), photoUploadEdge, bundle2, HttpMethod.POST, callback, null, 32, null).executeAsync();
        }
        return GraphRequest.Companion.newUploadPhotoRequest(AccessToken.Companion.getCurrentAccessToken(), photoUploadEdge, uri, str, bundle, callback).executeAsync();
    }
}
