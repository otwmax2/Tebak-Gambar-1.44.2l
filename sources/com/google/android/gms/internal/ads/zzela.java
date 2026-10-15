package com.google.android.gms.internal.ads;

import android.os.Bundle;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzela implements zzepm {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f16883a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final boolean f16884b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean f16885c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int f16886d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f16887e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final int f16888f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final int f16889g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final int f16890h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final float f16891i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final boolean f16892j;

    public zzela(int i10, boolean z10, boolean z11, int i11, int i12, int i13, int i14, int i15, float f10, boolean z12) {
        this.f16883a = i10;
        this.f16884b = z10;
        this.f16885c = z11;
        this.f16886d = i11;
        this.f16887e = i12;
        this.f16888f = i13;
        this.f16889g = i14;
        this.f16890h = i15;
        this.f16891i = f10;
        this.f16892j = z12;
    }

    @Override // com.google.android.gms.internal.ads.zzepm
    public final /* bridge */ /* synthetic */ void a(Object obj) {
        Bundle bundle = (Bundle) obj;
        bundle.putInt("am", this.f16883a);
        bundle.putBoolean("ma", this.f16884b);
        bundle.putBoolean("sp", this.f16885c);
        bundle.putInt("muv", this.f16886d);
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.f10300m9)).booleanValue()) {
            bundle.putInt("muv_min", this.f16887e);
            bundle.putInt("muv_max", this.f16888f);
        }
        bundle.putInt("rm", this.f16889g);
        bundle.putInt("riv", this.f16890h);
        bundle.putFloat("android_app_volume", this.f16891i);
        bundle.putBoolean("android_app_muted", this.f16892j);
    }
}
