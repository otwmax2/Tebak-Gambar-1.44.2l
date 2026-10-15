package com.google.android.gms.internal.ads;

import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzali extends FilterInputStream {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final long f9494o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private long f9495p;

    zzali(InputStream inputStream, long j10) {
        super(inputStream);
        this.f9494o = j10;
    }

    final long b() {
        return this.f9494o - this.f9495p;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final int read() throws IOException {
        int i10 = super.read();
        if (i10 != -1) {
            this.f9495p++;
        }
        return i10;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final int read(byte[] bArr, int i10, int i11) throws IOException {
        int i12 = super.read(bArr, i10, i11);
        if (i12 != -1) {
            this.f9495p += (long) i12;
        }
        return i12;
    }
}
