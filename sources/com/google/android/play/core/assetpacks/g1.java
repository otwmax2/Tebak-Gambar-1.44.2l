package com.google.android.play.core.assetpacks;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;

/* JADX INFO: compiled from: com.google.android.play:core@@1.10.2 */
/* JADX INFO: loaded from: classes2.dex */
final class g1 extends OutputStream {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final g2 f25906o = new g2();

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final File f25907p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final b3 f25908q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private long f25909r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private long f25910s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private FileOutputStream f25911t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private h3 f25912u;

    g1(File file, b3 b3Var) {
        this.f25907p = file;
        this.f25908q = b3Var;
    }

    @Override // java.io.OutputStream
    public final void write(int i10) throws IOException {
        write(new byte[]{(byte) i10}, 0, 1);
    }

    @Override // java.io.OutputStream
    public final void write(byte[] bArr) throws IOException {
        write(bArr, 0, bArr.length);
    }

    @Override // java.io.OutputStream
    public final void write(byte[] bArr, int i10, int i11) throws IOException {
        int iMin;
        while (i11 > 0) {
            if (this.f25909r == 0 && this.f25910s == 0) {
                int iB = this.f25906o.b(bArr, i10, i11);
                if (iB == -1) {
                    return;
                }
                i10 += iB;
                i11 -= iB;
                h3 h3VarC = this.f25906o.c();
                this.f25912u = h3VarC;
                if (h3VarC.d()) {
                    this.f25909r = 0L;
                    this.f25908q.l(this.f25912u.f(), 0, this.f25912u.f().length);
                    this.f25910s = this.f25912u.f().length;
                } else if (this.f25912u.h() && !this.f25912u.g()) {
                    this.f25908q.j(this.f25912u.f());
                    File file = new File(this.f25907p, this.f25912u.c());
                    file.getParentFile().mkdirs();
                    this.f25909r = this.f25912u.b();
                    this.f25911t = new FileOutputStream(file);
                } else {
                    byte[] bArrF = this.f25912u.f();
                    this.f25908q.l(bArrF, 0, bArrF.length);
                    this.f25909r = this.f25912u.b();
                }
            }
            if (!this.f25912u.g()) {
                if (this.f25912u.d()) {
                    this.f25908q.e(this.f25910s, bArr, i10, i11);
                    this.f25910s += (long) i11;
                    iMin = i11;
                } else if (this.f25912u.h()) {
                    iMin = (int) Math.min(i11, this.f25909r);
                    this.f25911t.write(bArr, i10, iMin);
                    long j10 = this.f25909r - ((long) iMin);
                    this.f25909r = j10;
                    if (j10 == 0) {
                        this.f25911t.close();
                    }
                } else {
                    iMin = (int) Math.min(i11, this.f25909r);
                    int length = this.f25912u.f().length;
                    this.f25908q.e((((long) length) + this.f25912u.b()) - this.f25909r, bArr, i10, iMin);
                    this.f25909r -= (long) iMin;
                }
                i10 += iMin;
                i11 -= iMin;
            }
        }
    }
}
