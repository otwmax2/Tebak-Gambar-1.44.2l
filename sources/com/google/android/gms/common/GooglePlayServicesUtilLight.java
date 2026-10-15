package com.google.android.gms.common;

import android.annotation.TargetApi;
import android.app.NotificationManager;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageInstaller;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.os.Bundle;
import android.os.UserManager;
import android.util.Log;
import com.facebook.internal.ServerProtocol;
import com.facebook.internal.Utility;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.ShowFirstParty;
import com.google.android.gms.common.util.DeviceProperties;
import com.google.android.gms.common.util.PlatformVersion;
import com.google.android.gms.common.util.UidVerifier;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.common.wrappers.Wrappers;
import java.util.Iterator;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: compiled from: com.google.android.gms:play-services-basement@@18.1.0 */
/* JADX INFO: loaded from: classes.dex */
@ShowFirstParty
@KeepForSdk
public class GooglePlayServicesUtilLight {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @KeepForSdk
    @Deprecated
    public static final int f6921a = 12451000;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static boolean f6923c = false;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @VisibleForTesting
    static boolean f6924d = false;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @VisibleForTesting
    @KeepForSdk
    static final AtomicBoolean f6922b = new AtomicBoolean();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final AtomicBoolean f6925e = new AtomicBoolean();

    @KeepForSdk
    GooglePlayServicesUtilLight() {
    }

    @KeepForSdk
    @Deprecated
    public static void a(Context context) {
        if (f6922b.getAndSet(true)) {
            return;
        }
        try {
            NotificationManager notificationManager = (NotificationManager) context.getSystemService("notification");
            if (notificationManager != null) {
                notificationManager.cancel(10436);
            }
        } catch (SecurityException unused) {
        }
    }

    @ShowFirstParty
    @KeepForSdk
    @Deprecated
    public static int b(Context context) {
        try {
            return context.getPackageManager().getPackageInfo("com.google.android.gms", 0).versionCode;
        } catch (PackageManager.NameNotFoundException unused) {
            Log.w("GooglePlayServicesUtil", "Google Play services is missing.");
            return 0;
        }
    }

    @VisibleForTesting
    @KeepForSdk
    @Deprecated
    public static String c(int i10) {
        return ConnectionResult.a4(i10);
    }

    @KeepForSdk
    public static Context d(Context context) {
        try {
            return context.createPackageContext("com.google.android.gms", 3);
        } catch (PackageManager.NameNotFoundException unused) {
            return null;
        }
    }

    @KeepForSdk
    public static Resources e(Context context) {
        try {
            return context.getPackageManager().getResourcesForApplication("com.google.android.gms");
        } catch (PackageManager.NameNotFoundException unused) {
            return null;
        }
    }

    @ShowFirstParty
    @KeepForSdk
    public static boolean f(Context context) {
        try {
            if (!f6924d) {
                PackageInfo packageInfoF = Wrappers.a(context).f("com.google.android.gms", 64);
                GoogleSignatureVerifier.a(context);
                if (packageInfoF == null || GoogleSignatureVerifier.e(packageInfoF, false) || !GoogleSignatureVerifier.e(packageInfoF, true)) {
                    f6923c = false;
                } else {
                    f6923c = true;
                }
            }
        } catch (PackageManager.NameNotFoundException e10) {
            Log.w("GooglePlayServicesUtil", "Cannot find Google Play services package name.", e10);
        } finally {
            f6924d = true;
        }
        return f6923c || !DeviceProperties.e();
    }

    /* JADX WARN: Removed duplicated region for block: B:45:0x00b3  */
    @com.google.android.gms.common.annotation.KeepForSdk
    @java.lang.Deprecated
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static int g(android.content.Context r10, int r11) {
        /*
            Method dump skipped, instruction units count: 308
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.common.GooglePlayServicesUtilLight.g(android.content.Context, int):int");
    }

    @ShowFirstParty
    @KeepForSdk
    @Deprecated
    public static boolean h(Context context, int i10) {
        if (i10 == 18) {
            return true;
        }
        if (i10 == 1) {
            return l(context, "com.google.android.gms");
        }
        return false;
    }

    @KeepForSdk
    @TargetApi(18)
    public static boolean i(Context context) {
        if (!PlatformVersion.d()) {
            return false;
        }
        Object systemService = context.getSystemService("user");
        Preconditions.k(systemService);
        Bundle applicationRestrictions = ((UserManager) systemService).getApplicationRestrictions(context.getPackageName());
        return applicationRestrictions != null && ServerProtocol.DIALOG_RETURN_SCOPES_TRUE.equals(applicationRestrictions.getString("restricted_profile"));
    }

    @KeepForSdk
    @Deprecated
    public static boolean j(int i10) {
        return i10 == 1 || i10 == 2 || i10 == 3 || i10 == 9;
    }

    @KeepForSdk
    @TargetApi(19)
    @Deprecated
    public static boolean k(Context context, int i10, String str) {
        return UidVerifier.b(context, i10, str);
    }

    @TargetApi(21)
    static boolean l(Context context, String str) {
        ApplicationInfo applicationInfo;
        boolean zEquals = str.equals("com.google.android.gms");
        if (PlatformVersion.g()) {
            try {
                Iterator<PackageInstaller.SessionInfo> it = context.getPackageManager().getPackageInstaller().getAllSessions().iterator();
                while (it.hasNext()) {
                    if (str.equals(it.next().getAppPackageName())) {
                        return true;
                    }
                }
            } catch (Exception unused) {
                return false;
            }
        }
        try {
            applicationInfo = context.getPackageManager().getApplicationInfo(str, Utility.DEFAULT_STREAM_BUFFER_SIZE);
        } catch (PackageManager.NameNotFoundException unused2) {
        }
        return zEquals ? applicationInfo.enabled : applicationInfo.enabled && !i(context);
    }
}
