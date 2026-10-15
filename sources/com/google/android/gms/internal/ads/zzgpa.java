package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.util.Objects;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
class zzgpa extends zzgoz {

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    protected final byte[] f19372s;

    zzgpa(byte[] bArr) {
        Objects.requireNonNull(bArr);
        this.f19372s = bArr;
    }

    @Override // com.google.android.gms.internal.ads.zzgpe
    final void A(zzgot zzgotVar) throws IOException {
        zzgotVar.a(this.f19372s, Q(), o());
    }

    @Override // com.google.android.gms.internal.ads.zzgpe
    public final boolean B() {
        int iQ = Q();
        return zzgtv.j(this.f19372s, iQ, o() + iQ);
    }

    @Override // com.google.android.gms.internal.ads.zzgoz
    final boolean P(zzgpe zzgpeVar, int i10, int i11) {
        if (i11 > zzgpeVar.o()) {
            throw new IllegalArgumentException("Length too large: " + i11 + o());
        }
        int i12 = i10 + i11;
        if (i12 > zzgpeVar.o()) {
            throw new IllegalArgumentException("Ran off end of other: " + i10 + ", " + i11 + ", " + zzgpeVar.o());
        }
        if (!(zzgpeVar instanceof zzgpa)) {
            return zzgpeVar.u(i10, i12).equals(u(0, i11));
        }
        zzgpa zzgpaVar = (zzgpa) zzgpeVar;
        byte[] bArr = this.f19372s;
        byte[] bArr2 = zzgpaVar.f19372s;
        int iQ = Q() + i11;
        int iQ2 = Q();
        int iQ3 = zzgpaVar.Q() + i10;
        while (iQ2 < iQ) {
            if (bArr[iQ2] != bArr2[iQ3]) {
                return false;
            }
            iQ2++;
            iQ3++;
        }
        return true;
    }

    protected int Q() {
        return 0;
    }

    @Override // com.google.android.gms.internal.ads.zzgpe
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzgpe) || o() != ((zzgpe) obj).o()) {
            return false;
        }
        if (o() == 0) {
            return true;
        }
        if (!(obj instanceof zzgpa)) {
            return obj.equals(this);
        }
        zzgpa zzgpaVar = (zzgpa) obj;
        int iD = D();
        int iD2 = zzgpaVar.D();
        if (iD == 0 || iD2 == 0 || iD == iD2) {
            return P(zzgpaVar, 0, o());
        }
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzgpe
    public byte l(int i10) {
        return this.f19372s[i10];
    }

    @Override // com.google.android.gms.internal.ads.zzgpe
    byte m(int i10) {
        return this.f19372s[i10];
    }

    @Override // com.google.android.gms.internal.ads.zzgpe
    public int o() {
        return this.f19372s.length;
    }

    @Override // com.google.android.gms.internal.ads.zzgpe
    protected void p(byte[] bArr, int i10, int i11, int i12) {
        System.arraycopy(this.f19372s, i10, bArr, i11, i12);
    }

    @Override // com.google.android.gms.internal.ads.zzgpe
    protected final int s(int i10, int i11, int i12) {
        return zzgqw.d(i10, this.f19372s, Q() + i11, i12);
    }

    @Override // com.google.android.gms.internal.ads.zzgpe
    protected final int t(int i10, int i11, int i12) {
        int iQ = Q() + i11;
        return zzgtv.f(i10, this.f19372s, iQ, i12 + iQ);
    }

    @Override // com.google.android.gms.internal.ads.zzgpe
    public final zzgpe u(int i10, int i11) {
        int iC = zzgpe.C(i10, i11, o());
        return iC == 0 ? zzgpe.f19379p : new zzgox(this.f19372s, Q() + i10, iC);
    }

    @Override // com.google.android.gms.internal.ads.zzgpe
    public final zzgpm v() {
        return zzgpm.h(this.f19372s, Q(), o(), true);
    }

    @Override // com.google.android.gms.internal.ads.zzgpe
    protected final String x(Charset charset) {
        return new String(this.f19372s, Q(), o(), charset);
    }

    @Override // com.google.android.gms.internal.ads.zzgpe
    public final ByteBuffer y() {
        return ByteBuffer.wrap(this.f19372s, Q(), o()).asReadOnlyBuffer();
    }
}
