package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzsm extends zzcn {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final zzbg f20628f;

    public zzsm(zzbg zzbgVar) {
        this.f20628f = zzbgVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcn
    public final int a(Object obj) {
        return obj == zzsl.f20625i ? 0 : -1;
    }

    @Override // com.google.android.gms.internal.ads.zzcn
    public final int b() {
        return 1;
    }

    @Override // com.google.android.gms.internal.ads.zzcn
    public final int c() {
        return 1;
    }

    @Override // com.google.android.gms.internal.ads.zzcn
    public final zzck d(int i10, zzck zzckVar, boolean z10) {
        zzckVar.k(z10 ? 0 : null, z10 ? zzsl.f20625i : null, 0, -9223372036854775807L, 0L, zzd.f14247d, true);
        return zzckVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcn
    public final zzcm e(int i10, zzcm zzcmVar, long j10) {
        zzcmVar.a(zzcm.f13450o, this.f20628f, null, -9223372036854775807L, -9223372036854775807L, -9223372036854775807L, false, true, null, 0L, -9223372036854775807L, 0, 0, 0L);
        zzcmVar.f13471j = true;
        return zzcmVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcn
    public final Object f(int i10) {
        return zzsl.f20625i;
    }
}
