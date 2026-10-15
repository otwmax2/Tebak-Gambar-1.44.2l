package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzacn implements zzzx {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final long f8515o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final zzzx f8516p;

    public zzacn(long j10, zzzx zzzxVar) {
        this.f8515o = j10;
        this.f8516p = zzzxVar;
    }

    @Override // com.google.android.gms.internal.ads.zzzx
    public final void e(zzaax zzaaxVar) {
        this.f8516p.e(new zzacm(this, zzaaxVar));
    }

    @Override // com.google.android.gms.internal.ads.zzzx
    public final void f0() {
        this.f8516p.f0();
    }

    @Override // com.google.android.gms.internal.ads.zzzx
    public final zzabb q(int i10, int i11) {
        return this.f8516p.q(i10, i11);
    }
}
