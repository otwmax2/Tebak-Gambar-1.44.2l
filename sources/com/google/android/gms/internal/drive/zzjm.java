package com.google.android.gms.internal.drive;

import java.io.IOException;
import java.nio.charset.Charset;
import java.util.Objects;

/* JADX INFO: loaded from: classes2.dex */
class zzjm extends zzjl {

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    protected final byte[] f22089s;

    zzjm(byte[] bArr) {
        Objects.requireNonNull(bArr);
        this.f22089s = bArr;
    }

    @Override // com.google.android.gms.internal.drive.zzjc
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzjc) || size() != ((zzjc) obj).size()) {
            return false;
        }
        if (size() == 0) {
            return true;
        }
        if (!(obj instanceof zzjm)) {
            return obj.equals(this);
        }
        zzjm zzjmVar = (zzjm) obj;
        int iP = p();
        int iP2 = zzjmVar.p();
        if (iP == 0 || iP2 == 0 || iP == iP2) {
            return u(zzjmVar, 0, size());
        }
        return false;
    }

    @Override // com.google.android.gms.internal.drive.zzjc
    protected final int g(int i10, int i11, int i12) {
        return zzkm.c(i10, this.f22089s, v(), i12);
    }

    @Override // com.google.android.gms.internal.drive.zzjc
    public final zzjc i(int i10, int i11) {
        int iM = zzjc.m(0, i11, size());
        return iM == 0 ? zzjc.f22078p : new zzjh(this.f22089s, v(), iM);
    }

    @Override // com.google.android.gms.internal.drive.zzjc
    protected final String j(Charset charset) {
        return new String(this.f22089s, v(), size(), charset);
    }

    @Override // com.google.android.gms.internal.drive.zzjc
    final void k(zzjb zzjbVar) throws IOException {
        zzjbVar.a(this.f22089s, v(), size());
    }

    @Override // com.google.android.gms.internal.drive.zzjc
    public final boolean o() {
        int iV = v();
        return zznf.h(this.f22089s, iV, size() + iV);
    }

    @Override // com.google.android.gms.internal.drive.zzjc
    public byte r(int i10) {
        return this.f22089s[i10];
    }

    @Override // com.google.android.gms.internal.drive.zzjc
    byte s(int i10) {
        return this.f22089s[i10];
    }

    @Override // com.google.android.gms.internal.drive.zzjc
    public int size() {
        return this.f22089s.length;
    }

    @Override // com.google.android.gms.internal.drive.zzjl
    final boolean u(zzjc zzjcVar, int i10, int i11) {
        if (i11 > zzjcVar.size()) {
            int size = size();
            StringBuilder sb = new StringBuilder(40);
            sb.append("Length too large: ");
            sb.append(i11);
            sb.append(size);
            throw new IllegalArgumentException(sb.toString());
        }
        if (i11 > zzjcVar.size()) {
            int size2 = zzjcVar.size();
            StringBuilder sb2 = new StringBuilder(59);
            sb2.append("Ran off end of other: 0, ");
            sb2.append(i11);
            sb2.append(", ");
            sb2.append(size2);
            throw new IllegalArgumentException(sb2.toString());
        }
        if (!(zzjcVar instanceof zzjm)) {
            return zzjcVar.i(0, i11).equals(i(0, i11));
        }
        zzjm zzjmVar = (zzjm) zzjcVar;
        byte[] bArr = this.f22089s;
        byte[] bArr2 = zzjmVar.f22089s;
        int iV = v() + i11;
        int iV2 = v();
        int iV3 = zzjmVar.v();
        while (iV2 < iV) {
            if (bArr[iV2] != bArr2[iV3]) {
                return false;
            }
            iV2++;
            iV3++;
        }
        return true;
    }

    protected int v() {
        return 0;
    }
}
