package net.lingala.zip4j.io;

import java.io.IOException;
import java.io.InputStream;
import net.lingala.zip4j.exception.ZipException;

/* JADX INFO: loaded from: classes2.dex */
public class ZipInputStream extends InputStream {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private BaseInputStream f32643o;

    public ZipInputStream(BaseInputStream baseInputStream) {
        this.f32643o = baseInputStream;
    }

    @Override // java.io.InputStream
    public int available() throws IOException {
        return this.f32643o.available();
    }

    public void b(boolean z10) throws IOException {
        try {
            this.f32643o.close();
            if (z10 || this.f32643o.b() == null) {
                return;
            }
            this.f32643o.b().b();
        } catch (ZipException e10) {
            throw new IOException(e10.getMessage());
        }
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        b(false);
    }

    @Override // java.io.InputStream
    public int read() throws IOException {
        int i10 = this.f32643o.read();
        if (i10 != -1) {
            this.f32643o.b().u(i10);
        }
        return i10;
    }

    @Override // java.io.InputStream
    public long skip(long j10) throws IOException {
        return this.f32643o.skip(j10);
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr) throws IOException {
        return read(bArr, 0, bArr.length);
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr, int i10, int i11) throws IOException {
        int i12 = this.f32643o.read(bArr, i10, i11);
        if (i12 > 0 && this.f32643o.b() != null) {
            this.f32643o.b().v(bArr, i10, i12);
        }
        return i12;
    }
}
