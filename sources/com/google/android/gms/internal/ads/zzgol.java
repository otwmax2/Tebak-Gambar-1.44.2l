package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzgol {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final byte[] f19355a = new byte[256];

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f19356b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f19357c;

    public zzgol(byte[] bArr) {
        for (int i10 = 0; i10 < 256; i10++) {
            this.f19355a[i10] = (byte) i10;
        }
        int i11 = 0;
        for (int i12 = 0; i12 < 256; i12++) {
            byte[] bArr2 = this.f19355a;
            byte b10 = bArr2[i12];
            i11 = (i11 + b10 + bArr[i12 % bArr.length]) & 255;
            bArr2[i12] = bArr2[i11];
            bArr2[i11] = b10;
        }
        this.f19356b = 0;
        this.f19357c = 0;
    }

    public final void a(byte[] bArr) {
        int i10 = this.f19356b;
        int i11 = this.f19357c;
        for (int i12 = 0; i12 < 256; i12++) {
            byte[] bArr2 = this.f19355a;
            i10 = (i10 + 1) & 255;
            byte b10 = bArr2[i10];
            i11 = (i11 + b10) & 255;
            bArr2[i10] = bArr2[i11];
            bArr2[i11] = b10;
            bArr[i12] = (byte) (bArr2[(bArr2[i10] + b10) & 255] ^ bArr[i12]);
        }
        this.f19356b = i10;
        this.f19357c = i11;
    }
}
