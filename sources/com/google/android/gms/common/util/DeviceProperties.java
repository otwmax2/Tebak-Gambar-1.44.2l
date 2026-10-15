package com.google.android.gms.common.util;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Build;
import com.google.android.gms.common.GooglePlayServicesUtilLight;
import com.google.android.gms.common.annotation.KeepForSdk;

/* JADX INFO: compiled from: com.google.android.gms:play-services-basement@@18.1.0 */
/* JADX INFO: loaded from: classes.dex */
@KeepForSdk
public final class DeviceProperties {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static Boolean f7636a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static Boolean f7637b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static Boolean f7638c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static Boolean f7639d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static Boolean f7640e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static Boolean f7641f;

    private DeviceProperties() {
    }

    @KeepForSdk
    public static boolean a(Context context) {
        PackageManager packageManager = context.getPackageManager();
        if (f7640e == null) {
            boolean z10 = false;
            if (PlatformVersion.j() && packageManager.hasSystemFeature("android.hardware.type.automotive")) {
                z10 = true;
            }
            f7640e = Boolean.valueOf(z10);
        }
        return f7640e.booleanValue();
    }

    @KeepForSdk
    public static boolean b(Context context) {
        if (f7641f == null) {
            boolean z10 = false;
            if (PlatformVersion.m() && context.getPackageManager().hasSystemFeature("com.google.android.play.feature.HPE_EXPERIENCE")) {
                z10 = true;
            }
            f7641f = Boolean.valueOf(z10);
        }
        return f7641f.booleanValue();
    }

    @KeepForSdk
    public static boolean c(Context context) {
        if (f7638c == null) {
            PackageManager packageManager = context.getPackageManager();
            boolean z10 = false;
            if (packageManager.hasSystemFeature("com.google.android.feature.services_updater") && packageManager.hasSystemFeature("cn.google.services")) {
                z10 = true;
            }
            f7638c = Boolean.valueOf(z10);
        }
        return f7638c.booleanValue();
    }

    @KeepForSdk
    @TargetApi(21)
    public static boolean d(Context context) {
        return h(context);
    }

    @KeepForSdk
    public static boolean e() {
        int i10 = GooglePlayServicesUtilLight.f6921a;
        return "user".equals(Build.TYPE);
    }

    @KeepForSdk
    @TargetApi(20)
    public static boolean f(Context context) {
        PackageManager packageManager = context.getPackageManager();
        if (f7636a == null) {
            boolean z10 = false;
            if (PlatformVersion.f() && packageManager.hasSystemFeature("android.hardware.type.watch")) {
                z10 = true;
            }
            f7636a = Boolean.valueOf(z10);
        }
        return f7636a.booleanValue();
    }

    @KeepForSdk
    @TargetApi(26)
    public static boolean g(Context context) {
        if (f(context) && !PlatformVersion.i()) {
            return true;
        }
        if (h(context)) {
            return !PlatformVersion.j() || PlatformVersion.m();
        }
        return false;
    }

    @TargetApi(21)
    public static boolean h(Context context) {
        if (f7637b == null) {
            boolean z10 = false;
            if (PlatformVersion.g() && context.getPackageManager().hasSystemFeature("cn.google")) {
                z10 = true;
            }
            f7637b = Boolean.valueOf(z10);
        }
        return f7637b.booleanValue();
    }

    public static boolean i(Context context) {
        if (f7639d == null) {
            boolean z10 = true;
            if (!context.getPackageManager().hasSystemFeature("android.hardware.type.iot") && !context.getPackageManager().hasSystemFeature("android.hardware.type.embedded")) {
                z10 = false;
            }
            f7639d = Boolean.valueOf(z10);
        }
        return f7639d.booleanValue();
    }
}
