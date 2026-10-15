package net.lingala.zip4j.io;

import java.io.EOFException;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.util.Objects;
import java.util.zip.DataFormatException;
import java.util.zip.Inflater;
import net.lingala.zip4j.unzip.UnzipEngine;

/* JADX INFO: loaded from: classes2.dex */
public class InflaterInputStream extends PartInputStream {
    private byte[] A;
    private UnzipEngine B;
    private long C;
    private long D;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private Inflater f32625y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private byte[] f32626z;

    public InflaterInputStream(RandomAccessFile randomAccessFile, long j10, long j11, UnzipEngine unzipEngine) {
        super(randomAccessFile, j10, j11, unzipEngine);
        this.A = new byte[1];
        this.f32625y = new Inflater(true);
        this.f32626z = new byte[4096];
        this.B = unzipEngine;
        this.C = 0L;
        this.D = unzipEngine.j().r();
    }

    private void d() throws IOException {
        byte[] bArr = this.f32626z;
        int i10 = super.read(bArr, 0, bArr.length);
        if (i10 == -1) {
            throw new EOFException("Unexpected end of ZLIB input stream");
        }
        this.f32625y.setInput(this.f32626z, 0, i10);
    }

    private void e() throws IOException {
        while (super.read(new byte[1024], 0, 1024) != -1) {
        }
        c();
    }

    @Override // net.lingala.zip4j.io.PartInputStream, net.lingala.zip4j.io.BaseInputStream, java.io.InputStream
    public int available() {
        return !this.f32625y.finished() ? 1 : 0;
    }

    @Override // net.lingala.zip4j.io.PartInputStream, net.lingala.zip4j.io.BaseInputStream
    public UnzipEngine b() {
        return super.b();
    }

    @Override // net.lingala.zip4j.io.PartInputStream, java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f32625y.end();
        super.close();
    }

    @Override // net.lingala.zip4j.io.PartInputStream, net.lingala.zip4j.io.BaseInputStream, java.io.InputStream
    public int read() throws IOException {
        if (read(this.A, 0, 1) == -1) {
            return -1;
        }
        return this.A[0] & 255;
    }

    @Override // net.lingala.zip4j.io.PartInputStream, java.io.InputStream
    public long skip(long j10) throws IOException {
        if (j10 < 0) {
            throw new IllegalArgumentException("negative skip length");
        }
        int iMin = (int) Math.min(j10, 2147483647L);
        byte[] bArr = new byte[512];
        int i10 = 0;
        while (i10 < iMin) {
            int i11 = iMin - i10;
            if (i11 > 512) {
                i11 = 512;
            }
            int i12 = read(bArr, 0, i11);
            if (i12 == -1) {
                break;
            }
            i10 += i12;
        }
        return i10;
    }

    @Override // net.lingala.zip4j.io.PartInputStream, java.io.InputStream
    public int read(byte[] bArr) throws IOException {
        Objects.requireNonNull(bArr, "input buffer is null");
        return read(bArr, 0, bArr.length);
    }

    @Override // net.lingala.zip4j.io.PartInputStream, java.io.InputStream
    public int read(byte[] bArr, int i10, int i11) throws IOException {
        Objects.requireNonNull(bArr, "input buffer is null");
        if (i10 < 0 || i11 < 0 || i11 > bArr.length - i10) {
            throw new IndexOutOfBoundsException();
        }
        if (i11 == 0) {
            return 0;
        }
        try {
            if (this.C >= this.D) {
                e();
                return -1;
            }
            while (true) {
                int iInflate = this.f32625y.inflate(bArr, i10, i11);
                if (iInflate == 0) {
                    if (this.f32625y.finished() || this.f32625y.needsDictionary()) {
                        break;
                    }
                    if (this.f32625y.needsInput()) {
                        d();
                    }
                } else {
                    this.C += (long) iInflate;
                    return iInflate;
                }
            }
            e();
            return -1;
        } catch (DataFormatException e10) {
            String message = e10.getMessage() != null ? e10.getMessage() : "Invalid ZLIB data format";
            UnzipEngine unzipEngine = this.B;
            if (unzipEngine != null && unzipEngine.l().q() && this.B.l().e() == 0) {
                message = message + " - Wrong Password?";
            }
            throw new IOException(message);
        }
    }
}
