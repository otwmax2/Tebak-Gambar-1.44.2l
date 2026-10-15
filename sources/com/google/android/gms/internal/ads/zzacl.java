package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzacl extends zzaai {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final long f8512b;

    public zzacl(zzzv zzzvVar, long j10) {
        super(zzzvVar);
        zzdl.d(zzzvVar.c() >= j10);
        this.f8512b = j10;
    }

    @Override // com.google.android.gms.internal.ads.zzaai, com.google.android.gms.internal.ads.zzzv
    public final long b() {
        return super.b() - this.f8512b;
    }

    @Override // com.google.android.gms.internal.ads.zzaai, com.google.android.gms.internal.ads.zzzv
    public final long c() {
        return super.c() - this.f8512b;
    }

    @Override // com.google.android.gms.internal.ads.zzaai, com.google.android.gms.internal.ads.zzzv
    public final long d() {
        return super.d() - this.f8512b;
    }
}
