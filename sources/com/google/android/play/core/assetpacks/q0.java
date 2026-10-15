package com.google.android.play.core.assetpacks;

import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.Arrays;

/* JADX INFO: compiled from: com.google.android.play:core@@1.10.2 */
/* JADX INFO: loaded from: classes2.dex */
final class q0 extends FilterInputStream {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final g2 f26047o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private byte[] f26048p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private long f26049q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private boolean f26050r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private boolean f26051s;

    q0(InputStream inputStream) {
        super(inputStream);
        this.f26047o = new g2();
        this.f26048p = new byte[4096];
        this.f26050r = false;
        this.f26051s = false;
    }

    private final int f(byte[] bArr, int i10, int i11) throws IOException {
        return Math.max(0, super.read(bArr, i10, i11));
    }

    private final boolean g(int i10) throws IOException {
        int iF = f(this.f26048p, 0, i10);
        if (iF != i10) {
            int i11 = i10 - iF;
            if (f(this.f26048p, iF, i11) != i11) {
                this.f26047o.b(this.f26048p, 0, iF);
                return false;
            }
        }
        this.f26047o.b(this.f26048p, 0, i10);
        return true;
    }

    final long b() {
        return this.f26049q;
    }

    final h3 c() throws IOException {
        byte[] bArr;
        if (this.f26049q > 0) {
            do {
                bArr = this.f26048p;
            } while (read(bArr, 0, bArr.length) != -1);
        }
        if (this.f26050r || this.f26051s) {
            return new m0(null, -1L, -1, false, false, null);
        }
        if (!g(30)) {
            this.f26050r = true;
            return this.f26047o.c();
        }
        h3 h3VarC = this.f26047o.c();
        if (h3VarC.d()) {
            this.f26051s = true;
            return h3VarC;
        }
        if (h3VarC.b() == 4294967295L) {
            throw new d1("Files bigger than 4GiB are not supported.");
        }
        int iA = this.f26047o.a() - 30;
        long j10 = iA;
        int length = this.f26048p.length;
        if (j10 > length) {
            do {
                length += length;
            } while (length < j10);
            this.f26048p = Arrays.copyOf(this.f26048p, length);
        }
        if (!g(iA)) {
            this.f26050r = true;
            return this.f26047o.c();
        }
        h3 h3VarC2 = this.f26047o.c();
        this.f26049q = h3VarC2.b();
        return h3VarC2;
    }

    final boolean d() {
        return this.f26051s;
    }

    final boolean e() {
        return this.f26050r;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final int read(byte[] bArr) throws IOException {
        return read(bArr, 0, bArr.length);
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final int read(byte[] bArr, int i10, int i11) throws IOException {
        long j10 = this.f26049q;
        if (j10 <= 0 || this.f26050r) {
            return -1;
        }
        int iF = f(bArr, i10, (int) Math.min(j10, i11));
        this.f26049q -= (long) iF;
        if (iF != 0) {
            return iF;
        }
        this.f26050r = true;
        return 0;
    }
}
