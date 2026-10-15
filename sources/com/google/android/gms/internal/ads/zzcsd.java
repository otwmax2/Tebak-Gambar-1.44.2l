package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.Clock;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzcsd implements zzcwc, com.google.android.gms.ads.internal.client.zza, zzcxj, zzcvi, zzcuo, zzczv {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final Clock f13873o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final zzbyc f13874p;

    public zzcsd(Clock clock, zzbyc zzbycVar) {
        this.f13873o = clock;
        this.f13874p = zzbycVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcuo
    public final void I() {
    }

    @Override // com.google.android.gms.internal.ads.zzczv
    public final void Z0(boolean z10) {
    }

    public final String a() {
        return this.f13874p.c();
    }

    public final void b(com.google.android.gms.ads.internal.client.zzl zzlVar) {
        this.f13874p.j(zzlVar);
    }

    @Override // com.google.android.gms.internal.ads.zzczv
    public final void b0(boolean z10) {
    }

    @Override // com.google.android.gms.internal.ads.zzczv
    public final void d() {
    }

    @Override // com.google.android.gms.internal.ads.zzczv
    public final void f(zzawz zzawzVar) {
        this.f13874p.i();
    }

    @Override // com.google.android.gms.internal.ads.zzcuo
    public final void h() {
        this.f13874p.e();
    }

    @Override // com.google.android.gms.internal.ads.zzcvi
    public final void j() {
        this.f13874p.f();
    }

    @Override // com.google.android.gms.internal.ads.zzcwc
    public final void k() {
        this.f13874p.h(true);
    }

    @Override // com.google.android.gms.internal.ads.zzcuo
    public final void l() {
    }

    @Override // com.google.android.gms.internal.ads.zzcxj
    public final void l0(zzeyo zzeyoVar) {
        this.f13874p.k(this.f13873o.b());
    }

    @Override // com.google.android.gms.internal.ads.zzcuo
    public final void m() {
    }

    @Override // com.google.android.gms.internal.ads.zzcuo
    public final void n(zzbud zzbudVar, String str, String str2) {
    }

    @Override // com.google.android.gms.internal.ads.zzcuo
    public final void r() {
    }

    @Override // com.google.android.gms.internal.ads.zzczv
    public final void r0(zzawz zzawzVar) {
        this.f13874p.g();
    }

    @Override // com.google.android.gms.internal.ads.zzcxj
    public final void t0(zzbtn zzbtnVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzczv
    public final void v0(zzawz zzawzVar) {
    }

    @Override // com.google.android.gms.ads.internal.client.zza
    public final void w0() {
        this.f13874p.d();
    }
}
