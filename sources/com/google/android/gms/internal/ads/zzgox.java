package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzgox extends zzgpa {

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private final int f19370t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private final int f19371u;

    zzgox(byte[] bArr, int i10, int i11) {
        super(bArr);
        zzgpe.C(i10, i10 + i11, bArr.length);
        this.f19370t = i10;
        this.f19371u = i11;
    }

    @Override // com.google.android.gms.internal.ads.zzgpa
    protected final int Q() {
        return this.f19370t;
    }

    @Override // com.google.android.gms.internal.ads.zzgpa, com.google.android.gms.internal.ads.zzgpe
    public final byte l(int i10) {
        zzgpe.g(i10, this.f19371u);
        return this.f19372s[this.f19370t + i10];
    }

    @Override // com.google.android.gms.internal.ads.zzgpa, com.google.android.gms.internal.ads.zzgpe
    final byte m(int i10) {
        return this.f19372s[this.f19370t + i10];
    }

    @Override // com.google.android.gms.internal.ads.zzgpa, com.google.android.gms.internal.ads.zzgpe
    public final int o() {
        return this.f19371u;
    }

    @Override // com.google.android.gms.internal.ads.zzgpa, com.google.android.gms.internal.ads.zzgpe
    protected final void p(byte[] bArr, int i10, int i11, int i12) {
        System.arraycopy(this.f19372s, this.f19370t + i10, bArr, i11, i12);
    }
}
