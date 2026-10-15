package com.google.android.play.core.assetpacks;

import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: compiled from: com.google.android.play:core@@1.10.2 */
/* JADX INFO: loaded from: classes2.dex */
final class g0 extends InputStream {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final InputStream f25904o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private long f25905p;

    g0(InputStream inputStream, long j10) {
        this.f25904o = inputStream;
        this.f25905p = j10;
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        super.close();
        this.f25904o.close();
        this.f25905p = 0L;
    }

    @Override // java.io.InputStream
    public final int read() throws IOException {
        long j10 = this.f25905p;
        if (j10 <= 0) {
            return -1;
        }
        this.f25905p = j10 - 1;
        return this.f25904o.read();
    }

    @Override // java.io.InputStream
    public final int read(byte[] bArr, int i10, int i11) throws IOException {
        long j10 = this.f25905p;
        if (j10 <= 0) {
            return -1;
        }
        int i12 = this.f25904o.read(bArr, i10, (int) Math.min(i11, j10));
        if (i12 != -1) {
            this.f25905p -= (long) i12;
        }
        return i12;
    }
}
