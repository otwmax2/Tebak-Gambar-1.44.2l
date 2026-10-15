package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzabp implements zzabk {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f8421a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f8422b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f8423c;

    private zzabp(int i10, int i11, int i12, int i13) {
        this.f8421a = i10;
        this.f8422b = i11;
        this.f8423c = i12;
    }

    public static zzabp a(zzen zzenVar) {
        int iO = zzenVar.o();
        zzenVar.g(8);
        int iO2 = zzenVar.o();
        int iO3 = zzenVar.o();
        zzenVar.g(4);
        int iO4 = zzenVar.o();
        zzenVar.g(12);
        return new zzabp(iO, iO2, iO3, iO4);
    }

    @Override // com.google.android.gms.internal.ads.zzabk
    public final int zza() {
        return 1751742049;
    }
}
