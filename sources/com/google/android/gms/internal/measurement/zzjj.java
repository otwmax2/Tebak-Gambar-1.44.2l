package com.google.android.gms.internal.measurement;

import java.io.IOException;
import java.util.logging.Level;
import java.util.logging.Logger;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-base@@20.1.2 */
/* JADX INFO: loaded from: classes2.dex */
public abstract class zzjj extends zzir {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final Logger f23601b = Logger.getLogger(zzjj.class.getName());

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final boolean f23602c = zzmv.C();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    zzjk f23603a;

    private zzjj() {
    }

    /* synthetic */ zzjj(zzji zzjiVar) {
    }

    public static int A(zzkp zzkpVar) {
        int iA = zzkpVar.a();
        return a(iA) + iA;
    }

    static int B(zzlj zzljVar, zzlu zzluVar) {
        zzil zzilVar = (zzil) zzljVar;
        int iC = zzilVar.c();
        if (iC == -1) {
            iC = zzluVar.a(zzilVar);
            zzilVar.g(iC);
        }
        return a(iC) + iC;
    }

    public static int C(String str) {
        int length;
        try {
            length = zzna.c(str);
        } catch (zzmz unused) {
            length = str.getBytes(zzkk.f23664b).length;
        }
        return a(length) + length;
    }

    public static int D(int i10) {
        return a(i10 << 3);
    }

    public static int a(int i10) {
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

    public static int b(long j10) {
        int i10;
        if (((-128) & j10) == 0) {
            return 1;
        }
        if (j10 < 0) {
            return 10;
        }
        if (((-34359738368L) & j10) != 0) {
            j10 >>>= 28;
            i10 = 6;
        } else {
            i10 = 2;
        }
        if (((-2097152) & j10) != 0) {
            i10 += 2;
            j10 >>>= 14;
        }
        return (j10 & (-16384)) != 0 ? i10 + 1 : i10;
    }

    public static zzjj c(byte[] bArr) {
        return new zzjg(bArr, 0, bArr.length);
    }

    public static int x(zzjb zzjbVar) {
        int i10 = zzjbVar.i();
        return a(i10) + i10;
    }

    @Deprecated
    static int y(int i10, zzlj zzljVar, zzlu zzluVar) {
        int iA = a(i10 << 3);
        int i11 = iA + iA;
        zzil zzilVar = (zzil) zzljVar;
        int iC = zzilVar.c();
        if (iC == -1) {
            iC = zzluVar.a(zzilVar);
            zzilVar.g(iC);
        }
        return i11 + iC;
    }

    public static int z(int i10) {
        if (i10 >= 0) {
            return a(i10);
        }
        return 10;
    }

    public final void d() {
        if (g() != 0) {
            throw new IllegalStateException("Did not write as much data as expected.");
        }
    }

    final void e(String str, zzmz zzmzVar) throws IOException {
        f23601b.logp(Level.WARNING, "com.google.protobuf.CodedOutputStream", "inefficientWriteStringNoTag", "Converting ill-formed UTF-16. Your Protocol Buffer will not round trip correctly!", (Throwable) zzmzVar);
        byte[] bytes = str.getBytes(zzkk.f23664b);
        try {
            int length = bytes.length;
            u(length);
            q(bytes, 0, length);
        } catch (IndexOutOfBoundsException e10) {
            throw new zzjh(e10);
        }
    }

    public abstract int g();

    public abstract void h(byte b10) throws IOException;

    public abstract void i(int i10, boolean z10) throws IOException;

    public abstract void j(int i10, zzjb zzjbVar) throws IOException;

    public abstract void k(int i10, int i11) throws IOException;

    public abstract void l(int i10) throws IOException;

    public abstract void m(int i10, long j10) throws IOException;

    public abstract void n(long j10) throws IOException;

    public abstract void o(int i10, int i11) throws IOException;

    public abstract void p(int i10) throws IOException;

    public abstract void q(byte[] bArr, int i10, int i11) throws IOException;

    public abstract void r(int i10, String str) throws IOException;

    public abstract void s(int i10, int i11) throws IOException;

    public abstract void t(int i10, int i11) throws IOException;

    public abstract void u(int i10) throws IOException;

    public abstract void v(int i10, long j10) throws IOException;

    public abstract void w(long j10) throws IOException;
}
