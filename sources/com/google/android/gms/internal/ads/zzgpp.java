package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.util.Objects;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzgpp extends zzgpt {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final byte[] f19422e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final int f19423f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f19424g;

    zzgpp(byte[] bArr, int i10, int i11) {
        super(null);
        Objects.requireNonNull(bArr, "buffer");
        int length = bArr.length;
        if (((length - i11) | i11) < 0) {
            throw new IllegalArgumentException(String.format("Array range is invalid. Buffer.length=%d, offset=%d, length=%d", Integer.valueOf(length), 0, Integer.valueOf(i11)));
        }
        this.f19422e = bArr;
        this.f19424g = 0;
        this.f19423f = i11;
    }

    @Override // com.google.android.gms.internal.ads.zzgpt
    public final void A(int i10, int i11) throws IOException {
        B(i10 << 3);
        B(i11);
    }

    @Override // com.google.android.gms.internal.ads.zzgpt
    public final void B(int i10) throws IOException {
        while ((i10 & (-128)) != 0) {
            try {
                byte[] bArr = this.f19422e;
                int i11 = this.f19424g;
                this.f19424g = i11 + 1;
                bArr[i11] = (byte) ((i10 & 127) | 128);
                i10 >>>= 7;
            } catch (IndexOutOfBoundsException e10) {
                throw new zzgpq(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f19424g), Integer.valueOf(this.f19423f), 1), e10);
            }
        }
        byte[] bArr2 = this.f19422e;
        int i12 = this.f19424g;
        this.f19424g = i12 + 1;
        bArr2[i12] = (byte) i10;
    }

    @Override // com.google.android.gms.internal.ads.zzgpt
    public final void C(int i10, long j10) throws IOException {
        B(i10 << 3);
        D(j10);
    }

    @Override // com.google.android.gms.internal.ads.zzgpt
    public final void D(long j10) throws IOException {
        if (zzgpt.f19427c && this.f19423f - this.f19424g >= 10) {
            while ((j10 & (-128)) != 0) {
                byte[] bArr = this.f19422e;
                int i10 = this.f19424g;
                this.f19424g = i10 + 1;
                zzgtq.y(bArr, i10, (byte) ((((int) j10) & 127) | 128));
                j10 >>>= 7;
            }
            byte[] bArr2 = this.f19422e;
            int i11 = this.f19424g;
            this.f19424g = i11 + 1;
            zzgtq.y(bArr2, i11, (byte) j10);
            return;
        }
        while ((j10 & (-128)) != 0) {
            try {
                byte[] bArr3 = this.f19422e;
                int i12 = this.f19424g;
                this.f19424g = i12 + 1;
                bArr3[i12] = (byte) ((((int) j10) & 127) | 128);
                j10 >>>= 7;
            } catch (IndexOutOfBoundsException e10) {
                throw new zzgpq(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f19424g), Integer.valueOf(this.f19423f), 1), e10);
            }
        }
        byte[] bArr4 = this.f19422e;
        int i13 = this.f19424g;
        this.f19424g = i13 + 1;
        bArr4[i13] = (byte) j10;
    }

    public final void I(byte[] bArr, int i10, int i11) throws IOException {
        try {
            System.arraycopy(bArr, i10, this.f19422e, this.f19424g, i11);
            this.f19424g += i11;
        } catch (IndexOutOfBoundsException e10) {
            throw new zzgpq(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f19424g), Integer.valueOf(this.f19423f), Integer.valueOf(i11)), e10);
        }
    }

    public final void J(String str) throws IOException {
        int i10 = this.f19424g;
        try {
            int iF = zzgpt.f(str.length() * 3);
            int iF2 = zzgpt.f(str.length());
            if (iF2 != iF) {
                B(zzgtv.e(str));
                byte[] bArr = this.f19422e;
                int i11 = this.f19424g;
                this.f19424g = zzgtv.d(str, bArr, i11, this.f19423f - i11);
                return;
            }
            int i12 = i10 + iF2;
            this.f19424g = i12;
            int iD = zzgtv.d(str, this.f19422e, i12, this.f19423f - i12);
            this.f19424g = i10;
            B((iD - i10) - iF2);
            this.f19424g = iD;
        } catch (zzgtu e10) {
            this.f19424g = i10;
            k(str, e10);
        } catch (IndexOutOfBoundsException e11) {
            throw new zzgpq(e11);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgpt, com.google.android.gms.internal.ads.zzgot
    public final void a(byte[] bArr, int i10, int i11) throws IOException {
        I(bArr, i10, i11);
    }

    @Override // com.google.android.gms.internal.ads.zzgpt
    public final void m() {
    }

    @Override // com.google.android.gms.internal.ads.zzgpt
    public final void n(byte b10) throws IOException {
        try {
            byte[] bArr = this.f19422e;
            int i10 = this.f19424g;
            this.f19424g = i10 + 1;
            bArr[i10] = b10;
        } catch (IndexOutOfBoundsException e10) {
            throw new zzgpq(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f19424g), Integer.valueOf(this.f19423f), 1), e10);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgpt
    public final void o(int i10, boolean z10) throws IOException {
        B(i10 << 3);
        n(z10 ? (byte) 1 : (byte) 0);
    }

    @Override // com.google.android.gms.internal.ads.zzgpt
    public final void p(int i10, zzgpe zzgpeVar) throws IOException {
        B((i10 << 3) | 2);
        B(zzgpeVar.o());
        zzgpeVar.A(this);
    }

    @Override // com.google.android.gms.internal.ads.zzgpt
    public final int q() {
        return this.f19423f - this.f19424g;
    }

    @Override // com.google.android.gms.internal.ads.zzgpt
    public final void r(int i10, int i11) throws IOException {
        B((i10 << 3) | 5);
        s(i11);
    }

    @Override // com.google.android.gms.internal.ads.zzgpt
    public final void s(int i10) throws IOException {
        try {
            byte[] bArr = this.f19422e;
            int i11 = this.f19424g;
            int i12 = i11 + 1;
            this.f19424g = i12;
            bArr[i11] = (byte) (i10 & 255);
            int i13 = i12 + 1;
            this.f19424g = i13;
            bArr[i12] = (byte) ((i10 >> 8) & 255);
            int i14 = i13 + 1;
            this.f19424g = i14;
            bArr[i13] = (byte) ((i10 >> 16) & 255);
            this.f19424g = i14 + 1;
            bArr[i14] = (byte) ((i10 >> 24) & 255);
        } catch (IndexOutOfBoundsException e10) {
            throw new zzgpq(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f19424g), Integer.valueOf(this.f19423f), 1), e10);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgpt
    public final void t(int i10, long j10) throws IOException {
        B((i10 << 3) | 1);
        u(j10);
    }

    @Override // com.google.android.gms.internal.ads.zzgpt
    public final void u(long j10) throws IOException {
        try {
            byte[] bArr = this.f19422e;
            int i10 = this.f19424g;
            int i11 = i10 + 1;
            this.f19424g = i11;
            bArr[i10] = (byte) (((int) j10) & 255);
            int i12 = i11 + 1;
            this.f19424g = i12;
            bArr[i11] = (byte) (((int) (j10 >> 8)) & 255);
            int i13 = i12 + 1;
            this.f19424g = i13;
            bArr[i12] = (byte) (((int) (j10 >> 16)) & 255);
            int i14 = i13 + 1;
            this.f19424g = i14;
            bArr[i13] = (byte) (((int) (j10 >> 24)) & 255);
            int i15 = i14 + 1;
            this.f19424g = i15;
            bArr[i14] = (byte) (((int) (j10 >> 32)) & 255);
            int i16 = i15 + 1;
            this.f19424g = i16;
            bArr[i15] = (byte) (((int) (j10 >> 40)) & 255);
            int i17 = i16 + 1;
            this.f19424g = i17;
            bArr[i16] = (byte) (((int) (j10 >> 48)) & 255);
            this.f19424g = i17 + 1;
            bArr[i17] = (byte) (((int) (j10 >> 56)) & 255);
        } catch (IndexOutOfBoundsException e10) {
            throw new zzgpq(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f19424g), Integer.valueOf(this.f19423f), 1), e10);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgpt
    public final void v(int i10, int i11) throws IOException {
        B(i10 << 3);
        w(i11);
    }

    @Override // com.google.android.gms.internal.ads.zzgpt
    public final void w(int i10) throws IOException {
        if (i10 >= 0) {
            B(i10);
        } else {
            D(i10);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgpt
    final void x(int i10, zzgrw zzgrwVar, zzgsp zzgspVar) throws IOException {
        B((i10 << 3) | 2);
        B(((zzgon) zzgrwVar).c(zzgspVar));
        zzgspVar.j(zzgrwVar, this.f19429a);
    }

    @Override // com.google.android.gms.internal.ads.zzgpt
    public final void y(int i10, String str) throws IOException {
        B((i10 << 3) | 2);
        J(str);
    }

    @Override // com.google.android.gms.internal.ads.zzgpt
    public final void z(int i10, int i11) throws IOException {
        B((i10 << 3) | i11);
    }
}
