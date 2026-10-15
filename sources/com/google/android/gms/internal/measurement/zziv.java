package com.google.android.gms.internal.measurement;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-base@@20.1.2 */
/* JADX INFO: loaded from: classes2.dex */
final class zziv extends zziy {

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private final int f23586t;

    zziv(byte[] bArr, int i10, int i11) {
        super(bArr);
        zzjb.o(0, i11, bArr.length);
        this.f23586t = i11;
    }

    @Override // com.google.android.gms.internal.measurement.zziy, com.google.android.gms.internal.measurement.zzjb
    public final byte c(int i10) {
        int i11 = this.f23586t;
        if (((i11 - (i10 + 1)) | i10) >= 0) {
            return this.f23587s[i10];
        }
        if (i10 < 0) {
            throw new ArrayIndexOutOfBoundsException("Index < 0: " + i10);
        }
        throw new ArrayIndexOutOfBoundsException("Index > length: " + i10 + ", " + i11);
    }

    @Override // com.google.android.gms.internal.measurement.zziy, com.google.android.gms.internal.measurement.zzjb
    final byte g(int i10) {
        return this.f23587s[i10];
    }

    @Override // com.google.android.gms.internal.measurement.zziy, com.google.android.gms.internal.measurement.zzjb
    public final int i() {
        return this.f23586t;
    }

    @Override // com.google.android.gms.internal.measurement.zziy
    protected final int t() {
        return 0;
    }
}
