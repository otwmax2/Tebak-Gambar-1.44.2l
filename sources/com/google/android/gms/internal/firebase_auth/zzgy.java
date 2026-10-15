package com.google.android.gms.internal.firebase_auth;

/* JADX INFO: compiled from: com.google.firebase:firebase-auth@@19.3.1 */
/* JADX INFO: loaded from: classes2.dex */
final class zzgy extends zzhf {

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private final int f22651t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private final int f22652u;

    zzgy(byte[] bArr, int i10, int i11) {
        super(bArr);
        zzgv.q(i10, i10 + i11, bArr.length);
        this.f22651t = i10;
        this.f22652u = i11;
    }

    @Override // com.google.android.gms.internal.firebase_auth.zzhf, com.google.android.gms.internal.firebase_auth.zzgv
    public final byte c(int i10) {
        int iG = g();
        if (((iG - (i10 + 1)) | i10) >= 0) {
            return this.f22655s[this.f22651t + i10];
        }
        if (i10 < 0) {
            StringBuilder sb = new StringBuilder(22);
            sb.append("Index < 0: ");
            sb.append(i10);
            throw new ArrayIndexOutOfBoundsException(sb.toString());
        }
        StringBuilder sb2 = new StringBuilder(40);
        sb2.append("Index > length: ");
        sb2.append(i10);
        sb2.append(", ");
        sb2.append(iG);
        throw new ArrayIndexOutOfBoundsException(sb2.toString());
    }

    @Override // com.google.android.gms.internal.firebase_auth.zzhf, com.google.android.gms.internal.firebase_auth.zzgv
    public final int g() {
        return this.f22652u;
    }

    @Override // com.google.android.gms.internal.firebase_auth.zzhf, com.google.android.gms.internal.firebase_auth.zzgv
    final byte o(int i10) {
        return this.f22655s[this.f22651t + i10];
    }

    @Override // com.google.android.gms.internal.firebase_auth.zzhf
    protected final int v() {
        return this.f22651t;
    }
}
