package com.facebook.internal;

import android.annotation.SuppressLint;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import android.os.Looper;
import android.util.Log;
import com.facebook.FacebookException;
import com.facebook.FacebookSdk;
import com.facebook.FacebookSdkNotInitializedException;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import t9.b0;

/* JADX INFO: compiled from: Validate.kt */
/* JADX INFO: loaded from: classes.dex */
public final class Validate {
    private static final String CONTENT_PROVIDER_BASE = "com.facebook.app.FacebookContentProvider";
    private static final String CONTENT_PROVIDER_NOT_FOUND_REASON = "A ContentProvider for this app was not set up in the AndroidManifest.xml, please add %s as a provider to your AndroidManifest.xml file. See https://developers.facebook.com/docs/sharing/android for more info.";
    public static final String CUSTOM_TAB_REDIRECT_URI_PREFIX = "fbconnect://cct.";
    private static final String FACEBOOK_ACTIVITY_NOT_FOUND_REASON = "FacebookActivity is not declared in the AndroidManifest.xml. If you are using the facebook-common module or dependent modules please add com.facebook.FacebookActivity to your AndroidManifest.xml file. See https://developers.facebook.com/docs/android/getting-started for more info.";
    private static final String NO_INTERNET_PERMISSION_REASON = "No internet permissions granted for the app, please add <uses-permission android:name=\"android.permission.INTERNET\" /> to your AndroidManifest.xml.";
    public static final Validate INSTANCE = new Validate();
    private static final String TAG = Validate.class.getName();

    private Validate() {
    }

    public static final void containsNoNullOrEmpty(Collection<String> collection, String str) {
        t9.m.e(collection, "container");
        t9.m.e(str, "name");
        for (String str2 : collection) {
            if (str2 == null) {
                throw new NullPointerException("Container '" + str + "' cannot contain null values");
            }
            if (!(str2.length() > 0)) {
                throw new IllegalArgumentException(("Container '" + str + "' cannot contain empty values").toString());
            }
        }
    }

    public static final <T> void containsNoNulls(Collection<? extends T> collection, String str) {
        t9.m.e(collection, "container");
        t9.m.e(str, "name");
        Iterator<? extends T> it = collection.iterator();
        while (it.hasNext()) {
            if (it.next() == null) {
                throw new NullPointerException("Container '" + str + "' cannot contain null values");
            }
        }
    }

    public static final String hasAppID() {
        FacebookSdk facebookSdk = FacebookSdk.INSTANCE;
        String applicationId = FacebookSdk.getApplicationId();
        if (applicationId != null) {
            return applicationId;
        }
        throw new IllegalStateException("No App ID found, please set the App ID.".toString());
    }

    public static final boolean hasBluetoothPermission(Context context) {
        t9.m.e(context, "context");
        return hasPermission(context, "android.permission.BLUETOOTH") && hasPermission(context, "android.permission.BLUETOOTH_ADMIN");
    }

    public static final boolean hasChangeWifiStatePermission(Context context) {
        t9.m.e(context, "context");
        return hasPermission(context, "android.permission.CHANGE_WIFI_STATE");
    }

    public static final String hasClientToken() {
        FacebookSdk facebookSdk = FacebookSdk.INSTANCE;
        String clientToken = FacebookSdk.getClientToken();
        if (clientToken != null) {
            return clientToken;
        }
        throw new IllegalStateException("No Client Token found, please set the Client Token. Please follow https://developers.facebook.com/docs/android/getting-started/#client-access-token to get the token and fill it in AndroidManifest.xml".toString());
    }

    public static final void hasContentProvider(Context context) {
        t9.m.e(context, "context");
        String strHasAppID = hasAppID();
        PackageManager packageManager = context.getPackageManager();
        if (packageManager != null) {
            String strK = t9.m.k(CONTENT_PROVIDER_BASE, strHasAppID);
            if (packageManager.resolveContentProvider(strK, 0) != null) {
                return;
            }
            b0 b0Var = b0.f35528a;
            String str = String.format(CONTENT_PROVIDER_NOT_FOUND_REASON, Arrays.copyOf(new Object[]{strK}, 1));
            t9.m.d(str, "java.lang.String.format(format, *args)");
            throw new IllegalStateException(str.toString());
        }
    }

    public static final boolean hasCustomTabRedirectActivity(Context context, String str) {
        List<ResolveInfo> listQueryIntentActivities;
        t9.m.e(context, "context");
        t9.m.e(str, "redirectURI");
        PackageManager packageManager = context.getPackageManager();
        if (packageManager != null) {
            Intent intent = new Intent();
            intent.setAction("android.intent.action.VIEW");
            intent.addCategory("android.intent.category.DEFAULT");
            intent.addCategory("android.intent.category.BROWSABLE");
            intent.setData(Uri.parse(str));
            listQueryIntentActivities = packageManager.queryIntentActivities(intent, 64);
        } else {
            listQueryIntentActivities = null;
        }
        if (listQueryIntentActivities == null) {
            return false;
        }
        Iterator<ResolveInfo> it = listQueryIntentActivities.iterator();
        boolean z10 = false;
        while (it.hasNext()) {
            ActivityInfo activityInfo = it.next().activityInfo;
            if (!t9.m.a(activityInfo.name, "com.facebook.CustomTabActivity") || !t9.m.a(activityInfo.packageName, context.getPackageName())) {
                return false;
            }
            z10 = true;
        }
        return z10;
    }

    public static final void hasFacebookActivity(Context context) {
        t9.m.e(context, "context");
        hasFacebookActivity(context, true);
    }

    public static final void hasInternetPermissions(Context context) {
        t9.m.e(context, "context");
        hasInternetPermissions(context, true);
    }

    public static final boolean hasLocationPermission(Context context) {
        t9.m.e(context, "context");
        return hasPermission(context, "android.permission.ACCESS_COARSE_LOCATION") || hasPermission(context, "android.permission.ACCESS_FINE_LOCATION");
    }

    public static final boolean hasPermission(Context context, String str) {
        t9.m.e(context, "context");
        t9.m.e(str, "permission");
        return context.checkCallingOrSelfPermission(str) == 0;
    }

    public static final boolean hasWiFiPermission(Context context) {
        t9.m.e(context, "context");
        return hasPermission(context, "android.permission.ACCESS_WIFI_STATE");
    }

    public static final <T> void notEmpty(Collection<? extends T> collection, String str) {
        t9.m.e(collection, "container");
        t9.m.e(str, "name");
        if (!collection.isEmpty()) {
            return;
        }
        throw new IllegalArgumentException(("Container '" + str + "' cannot be empty").toString());
    }

    public static final <T> void notEmptyAndContainsNoNulls(Collection<? extends T> collection, String str) {
        t9.m.e(collection, "container");
        t9.m.e(str, "name");
        containsNoNulls(collection, str);
        notEmpty(collection, str);
    }

    public static final void notNull(Object obj, String str) {
        t9.m.e(str, "name");
        if (obj != null) {
            return;
        }
        throw new NullPointerException("Argument '" + str + "' cannot be null");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0015  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static final java.lang.String notNullOrEmpty(java.lang.String r3, java.lang.String r4) {
        /*
            java.lang.String r0 = "name"
            t9.m.e(r4, r0)
            r0 = 1
            r1 = 0
            if (r3 == 0) goto L15
            int r2 = r3.length()
            if (r2 <= 0) goto L11
            r2 = 1
            goto L12
        L11:
            r2 = 0
        L12:
            if (r2 == 0) goto L15
            goto L16
        L15:
            r0 = 0
        L16:
            if (r0 == 0) goto L19
            return r3
        L19:
            java.lang.StringBuilder r3 = new java.lang.StringBuilder
            r3.<init>()
            java.lang.String r0 = "Argument '"
            r3.append(r0)
            r3.append(r4)
            java.lang.String r4 = "' cannot be null or empty"
            r3.append(r4)
            java.lang.String r3 = r3.toString()
            java.lang.IllegalArgumentException r4 = new java.lang.IllegalArgumentException
            java.lang.String r3 = r3.toString()
            r4.<init>(r3)
            throw r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.internal.Validate.notNullOrEmpty(java.lang.String, java.lang.String):java.lang.String");
    }

    public static final void oneOf(Object obj, String str, Object... objArr) {
        t9.m.e(str, "name");
        t9.m.e(objArr, "values");
        int length = objArr.length;
        int i10 = 0;
        while (i10 < length) {
            Object obj2 = objArr[i10];
            i10++;
            if (t9.m.a(obj2, obj)) {
                return;
            }
        }
        throw new IllegalArgumentException("Argument '" + str + "' was not one of the allowed values");
    }

    public static final void runningOnUiThread() {
        if (!t9.m.a(Looper.getMainLooper(), Looper.myLooper())) {
            throw new FacebookException("This method should be called from the UI thread");
        }
    }

    public static final void sdkInitialized() {
        FacebookSdk facebookSdk = FacebookSdk.INSTANCE;
        if (!FacebookSdk.isInitialized()) {
            throw new FacebookSdkNotInitializedException("The SDK has not been initialized, make sure to call FacebookSdk.sdkInitialize() first.");
        }
    }

    @SuppressLint({"WrongConstant"})
    public static final void hasFacebookActivity(Context context, boolean z10) {
        ActivityInfo activityInfo;
        t9.m.e(context, "context");
        PackageManager packageManager = context.getPackageManager();
        if (packageManager != null) {
            try {
                activityInfo = packageManager.getActivityInfo(new ComponentName(context, "com.facebook.FacebookActivity"), 1);
            } catch (PackageManager.NameNotFoundException unused) {
                activityInfo = null;
            }
        } else {
            activityInfo = null;
        }
        if (activityInfo == null) {
            if (!(!z10)) {
                throw new IllegalStateException(FACEBOOK_ACTIVITY_NOT_FOUND_REASON.toString());
            }
            Log.w(TAG, FACEBOOK_ACTIVITY_NOT_FOUND_REASON);
        }
    }

    public static final void hasInternetPermissions(Context context, boolean z10) {
        t9.m.e(context, "context");
        if (context.checkCallingOrSelfPermission("android.permission.INTERNET") == -1) {
            if (!(!z10)) {
                throw new IllegalStateException(NO_INTERNET_PERMISSION_REASON.toString());
            }
            Log.w(TAG, NO_INTERNET_PERMISSION_REASON);
        }
    }

    public static final void notEmpty(String str, String str2) {
        t9.m.e(str, "arg");
        t9.m.e(str2, "name");
        if (str.length() > 0) {
            return;
        }
        throw new IllegalArgumentException(("Argument '" + str2 + "' cannot be empty").toString());
    }
}
