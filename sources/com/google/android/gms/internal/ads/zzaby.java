package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzaby extends zzzg {
    public zzaby(final zzaah zzaahVar, int i10, long j10, long j11) {
        long j12;
        zzzd zzzdVar = new zzzd() { // from class: com.google.android.gms.internal.ads.zzabv
            @Override // com.google.android.gms.internal.ads.zzzd
            public final long f1(long j13) {
                return zzaahVar.b(j13);
            }
        };
        zzabx zzabxVar = new zzabx(zzaahVar, i10, null);
        long jA = zzaahVar.a();
        long j13 = zzaahVar.f8302j;
        int i11 = zzaahVar.f8296d;
        if (i11 > 0) {
            j12 = ((((long) i11) + ((long) zzaahVar.f8295c)) / 2) + 1;
        } else {
            int i12 = zzaahVar.f8293a;
            long j14 = 4096;
            if (i12 == zzaahVar.f8294b && i12 > 0) {
                j14 = i12;
            }
            j12 = (((j14 * ((long) zzaahVar.f8299g)) * ((long) zzaahVar.f8300h)) / 8) + 64;
        }
        super(zzzdVar, zzabxVar, jA, 0L, j13, j10, j11, j12, Math.max(6, zzaahVar.f8295c));
    }
}
