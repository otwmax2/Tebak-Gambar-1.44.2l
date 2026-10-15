package com.google.android.gms.internal.measurement;

import java.io.IOException;
import java.nio.charset.Charset;
import java.util.Objects;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-base@@20.1.2 */
/* JADX INFO: loaded from: classes2.dex */
class zziy extends zzix {

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    protected final byte[] f23587s;

    zziy(byte[] bArr) {
        Objects.requireNonNull(bArr);
        this.f23587s = bArr;
    }

    @Override // com.google.android.gms.internal.measurement.zzjb
    public byte c(int i10) {
        return this.f23587s[i10];
    }

    @Override // com.google.android.gms.internal.measurement.zzjb
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzjb) || i() != ((zzjb) obj).i()) {
            return false;
        }
        if (i() == 0) {
            return true;
        }
        if (!(obj instanceof zziy)) {
            return obj.equals(this);
        }
        zziy zziyVar = (zziy) obj;
        int iP = p();
        int iP2 = zziyVar.p();
        if (iP != 0 && iP2 != 0 && iP != iP2) {
            return false;
        }
        int i10 = i();
        if (i10 > zziyVar.i()) {
            throw new IllegalArgumentException("Length too large: " + i10 + i());
        }
        if (i10 > zziyVar.i()) {
            throw new IllegalArgumentException("Ran off end of other: 0, " + i10 + ", " + zziyVar.i());
        }
        byte[] bArr = this.f23587s;
        byte[] bArr2 = zziyVar.f23587s;
        zziyVar.t();
        int i11 = 0;
        int i12 = 0;
        while (i11 < i10) {
            if (bArr[i11] != bArr2[i12]) {
                return false;
            }
            i11++;
            i12++;
        }
        return true;
    }

    @Override // com.google.android.gms.internal.measurement.zzjb
    byte g(int i10) {
        return this.f23587s[i10];
    }

    @Override // com.google.android.gms.internal.measurement.zzjb
    public int i() {
        return this.f23587s.length;
    }

    @Override // com.google.android.gms.internal.measurement.zzjb
    protected final int j(int i10, int i11, int i12) {
        return zzkk.d(i10, this.f23587s, 0, i12);
    }

    @Override // com.google.android.gms.internal.measurement.zzjb
    public final zzjb k(int i10, int i11) {
        int iO = zzjb.o(0, i11, i());
        return iO == 0 ? zzjb.f23589p : new zziv(this.f23587s, 0, iO);
    }

    @Override // com.google.android.gms.internal.measurement.zzjb
    protected final String l(Charset charset) {
        return new String(this.f23587s, 0, i(), charset);
    }

    @Override // com.google.android.gms.internal.measurement.zzjb
    final void m(zzir zzirVar) throws IOException {
        ((zzjg) zzirVar).E(this.f23587s, 0, i());
    }

    @Override // com.google.android.gms.internal.measurement.zzjb
    public final boolean n() {
        return zzna.f(this.f23587s, 0, i());
    }

    protected int t() {
        return 0;
    }
}
