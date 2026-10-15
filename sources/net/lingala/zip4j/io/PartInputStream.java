package net.lingala.zip4j.io;

import java.io.IOException;
import java.io.RandomAccessFile;
import net.lingala.zip4j.crypto.AESDecrypter;
import net.lingala.zip4j.crypto.IDecrypter;
import net.lingala.zip4j.exception.ZipException;
import net.lingala.zip4j.unzip.UnzipEngine;

/* JADX INFO: loaded from: classes2.dex */
public class PartInputStream extends BaseInputStream {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private RandomAccessFile f32627o;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private long f32629q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private UnzipEngine f32630r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private IDecrypter f32631s;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private boolean f32635w;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private byte[] f32632t = new byte[1];

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private byte[] f32633u = new byte[16];

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private int f32634v = 0;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private int f32636x = -1;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private long f32628p = 0;

    public PartInputStream(RandomAccessFile randomAccessFile, long j10, long j11, UnzipEngine unzipEngine) {
        this.f32635w = false;
        this.f32627o = randomAccessFile;
        this.f32630r = unzipEngine;
        this.f32631s = unzipEngine.i();
        this.f32629q = j11;
        this.f32635w = unzipEngine.j().w() && unzipEngine.j().g() == 99;
    }

    @Override // net.lingala.zip4j.io.BaseInputStream, java.io.InputStream
    public int available() {
        long j10 = this.f32629q - this.f32628p;
        if (j10 > 2147483647L) {
            return Integer.MAX_VALUE;
        }
        return (int) j10;
    }

    @Override // net.lingala.zip4j.io.BaseInputStream
    public UnzipEngine b() {
        return this.f32630r;
    }

    protected void c() throws IOException {
        IDecrypter iDecrypter;
        if (this.f32635w && (iDecrypter = this.f32631s) != null && (iDecrypter instanceof AESDecrypter) && ((AESDecrypter) iDecrypter).f() == null) {
            byte[] bArr = new byte[10];
            int i10 = this.f32627o.read(bArr);
            if (i10 != 10) {
                if (!this.f32630r.p().k()) {
                    throw new IOException("Error occured while reading stored AES authentication bytes");
                }
                this.f32627o.close();
                RandomAccessFile randomAccessFileS = this.f32630r.s();
                this.f32627o = randomAccessFileS;
                randomAccessFileS.read(bArr, i10, 10 - i10);
            }
            ((AESDecrypter) this.f32630r.i()).h(bArr);
        }
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f32627o.close();
    }

    @Override // net.lingala.zip4j.io.BaseInputStream, java.io.InputStream
    public int read() throws IOException {
        if (this.f32628p >= this.f32629q) {
            return -1;
        }
        if (!this.f32635w) {
            if (read(this.f32632t, 0, 1) == -1) {
                return -1;
            }
            return this.f32632t[0] & 255;
        }
        int i10 = this.f32634v;
        if (i10 == 0 || i10 == 16) {
            if (read(this.f32633u) == -1) {
                return -1;
            }
            this.f32634v = 0;
        }
        byte[] bArr = this.f32633u;
        int i11 = this.f32634v;
        this.f32634v = i11 + 1;
        return bArr[i11] & 255;
    }

    @Override // java.io.InputStream
    public long skip(long j10) throws IOException {
        if (j10 < 0) {
            throw new IllegalArgumentException();
        }
        long j11 = this.f32629q;
        long j12 = this.f32628p;
        if (j10 > j11 - j12) {
            j10 = j11 - j12;
        }
        this.f32628p = j12 + j10;
        return j10;
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr) throws IOException {
        return read(bArr, 0, bArr.length);
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr, int i10, int i11) throws IOException {
        int i12;
        long j10 = i11;
        long j11 = this.f32629q;
        long j12 = this.f32628p;
        if (j10 > j11 - j12 && (i11 = (int) (j11 - j12)) == 0) {
            c();
            return -1;
        }
        if ((this.f32630r.i() instanceof AESDecrypter) && this.f32628p + ((long) i11) < this.f32629q && (i12 = i11 % 16) != 0) {
            i11 -= i12;
        }
        synchronized (this.f32627o) {
            int i13 = this.f32627o.read(bArr, i10, i11);
            this.f32636x = i13;
            if (i13 < i11 && this.f32630r.p().k()) {
                this.f32627o.close();
                RandomAccessFile randomAccessFileS = this.f32630r.s();
                this.f32627o = randomAccessFileS;
                if (this.f32636x < 0) {
                    this.f32636x = 0;
                }
                int i14 = this.f32636x;
                int i15 = randomAccessFileS.read(bArr, i14, i11 - i14);
                if (i15 > 0) {
                    this.f32636x += i15;
                }
            }
        }
        int i16 = this.f32636x;
        if (i16 > 0) {
            IDecrypter iDecrypter = this.f32631s;
            if (iDecrypter != null) {
                try {
                    iDecrypter.a(bArr, i10, i16);
                } catch (ZipException e10) {
                    throw new IOException(e10.getMessage());
                }
            }
            this.f32628p += (long) this.f32636x;
        }
        if (this.f32628p >= this.f32629q) {
            c();
        }
        return this.f32636x;
    }
}
