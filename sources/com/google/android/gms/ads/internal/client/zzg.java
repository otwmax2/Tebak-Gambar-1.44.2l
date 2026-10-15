package com.google.android.gms.ads.internal.client;

import com.google.android.gms.ads.AdListener;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.0.0 */
/* JADX INFO: loaded from: classes.dex */
public final class zzg extends zzbg {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final AdListener f5901o;

    public zzg(AdListener adListener) {
        this.f5901o = adListener;
    }

    @Override // com.google.android.gms.ads.internal.client.zzbh
    public final void A(zze zzeVar) {
        AdListener adListener = this.f5901o;
        if (adListener != null) {
            adListener.m(zzeVar.W3());
        }
    }

    @Override // com.google.android.gms.ads.internal.client.zzbh
    public final void F(int i10) {
    }

    public final AdListener Sa() {
        return this.f5901o;
    }

    @Override // com.google.android.gms.ads.internal.client.zzbh
    public final void a() {
        AdListener adListener = this.f5901o;
        if (adListener != null) {
            adListener.w0();
        }
    }

    @Override // com.google.android.gms.ads.internal.client.zzbh
    public final void d() {
        AdListener adListener = this.f5901o;
        if (adListener != null) {
            adListener.e();
        }
    }

    @Override // com.google.android.gms.ads.internal.client.zzbh
    public final void e() {
        AdListener adListener = this.f5901o;
        if (adListener != null) {
            adListener.n();
        }
    }

    @Override // com.google.android.gms.ads.internal.client.zzbh
    public final void f() {
    }

    @Override // com.google.android.gms.ads.internal.client.zzbh
    public final void g() {
        AdListener adListener = this.f5901o;
        if (adListener != null) {
            adListener.o();
        }
    }

    @Override // com.google.android.gms.ads.internal.client.zzbh
    public final void h() {
        AdListener adListener = this.f5901o;
        if (adListener != null) {
            adListener.p();
        }
    }

    @Override // com.google.android.gms.ads.internal.client.zzbh
    public final void i() {
        AdListener adListener = this.f5901o;
        if (adListener != null) {
            adListener.q();
        }
    }
}
