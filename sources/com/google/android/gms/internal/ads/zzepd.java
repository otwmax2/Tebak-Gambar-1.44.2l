package com.google.android.gms.internal.ads;

import android.os.Bundle;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzepd implements zzepm {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final boolean f17124a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final boolean f17125b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f17126c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final boolean f17127d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f17128e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final int f17129f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final int f17130g;

    zzepd(boolean z10, boolean z11, String str, boolean z12, int i10, int i11, int i12) {
        this.f17124a = z10;
        this.f17125b = z11;
        this.f17126c = str;
        this.f17127d = z12;
        this.f17128e = i10;
        this.f17129f = i11;
        this.f17130g = i12;
    }

    @Override // com.google.android.gms.internal.ads.zzepm
    public final /* bridge */ /* synthetic */ void a(Object obj) {
        Bundle bundle = (Bundle) obj;
        bundle.putString("js", this.f17126c);
        bundle.putBoolean("is_nonagon", true);
        bundle.putString("extra_caps", (String) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.f10272k3));
        bundle.putInt("target_api", this.f17128e);
        bundle.putInt("dv", this.f17129f);
        bundle.putInt("lv", this.f17130g);
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.f10417x5)).booleanValue()) {
            bundle.putString("ev", "22.0.0");
        }
        Bundle bundleA = zzezi.a(bundle, "sdk_env");
        bundleA.putBoolean("mf", ((Boolean) zzbck.f10569a.e()).booleanValue());
        bundleA.putBoolean("instant_app", this.f17124a);
        bundleA.putBoolean("lite", this.f17125b);
        bundleA.putBoolean("is_privileged_process", this.f17127d);
        bundle.putBundle("sdk_env", bundleA);
        Bundle bundleA2 = zzezi.a(bundleA, "build_meta");
        bundleA2.putString("cl", "513548808");
        bundleA2.putString("rapid_rc", "dev");
        bundleA2.putString("rapid_rollup", "HEAD");
        bundleA.putBundle("build_meta", bundleA2);
    }
}
