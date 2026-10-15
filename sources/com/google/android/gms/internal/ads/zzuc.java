package com.google.android.gms.internal.ads;

import com.facebook.internal.NativeProtocol;
import java.io.EOFException;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.Arrays;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzuc {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzen f20763a = new zzen(32);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private zzub f20764b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private zzub f20765c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private zzub f20766d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private long f20767e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final zzwt f20768f;

    public zzuc(zzwt zzwtVar, byte[] bArr) {
        this.f20768f = zzwtVar;
        zzub zzubVar = new zzub(0L, NativeProtocol.MESSAGE_GET_ACCESS_TOKEN_REQUEST);
        this.f20764b = zzubVar;
        this.f20765c = zzubVar;
        this.f20766d = zzubVar;
    }

    private final int i(int i10) {
        zzub zzubVar = this.f20766d;
        if (zzubVar.f20761c == null) {
            zzwm zzwmVarB = this.f20768f.b();
            zzub zzubVar2 = new zzub(this.f20766d.f20760b, NativeProtocol.MESSAGE_GET_ACCESS_TOKEN_REQUEST);
            zzubVar.f20761c = zzwmVarB;
            zzubVar.f20762d = zzubVar2;
        }
        return Math.min(i10, (int) (this.f20766d.f20760b - this.f20767e));
    }

    private static zzub j(zzub zzubVar, long j10) {
        while (j10 >= zzubVar.f20760b) {
            zzubVar = zzubVar.f20762d;
        }
        return zzubVar;
    }

    private static zzub k(zzub zzubVar, long j10, ByteBuffer byteBuffer, int i10) {
        zzub zzubVarJ = j(zzubVar, j10);
        while (i10 > 0) {
            int iMin = Math.min(i10, (int) (zzubVarJ.f20760b - j10));
            byteBuffer.put(zzubVarJ.f20761c.f20955a, zzubVarJ.b(j10), iMin);
            i10 -= iMin;
            j10 += (long) iMin;
            if (j10 == zzubVarJ.f20760b) {
                zzubVarJ = zzubVarJ.f20762d;
            }
        }
        return zzubVarJ;
    }

    private static zzub l(zzub zzubVar, long j10, byte[] bArr, int i10) {
        zzub zzubVarJ = j(zzubVar, j10);
        int i11 = i10;
        while (i11 > 0) {
            int iMin = Math.min(i11, (int) (zzubVarJ.f20760b - j10));
            System.arraycopy(zzubVarJ.f20761c.f20955a, zzubVarJ.b(j10), bArr, i10 - i11, iMin);
            i11 -= iMin;
            j10 += (long) iMin;
            if (j10 == zzubVarJ.f20760b) {
                zzubVarJ = zzubVarJ.f20762d;
            }
        }
        return zzubVarJ;
    }

    private static zzub m(zzub zzubVar, zzgr zzgrVar, zzue zzueVar, zzen zzenVar) {
        zzub zzubVarL;
        int iW;
        if (zzgrVar.k()) {
            long j10 = zzueVar.f20771b;
            zzenVar.c(1);
            zzub zzubVarL2 = l(zzubVar, j10, zzenVar.h(), 1);
            long j11 = j10 + 1;
            byte b10 = zzenVar.h()[0];
            int i10 = b10 & 128;
            int i11 = b10 & 127;
            zzgo zzgoVar = zzgrVar.f19506b;
            byte[] bArr = zzgoVar.f19332a;
            if (bArr == null) {
                zzgoVar.f19332a = new byte[16];
            } else {
                Arrays.fill(bArr, (byte) 0);
            }
            boolean z10 = i10 != 0;
            zzubVarL = l(zzubVarL2, j11, zzgoVar.f19332a, i11);
            long j12 = j11 + ((long) i11);
            if (z10) {
                zzenVar.c(2);
                zzubVarL = l(zzubVarL, j12, zzenVar.h(), 2);
                j12 += 2;
                iW = zzenVar.w();
            } else {
                iW = 1;
            }
            int[] iArr = zzgoVar.f19335d;
            if (iArr == null || iArr.length < iW) {
                iArr = new int[iW];
            }
            int[] iArr2 = iArr;
            int[] iArr3 = zzgoVar.f19336e;
            if (iArr3 == null || iArr3.length < iW) {
                iArr3 = new int[iW];
            }
            int[] iArr4 = iArr3;
            if (z10) {
                int i12 = iW * 6;
                zzenVar.c(i12);
                zzubVarL = l(zzubVarL, j12, zzenVar.h(), i12);
                j12 += (long) i12;
                zzenVar.f(0);
                for (int i13 = 0; i13 < iW; i13++) {
                    iArr2[i13] = zzenVar.w();
                    iArr4[i13] = zzenVar.v();
                }
            } else {
                iArr2[0] = 0;
                iArr4[0] = zzueVar.f20770a - ((int) (j12 - zzueVar.f20771b));
            }
            zzaba zzabaVar = zzueVar.f20772c;
            int i14 = zzew.f17494a;
            zzgoVar.c(iW, iArr2, iArr4, zzabaVar.f8358b, zzgoVar.f19332a, zzabaVar.f8357a, zzabaVar.f8359c, zzabaVar.f8360d);
            long j13 = zzueVar.f20771b;
            int i15 = (int) (j12 - j13);
            zzueVar.f20771b = j13 + ((long) i15);
            zzueVar.f20770a -= i15;
        } else {
            zzubVarL = zzubVar;
        }
        if (!zzgrVar.e()) {
            zzgrVar.i(zzueVar.f20770a);
            return k(zzubVarL, zzueVar.f20771b, zzgrVar.f19507c, zzueVar.f20770a);
        }
        zzenVar.c(4);
        zzub zzubVarL3 = l(zzubVarL, zzueVar.f20771b, zzenVar.h(), 4);
        int iV = zzenVar.v();
        zzueVar.f20771b += 4;
        zzueVar.f20770a -= 4;
        zzgrVar.i(iV);
        zzub zzubVarK = k(zzubVarL3, zzueVar.f20771b, zzgrVar.f19507c, iV);
        zzueVar.f20771b += (long) iV;
        int i16 = zzueVar.f20770a - iV;
        zzueVar.f20770a = i16;
        ByteBuffer byteBuffer = zzgrVar.f19510f;
        if (byteBuffer == null || byteBuffer.capacity() < i16) {
            zzgrVar.f19510f = ByteBuffer.allocate(i16);
        } else {
            zzgrVar.f19510f.clear();
        }
        return k(zzubVarK, zzueVar.f20771b, zzgrVar.f19510f, zzueVar.f20770a);
    }

    private final void n(int i10) {
        long j10 = this.f20767e + ((long) i10);
        this.f20767e = j10;
        zzub zzubVar = this.f20766d;
        if (j10 == zzubVar.f20760b) {
            this.f20766d = zzubVar.f20762d;
        }
    }

    public final int a(zzr zzrVar, int i10, boolean z10) throws IOException {
        int i11 = i(i10);
        zzub zzubVar = this.f20766d;
        int iE = zzrVar.e(zzubVar.f20761c.f20955a, zzubVar.b(this.f20767e), i11);
        if (iE != -1) {
            n(iE);
            return iE;
        }
        if (z10) {
            return -1;
        }
        throw new EOFException();
    }

    public final long b() {
        return this.f20767e;
    }

    public final void c(long j10) {
        zzub zzubVar;
        if (j10 != -1) {
            while (true) {
                zzubVar = this.f20764b;
                if (j10 < zzubVar.f20760b) {
                    break;
                }
                this.f20768f.c(zzubVar.f20761c);
                this.f20764b = this.f20764b.c();
            }
            if (this.f20765c.f20759a < zzubVar.f20759a) {
                this.f20765c = zzubVar;
            }
        }
    }

    public final void d(zzgr zzgrVar, zzue zzueVar) {
        m(this.f20765c, zzgrVar, zzueVar, this.f20763a);
    }

    public final void e(zzgr zzgrVar, zzue zzueVar) {
        this.f20765c = m(this.f20765c, zzgrVar, zzueVar, this.f20763a);
    }

    public final void f() {
        zzub zzubVar = this.f20764b;
        if (zzubVar.f20761c != null) {
            this.f20768f.d(zzubVar);
            zzubVar.c();
        }
        this.f20764b.e(0L, NativeProtocol.MESSAGE_GET_ACCESS_TOKEN_REQUEST);
        zzub zzubVar2 = this.f20764b;
        this.f20765c = zzubVar2;
        this.f20766d = zzubVar2;
        this.f20767e = 0L;
        this.f20768f.g();
    }

    public final void g() {
        this.f20765c = this.f20764b;
    }

    public final void h(zzen zzenVar, int i10) {
        while (i10 > 0) {
            int i11 = i(i10);
            zzub zzubVar = this.f20766d;
            zzenVar.b(zzubVar.f20761c.f20955a, zzubVar.b(this.f20767e), i11);
            i10 -= i11;
            n(i11);
        }
    }
}
