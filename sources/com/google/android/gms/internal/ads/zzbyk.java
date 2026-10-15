package com.google.android.gms.internal.ads;

import android.content.ComponentName;
import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Bundle;
import com.facebook.gamingservices.cloudgaming.internal.SDKAnalyticsEvents;
import com.facebook.internal.AnalyticsEvents;
import com.google.android.gms.common.util.VisibleForTesting;
import javax.annotation.concurrent.GuardedBy;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzbyk {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @VisibleForTesting
    final String f11560g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final com.google.android.gms.ads.internal.util.zzg f11561h;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @VisibleForTesting
    long f11554a = -1;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @VisibleForTesting
    long f11555b = -1;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @VisibleForTesting
    @GuardedBy("lock")
    int f11556c = -1;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @VisibleForTesting
    int f11557d = -1;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @VisibleForTesting
    long f11558e = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final Object f11559f = new Object();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @VisibleForTesting
    @GuardedBy("lock")
    int f11562i = 0;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @VisibleForTesting
    @GuardedBy("lock")
    int f11563j = 0;

    public zzbyk(String str, com.google.android.gms.ads.internal.util.zzg zzgVar) {
        this.f11560g = str;
        this.f11561h = zzgVar;
    }

    private final void g() {
        if (((Boolean) zzbcr.f10588a.e()).booleanValue()) {
            synchronized (this.f11559f) {
                this.f11556c--;
                this.f11557d--;
            }
        }
    }

    public final Bundle a(Context context, String str) {
        Bundle bundle;
        synchronized (this.f11559f) {
            bundle = new Bundle();
            if (!this.f11561h.g0()) {
                bundle.putString(SDKAnalyticsEvents.PARAMETER_SESSION_ID, this.f11560g);
            }
            bundle.putLong("basets", this.f11555b);
            bundle.putLong("currts", this.f11554a);
            bundle.putString("seq_num", str);
            bundle.putInt("preqs", this.f11556c);
            bundle.putInt("preqs_in_session", this.f11557d);
            bundle.putLong("time_in_session", this.f11558e);
            bundle.putInt("pclick", this.f11562i);
            bundle.putInt("pimp", this.f11563j);
            Context contextA = zzbub.a(context);
            int identifier = contextA.getResources().getIdentifier("Theme.Translucent", AnalyticsEvents.PARAMETER_LIKE_VIEW_STYLE, "android");
            boolean z10 = false;
            if (identifier == 0) {
                zzbza.f("Please set theme of AdActivity to @android:style/Theme.Translucent to enable transparent background interstitial ad.");
            } else {
                try {
                    if (identifier == contextA.getPackageManager().getActivityInfo(new ComponentName(contextA.getPackageName(), "com.google.android.gms.ads.AdActivity"), 0).theme) {
                        z10 = true;
                    } else {
                        zzbza.f("Please set theme of AdActivity to @android:style/Theme.Translucent to enable transparent background interstitial ad.");
                    }
                } catch (PackageManager.NameNotFoundException unused) {
                    zzbza.g("Fail to fetch AdActivity theme");
                    zzbza.f("Please set theme of AdActivity to @android:style/Theme.Translucent to enable transparent background interstitial ad.");
                }
            }
            bundle.putBoolean("support_transparent_background", z10);
        }
        return bundle;
    }

    public final void b() {
        synchronized (this.f11559f) {
            this.f11562i++;
        }
    }

    public final void c() {
        synchronized (this.f11559f) {
            this.f11563j++;
        }
    }

    public final void d() {
        g();
    }

    public final void e() {
        g();
    }

    public final void f(com.google.android.gms.ads.internal.client.zzl zzlVar, long j10) {
        Bundle bundle;
        synchronized (this.f11559f) {
            long jD = this.f11561h.d();
            long jA = com.google.android.gms.ads.internal.zzt.b().a();
            if (this.f11555b == -1) {
                if (jA - jD > ((Long) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.N0)).longValue()) {
                    this.f11557d = -1;
                } else {
                    this.f11557d = this.f11561h.a();
                }
                this.f11555b = j10;
                this.f11554a = j10;
            } else {
                this.f11554a = j10;
            }
            if (!((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.f10195d3)).booleanValue() && (bundle = zzlVar.f5908q) != null && bundle.getInt("gw", 2) == 1) {
                return;
            }
            this.f11556c++;
            int i10 = this.f11557d + 1;
            this.f11557d = i10;
            if (i10 == 0) {
                this.f11558e = 0L;
                this.f11561h.K0(jA);
            } else {
                this.f11558e = jA - this.f11561h.b();
            }
        }
    }
}
