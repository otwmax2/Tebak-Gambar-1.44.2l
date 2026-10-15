package com.google.android.gms.internal.drive;

/* JADX INFO: loaded from: classes2.dex */
final class zzjh extends zzjm {

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private final int f22085t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private final int f22086u;

    zzjh(byte[] bArr, int i10, int i11) {
        super(bArr);
        zzjc.m(i10, i10 + i11, bArr.length);
        this.f22085t = i10;
        this.f22086u = i11;
    }

    @Override // com.google.android.gms.internal.drive.zzjm, com.google.android.gms.internal.drive.zzjc
    public final byte r(int i10) {
        int size = size();
        if (((size - (i10 + 1)) | i10) >= 0) {
            return this.f22089s[this.f22085t + i10];
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
        sb2.append(size);
        throw new ArrayIndexOutOfBoundsException(sb2.toString());
    }

    @Override // com.google.android.gms.internal.drive.zzjm, com.google.android.gms.internal.drive.zzjc
    final byte s(int i10) {
        return this.f22089s[this.f22085t + i10];
    }

    @Override // com.google.android.gms.internal.drive.zzjm, com.google.android.gms.internal.drive.zzjc
    public final int size() {
        return this.f22086u;
    }

    @Override // com.google.android.gms.internal.drive.zzjm
    protected final int v() {
        return this.f22085t;
    }
}
