package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.io.OutputStream;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzgpr extends zzgpo {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final OutputStream f19425i;

    zzgpr(OutputStream outputStream, int i10) {
        super(i10);
        this.f19425i = outputStream;
    }

    private final void N() throws IOException {
        this.f19425i.write(this.f19418e, 0, this.f19420g);
        this.f19420g = 0;
    }

    private final void O(int i10) throws IOException {
        if (this.f19419f - this.f19420g < i10) {
            N();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgpt
    public final void A(int i10, int i11) throws IOException {
        O(20);
        L(i10 << 3);
        L(i11);
    }

    @Override // com.google.android.gms.internal.ads.zzgpt
    public final void B(int i10) throws IOException {
        O(5);
        L(i10);
    }

    @Override // com.google.android.gms.internal.ads.zzgpt
    public final void C(int i10, long j10) throws IOException {
        O(20);
        L(i10 << 3);
        M(j10);
    }

    @Override // com.google.android.gms.internal.ads.zzgpt
    public final void D(long j10) throws IOException {
        O(10);
        M(j10);
    }

    public final void P(byte[] bArr, int i10, int i11) throws IOException {
        int i12 = this.f19419f;
        int i13 = this.f19420g;
        int i14 = i12 - i13;
        if (i14 >= i11) {
            System.arraycopy(bArr, i10, this.f19418e, i13, i11);
            this.f19420g += i11;
            this.f19421h += i11;
            return;
        }
        System.arraycopy(bArr, i10, this.f19418e, i13, i14);
        int i15 = i10 + i14;
        this.f19420g = this.f19419f;
        this.f19421h += i14;
        N();
        int i16 = i11 - i14;
        if (i16 <= this.f19419f) {
            System.arraycopy(bArr, i15, this.f19418e, 0, i16);
            this.f19420g = i16;
        } else {
            this.f19425i.write(bArr, i15, i16);
        }
        this.f19421h += i16;
    }

    public final void Q(String str) throws IOException {
        int iE;
        try {
            int length = str.length() * 3;
            int iF = zzgpt.f(length);
            int i10 = iF + length;
            int i11 = this.f19419f;
            if (i10 > i11) {
                byte[] bArr = new byte[length];
                int iD = zzgtv.d(str, bArr, 0, length);
                B(iD);
                P(bArr, 0, iD);
                return;
            }
            if (i10 > i11 - this.f19420g) {
                N();
            }
            int iF2 = zzgpt.f(str.length());
            int i12 = this.f19420g;
            try {
                if (iF2 == iF) {
                    int i13 = i12 + iF2;
                    this.f19420g = i13;
                    int iD2 = zzgtv.d(str, this.f19418e, i13, this.f19419f - i13);
                    this.f19420g = i12;
                    iE = (iD2 - i12) - iF2;
                    L(iE);
                    this.f19420g = iD2;
                } else {
                    iE = zzgtv.e(str);
                    L(iE);
                    this.f19420g = zzgtv.d(str, this.f19418e, this.f19420g, iE);
                }
                this.f19421h += iE;
            } catch (zzgtu e10) {
                this.f19421h -= this.f19420g - i12;
                this.f19420g = i12;
                throw e10;
            } catch (ArrayIndexOutOfBoundsException e11) {
                throw new zzgpq(e11);
            }
        } catch (zzgtu e12) {
            k(str, e12);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgpt, com.google.android.gms.internal.ads.zzgot
    public final void a(byte[] bArr, int i10, int i11) throws IOException {
        P(bArr, i10, i11);
    }

    @Override // com.google.android.gms.internal.ads.zzgpt
    public final void m() throws IOException {
        if (this.f19420g > 0) {
            N();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgpt
    public final void n(byte b10) throws IOException {
        if (this.f19420g == this.f19419f) {
            N();
        }
        I(b10);
    }

    @Override // com.google.android.gms.internal.ads.zzgpt
    public final void o(int i10, boolean z10) throws IOException {
        O(11);
        L(i10 << 3);
        I(z10 ? (byte) 1 : (byte) 0);
    }

    @Override // com.google.android.gms.internal.ads.zzgpt
    public final void p(int i10, zzgpe zzgpeVar) throws IOException {
        B((i10 << 3) | 2);
        B(zzgpeVar.o());
        zzgpeVar.A(this);
    }

    @Override // com.google.android.gms.internal.ads.zzgpt
    public final void r(int i10, int i11) throws IOException {
        O(14);
        L((i10 << 3) | 5);
        J(i11);
    }

    @Override // com.google.android.gms.internal.ads.zzgpt
    public final void s(int i10) throws IOException {
        O(4);
        J(i10);
    }

    @Override // com.google.android.gms.internal.ads.zzgpt
    public final void t(int i10, long j10) throws IOException {
        O(18);
        L((i10 << 3) | 1);
        K(j10);
    }

    @Override // com.google.android.gms.internal.ads.zzgpt
    public final void u(long j10) throws IOException {
        O(8);
        K(j10);
    }

    @Override // com.google.android.gms.internal.ads.zzgpt
    public final void v(int i10, int i11) throws IOException {
        O(20);
        L(i10 << 3);
        if (i11 >= 0) {
            L(i11);
        } else {
            M(i11);
        }
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
        Q(str);
    }

    @Override // com.google.android.gms.internal.ads.zzgpt
    public final void z(int i10, int i11) throws IOException {
        B((i10 << 3) | i11);
    }
}
