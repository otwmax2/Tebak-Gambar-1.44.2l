package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
abstract class zzgpo extends zzgpt {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    final byte[] f19418e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    final int f19419f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    int f19420g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    int f19421h;

    zzgpo(int i10) {
        super(null);
        if (i10 < 0) {
            throw new IllegalArgumentException("bufferSize must be >= 0");
        }
        byte[] bArr = new byte[Math.max(i10, 20)];
        this.f19418e = bArr;
        this.f19419f = bArr.length;
    }

    final void I(byte b10) {
        byte[] bArr = this.f19418e;
        int i10 = this.f19420g;
        this.f19420g = i10 + 1;
        bArr[i10] = b10;
        this.f19421h++;
    }

    final void J(int i10) {
        byte[] bArr = this.f19418e;
        int i11 = this.f19420g;
        int i12 = i11 + 1;
        this.f19420g = i12;
        bArr[i11] = (byte) (i10 & 255);
        int i13 = i12 + 1;
        this.f19420g = i13;
        bArr[i12] = (byte) ((i10 >> 8) & 255);
        int i14 = i13 + 1;
        this.f19420g = i14;
        bArr[i13] = (byte) ((i10 >> 16) & 255);
        this.f19420g = i14 + 1;
        bArr[i14] = (byte) ((i10 >> 24) & 255);
        this.f19421h += 4;
    }

    final void K(long j10) {
        byte[] bArr = this.f19418e;
        int i10 = this.f19420g;
        int i11 = i10 + 1;
        this.f19420g = i11;
        bArr[i10] = (byte) (j10 & 255);
        int i12 = i11 + 1;
        this.f19420g = i12;
        bArr[i11] = (byte) ((j10 >> 8) & 255);
        int i13 = i12 + 1;
        this.f19420g = i13;
        bArr[i12] = (byte) ((j10 >> 16) & 255);
        int i14 = i13 + 1;
        this.f19420g = i14;
        bArr[i13] = (byte) (255 & (j10 >> 24));
        int i15 = i14 + 1;
        this.f19420g = i15;
        bArr[i14] = (byte) (((int) (j10 >> 32)) & 255);
        int i16 = i15 + 1;
        this.f19420g = i16;
        bArr[i15] = (byte) (((int) (j10 >> 40)) & 255);
        int i17 = i16 + 1;
        this.f19420g = i17;
        bArr[i16] = (byte) (((int) (j10 >> 48)) & 255);
        this.f19420g = i17 + 1;
        bArr[i17] = (byte) (((int) (j10 >> 56)) & 255);
        this.f19421h += 8;
    }

    final void L(int i10) {
        if (!zzgpt.f19427c) {
            while ((i10 & (-128)) != 0) {
                byte[] bArr = this.f19418e;
                int i11 = this.f19420g;
                this.f19420g = i11 + 1;
                bArr[i11] = (byte) ((i10 & 127) | 128);
                this.f19421h++;
                i10 >>>= 7;
            }
            byte[] bArr2 = this.f19418e;
            int i12 = this.f19420g;
            this.f19420g = i12 + 1;
            bArr2[i12] = (byte) i10;
            this.f19421h++;
            return;
        }
        long j10 = this.f19420g;
        while ((i10 & (-128)) != 0) {
            byte[] bArr3 = this.f19418e;
            int i13 = this.f19420g;
            this.f19420g = i13 + 1;
            zzgtq.y(bArr3, i13, (byte) ((i10 & 127) | 128));
            i10 >>>= 7;
        }
        byte[] bArr4 = this.f19418e;
        int i14 = this.f19420g;
        this.f19420g = i14 + 1;
        zzgtq.y(bArr4, i14, (byte) i10);
        this.f19421h += (int) (((long) this.f19420g) - j10);
    }

    final void M(long j10) {
        if (!zzgpt.f19427c) {
            while ((j10 & (-128)) != 0) {
                byte[] bArr = this.f19418e;
                int i10 = this.f19420g;
                this.f19420g = i10 + 1;
                bArr[i10] = (byte) ((((int) j10) & 127) | 128);
                this.f19421h++;
                j10 >>>= 7;
            }
            byte[] bArr2 = this.f19418e;
            int i11 = this.f19420g;
            this.f19420g = i11 + 1;
            bArr2[i11] = (byte) j10;
            this.f19421h++;
            return;
        }
        long j11 = this.f19420g;
        while ((j10 & (-128)) != 0) {
            byte[] bArr3 = this.f19418e;
            int i12 = this.f19420g;
            this.f19420g = i12 + 1;
            zzgtq.y(bArr3, i12, (byte) ((((int) j10) & 127) | 128));
            j10 >>>= 7;
        }
        byte[] bArr4 = this.f19418e;
        int i13 = this.f19420g;
        this.f19420g = i13 + 1;
        zzgtq.y(bArr4, i13, (byte) j10);
        this.f19421h += (int) (((long) this.f19420g) - j11);
    }

    @Override // com.google.android.gms.internal.ads.zzgpt
    public final int q() {
        throw new UnsupportedOperationException("spaceLeft() can only be called on CodedOutputStreams that are writing to a flat array or ByteBuffer.");
    }
}
