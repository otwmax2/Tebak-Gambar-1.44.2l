package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzafp implements zzafm {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzen f8801a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f8802b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final int f8803c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f8804d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f8805e;

    public zzafp(zzafi zzafiVar) {
        zzen zzenVar = zzafiVar.f8779b;
        this.f8801a = zzenVar;
        zzenVar.f(12);
        this.f8803c = zzenVar.v() & 255;
        this.f8802b = zzenVar.v();
    }

    @Override // com.google.android.gms.internal.ads.zzafm
    public final int a() {
        int i10 = this.f8803c;
        if (i10 == 8) {
            return this.f8801a.s();
        }
        if (i10 == 16) {
            return this.f8801a.w();
        }
        int i11 = this.f8804d;
        this.f8804d = i11 + 1;
        if (i11 % 2 != 0) {
            return this.f8805e & 15;
        }
        int iS = this.f8801a.s();
        this.f8805e = iS;
        return (iS & 240) >> 4;
    }

    @Override // com.google.android.gms.internal.ads.zzafm
    public final int zza() {
        return -1;
    }

    @Override // com.google.android.gms.internal.ads.zzafm
    public final int zzb() {
        return this.f8802b;
    }
}
