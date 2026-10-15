package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzsc implements zzul {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    protected final zzul[] f20600o;

    public zzsc(zzul[] zzulVarArr) {
        this.f20600o = zzulVarArr;
    }

    @Override // com.google.android.gms.internal.ads.zzul
    public final long a() {
        long jMin = Long.MAX_VALUE;
        for (zzul zzulVar : this.f20600o) {
            long jA = zzulVar.a();
            if (jA != Long.MIN_VALUE) {
                jMin = Math.min(jMin, jA);
            }
        }
        if (jMin == Long.MAX_VALUE) {
            return Long.MIN_VALUE;
        }
        return jMin;
    }

    @Override // com.google.android.gms.internal.ads.zzul
    public final void b(long j10) {
        for (zzul zzulVar : this.f20600o) {
            zzulVar.b(j10);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzul
    public final boolean c(long j10) {
        boolean zC;
        boolean z10 = false;
        do {
            long jA = a();
            if (jA == Long.MIN_VALUE) {
                break;
            }
            zC = false;
            for (zzul zzulVar : this.f20600o) {
                long jA2 = zzulVar.a();
                boolean z11 = jA2 != Long.MIN_VALUE && jA2 <= j10;
                if (jA2 == jA || z11) {
                    zC |= zzulVar.c(j10);
                }
            }
            z10 |= zC;
        } while (zC);
        return z10;
    }

    @Override // com.google.android.gms.internal.ads.zzul
    public final boolean n() {
        for (zzul zzulVar : this.f20600o) {
            if (zzulVar.n()) {
                return true;
            }
        }
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzul
    public final long zzb() {
        long jMin = Long.MAX_VALUE;
        for (zzul zzulVar : this.f20600o) {
            long jZzb = zzulVar.zzb();
            if (jZzb != Long.MIN_VALUE) {
                jMin = Math.min(jMin, jZzb);
            }
        }
        if (jMin == Long.MAX_VALUE) {
            return Long.MIN_VALUE;
        }
        return jMin;
    }
}
