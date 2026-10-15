package com.google.android.gms.internal.auth;

import java.nio.charset.Charset;
import java.util.Objects;

/* JADX INFO: compiled from: com.google.android.gms:play-services-auth-base@@17.1.4 */
/* JADX INFO: loaded from: classes2.dex */
class zzdz extends zzdy {

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    protected final byte[] f21461s;

    zzdz(byte[] bArr) {
        Objects.requireNonNull(bArr);
        this.f21461s = bArr;
    }

    @Override // com.google.android.gms.internal.auth.zzeb
    public byte c(int i10) {
        return this.f21461s[i10];
    }

    @Override // com.google.android.gms.internal.auth.zzeb
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzeb) || i() != ((zzeb) obj).i()) {
            return false;
        }
        if (i() == 0) {
            return true;
        }
        if (!(obj instanceof zzdz)) {
            return obj.equals(this);
        }
        zzdz zzdzVar = (zzdz) obj;
        int iO = o();
        int iO2 = zzdzVar.o();
        if (iO != 0 && iO2 != 0 && iO != iO2) {
            return false;
        }
        int i10 = i();
        if (i10 > zzdzVar.i()) {
            int i11 = i();
            StringBuilder sb = new StringBuilder(40);
            sb.append("Length too large: ");
            sb.append(i10);
            sb.append(i11);
            throw new IllegalArgumentException(sb.toString());
        }
        if (i10 > zzdzVar.i()) {
            int i12 = zzdzVar.i();
            StringBuilder sb2 = new StringBuilder(59);
            sb2.append("Ran off end of other: 0, ");
            sb2.append(i10);
            sb2.append(", ");
            sb2.append(i12);
            throw new IllegalArgumentException(sb2.toString());
        }
        byte[] bArr = this.f21461s;
        byte[] bArr2 = zzdzVar.f21461s;
        zzdzVar.s();
        int i13 = 0;
        int i14 = 0;
        while (i13 < i10) {
            if (bArr[i13] != bArr2[i14]) {
                return false;
            }
            i13++;
            i14++;
        }
        return true;
    }

    @Override // com.google.android.gms.internal.auth.zzeb
    byte g(int i10) {
        return this.f21461s[i10];
    }

    @Override // com.google.android.gms.internal.auth.zzeb
    public int i() {
        return this.f21461s.length;
    }

    @Override // com.google.android.gms.internal.auth.zzeb
    protected final int j(int i10, int i11, int i12) {
        return zzev.d(i10, this.f21461s, 0, i12);
    }

    @Override // com.google.android.gms.internal.auth.zzeb
    public final zzeb k(int i10, int i11) {
        int iN = zzeb.n(0, i11, i());
        return iN == 0 ? zzeb.f21462p : new zzdw(this.f21461s, 0, iN);
    }

    @Override // com.google.android.gms.internal.auth.zzeb
    protected final String l(Charset charset) {
        return new String(this.f21461s, 0, i(), charset);
    }

    @Override // com.google.android.gms.internal.auth.zzeb
    public final boolean m() {
        return zzhd.d(this.f21461s, 0, i());
    }

    protected int s() {
        return 0;
    }
}
