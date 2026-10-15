package com.google.android.gms.internal.measurement;

import java.io.IOException;
import java.util.Objects;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-base@@20.1.2 */
/* JADX INFO: loaded from: classes2.dex */
final class zzjg extends zzjj {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final byte[] f23598d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final int f23599e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f23600f;

    zzjg(byte[] bArr, int i10, int i11) {
        super(null);
        Objects.requireNonNull(bArr, "buffer");
        int length = bArr.length;
        if (((length - i11) | i11) < 0) {
            throw new IllegalArgumentException(String.format("Array range is invalid. Buffer.length=%d, offset=%d, length=%d", Integer.valueOf(length), 0, Integer.valueOf(i11)));
        }
        this.f23598d = bArr;
        this.f23600f = 0;
        this.f23599e = i11;
    }

    public final void E(byte[] bArr, int i10, int i11) throws IOException {
        try {
            System.arraycopy(bArr, 0, this.f23598d, this.f23600f, i11);
            this.f23600f += i11;
        } catch (IndexOutOfBoundsException e10) {
            throw new zzjh(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f23600f), Integer.valueOf(this.f23599e), Integer.valueOf(i11)), e10);
        }
    }

    public final void F(String str) throws IOException {
        int i10 = this.f23600f;
        try {
            int iA = zzjj.a(str.length() * 3);
            int iA2 = zzjj.a(str.length());
            if (iA2 != iA) {
                u(zzna.c(str));
                byte[] bArr = this.f23598d;
                int i11 = this.f23600f;
                this.f23600f = zzna.b(str, bArr, i11, this.f23599e - i11);
                return;
            }
            int i12 = i10 + iA2;
            this.f23600f = i12;
            int iB = zzna.b(str, this.f23598d, i12, this.f23599e - i12);
            this.f23600f = i10;
            u((iB - i10) - iA2);
            this.f23600f = iB;
        } catch (zzmz e10) {
            this.f23600f = i10;
            e(str, e10);
        } catch (IndexOutOfBoundsException e11) {
            throw new zzjh(e11);
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzjj
    public final int g() {
        return this.f23599e - this.f23600f;
    }

    @Override // com.google.android.gms.internal.measurement.zzjj
    public final void h(byte b10) throws IOException {
        try {
            byte[] bArr = this.f23598d;
            int i10 = this.f23600f;
            this.f23600f = i10 + 1;
            bArr[i10] = b10;
        } catch (IndexOutOfBoundsException e10) {
            throw new zzjh(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f23600f), Integer.valueOf(this.f23599e), 1), e10);
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzjj
    public final void i(int i10, boolean z10) throws IOException {
        u(i10 << 3);
        h(z10 ? (byte) 1 : (byte) 0);
    }

    @Override // com.google.android.gms.internal.measurement.zzjj
    public final void j(int i10, zzjb zzjbVar) throws IOException {
        u((i10 << 3) | 2);
        u(zzjbVar.i());
        zzjbVar.m(this);
    }

    @Override // com.google.android.gms.internal.measurement.zzjj
    public final void k(int i10, int i11) throws IOException {
        u((i10 << 3) | 5);
        l(i11);
    }

    @Override // com.google.android.gms.internal.measurement.zzjj
    public final void l(int i10) throws IOException {
        try {
            byte[] bArr = this.f23598d;
            int i11 = this.f23600f;
            int i12 = i11 + 1;
            this.f23600f = i12;
            bArr[i11] = (byte) (i10 & 255);
            int i13 = i12 + 1;
            this.f23600f = i13;
            bArr[i12] = (byte) ((i10 >> 8) & 255);
            int i14 = i13 + 1;
            this.f23600f = i14;
            bArr[i13] = (byte) ((i10 >> 16) & 255);
            this.f23600f = i14 + 1;
            bArr[i14] = (byte) ((i10 >> 24) & 255);
        } catch (IndexOutOfBoundsException e10) {
            throw new zzjh(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f23600f), Integer.valueOf(this.f23599e), 1), e10);
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzjj
    public final void m(int i10, long j10) throws IOException {
        u((i10 << 3) | 1);
        n(j10);
    }

    @Override // com.google.android.gms.internal.measurement.zzjj
    public final void n(long j10) throws IOException {
        try {
            byte[] bArr = this.f23598d;
            int i10 = this.f23600f;
            int i11 = i10 + 1;
            this.f23600f = i11;
            bArr[i10] = (byte) (((int) j10) & 255);
            int i12 = i11 + 1;
            this.f23600f = i12;
            bArr[i11] = (byte) (((int) (j10 >> 8)) & 255);
            int i13 = i12 + 1;
            this.f23600f = i13;
            bArr[i12] = (byte) (((int) (j10 >> 16)) & 255);
            int i14 = i13 + 1;
            this.f23600f = i14;
            bArr[i13] = (byte) (((int) (j10 >> 24)) & 255);
            int i15 = i14 + 1;
            this.f23600f = i15;
            bArr[i14] = (byte) (((int) (j10 >> 32)) & 255);
            int i16 = i15 + 1;
            this.f23600f = i16;
            bArr[i15] = (byte) (((int) (j10 >> 40)) & 255);
            int i17 = i16 + 1;
            this.f23600f = i17;
            bArr[i16] = (byte) (((int) (j10 >> 48)) & 255);
            this.f23600f = i17 + 1;
            bArr[i17] = (byte) (((int) (j10 >> 56)) & 255);
        } catch (IndexOutOfBoundsException e10) {
            throw new zzjh(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f23600f), Integer.valueOf(this.f23599e), 1), e10);
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzjj
    public final void o(int i10, int i11) throws IOException {
        u(i10 << 3);
        p(i11);
    }

    @Override // com.google.android.gms.internal.measurement.zzjj
    public final void p(int i10) throws IOException {
        if (i10 >= 0) {
            u(i10);
        } else {
            w(i10);
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzjj
    public final void q(byte[] bArr, int i10, int i11) throws IOException {
        E(bArr, 0, i11);
    }

    @Override // com.google.android.gms.internal.measurement.zzjj
    public final void r(int i10, String str) throws IOException {
        u((i10 << 3) | 2);
        F(str);
    }

    @Override // com.google.android.gms.internal.measurement.zzjj
    public final void s(int i10, int i11) throws IOException {
        u((i10 << 3) | i11);
    }

    @Override // com.google.android.gms.internal.measurement.zzjj
    public final void t(int i10, int i11) throws IOException {
        u(i10 << 3);
        u(i11);
    }

    @Override // com.google.android.gms.internal.measurement.zzjj
    public final void u(int i10) throws IOException {
        while ((i10 & (-128)) != 0) {
            try {
                byte[] bArr = this.f23598d;
                int i11 = this.f23600f;
                this.f23600f = i11 + 1;
                bArr[i11] = (byte) ((i10 & 127) | 128);
                i10 >>>= 7;
            } catch (IndexOutOfBoundsException e10) {
                throw new zzjh(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f23600f), Integer.valueOf(this.f23599e), 1), e10);
            }
        }
        byte[] bArr2 = this.f23598d;
        int i12 = this.f23600f;
        this.f23600f = i12 + 1;
        bArr2[i12] = (byte) i10;
    }

    @Override // com.google.android.gms.internal.measurement.zzjj
    public final void v(int i10, long j10) throws IOException {
        u(i10 << 3);
        w(j10);
    }

    @Override // com.google.android.gms.internal.measurement.zzjj
    public final void w(long j10) throws IOException {
        if (zzjj.f23602c && this.f23599e - this.f23600f >= 10) {
            while ((j10 & (-128)) != 0) {
                byte[] bArr = this.f23598d;
                int i10 = this.f23600f;
                this.f23600f = i10 + 1;
                zzmv.s(bArr, i10, (byte) ((((int) j10) & 127) | 128));
                j10 >>>= 7;
            }
            byte[] bArr2 = this.f23598d;
            int i11 = this.f23600f;
            this.f23600f = i11 + 1;
            zzmv.s(bArr2, i11, (byte) j10);
            return;
        }
        while ((j10 & (-128)) != 0) {
            try {
                byte[] bArr3 = this.f23598d;
                int i12 = this.f23600f;
                this.f23600f = i12 + 1;
                bArr3[i12] = (byte) ((((int) j10) & 127) | 128);
                j10 >>>= 7;
            } catch (IndexOutOfBoundsException e10) {
                throw new zzjh(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f23600f), Integer.valueOf(this.f23599e), 1), e10);
            }
        }
        byte[] bArr4 = this.f23598d;
        int i13 = this.f23600f;
        this.f23600f = i13 + 1;
        bArr4[i13] = (byte) j10;
    }
}
