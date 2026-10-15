package com.google.android.gms.internal.auth;

/* JADX INFO: compiled from: com.google.android.gms:play-services-auth-base@@17.1.4 */
/* JADX INFO: loaded from: classes2.dex */
final class zzdw extends zzdz {

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private final int f21460t;

    zzdw(byte[] bArr, int i10, int i11) {
        super(bArr);
        zzeb.n(0, i11, bArr.length);
        this.f21460t = i11;
    }

    @Override // com.google.android.gms.internal.auth.zzdz, com.google.android.gms.internal.auth.zzeb
    public final byte c(int i10) {
        int i11 = this.f21460t;
        if (((i11 - (i10 + 1)) | i10) >= 0) {
            return this.f21461s[i10];
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
        sb2.append(i11);
        throw new ArrayIndexOutOfBoundsException(sb2.toString());
    }

    @Override // com.google.android.gms.internal.auth.zzdz, com.google.android.gms.internal.auth.zzeb
    final byte g(int i10) {
        return this.f21461s[i10];
    }

    @Override // com.google.android.gms.internal.auth.zzdz, com.google.android.gms.internal.auth.zzeb
    public final int i() {
        return this.f21460t;
    }

    @Override // com.google.android.gms.internal.auth.zzdz
    protected final int s() {
        return 0;
    }
}
