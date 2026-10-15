package com.facebook.internal;

import android.content.ContentProvider;
import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.util.Log;
import com.facebook.FacebookSdk;
import com.facebook.share.internal.ShareConstants;

/* JADX INFO: compiled from: FacebookInitProvider.kt */
/* JADX INFO: loaded from: classes.dex */
public final class FacebookInitProvider extends ContentProvider {
    public static final Companion Companion = new Companion(null);
    private static final String TAG = FacebookInitProvider.class.getSimpleName();

    /* JADX INFO: compiled from: FacebookInitProvider.kt */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(t9.g gVar) {
            this();
        }
    }

    @Override // android.content.ContentProvider
    public int delete(Uri uri, String str, String[] strArr) {
        t9.m.e(uri, ShareConstants.MEDIA_URI);
        return 0;
    }

    @Override // android.content.ContentProvider
    public String getType(Uri uri) {
        t9.m.e(uri, ShareConstants.MEDIA_URI);
        return null;
    }

    @Override // android.content.ContentProvider
    public Uri insert(Uri uri, ContentValues contentValues) {
        t9.m.e(uri, ShareConstants.MEDIA_URI);
        return null;
    }

    @Override // android.content.ContentProvider
    public boolean onCreate() {
        try {
            Context context = getContext();
            if (context == null) {
                throw new IllegalArgumentException("Required value was null.".toString());
            }
            FacebookSdk facebookSdk = FacebookSdk.INSTANCE;
            FacebookSdk.sdkInitialize(context);
            return false;
        } catch (Exception e10) {
            Log.i(TAG, "Failed to auto initialize the Facebook SDK", e10);
            return false;
        }
    }

    @Override // android.content.ContentProvider
    public Cursor query(Uri uri, String[] strArr, String str, String[] strArr2, String str2) {
        t9.m.e(uri, ShareConstants.MEDIA_URI);
        return null;
    }

    @Override // android.content.ContentProvider
    public int update(Uri uri, ContentValues contentValues, String str, String[] strArr) {
        t9.m.e(uri, ShareConstants.MEDIA_URI);
        return 0;
    }
}
