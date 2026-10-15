package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.io.OutputStream;
import java.util.logging.Level;
import java.util.logging.Logger;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public abstract class zzgpt extends zzgot {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final Logger f19426b = Logger.getLogger(zzgpt.class.getName());

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final boolean f19427c = zzgtq.a();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final /* synthetic */ int f19428d = 0;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    zzgpu f19429a;

    private zzgpt() {
    }

    /* synthetic */ zzgpt(zzgps zzgpsVar) {
    }

    public static int E(zzgpe zzgpeVar) {
        int iO = zzgpeVar.o();
        return f(iO) + iO;
    }

    @Deprecated
    static int F(int i10, zzgrw zzgrwVar, zzgsp zzgspVar) {
        int iC = ((zzgon) zzgrwVar).c(zzgspVar);
        int iF = f(i10 << 3);
        return iF + iF + iC;
    }

    public static int G(int i10) {
        if (i10 >= 0) {
            return f(i10);
        }
        return 10;
    }

    public static int H(zzgrc zzgrcVar) {
        int iA = zzgrcVar.a();
        return f(iA) + iA;
    }

    static int b(zzgrw zzgrwVar, zzgsp zzgspVar) {
        int iC = ((zzgon) zzgrwVar).c(zzgspVar);
        return f(iC) + iC;
    }

    static int c(int i10) {
        if (i10 > 4096) {
            return 4096;
        }
        return i10;
    }

    public static int d(String str) {
        int length;
        try {
            length = zzgtv.e(str);
        } catch (zzgtu unused) {
            length = str.getBytes(zzgqw.f19490b).length;
        }
        return f(length) + length;
    }

    public static int e(int i10) {
        return f(i10 << 3);
    }

    public static int f(int i10) {
        if ((i10 & (-128)) == 0) {
            return 1;
        }
        if ((i10 & (-16384)) == 0) {
            return 2;
        }
        if (((-2097152) & i10) == 0) {
            return 3;
        }
        return (i10 & (-268435456)) == 0 ? 4 : 5;
    }

    public static int g(long j10) {
        int i10;
        if (((-128) & j10) == 0) {
            return 1;
        }
        if (j10 < 0) {
            return 10;
        }
        if (((-34359738368L) & j10) != 0) {
            i10 = 6;
            j10 >>>= 28;
        } else {
            i10 = 2;
        }
        if (((-2097152) & j10) != 0) {
            j10 >>>= 14;
            i10 += 2;
        }
        return (j10 & (-16384)) != 0 ? i10 + 1 : i10;
    }

    public static zzgpt h(byte[] bArr) {
        return new zzgpp(bArr, 0, bArr.length);
    }

    public static zzgpt i(OutputStream outputStream, int i10) {
        return new zzgpr(outputStream, i10);
    }

    public abstract void A(int i10, int i11) throws IOException;

    public abstract void B(int i10) throws IOException;

    public abstract void C(int i10, long j10) throws IOException;

    public abstract void D(long j10) throws IOException;

    @Override // com.google.android.gms.internal.ads.zzgot
    public abstract void a(byte[] bArr, int i10, int i11) throws IOException;

    public final void j() {
        if (q() != 0) {
            throw new IllegalStateException("Did not write as much data as expected.");
        }
    }

    final void k(String str, zzgtu zzgtuVar) throws IOException {
        f19426b.logp(Level.WARNING, "com.google.protobuf.CodedOutputStream", "inefficientWriteStringNoTag", "Converting ill-formed UTF-16. Your Protocol Buffer will not round trip correctly!", (Throwable) zzgtuVar);
        byte[] bytes = str.getBytes(zzgqw.f19490b);
        try {
            int length = bytes.length;
            B(length);
            a(bytes, 0, length);
        } catch (IndexOutOfBoundsException e10) {
            throw new zzgpq(e10);
        }
    }

    public abstract void m() throws IOException;

    public abstract void n(byte b10) throws IOException;

    public abstract void o(int i10, boolean z10) throws IOException;

    public abstract void p(int i10, zzgpe zzgpeVar) throws IOException;

    public abstract int q();

    public abstract void r(int i10, int i11) throws IOException;

    public abstract void s(int i10) throws IOException;

    public abstract void t(int i10, long j10) throws IOException;

    public abstract void u(long j10) throws IOException;

    public abstract void v(int i10, int i11) throws IOException;

    public abstract void w(int i10) throws IOException;

    abstract void x(int i10, zzgrw zzgrwVar, zzgsp zzgspVar) throws IOException;

    public abstract void y(int i10, String str) throws IOException;

    public abstract void z(int i10, int i11) throws IOException;
}
