package com.google.android.gms.common;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.text.TextUtils;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.HideFirstParty;
import com.google.android.gms.common.internal.ShowFirstParty;
import com.google.android.gms.common.util.DeviceProperties;
import com.google.android.gms.common.wrappers.Wrappers;
import com.google.android.gms.internal.common.zzd;

/* JADX INFO: compiled from: com.google.android.gms:play-services-basement@@18.1.0 */
/* JADX INFO: loaded from: classes.dex */
@ShowFirstParty
@KeepForSdk
public class GoogleApiAvailabilityLight {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @KeepForSdk
    public static final int f6916a = GooglePlayServicesUtilLight.f6921a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final GoogleApiAvailabilityLight f6917b = new GoogleApiAvailabilityLight();

    @KeepForSdk
    GoogleApiAvailabilityLight() {
    }

    @KeepForSdk
    public static GoogleApiAvailabilityLight h() {
        return f6917b;
    }

    @KeepForSdk
    public void a(Context context) {
        GooglePlayServicesUtilLight.a(context);
    }

    @ShowFirstParty
    @KeepForSdk
    public int b(Context context) {
        return GooglePlayServicesUtilLight.b(context);
    }

    @ShowFirstParty
    @KeepForSdk
    @Deprecated
    public Intent c(int i10) {
        return d(null, i10, null);
    }

    @ShowFirstParty
    @KeepForSdk
    public Intent d(Context context, int i10, String str) {
        if (i10 != 1 && i10 != 2) {
            if (i10 != 3) {
                return null;
            }
            return com.google.android.gms.common.internal.zzt.c("com.google.android.gms");
        }
        if (context != null && DeviceProperties.g(context)) {
            return com.google.android.gms.common.internal.zzt.a();
        }
        StringBuilder sb = new StringBuilder();
        sb.append("gcore_");
        sb.append(f6916a);
        sb.append("-");
        if (!TextUtils.isEmpty(str)) {
            sb.append(str);
        }
        sb.append("-");
        if (context != null) {
            sb.append(context.getPackageName());
        }
        sb.append("-");
        if (context != null) {
            try {
                sb.append(Wrappers.a(context).f(context.getPackageName(), 0).versionCode);
            } catch (PackageManager.NameNotFoundException unused) {
            }
        }
        return com.google.android.gms.common.internal.zzt.b("com.google.android.gms", sb.toString());
    }

    @KeepForSdk
    public PendingIntent e(Context context, int i10, int i11) {
        return f(context, i10, i11, null);
    }

    @ShowFirstParty
    @KeepForSdk
    public PendingIntent f(Context context, int i10, int i11, String str) {
        Intent intentD = d(context, i10, str);
        if (intentD == null) {
            return null;
        }
        return PendingIntent.getActivity(context, i11, intentD, zzd.f21688a | 134217728);
    }

    @KeepForSdk
    public String g(int i10) {
        return GooglePlayServicesUtilLight.c(i10);
    }

    @HideFirstParty
    @KeepForSdk
    public int i(Context context) {
        return j(context, f6916a);
    }

    @KeepForSdk
    public int j(Context context, int i10) {
        int iG = GooglePlayServicesUtilLight.g(context, i10);
        if (GooglePlayServicesUtilLight.h(context, iG)) {
            return 18;
        }
        return iG;
    }

    @ShowFirstParty
    @KeepForSdk
    public boolean k(Context context, int i10) {
        return GooglePlayServicesUtilLight.h(context, i10);
    }

    @KeepForSdk
    public boolean l(Context context, String str) {
        return GooglePlayServicesUtilLight.l(context, str);
    }

    @KeepForSdk
    public boolean m(int i10) {
        return GooglePlayServicesUtilLight.j(i10);
    }
}
