package com.google.android.gms.internal.firebase_messaging;

import java.io.OutputStream;

/* JADX INFO: compiled from: com.google.firebase:firebase-messaging@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzw extends OutputStream {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private long f23013o = 0;

    zzw() {
    }

    final long b() {
        return this.f23013o;
    }

    @Override // java.io.OutputStream
    public final void write(int i10) {
        this.f23013o++;
    }

    @Override // java.io.OutputStream
    public final void write(byte[] bArr) {
        this.f23013o += (long) bArr.length;
    }

    @Override // java.io.OutputStream
    public final void write(byte[] bArr, int i10, int i11) {
        int length;
        int i12;
        if (i10 < 0 || i10 > (length = bArr.length) || i11 < 0 || (i12 = i10 + i11) > length || i12 < 0) {
            throw new IndexOutOfBoundsException();
        }
        this.f23013o += (long) i11;
    }
}
