package com.google.android.gms.internal.firebase_auth;

import java.io.IOException;
import java.nio.charset.Charset;
import java.util.Objects;

/* JADX INFO: compiled from: com.google.firebase:firebase-auth@@19.3.1 */
/* JADX INFO: loaded from: classes2.dex */
class zzhf extends zzhc {

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    protected final byte[] f22655s;

    zzhf(byte[] bArr) {
        Objects.requireNonNull(bArr);
        this.f22655s = bArr;
    }

    @Override // com.google.android.gms.internal.firebase_auth.zzgv
    public final boolean a() {
        int iV = v();
        return zzlh.g(this.f22655s, iV, g() + iV);
    }

    @Override // com.google.android.gms.internal.firebase_auth.zzgv
    public byte c(int i10) {
        return this.f22655s[i10];
    }

    @Override // com.google.android.gms.internal.firebase_auth.zzgv
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzgv) || g() != ((zzgv) obj).g()) {
            return false;
        }
        if (g() == 0) {
            return true;
        }
        if (!(obj instanceof zzhf)) {
            return obj.equals(this);
        }
        zzhf zzhfVar = (zzhf) obj;
        int iT = t();
        int iT2 = zzhfVar.t();
        if (iT == 0 || iT2 == 0 || iT == iT2) {
            return u(zzhfVar, 0, g());
        }
        return false;
    }

    @Override // com.google.android.gms.internal.firebase_auth.zzgv
    public int g() {
        return this.f22655s.length;
    }

    @Override // com.google.android.gms.internal.firebase_auth.zzgv
    protected final int j(int i10, int i11, int i12) {
        return zzii.a(i10, this.f22655s, v(), i12);
    }

    @Override // com.google.android.gms.internal.firebase_auth.zzgv
    public final zzgv k(int i10, int i11) {
        int iQ = zzgv.q(0, i11, g());
        return iQ == 0 ? zzgv.f22647p : new zzgy(this.f22655s, v(), iQ);
    }

    @Override // com.google.android.gms.internal.firebase_auth.zzgv
    protected final String m(Charset charset) {
        return new String(this.f22655s, v(), g(), charset);
    }

    @Override // com.google.android.gms.internal.firebase_auth.zzgv
    final void n(zzgs zzgsVar) throws IOException {
        zzgsVar.a(this.f22655s, v(), g());
    }

    @Override // com.google.android.gms.internal.firebase_auth.zzgv
    byte o(int i10) {
        return this.f22655s[i10];
    }

    @Override // com.google.android.gms.internal.firebase_auth.zzhc
    final boolean u(zzgv zzgvVar, int i10, int i11) {
        if (i11 > zzgvVar.g()) {
            int iG = g();
            StringBuilder sb = new StringBuilder(40);
            sb.append("Length too large: ");
            sb.append(i11);
            sb.append(iG);
            throw new IllegalArgumentException(sb.toString());
        }
        if (i11 > zzgvVar.g()) {
            int iG2 = zzgvVar.g();
            StringBuilder sb2 = new StringBuilder(59);
            sb2.append("Ran off end of other: 0, ");
            sb2.append(i11);
            sb2.append(", ");
            sb2.append(iG2);
            throw new IllegalArgumentException(sb2.toString());
        }
        if (!(zzgvVar instanceof zzhf)) {
            return zzgvVar.k(0, i11).equals(k(0, i11));
        }
        zzhf zzhfVar = (zzhf) zzgvVar;
        byte[] bArr = this.f22655s;
        byte[] bArr2 = zzhfVar.f22655s;
        int iV = v() + i11;
        int iV2 = v();
        int iV3 = zzhfVar.v();
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
