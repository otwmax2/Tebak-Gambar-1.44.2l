package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzafo implements zzafm {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f8798a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f8799b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final zzen f8800c;

    public zzafo(zzafi zzafiVar, zzaf zzafVar) {
        zzen zzenVar = zzafiVar.f8779b;
        this.f8800c = zzenVar;
        zzenVar.f(12);
        int iV = zzenVar.v();
        if ("audio/raw".equals(zzafVar.f8731l)) {
            int iZ = zzew.Z(zzafVar.A, zzafVar.f8744y);
            if (iV == 0 || iV % iZ != 0) {
                zzee.e("AtomParsers", "Audio sample size mismatch. stsd sample size: " + iZ + ", stsz sample size: " + iV);
                iV = iZ;
            }
        }
        this.f8798a = iV == 0 ? -1 : iV;
        this.f8799b = zzenVar.v();
    }

    @Override // com.google.android.gms.internal.ads.zzafm
    public final int a() {
        int i10 = this.f8798a;
        return i10 == -1 ? this.f8800c.v() : i10;
    }

    @Override // com.google.android.gms.internal.ads.zzafm
    public final int zza() {
        return this.f8798a;
    }

    @Override // com.google.android.gms.internal.ads.zzafm
    public final int zzb() {
        return this.f8799b;
    }
}
