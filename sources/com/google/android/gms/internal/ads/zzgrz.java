package com.google.android.gms.internal.ads;

import com.vungle.mediation.BuildConfig;
import java.io.IOException;
import java.lang.reflect.Field;
import java.util.Arrays;
import java.util.List;
import java.util.Objects;
import sun.misc.Unsafe;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzgrz<T> implements zzgsp<T> {

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private static final int[] f19544q = new int[0];

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private static final Unsafe f19545r = zzgtq.q();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int[] f19546a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Object[] f19547b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final int f19548c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final int f19549d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final zzgrw f19550e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final boolean f19551f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final boolean f19552g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final boolean f19553h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final int[] f19554i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final int f19555j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final int f19556k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private final zzgrk f19557l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private final zzgtg f19558m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private final zzgpz f19559n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final zzgsb f19560o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final zzgrr f19561p;

    private zzgrz(int[] iArr, Object[] objArr, int i10, int i11, zzgrw zzgrwVar, boolean z10, boolean z11, int[] iArr2, int i12, int i13, zzgsb zzgsbVar, zzgrk zzgrkVar, zzgtg zzgtgVar, zzgpz zzgpzVar, zzgrr zzgrrVar, byte[] bArr) {
        this.f19546a = iArr;
        this.f19547b = objArr;
        this.f19548c = i10;
        this.f19549d = i11;
        this.f19552g = zzgrwVar instanceof zzgqm;
        this.f19553h = z10;
        boolean z12 = false;
        if (zzgpzVar != null && zzgpzVar.h(zzgrwVar)) {
            z12 = true;
        }
        this.f19551f = z12;
        this.f19554i = iArr2;
        this.f19555j = i12;
        this.f19556k = i13;
        this.f19560o = zzgsbVar;
        this.f19557l = zzgrkVar;
        this.f19558m = zzgtgVar;
        this.f19559n = zzgpzVar;
        this.f19550e = zzgrwVar;
        this.f19561p = zzgrrVar;
    }

    private final boolean A(Object obj, Object obj2, int i10) {
        return C(obj, i10) == C(obj2, i10);
    }

    private static boolean B(int i10) {
        return (i10 & 536870912) != 0;
    }

    private final boolean C(Object obj, int i10) {
        int iW = W(i10);
        long j10 = iW & 1048575;
        if (j10 != 1048575) {
            return (zzgtq.l(obj, j10) & (1 << (iW >>> 20))) != 0;
        }
        int iZ = Z(i10);
        long j11 = iZ & 1048575;
        switch (Y(iZ)) {
            case 0:
                return Double.doubleToRawLongBits(zzgtq.j(obj, j11)) != 0;
            case 1:
                return Float.floatToRawIntBits(zzgtq.k(obj, j11)) != 0;
            case 2:
                return zzgtq.n(obj, j11) != 0;
            case 3:
                return zzgtq.n(obj, j11) != 0;
            case 4:
                return zzgtq.l(obj, j11) != 0;
            case 5:
                return zzgtq.n(obj, j11) != 0;
            case 6:
                return zzgtq.l(obj, j11) != 0;
            case 7:
                return zzgtq.H(obj, j11);
            case 8:
                Object objP = zzgtq.p(obj, j11);
                if (objP instanceof String) {
                    return !((String) objP).isEmpty();
                }
                if (objP instanceof zzgpe) {
                    return !zzgpe.f19379p.equals(objP);
                }
                throw new IllegalArgumentException();
            case 9:
                return zzgtq.p(obj, j11) != null;
            case 10:
                return !zzgpe.f19379p.equals(zzgtq.p(obj, j11));
            case 11:
                return zzgtq.l(obj, j11) != 0;
            case 12:
                return zzgtq.l(obj, j11) != 0;
            case 13:
                return zzgtq.l(obj, j11) != 0;
            case 14:
                return zzgtq.n(obj, j11) != 0;
            case 15:
                return zzgtq.l(obj, j11) != 0;
            case 16:
                return zzgtq.n(obj, j11) != 0;
            case 17:
                return zzgtq.p(obj, j11) != null;
            default:
                throw new IllegalArgumentException();
        }
    }

    private final boolean D(Object obj, int i10, int i11, int i12, int i13) {
        return i11 == 1048575 ? C(obj, i10) : (i12 & i13) != 0;
    }

    private static boolean E(Object obj, int i10, zzgsp zzgspVar) {
        return zzgspVar.d(zzgtq.p(obj, i10 & 1048575));
    }

    private static boolean F(Object obj) {
        if (obj == null) {
            return false;
        }
        if (obj instanceof zzgqm) {
            return ((zzgqm) obj).D();
        }
        return true;
    }

    private final boolean G(Object obj, int i10, int i11) {
        return zzgtq.l(obj, (long) (W(i11) & 1048575)) == i10;
    }

    private static boolean H(Object obj, long j10) {
        return ((Boolean) zzgtq.p(obj, j10)).booleanValue();
    }

    private final void I(zzgpu zzgpuVar, int i10, Object obj, int i11) throws IOException {
        if (obj == null) {
            return;
        }
        throw null;
    }

    private static final void J(int i10, Object obj, zzgpu zzgpuVar) throws IOException {
        if (obj instanceof String) {
            zzgpuVar.f(i10, (String) obj);
        } else {
            zzgpuVar.o(i10, (zzgpe) obj);
        }
    }

    static zzgth L(Object obj) {
        zzgqm zzgqmVar = (zzgqm) obj;
        zzgth zzgthVar = zzgqmVar.zzc;
        if (zzgthVar != zzgth.c()) {
            return zzgthVar;
        }
        zzgth zzgthVarF = zzgth.f();
        zzgqmVar.zzc = zzgthVarF;
        return zzgthVarF;
    }

    /* JADX WARN: Removed duplicated region for block: B:124:0x026c  */
    /* JADX WARN: Removed duplicated region for block: B:125:0x026f  */
    /* JADX WARN: Removed duplicated region for block: B:128:0x0284  */
    /* JADX WARN: Removed duplicated region for block: B:129:0x0287  */
    /* JADX WARN: Removed duplicated region for block: B:178:0x036e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    static com.google.android.gms.internal.ads.zzgrz M(java.lang.Class r31, com.google.android.gms.internal.ads.zzgrt r32, com.google.android.gms.internal.ads.zzgsb r33, com.google.android.gms.internal.ads.zzgrk r34, com.google.android.gms.internal.ads.zzgtg r35, com.google.android.gms.internal.ads.zzgpz r36, com.google.android.gms.internal.ads.zzgrr r37) {
        /*
            Method dump skipped, instruction units count: 992
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzgrz.M(java.lang.Class, com.google.android.gms.internal.ads.zzgrt, com.google.android.gms.internal.ads.zzgsb, com.google.android.gms.internal.ads.zzgrk, com.google.android.gms.internal.ads.zzgtg, com.google.android.gms.internal.ads.zzgpz, com.google.android.gms.internal.ads.zzgrr):com.google.android.gms.internal.ads.zzgrz");
    }

    private static double N(Object obj, long j10) {
        return ((Double) zzgtq.p(obj, j10)).doubleValue();
    }

    private static float O(Object obj, long j10) {
        return ((Float) zzgtq.p(obj, j10)).floatValue();
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    private final int P(Object obj) {
        int i10;
        int iF;
        int iF2;
        int iG;
        int iF3;
        int iF4;
        int iF5;
        int iF6;
        int iW;
        int iK;
        int iE;
        int iF7;
        int iF8;
        int iF9;
        int iF10;
        int iF11;
        int iF12;
        Unsafe unsafe = f19545r;
        int i11 = 1048575;
        int i12 = 0;
        int iF13 = 0;
        int i13 = 1048575;
        int i14 = 0;
        while (i12 < this.f19546a.length) {
            int iZ = Z(i12);
            int[] iArr = this.f19546a;
            int i15 = iArr[i12];
            int iY = Y(iZ);
            if (iY <= 17) {
                int i16 = iArr[i12 + 2];
                int i17 = i16 & i11;
                int i18 = i16 >>> 20;
                if (i17 != i13) {
                    i14 = unsafe.getInt(obj, i17);
                    i13 = i17;
                }
                i10 = 1 << i18;
            } else {
                i10 = 0;
            }
            long j10 = iZ & i11;
            switch (iY) {
                case 0:
                    if ((i14 & i10) != 0) {
                        iF = zzgpt.f(i15 << 3);
                        iF4 = iF + 8;
                        iF13 += iF4;
                    }
                    break;
                case 1:
                    if ((i14 & i10) != 0) {
                        iF2 = zzgpt.f(i15 << 3);
                        iF4 = iF2 + 4;
                        iF13 += iF4;
                    }
                    break;
                case 2:
                    if ((i14 & i10) != 0) {
                        iG = zzgpt.g(unsafe.getLong(obj, j10));
                        iF3 = zzgpt.f(i15 << 3);
                        iF13 += iF3 + iG;
                    }
                    break;
                case 3:
                    if ((i14 & i10) != 0) {
                        iG = zzgpt.g(unsafe.getLong(obj, j10));
                        iF3 = zzgpt.f(i15 << 3);
                        iF13 += iF3 + iG;
                    }
                    break;
                case 4:
                    if ((i14 & i10) != 0) {
                        iG = zzgpt.G(unsafe.getInt(obj, j10));
                        iF3 = zzgpt.f(i15 << 3);
                        iF13 += iF3 + iG;
                    }
                    break;
                case 5:
                    if ((i14 & i10) != 0) {
                        iF = zzgpt.f(i15 << 3);
                        iF4 = iF + 8;
                        iF13 += iF4;
                    }
                    break;
                case 6:
                    if ((i14 & i10) != 0) {
                        iF2 = zzgpt.f(i15 << 3);
                        iF4 = iF2 + 4;
                        iF13 += iF4;
                    }
                    break;
                case 7:
                    if ((i14 & i10) != 0) {
                        iF4 = zzgpt.f(i15 << 3) + 1;
                        iF13 += iF4;
                    }
                    break;
                case 8:
                    if ((i14 & i10) != 0) {
                        Object object = unsafe.getObject(obj, j10);
                        if (!(object instanceof zzgpe)) {
                            iG = zzgpt.d((String) object);
                            iF3 = zzgpt.f(i15 << 3);
                            iF13 += iF3 + iG;
                        } else {
                            int i19 = zzgpt.f19428d;
                            int iO = ((zzgpe) object).o();
                            iF5 = zzgpt.f(iO) + iO;
                            iF6 = zzgpt.f(i15 << 3);
                            iF4 = iF6 + iF5;
                            iF13 += iF4;
                        }
                    }
                    break;
                case 9:
                    if ((i14 & i10) != 0) {
                        iF4 = zzgsr.Q(i15, unsafe.getObject(obj, j10), m(i12));
                        iF13 += iF4;
                    }
                    break;
                case 10:
                    if ((i14 & i10) != 0) {
                        zzgpe zzgpeVar = (zzgpe) unsafe.getObject(obj, j10);
                        int i20 = zzgpt.f19428d;
                        int iO2 = zzgpeVar.o();
                        iF5 = zzgpt.f(iO2) + iO2;
                        iF6 = zzgpt.f(i15 << 3);
                        iF4 = iF6 + iF5;
                        iF13 += iF4;
                    }
                    break;
                case 11:
                    if ((i14 & i10) != 0) {
                        iG = zzgpt.f(unsafe.getInt(obj, j10));
                        iF3 = zzgpt.f(i15 << 3);
                        iF13 += iF3 + iG;
                    }
                    break;
                case 12:
                    if ((i14 & i10) != 0) {
                        iG = zzgpt.G(unsafe.getInt(obj, j10));
                        iF3 = zzgpt.f(i15 << 3);
                        iF13 += iF3 + iG;
                    }
                    break;
                case 13:
                    if ((i14 & i10) != 0) {
                        iF2 = zzgpt.f(i15 << 3);
                        iF4 = iF2 + 4;
                        iF13 += iF4;
                    }
                    break;
                case 14:
                    if ((i14 & i10) != 0) {
                        iF = zzgpt.f(i15 << 3);
                        iF4 = iF + 8;
                        iF13 += iF4;
                    }
                    break;
                case 15:
                    if ((i14 & i10) != 0) {
                        int i21 = unsafe.getInt(obj, j10);
                        iF3 = zzgpt.f(i15 << 3);
                        iG = zzgpt.f((i21 >> 31) ^ (i21 + i21));
                        iF13 += iF3 + iG;
                    }
                    break;
                case 16:
                    if ((i10 & i14) != 0) {
                        long j11 = unsafe.getLong(obj, j10);
                        iF13 += zzgpt.f(i15 << 3) + zzgpt.g((j11 >> 63) ^ (j11 + j11));
                    }
                    break;
                case 17:
                    if ((i14 & i10) != 0) {
                        iF4 = zzgpt.F(i15, (zzgrw) unsafe.getObject(obj, j10), m(i12));
                        iF13 += iF4;
                    }
                    break;
                case 18:
                    iF4 = zzgsr.J(i15, (List) unsafe.getObject(obj, j10), false);
                    iF13 += iF4;
                    break;
                case 19:
                    iF4 = zzgsr.H(i15, (List) unsafe.getObject(obj, j10), false);
                    iF13 += iF4;
                    break;
                case 20:
                    iF4 = zzgsr.O(i15, (List) unsafe.getObject(obj, j10), false);
                    iF13 += iF4;
                    break;
                case 21:
                    iF4 = zzgsr.Z(i15, (List) unsafe.getObject(obj, j10), false);
                    iF13 += iF4;
                    break;
                case 22:
                    iF4 = zzgsr.M(i15, (List) unsafe.getObject(obj, j10), false);
                    iF13 += iF4;
                    break;
                case 23:
                    iF4 = zzgsr.J(i15, (List) unsafe.getObject(obj, j10), false);
                    iF13 += iF4;
                    break;
                case 24:
                    iF4 = zzgsr.H(i15, (List) unsafe.getObject(obj, j10), false);
                    iF13 += iF4;
                    break;
                case 25:
                    iF4 = zzgsr.A(i15, (List) unsafe.getObject(obj, j10), false);
                    iF13 += iF4;
                    break;
                case 26:
                    iW = zzgsr.W(i15, (List) unsafe.getObject(obj, j10));
                    iF13 += iW;
                    break;
                case 27:
                    iW = zzgsr.R(i15, (List) unsafe.getObject(obj, j10), m(i12));
                    iF13 += iW;
                    break;
                case 28:
                    iW = zzgsr.E(i15, (List) unsafe.getObject(obj, j10));
                    iF13 += iW;
                    break;
                case 29:
                    iW = zzgsr.X(i15, (List) unsafe.getObject(obj, j10), false);
                    iF13 += iW;
                    break;
                case 30:
                    iW = zzgsr.F(i15, (List) unsafe.getObject(obj, j10), false);
                    iF13 += iW;
                    break;
                case 31:
                    iW = zzgsr.H(i15, (List) unsafe.getObject(obj, j10), false);
                    iF13 += iW;
                    break;
                case 32:
                    iW = zzgsr.J(i15, (List) unsafe.getObject(obj, j10), false);
                    iF13 += iW;
                    break;
                case 33:
                    iW = zzgsr.S(i15, (List) unsafe.getObject(obj, j10), false);
                    iF13 += iW;
                    break;
                case 34:
                    iW = zzgsr.U(i15, (List) unsafe.getObject(obj, j10), false);
                    iF13 += iW;
                    break;
                case 35:
                    iK = zzgsr.K((List) unsafe.getObject(obj, j10));
                    if (iK > 0) {
                        iE = zzgpt.e(i15);
                        iF7 = zzgpt.f(iK);
                        iF8 = iE + iF7;
                        iF13 += iF8 + iK;
                    }
                    break;
                case 36:
                    iK = zzgsr.I((List) unsafe.getObject(obj, j10));
                    if (iK > 0) {
                        iE = zzgpt.e(i15);
                        iF7 = zzgpt.f(iK);
                        iF8 = iE + iF7;
                        iF13 += iF8 + iK;
                    }
                    break;
                case 37:
                    iK = zzgsr.P((List) unsafe.getObject(obj, j10));
                    if (iK > 0) {
                        iE = zzgpt.e(i15);
                        iF7 = zzgpt.f(iK);
                        iF8 = iE + iF7;
                        iF13 += iF8 + iK;
                    }
                    break;
                case 38:
                    iK = zzgsr.a0((List) unsafe.getObject(obj, j10));
                    if (iK > 0) {
                        iE = zzgpt.e(i15);
                        iF7 = zzgpt.f(iK);
                        iF8 = iE + iF7;
                        iF13 += iF8 + iK;
                    }
                    break;
                case 39:
                    iK = zzgsr.N((List) unsafe.getObject(obj, j10));
                    if (iK > 0) {
                        iE = zzgpt.e(i15);
                        iF7 = zzgpt.f(iK);
                        iF8 = iE + iF7;
                        iF13 += iF8 + iK;
                    }
                    break;
                case 40:
                    iK = zzgsr.K((List) unsafe.getObject(obj, j10));
                    if (iK > 0) {
                        iE = zzgpt.e(i15);
                        iF7 = zzgpt.f(iK);
                        iF8 = iE + iF7;
                        iF13 += iF8 + iK;
                    }
                    break;
                case 41:
                    iK = zzgsr.I((List) unsafe.getObject(obj, j10));
                    if (iK > 0) {
                        iE = zzgpt.e(i15);
                        iF7 = zzgpt.f(iK);
                        iF8 = iE + iF7;
                        iF13 += iF8 + iK;
                    }
                    break;
                case 42:
                    iK = zzgsr.D((List) unsafe.getObject(obj, j10));
                    if (iK > 0) {
                        iE = zzgpt.e(i15);
                        iF7 = zzgpt.f(iK);
                        iF8 = iE + iF7;
                        iF13 += iF8 + iK;
                    }
                    break;
                case 43:
                    iK = zzgsr.Y((List) unsafe.getObject(obj, j10));
                    if (iK > 0) {
                        iE = zzgpt.e(i15);
                        iF7 = zzgpt.f(iK);
                        iF8 = iE + iF7;
                        iF13 += iF8 + iK;
                    }
                    break;
                case 44:
                    iK = zzgsr.G((List) unsafe.getObject(obj, j10));
                    if (iK > 0) {
                        iE = zzgpt.e(i15);
                        iF7 = zzgpt.f(iK);
                        iF8 = iE + iF7;
                        iF13 += iF8 + iK;
                    }
                    break;
                case 45:
                    iK = zzgsr.I((List) unsafe.getObject(obj, j10));
                    if (iK > 0) {
                        iE = zzgpt.e(i15);
                        iF7 = zzgpt.f(iK);
                        iF8 = iE + iF7;
                        iF13 += iF8 + iK;
                    }
                    break;
                case 46:
                    iK = zzgsr.K((List) unsafe.getObject(obj, j10));
                    if (iK > 0) {
                        iE = zzgpt.e(i15);
                        iF7 = zzgpt.f(iK);
                        iF8 = iE + iF7;
                        iF13 += iF8 + iK;
                    }
                    break;
                case 47:
                    iK = zzgsr.T((List) unsafe.getObject(obj, j10));
                    if (iK > 0) {
                        iE = zzgpt.e(i15);
                        iF7 = zzgpt.f(iK);
                        iF8 = iE + iF7;
                        iF13 += iF8 + iK;
                    }
                    break;
                case 48:
                    iK = zzgsr.V((List) unsafe.getObject(obj, j10));
                    if (iK > 0) {
                        iE = zzgpt.e(i15);
                        iF7 = zzgpt.f(iK);
                        iF8 = iE + iF7;
                        iF13 += iF8 + iK;
                    }
                    break;
                case 49:
                    iW = zzgsr.L(i15, (List) unsafe.getObject(obj, j10), m(i12));
                    iF13 += iW;
                    break;
                case 50:
                    zzgrr.a(i15, unsafe.getObject(obj, j10), o(i12));
                    break;
                case 51:
                    if (G(obj, i15, i12)) {
                        iF9 = zzgpt.f(i15 << 3);
                        iW = iF9 + 8;
                        iF13 += iW;
                    }
                    break;
                case 52:
                    if (G(obj, i15, i12)) {
                        iF10 = zzgpt.f(i15 << 3);
                        iW = iF10 + 4;
                        iF13 += iW;
                    }
                    break;
                case 53:
                    if (G(obj, i15, i12)) {
                        iK = zzgpt.g(k(obj, j10));
                        iF8 = zzgpt.f(i15 << 3);
                        iF13 += iF8 + iK;
                    }
                    break;
                case 54:
                    if (G(obj, i15, i12)) {
                        iK = zzgpt.g(k(obj, j10));
                        iF8 = zzgpt.f(i15 << 3);
                        iF13 += iF8 + iK;
                    }
                    break;
                case 55:
                    if (G(obj, i15, i12)) {
                        iK = zzgpt.G(Q(obj, j10));
                        iF8 = zzgpt.f(i15 << 3);
                        iF13 += iF8 + iK;
                    }
                    break;
                case 56:
                    if (G(obj, i15, i12)) {
                        iF9 = zzgpt.f(i15 << 3);
                        iW = iF9 + 8;
                        iF13 += iW;
                    }
                    break;
                case 57:
                    if (G(obj, i15, i12)) {
                        iF10 = zzgpt.f(i15 << 3);
                        iW = iF10 + 4;
                        iF13 += iW;
                    }
                    break;
                case 58:
                    if (G(obj, i15, i12)) {
                        iW = zzgpt.f(i15 << 3) + 1;
                        iF13 += iW;
                    }
                    break;
                case 59:
                    if (G(obj, i15, i12)) {
                        Object object2 = unsafe.getObject(obj, j10);
                        if (object2 instanceof zzgpe) {
                            int i22 = zzgpt.f19428d;
                            int iO3 = ((zzgpe) object2).o();
                            iF11 = zzgpt.f(iO3) + iO3;
                            iF12 = zzgpt.f(i15 << 3);
                            iW = iF12 + iF11;
                            iF13 += iW;
                        } else {
                            iK = zzgpt.d((String) object2);
                            iF8 = zzgpt.f(i15 << 3);
                            iF13 += iF8 + iK;
                        }
                    }
                    break;
                case 60:
                    if (G(obj, i15, i12)) {
                        iW = zzgsr.Q(i15, unsafe.getObject(obj, j10), m(i12));
                        iF13 += iW;
                    }
                    break;
                case 61:
                    if (G(obj, i15, i12)) {
                        zzgpe zzgpeVar2 = (zzgpe) unsafe.getObject(obj, j10);
                        int i23 = zzgpt.f19428d;
                        int iO4 = zzgpeVar2.o();
                        iF11 = zzgpt.f(iO4) + iO4;
                        iF12 = zzgpt.f(i15 << 3);
                        iW = iF12 + iF11;
                        iF13 += iW;
                    }
                    break;
                case 62:
                    if (G(obj, i15, i12)) {
                        iK = zzgpt.f(Q(obj, j10));
                        iF8 = zzgpt.f(i15 << 3);
                        iF13 += iF8 + iK;
                    }
                    break;
                case 63:
                    if (G(obj, i15, i12)) {
                        iK = zzgpt.G(Q(obj, j10));
                        iF8 = zzgpt.f(i15 << 3);
                        iF13 += iF8 + iK;
                    }
                    break;
                case 64:
                    if (G(obj, i15, i12)) {
                        iF10 = zzgpt.f(i15 << 3);
                        iW = iF10 + 4;
                        iF13 += iW;
                    }
                    break;
                case 65:
                    if (G(obj, i15, i12)) {
                        iF9 = zzgpt.f(i15 << 3);
                        iW = iF9 + 8;
                        iF13 += iW;
                    }
                    break;
                case 66:
                    if (G(obj, i15, i12)) {
                        int iQ = Q(obj, j10);
                        iF8 = zzgpt.f(i15 << 3);
                        iK = zzgpt.f((iQ >> 31) ^ (iQ + iQ));
                        iF13 += iF8 + iK;
                    }
                    break;
                case 67:
                    if (G(obj, i15, i12)) {
                        long jK = k(obj, j10);
                        iF13 += zzgpt.f(i15 << 3) + zzgpt.g((jK >> 63) ^ (jK + jK));
                    }
                    break;
                case 68:
                    if (G(obj, i15, i12)) {
                        iW = zzgpt.F(i15, (zzgrw) unsafe.getObject(obj, j10), m(i12));
                        iF13 += iW;
                    }
                    break;
            }
            i12 += 3;
            i11 = 1048575;
        }
        zzgtg zzgtgVar = this.f19558m;
        int iA = iF13 + zzgtgVar.a(zzgtgVar.d(obj));
        if (!this.f19551f) {
            return iA;
        }
        this.f19559n.a(obj);
        throw null;
    }

    private static int Q(Object obj, long j10) {
        return ((Integer) zzgtq.p(obj, j10)).intValue();
    }

    private final int R(Object obj, byte[] bArr, int i10, int i11, int i12, long j10, zzgoq zzgoqVar) throws IOException {
        Unsafe unsafe = f19545r;
        Object objO = o(i12);
        Object object = unsafe.getObject(obj, j10);
        if (zzgrr.b(object)) {
            zzgrq zzgrqVarB = zzgrq.a().b();
            zzgrr.c(zzgrqVarB, object);
            unsafe.putObject(obj, j10, zzgrqVarB);
        }
        throw null;
    }

    private final int S(Object obj, byte[] bArr, int i10, int i11, int i12, int i13, int i14, int i15, int i16, long j10, int i17, zzgoq zzgoqVar) throws IOException {
        Unsafe unsafe = f19545r;
        long j11 = this.f19546a[i17 + 2] & 1048575;
        switch (i16) {
            case 51:
                if (i14 != 1) {
                    return i10;
                }
                unsafe.putObject(obj, j10, Double.valueOf(Double.longBitsToDouble(zzgor.p(bArr, i10))));
                int i18 = i10 + 8;
                unsafe.putInt(obj, j11, i13);
                return i18;
            case 52:
                if (i14 != 5) {
                    return i10;
                }
                unsafe.putObject(obj, j10, Float.valueOf(Float.intBitsToFloat(zzgor.b(bArr, i10))));
                int i19 = i10 + 4;
                unsafe.putInt(obj, j11, i13);
                return i19;
            case 53:
            case 54:
                if (i14 != 0) {
                    return i10;
                }
                int iM = zzgor.m(bArr, i10, zzgoqVar);
                unsafe.putObject(obj, j10, Long.valueOf(zzgoqVar.f19361b));
                unsafe.putInt(obj, j11, i13);
                return iM;
            case 55:
            case 62:
                if (i14 != 0) {
                    return i10;
                }
                int iJ = zzgor.j(bArr, i10, zzgoqVar);
                unsafe.putObject(obj, j10, Integer.valueOf(zzgoqVar.f19360a));
                unsafe.putInt(obj, j11, i13);
                return iJ;
            case 56:
            case 65:
                if (i14 != 1) {
                    return i10;
                }
                unsafe.putObject(obj, j10, Long.valueOf(zzgor.p(bArr, i10)));
                int i20 = i10 + 8;
                unsafe.putInt(obj, j11, i13);
                return i20;
            case 57:
            case 64:
                if (i14 != 5) {
                    return i10;
                }
                unsafe.putObject(obj, j10, Integer.valueOf(zzgor.b(bArr, i10)));
                int i21 = i10 + 4;
                unsafe.putInt(obj, j11, i13);
                return i21;
            case 58:
                if (i14 != 0) {
                    return i10;
                }
                int iM2 = zzgor.m(bArr, i10, zzgoqVar);
                unsafe.putObject(obj, j10, Boolean.valueOf(zzgoqVar.f19361b != 0));
                unsafe.putInt(obj, j11, i13);
                return iM2;
            case 59:
                if (i14 != 2) {
                    return i10;
                }
                int iJ2 = zzgor.j(bArr, i10, zzgoqVar);
                int i22 = zzgoqVar.f19360a;
                if (i22 == 0) {
                    unsafe.putObject(obj, j10, BuildConfig.FLAVOR);
                } else {
                    if ((i15 & 536870912) != 0 && !zzgtv.j(bArr, iJ2, iJ2 + i22)) {
                        throw zzgqy.d();
                    }
                    unsafe.putObject(obj, j10, new String(bArr, iJ2, i22, zzgqw.f19490b));
                    iJ2 += i22;
                }
                unsafe.putInt(obj, j11, i13);
                return iJ2;
            case 60:
                if (i14 != 2) {
                    return i10;
                }
                Object objQ = q(obj, i13, i17);
                int iO = zzgor.o(objQ, m(i17), bArr, i10, i11, zzgoqVar);
                z(obj, i13, i17, objQ);
                return iO;
            case 61:
                if (i14 != 2) {
                    return i10;
                }
                int iA = zzgor.a(bArr, i10, zzgoqVar);
                unsafe.putObject(obj, j10, zzgoqVar.f19362c);
                unsafe.putInt(obj, j11, i13);
                return iA;
            case 63:
                if (i14 != 0) {
                    return i10;
                }
                int iJ3 = zzgor.j(bArr, i10, zzgoqVar);
                int i23 = zzgoqVar.f19360a;
                zzgqq zzgqqVarL = l(i17);
                if (zzgqqVarL == null || zzgqqVarL.h(i23)) {
                    unsafe.putObject(obj, j10, Integer.valueOf(i23));
                    unsafe.putInt(obj, j11, i13);
                } else {
                    L(obj).j(i12, Long.valueOf(i23));
                }
                return iJ3;
            case 66:
                if (i14 != 0) {
                    return i10;
                }
                int iJ4 = zzgor.j(bArr, i10, zzgoqVar);
                unsafe.putObject(obj, j10, Integer.valueOf(zzgpm.e(zzgoqVar.f19360a)));
                unsafe.putInt(obj, j11, i13);
                return iJ4;
            case 67:
                if (i14 != 0) {
                    return i10;
                }
                int iM3 = zzgor.m(bArr, i10, zzgoqVar);
                unsafe.putObject(obj, j10, Long.valueOf(zzgpm.f(zzgoqVar.f19361b)));
                unsafe.putInt(obj, j11, i13);
                return iM3;
            case 68:
                if (i14 != 3) {
                    return i10;
                }
                Object objQ2 = q(obj, i13, i17);
                int iN = zzgor.n(objQ2, m(i17), bArr, i10, i11, (i12 & (-8)) | 4, zzgoqVar);
                z(obj, i13, i17, objQ2);
                return iN;
            default:
                return i10;
        }
    }

    private final int T(Object obj, byte[] bArr, int i10, int i11, int i12, int i13, int i14, int i15, long j10, int i16, long j11, zzgoq zzgoqVar) throws IOException {
        int i17;
        int i18;
        int i19;
        int i20;
        int iJ;
        int iJ2 = i10;
        Unsafe unsafe = f19545r;
        zzgqv zzgqvVarK = (zzgqv) unsafe.getObject(obj, j11);
        if (!zzgqvVarK.a()) {
            int size = zzgqvVarK.size();
            zzgqvVarK = zzgqvVarK.K(size == 0 ? 10 : size + size);
            unsafe.putObject(obj, j11, zzgqvVarK);
        }
        switch (i16) {
            case 18:
            case 35:
                if (i14 == 2) {
                    zzgpv zzgpvVar = (zzgpv) zzgqvVarK;
                    int iJ3 = zzgor.j(bArr, iJ2, zzgoqVar);
                    int i21 = zzgoqVar.f19360a + iJ3;
                    while (iJ3 < i21) {
                        zzgpvVar.g(Double.longBitsToDouble(zzgor.p(bArr, iJ3)));
                        iJ3 += 8;
                    }
                    if (iJ3 == i21) {
                        return iJ3;
                    }
                    throw zzgqy.j();
                }
                if (i14 == 1) {
                    zzgpv zzgpvVar2 = (zzgpv) zzgqvVarK;
                    zzgpvVar2.g(Double.longBitsToDouble(zzgor.p(bArr, i10)));
                    while (true) {
                        i17 = iJ2 + 8;
                        if (i17 < i11) {
                            iJ2 = zzgor.j(bArr, i17, zzgoqVar);
                            if (i12 == zzgoqVar.f19360a) {
                                zzgpvVar2.g(Double.longBitsToDouble(zzgor.p(bArr, iJ2)));
                            }
                        }
                    }
                    return i17;
                }
                return iJ2;
            case 19:
            case 36:
                if (i14 == 2) {
                    zzgqf zzgqfVar = (zzgqf) zzgqvVarK;
                    int iJ4 = zzgor.j(bArr, iJ2, zzgoqVar);
                    int i22 = zzgoqVar.f19360a + iJ4;
                    while (iJ4 < i22) {
                        zzgqfVar.g(Float.intBitsToFloat(zzgor.b(bArr, iJ4)));
                        iJ4 += 4;
                    }
                    if (iJ4 == i22) {
                        return iJ4;
                    }
                    throw zzgqy.j();
                }
                if (i14 == 5) {
                    zzgqf zzgqfVar2 = (zzgqf) zzgqvVarK;
                    zzgqfVar2.g(Float.intBitsToFloat(zzgor.b(bArr, i10)));
                    while (true) {
                        i18 = iJ2 + 4;
                        if (i18 < i11) {
                            iJ2 = zzgor.j(bArr, i18, zzgoqVar);
                            if (i12 == zzgoqVar.f19360a) {
                                zzgqfVar2.g(Float.intBitsToFloat(zzgor.b(bArr, iJ2)));
                            }
                        }
                    }
                    return i18;
                }
                return iJ2;
            case 20:
            case 21:
            case 37:
            case 38:
                if (i14 == 2) {
                    zzgrl zzgrlVar = (zzgrl) zzgqvVarK;
                    int iJ5 = zzgor.j(bArr, iJ2, zzgoqVar);
                    int i23 = zzgoqVar.f19360a + iJ5;
                    while (iJ5 < i23) {
                        iJ5 = zzgor.m(bArr, iJ5, zzgoqVar);
                        zzgrlVar.j(zzgoqVar.f19361b);
                    }
                    if (iJ5 == i23) {
                        return iJ5;
                    }
                    throw zzgqy.j();
                }
                if (i14 == 0) {
                    zzgrl zzgrlVar2 = (zzgrl) zzgqvVarK;
                    int iM = zzgor.m(bArr, iJ2, zzgoqVar);
                    zzgrlVar2.j(zzgoqVar.f19361b);
                    while (iM < i11) {
                        int iJ6 = zzgor.j(bArr, iM, zzgoqVar);
                        if (i12 != zzgoqVar.f19360a) {
                            return iM;
                        }
                        iM = zzgor.m(bArr, iJ6, zzgoqVar);
                        zzgrlVar2.j(zzgoqVar.f19361b);
                    }
                    return iM;
                }
                return iJ2;
            case 22:
            case 29:
            case 39:
            case 43:
                if (i14 == 2) {
                    return zzgor.f(bArr, iJ2, zzgqvVarK, zzgoqVar);
                }
                if (i14 == 0) {
                    return zzgor.l(i12, bArr, i10, i11, zzgqvVarK, zzgoqVar);
                }
                return iJ2;
            case 23:
            case 32:
            case 40:
            case 46:
                if (i14 == 2) {
                    zzgrl zzgrlVar3 = (zzgrl) zzgqvVarK;
                    int iJ7 = zzgor.j(bArr, iJ2, zzgoqVar);
                    int i24 = zzgoqVar.f19360a + iJ7;
                    while (iJ7 < i24) {
                        zzgrlVar3.j(zzgor.p(bArr, iJ7));
                        iJ7 += 8;
                    }
                    if (iJ7 == i24) {
                        return iJ7;
                    }
                    throw zzgqy.j();
                }
                if (i14 == 1) {
                    zzgrl zzgrlVar4 = (zzgrl) zzgqvVarK;
                    zzgrlVar4.j(zzgor.p(bArr, i10));
                    while (true) {
                        i19 = iJ2 + 8;
                        if (i19 < i11) {
                            iJ2 = zzgor.j(bArr, i19, zzgoqVar);
                            if (i12 == zzgoqVar.f19360a) {
                                zzgrlVar4.j(zzgor.p(bArr, iJ2));
                            }
                        }
                    }
                    return i19;
                }
                return iJ2;
            case 24:
            case 31:
            case 41:
            case 45:
                if (i14 == 2) {
                    zzgqn zzgqnVar = (zzgqn) zzgqvVarK;
                    int iJ8 = zzgor.j(bArr, iJ2, zzgoqVar);
                    int i25 = zzgoqVar.f19360a + iJ8;
                    while (iJ8 < i25) {
                        zzgqnVar.j0(zzgor.b(bArr, iJ8));
                        iJ8 += 4;
                    }
                    if (iJ8 == i25) {
                        return iJ8;
                    }
                    throw zzgqy.j();
                }
                if (i14 == 5) {
                    zzgqn zzgqnVar2 = (zzgqn) zzgqvVarK;
                    zzgqnVar2.j0(zzgor.b(bArr, i10));
                    while (true) {
                        i20 = iJ2 + 4;
                        if (i20 < i11) {
                            iJ2 = zzgor.j(bArr, i20, zzgoqVar);
                            if (i12 == zzgoqVar.f19360a) {
                                zzgqnVar2.j0(zzgor.b(bArr, iJ2));
                            }
                        }
                    }
                    return i20;
                }
                return iJ2;
            case 25:
            case 42:
                if (i14 == 2) {
                    zzgos zzgosVar = (zzgos) zzgqvVarK;
                    iJ = zzgor.j(bArr, iJ2, zzgoqVar);
                    int i26 = zzgoqVar.f19360a + iJ;
                    while (iJ < i26) {
                        iJ = zzgor.m(bArr, iJ, zzgoqVar);
                        zzgosVar.g(zzgoqVar.f19361b != 0);
                    }
                    if (iJ != i26) {
                        throw zzgqy.j();
                    }
                    return iJ;
                }
                if (i14 == 0) {
                    zzgos zzgosVar2 = (zzgos) zzgqvVarK;
                    int iM2 = zzgor.m(bArr, iJ2, zzgoqVar);
                    zzgosVar2.g(zzgoqVar.f19361b != 0);
                    while (iM2 < i11) {
                        int iJ9 = zzgor.j(bArr, iM2, zzgoqVar);
                        if (i12 != zzgoqVar.f19360a) {
                            return iM2;
                        }
                        iM2 = zzgor.m(bArr, iJ9, zzgoqVar);
                        zzgosVar2.g(zzgoqVar.f19361b != 0);
                    }
                    return iM2;
                }
                return iJ2;
            case 26:
                if (i14 == 2) {
                    if ((j10 & 536870912) == 0) {
                        iJ2 = zzgor.j(bArr, iJ2, zzgoqVar);
                        int i27 = zzgoqVar.f19360a;
                        if (i27 < 0) {
                            throw zzgqy.f();
                        }
                        if (i27 == 0) {
                            zzgqvVarK.add(BuildConfig.FLAVOR);
                        } else {
                            zzgqvVarK.add(new String(bArr, iJ2, i27, zzgqw.f19490b));
                            iJ2 += i27;
                        }
                        while (iJ2 < i11) {
                            int iJ10 = zzgor.j(bArr, iJ2, zzgoqVar);
                            if (i12 == zzgoqVar.f19360a) {
                                iJ2 = zzgor.j(bArr, iJ10, zzgoqVar);
                                int i28 = zzgoqVar.f19360a;
                                if (i28 < 0) {
                                    throw zzgqy.f();
                                }
                                if (i28 == 0) {
                                    zzgqvVarK.add(BuildConfig.FLAVOR);
                                } else {
                                    zzgqvVarK.add(new String(bArr, iJ2, i28, zzgqw.f19490b));
                                    iJ2 += i28;
                                }
                            }
                        }
                    } else {
                        iJ2 = zzgor.j(bArr, iJ2, zzgoqVar);
                        int i29 = zzgoqVar.f19360a;
                        if (i29 < 0) {
                            throw zzgqy.f();
                        }
                        if (i29 == 0) {
                            zzgqvVarK.add(BuildConfig.FLAVOR);
                        } else {
                            int i30 = iJ2 + i29;
                            if (!zzgtv.j(bArr, iJ2, i30)) {
                                throw zzgqy.d();
                            }
                            zzgqvVarK.add(new String(bArr, iJ2, i29, zzgqw.f19490b));
                            iJ2 = i30;
                        }
                        while (iJ2 < i11) {
                            int iJ11 = zzgor.j(bArr, iJ2, zzgoqVar);
                            if (i12 == zzgoqVar.f19360a) {
                                iJ2 = zzgor.j(bArr, iJ11, zzgoqVar);
                                int i31 = zzgoqVar.f19360a;
                                if (i31 < 0) {
                                    throw zzgqy.f();
                                }
                                if (i31 == 0) {
                                    zzgqvVarK.add(BuildConfig.FLAVOR);
                                } else {
                                    int i32 = iJ2 + i31;
                                    if (!zzgtv.j(bArr, iJ2, i32)) {
                                        throw zzgqy.d();
                                    }
                                    zzgqvVarK.add(new String(bArr, iJ2, i31, zzgqw.f19490b));
                                    iJ2 = i32;
                                }
                            }
                        }
                    }
                }
                return iJ2;
            case 27:
                if (i14 == 2) {
                    return zzgor.e(m(i15), i12, bArr, i10, i11, zzgqvVarK, zzgoqVar);
                }
                return iJ2;
            case 28:
                if (i14 == 2) {
                    int iJ12 = zzgor.j(bArr, iJ2, zzgoqVar);
                    int i33 = zzgoqVar.f19360a;
                    if (i33 < 0) {
                        throw zzgqy.f();
                    }
                    if (i33 > bArr.length - iJ12) {
                        throw zzgqy.j();
                    }
                    if (i33 == 0) {
                        zzgqvVarK.add(zzgpe.f19379p);
                    } else {
                        zzgqvVarK.add(zzgpe.L(bArr, iJ12, i33));
                        iJ12 += i33;
                    }
                    while (iJ12 < i11) {
                        int iJ13 = zzgor.j(bArr, iJ12, zzgoqVar);
                        if (i12 != zzgoqVar.f19360a) {
                            return iJ12;
                        }
                        iJ12 = zzgor.j(bArr, iJ13, zzgoqVar);
                        int i34 = zzgoqVar.f19360a;
                        if (i34 < 0) {
                            throw zzgqy.f();
                        }
                        if (i34 > bArr.length - iJ12) {
                            throw zzgqy.j();
                        }
                        if (i34 == 0) {
                            zzgqvVarK.add(zzgpe.f19379p);
                        } else {
                            zzgqvVarK.add(zzgpe.L(bArr, iJ12, i34));
                            iJ12 += i34;
                        }
                    }
                    return iJ12;
                }
                return iJ2;
            case 30:
            case 44:
                if (i14 != 2) {
                    if (i14 == 0) {
                        iJ = zzgor.l(i12, bArr, i10, i11, zzgqvVarK, zzgoqVar);
                    }
                    return iJ2;
                }
                iJ = zzgor.f(bArr, iJ2, zzgqvVarK, zzgoqVar);
                zzgsr.c(obj, i13, zzgqvVarK, l(i15), null, this.f19558m);
                return iJ;
            case 33:
            case 47:
                if (i14 == 2) {
                    zzgqn zzgqnVar3 = (zzgqn) zzgqvVarK;
                    int iJ14 = zzgor.j(bArr, iJ2, zzgoqVar);
                    int i35 = zzgoqVar.f19360a + iJ14;
                    while (iJ14 < i35) {
                        iJ14 = zzgor.j(bArr, iJ14, zzgoqVar);
                        zzgqnVar3.j0(zzgpm.e(zzgoqVar.f19360a));
                    }
                    if (iJ14 == i35) {
                        return iJ14;
                    }
                    throw zzgqy.j();
                }
                if (i14 == 0) {
                    zzgqn zzgqnVar4 = (zzgqn) zzgqvVarK;
                    int iJ15 = zzgor.j(bArr, iJ2, zzgoqVar);
                    zzgqnVar4.j0(zzgpm.e(zzgoqVar.f19360a));
                    while (iJ15 < i11) {
                        int iJ16 = zzgor.j(bArr, iJ15, zzgoqVar);
                        if (i12 != zzgoqVar.f19360a) {
                            return iJ15;
                        }
                        iJ15 = zzgor.j(bArr, iJ16, zzgoqVar);
                        zzgqnVar4.j0(zzgpm.e(zzgoqVar.f19360a));
                    }
                    return iJ15;
                }
                return iJ2;
            case 34:
            case 48:
                if (i14 == 2) {
                    zzgrl zzgrlVar5 = (zzgrl) zzgqvVarK;
                    int iJ17 = zzgor.j(bArr, iJ2, zzgoqVar);
                    int i36 = zzgoqVar.f19360a + iJ17;
                    while (iJ17 < i36) {
                        iJ17 = zzgor.m(bArr, iJ17, zzgoqVar);
                        zzgrlVar5.j(zzgpm.f(zzgoqVar.f19361b));
                    }
                    if (iJ17 == i36) {
                        return iJ17;
                    }
                    throw zzgqy.j();
                }
                if (i14 == 0) {
                    zzgrl zzgrlVar6 = (zzgrl) zzgqvVarK;
                    int iM3 = zzgor.m(bArr, iJ2, zzgoqVar);
                    zzgrlVar6.j(zzgpm.f(zzgoqVar.f19361b));
                    while (iM3 < i11) {
                        int iJ18 = zzgor.j(bArr, iM3, zzgoqVar);
                        if (i12 != zzgoqVar.f19360a) {
                            return iM3;
                        }
                        iM3 = zzgor.m(bArr, iJ18, zzgoqVar);
                        zzgrlVar6.j(zzgpm.f(zzgoqVar.f19361b));
                    }
                    return iM3;
                }
                return iJ2;
            default:
                if (i14 == 3) {
                    zzgsp zzgspVarM = m(i15);
                    int i37 = (i12 & (-8)) | 4;
                    int iC = zzgor.c(zzgspVarM, bArr, i10, i11, i37, zzgoqVar);
                    zzgqvVarK.add(zzgoqVar.f19362c);
                    while (iC < i11) {
                        int iJ19 = zzgor.j(bArr, iC, zzgoqVar);
                        if (i12 != zzgoqVar.f19360a) {
                            return iC;
                        }
                        iC = zzgor.c(zzgspVarM, bArr, iJ19, i11, i37, zzgoqVar);
                        zzgqvVarK.add(zzgoqVar.f19362c);
                    }
                    return iC;
                }
                return iJ2;
        }
    }

    private final int U(int i10) {
        if (i10 < this.f19548c || i10 > this.f19549d) {
            return -1;
        }
        return X(i10, 0);
    }

    private final int V(int i10, int i11) {
        if (i10 < this.f19548c || i10 > this.f19549d) {
            return -1;
        }
        return X(i10, i11);
    }

    private final int W(int i10) {
        return this.f19546a[i10 + 2];
    }

    private final int X(int i10, int i11) {
        int length = (this.f19546a.length / 3) - 1;
        while (i11 <= length) {
            int i12 = (length + i11) >>> 1;
            int i13 = i12 * 3;
            int i14 = this.f19546a[i13];
            if (i10 == i14) {
                return i13;
            }
            if (i10 < i14) {
                length = i12 - 1;
            } else {
                i11 = i12 + 1;
            }
        }
        return -1;
    }

    private static int Y(int i10) {
        return (i10 >>> 20) & 255;
    }

    private final int Z(int i10) {
        return this.f19546a[i10 + 1];
    }

    private static long k(Object obj, long j10) {
        return ((Long) zzgtq.p(obj, j10)).longValue();
    }

    private final zzgqq l(int i10) {
        int i11 = i10 / 3;
        return (zzgqq) this.f19547b[i11 + i11 + 1];
    }

    private final zzgsp m(int i10) {
        int i11 = i10 / 3;
        int i12 = i11 + i11;
        zzgsp zzgspVar = (zzgsp) this.f19547b[i12];
        if (zzgspVar != null) {
            return zzgspVar;
        }
        zzgsp zzgspVarB = zzgse.a().b((Class) this.f19547b[i12 + 1]);
        this.f19547b[i12] = zzgspVarB;
        return zzgspVarB;
    }

    private final Object n(Object obj, int i10, Object obj2, zzgtg zzgtgVar, Object obj3) {
        int i11 = this.f19546a[i10];
        Object objP = zzgtq.p(obj, Z(i10) & 1048575);
        if (objP == null || l(i10) == null) {
            return obj2;
        }
        throw null;
    }

    private final Object o(int i10) {
        int i11 = i10 / 3;
        return this.f19547b[i11 + i11];
    }

    private final Object p(Object obj, int i10) {
        zzgsp zzgspVarM = m(i10);
        int iZ = Z(i10) & 1048575;
        if (!C(obj, i10)) {
            return zzgspVarM.b();
        }
        Object object = f19545r.getObject(obj, iZ);
        if (F(object)) {
            return object;
        }
        Object objB = zzgspVarM.b();
        if (object != null) {
            zzgspVarM.f(objB, object);
        }
        return objB;
    }

    private final Object q(Object obj, int i10, int i11) {
        zzgsp zzgspVarM = m(i11);
        if (!G(obj, i10, i11)) {
            return zzgspVarM.b();
        }
        Object object = f19545r.getObject(obj, Z(i11) & 1048575);
        if (F(object)) {
            return object;
        }
        Object objB = zzgspVarM.b();
        if (object != null) {
            zzgspVarM.f(objB, object);
        }
        return objB;
    }

    private static Field r(Class cls, String str) {
        try {
            return cls.getDeclaredField(str);
        } catch (NoSuchFieldException unused) {
            Field[] declaredFields = cls.getDeclaredFields();
            for (Field field : declaredFields) {
                if (str.equals(field.getName())) {
                    return field;
                }
            }
            throw new RuntimeException("Field " + str + " for " + cls.getName() + " not found. Known fields are " + Arrays.toString(declaredFields));
        }
    }

    private static void s(Object obj) {
        if (!F(obj)) {
            throw new IllegalArgumentException("Mutating immutable message: ".concat(String.valueOf(obj)));
        }
    }

    private final void t(Object obj, Object obj2, int i10) {
        if (C(obj2, i10)) {
            int iZ = Z(i10) & 1048575;
            Unsafe unsafe = f19545r;
            long j10 = iZ;
            Object object = unsafe.getObject(obj2, j10);
            if (object == null) {
                throw new IllegalStateException("Source subfield " + this.f19546a[i10] + " is present but null: " + obj2.toString());
            }
            zzgsp zzgspVarM = m(i10);
            if (!C(obj, i10)) {
                if (F(object)) {
                    Object objB = zzgspVarM.b();
                    zzgspVarM.f(objB, object);
                    unsafe.putObject(obj, j10, objB);
                } else {
                    unsafe.putObject(obj, j10, object);
                }
                w(obj, i10);
                return;
            }
            Object object2 = unsafe.getObject(obj, j10);
            if (!F(object2)) {
                Object objB2 = zzgspVarM.b();
                zzgspVarM.f(objB2, object2);
                unsafe.putObject(obj, j10, objB2);
                object2 = objB2;
            }
            zzgspVarM.f(object2, object);
        }
    }

    private final void u(Object obj, Object obj2, int i10) {
        int i11 = this.f19546a[i10];
        if (G(obj2, i11, i10)) {
            int iZ = Z(i10) & 1048575;
            Unsafe unsafe = f19545r;
            long j10 = iZ;
            Object object = unsafe.getObject(obj2, j10);
            if (object == null) {
                throw new IllegalStateException("Source subfield " + this.f19546a[i10] + " is present but null: " + obj2.toString());
            }
            zzgsp zzgspVarM = m(i10);
            if (!G(obj, i11, i10)) {
                if (F(object)) {
                    Object objB = zzgspVarM.b();
                    zzgspVarM.f(objB, object);
                    unsafe.putObject(obj, j10, objB);
                } else {
                    unsafe.putObject(obj, j10, object);
                }
                x(obj, i11, i10);
                return;
            }
            Object object2 = unsafe.getObject(obj, j10);
            if (!F(object2)) {
                Object objB2 = zzgspVarM.b();
                zzgspVarM.f(objB2, object2);
                unsafe.putObject(obj, j10, objB2);
                object2 = objB2;
            }
            zzgspVarM.f(object2, object);
        }
    }

    private final void v(Object obj, int i10, zzgsh zzgshVar) throws IOException {
        if (B(i10)) {
            zzgtq.D(obj, i10 & 1048575, zzgshVar.q());
        } else if (this.f19552g) {
            zzgtq.D(obj, i10 & 1048575, zzgshVar.p());
        } else {
            zzgtq.D(obj, i10 & 1048575, zzgshVar.n());
        }
    }

    private final void w(Object obj, int i10) {
        int iW = W(i10);
        long j10 = 1048575 & iW;
        if (j10 == 1048575) {
            return;
        }
        zzgtq.B(obj, j10, (1 << (iW >>> 20)) | zzgtq.l(obj, j10));
    }

    private final void x(Object obj, int i10, int i11) {
        zzgtq.B(obj, W(i11) & 1048575, i10);
    }

    private final void y(Object obj, int i10, Object obj2) {
        f19545r.putObject(obj, Z(i10) & 1048575, obj2);
        w(obj, i10);
    }

    private final void z(Object obj, int i10, int i11, Object obj2) {
        f19545r.putObject(obj, Z(i11) & 1048575, obj2);
        x(obj, i10, i11);
    }

    /* JADX WARN: Code restructure failed: missing block: B:139:0x0407, code lost:
    
        if (r0 == r1) goto L141;
     */
    /* JADX WARN: Code restructure failed: missing block: B:140:0x0409, code lost:
    
        r26.putInt(r12, r0, r5);
     */
    /* JADX WARN: Code restructure failed: missing block: B:141:0x040f, code lost:
    
        r10 = r8.f19555j;
     */
    /* JADX WARN: Code restructure failed: missing block: B:143:0x0414, code lost:
    
        if (r10 >= r8.f19556k) goto L208;
     */
    /* JADX WARN: Code restructure failed: missing block: B:144:0x0416, code lost:
    
        n(r28, r8.f19554i[r10], null, r8.f19558m, r28);
        r10 = r10 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:145:0x0429, code lost:
    
        if (r9 != 0) goto L151;
     */
    /* JADX WARN: Code restructure failed: missing block: B:147:0x042d, code lost:
    
        if (r6 != r31) goto L149;
     */
    /* JADX WARN: Code restructure failed: missing block: B:150:0x0434, code lost:
    
        throw com.google.android.gms.internal.ads.zzgqy.g();
     */
    /* JADX WARN: Code restructure failed: missing block: B:152:0x0437, code lost:
    
        if (r6 > r31) goto L155;
     */
    /* JADX WARN: Code restructure failed: missing block: B:153:0x0439, code lost:
    
        if (r7 != r9) goto L155;
     */
    /* JADX WARN: Code restructure failed: missing block: B:154:0x043b, code lost:
    
        return r6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:156:0x0441, code lost:
    
        throw com.google.android.gms.internal.ads.zzgqy.g();
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    final int K(java.lang.Object r28, byte[] r29, int r30, int r31, int r32, com.google.android.gms.internal.ads.zzgoq r33) throws java.io.IOException {
        /*
            Method dump skipped, instruction units count: 1130
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzgrz.K(java.lang.Object, byte[], int, int, int, com.google.android.gms.internal.ads.zzgoq):int");
    }

    @Override // com.google.android.gms.internal.ads.zzgsp
    public final int a(Object obj) {
        int iF;
        int iF2;
        int iG;
        int iF3;
        int iF4;
        int iF5;
        int iF6;
        int iQ;
        int iF7;
        int iG2;
        int iE;
        int iF8;
        if (!this.f19553h) {
            return P(obj);
        }
        Unsafe unsafe = f19545r;
        int i10 = 0;
        for (int i11 = 0; i11 < this.f19546a.length; i11 += 3) {
            int iZ = Z(i11);
            int iY = Y(iZ);
            int i12 = this.f19546a[i11];
            int i13 = iZ & 1048575;
            if (iY >= zzgqe.f19446a0.zza() && iY <= zzgqe.f19459n0.zza()) {
                int i14 = this.f19546a[i11 + 2];
            }
            long j10 = i13;
            switch (iY) {
                case 0:
                    if (C(obj, i11)) {
                        iF = zzgpt.f(i12 << 3);
                        iQ = iF + 8;
                        i10 += iQ;
                    }
                    break;
                case 1:
                    if (C(obj, i11)) {
                        iF2 = zzgpt.f(i12 << 3);
                        iQ = iF2 + 4;
                        i10 += iQ;
                    }
                    break;
                case 2:
                    if (C(obj, i11)) {
                        iG = zzgpt.g(zzgtq.n(obj, j10));
                        iF3 = zzgpt.f(i12 << 3);
                        i10 += iF3 + iG;
                    }
                    break;
                case 3:
                    if (C(obj, i11)) {
                        iG = zzgpt.g(zzgtq.n(obj, j10));
                        iF3 = zzgpt.f(i12 << 3);
                        i10 += iF3 + iG;
                    }
                    break;
                case 4:
                    if (C(obj, i11)) {
                        iG = zzgpt.G(zzgtq.l(obj, j10));
                        iF3 = zzgpt.f(i12 << 3);
                        i10 += iF3 + iG;
                    }
                    break;
                case 5:
                    if (C(obj, i11)) {
                        iF = zzgpt.f(i12 << 3);
                        iQ = iF + 8;
                        i10 += iQ;
                    }
                    break;
                case 6:
                    if (C(obj, i11)) {
                        iF2 = zzgpt.f(i12 << 3);
                        iQ = iF2 + 4;
                        i10 += iQ;
                    }
                    break;
                case 7:
                    if (C(obj, i11)) {
                        iF4 = zzgpt.f(i12 << 3);
                        iQ = iF4 + 1;
                        i10 += iQ;
                    }
                    break;
                case 8:
                    if (C(obj, i11)) {
                        Object objP = zzgtq.p(obj, j10);
                        if (objP instanceof zzgpe) {
                            int i15 = i12 << 3;
                            int i16 = zzgpt.f19428d;
                            int iO = ((zzgpe) objP).o();
                            iF5 = zzgpt.f(iO) + iO;
                            iF6 = zzgpt.f(i15);
                            iQ = iF6 + iF5;
                            i10 += iQ;
                        } else {
                            iG = zzgpt.d((String) objP);
                            iF3 = zzgpt.f(i12 << 3);
                            i10 += iF3 + iG;
                        }
                    }
                    break;
                case 9:
                    if (C(obj, i11)) {
                        iQ = zzgsr.Q(i12, zzgtq.p(obj, j10), m(i11));
                        i10 += iQ;
                    }
                    break;
                case 10:
                    if (C(obj, i11)) {
                        zzgpe zzgpeVar = (zzgpe) zzgtq.p(obj, j10);
                        int i17 = i12 << 3;
                        int i18 = zzgpt.f19428d;
                        int iO2 = zzgpeVar.o();
                        iF5 = zzgpt.f(iO2) + iO2;
                        iF6 = zzgpt.f(i17);
                        iQ = iF6 + iF5;
                        i10 += iQ;
                    }
                    break;
                case 11:
                    if (C(obj, i11)) {
                        iG = zzgpt.f(zzgtq.l(obj, j10));
                        iF3 = zzgpt.f(i12 << 3);
                        i10 += iF3 + iG;
                    }
                    break;
                case 12:
                    if (C(obj, i11)) {
                        iG = zzgpt.G(zzgtq.l(obj, j10));
                        iF3 = zzgpt.f(i12 << 3);
                        i10 += iF3 + iG;
                    }
                    break;
                case 13:
                    if (C(obj, i11)) {
                        iF2 = zzgpt.f(i12 << 3);
                        iQ = iF2 + 4;
                        i10 += iQ;
                    }
                    break;
                case 14:
                    if (C(obj, i11)) {
                        iF = zzgpt.f(i12 << 3);
                        iQ = iF + 8;
                        i10 += iQ;
                    }
                    break;
                case 15:
                    if (C(obj, i11)) {
                        int iL = zzgtq.l(obj, j10);
                        iF3 = zzgpt.f(i12 << 3);
                        iG = zzgpt.f((iL >> 31) ^ (iL + iL));
                        i10 += iF3 + iG;
                    }
                    break;
                case 16:
                    if (C(obj, i11)) {
                        long jN = zzgtq.n(obj, j10);
                        iF7 = zzgpt.f(i12 << 3);
                        iG2 = zzgpt.g((jN >> 63) ^ (jN + jN));
                        iQ = iF7 + iG2;
                        i10 += iQ;
                    }
                    break;
                case 17:
                    if (C(obj, i11)) {
                        iQ = zzgpt.F(i12, (zzgrw) zzgtq.p(obj, j10), m(i11));
                        i10 += iQ;
                    }
                    break;
                case 18:
                    iQ = zzgsr.J(i12, (List) zzgtq.p(obj, j10), false);
                    i10 += iQ;
                    break;
                case 19:
                    iQ = zzgsr.H(i12, (List) zzgtq.p(obj, j10), false);
                    i10 += iQ;
                    break;
                case 20:
                    iQ = zzgsr.O(i12, (List) zzgtq.p(obj, j10), false);
                    i10 += iQ;
                    break;
                case 21:
                    iQ = zzgsr.Z(i12, (List) zzgtq.p(obj, j10), false);
                    i10 += iQ;
                    break;
                case 22:
                    iQ = zzgsr.M(i12, (List) zzgtq.p(obj, j10), false);
                    i10 += iQ;
                    break;
                case 23:
                    iQ = zzgsr.J(i12, (List) zzgtq.p(obj, j10), false);
                    i10 += iQ;
                    break;
                case 24:
                    iQ = zzgsr.H(i12, (List) zzgtq.p(obj, j10), false);
                    i10 += iQ;
                    break;
                case 25:
                    iQ = zzgsr.A(i12, (List) zzgtq.p(obj, j10), false);
                    i10 += iQ;
                    break;
                case 26:
                    iQ = zzgsr.W(i12, (List) zzgtq.p(obj, j10));
                    i10 += iQ;
                    break;
                case 27:
                    iQ = zzgsr.R(i12, (List) zzgtq.p(obj, j10), m(i11));
                    i10 += iQ;
                    break;
                case 28:
                    iQ = zzgsr.E(i12, (List) zzgtq.p(obj, j10));
                    i10 += iQ;
                    break;
                case 29:
                    iQ = zzgsr.X(i12, (List) zzgtq.p(obj, j10), false);
                    i10 += iQ;
                    break;
                case 30:
                    iQ = zzgsr.F(i12, (List) zzgtq.p(obj, j10), false);
                    i10 += iQ;
                    break;
                case 31:
                    iQ = zzgsr.H(i12, (List) zzgtq.p(obj, j10), false);
                    i10 += iQ;
                    break;
                case 32:
                    iQ = zzgsr.J(i12, (List) zzgtq.p(obj, j10), false);
                    i10 += iQ;
                    break;
                case 33:
                    iQ = zzgsr.S(i12, (List) zzgtq.p(obj, j10), false);
                    i10 += iQ;
                    break;
                case 34:
                    iQ = zzgsr.U(i12, (List) zzgtq.p(obj, j10), false);
                    i10 += iQ;
                    break;
                case 35:
                    iG = zzgsr.K((List) unsafe.getObject(obj, j10));
                    if (iG > 0) {
                        iE = zzgpt.e(i12);
                        iF8 = zzgpt.f(iG);
                        iF3 = iE + iF8;
                        i10 += iF3 + iG;
                    }
                    break;
                case 36:
                    iG = zzgsr.I((List) unsafe.getObject(obj, j10));
                    if (iG > 0) {
                        iE = zzgpt.e(i12);
                        iF8 = zzgpt.f(iG);
                        iF3 = iE + iF8;
                        i10 += iF3 + iG;
                    }
                    break;
                case 37:
                    iG = zzgsr.P((List) unsafe.getObject(obj, j10));
                    if (iG > 0) {
                        iE = zzgpt.e(i12);
                        iF8 = zzgpt.f(iG);
                        iF3 = iE + iF8;
                        i10 += iF3 + iG;
                    }
                    break;
                case 38:
                    iG = zzgsr.a0((List) unsafe.getObject(obj, j10));
                    if (iG > 0) {
                        iE = zzgpt.e(i12);
                        iF8 = zzgpt.f(iG);
                        iF3 = iE + iF8;
                        i10 += iF3 + iG;
                    }
                    break;
                case 39:
                    iG = zzgsr.N((List) unsafe.getObject(obj, j10));
                    if (iG > 0) {
                        iE = zzgpt.e(i12);
                        iF8 = zzgpt.f(iG);
                        iF3 = iE + iF8;
                        i10 += iF3 + iG;
                    }
                    break;
                case 40:
                    iG = zzgsr.K((List) unsafe.getObject(obj, j10));
                    if (iG > 0) {
                        iE = zzgpt.e(i12);
                        iF8 = zzgpt.f(iG);
                        iF3 = iE + iF8;
                        i10 += iF3 + iG;
                    }
                    break;
                case 41:
                    iG = zzgsr.I((List) unsafe.getObject(obj, j10));
                    if (iG > 0) {
                        iE = zzgpt.e(i12);
                        iF8 = zzgpt.f(iG);
                        iF3 = iE + iF8;
                        i10 += iF3 + iG;
                    }
                    break;
                case 42:
                    iG = zzgsr.D((List) unsafe.getObject(obj, j10));
                    if (iG > 0) {
                        iE = zzgpt.e(i12);
                        iF8 = zzgpt.f(iG);
                        iF3 = iE + iF8;
                        i10 += iF3 + iG;
                    }
                    break;
                case 43:
                    iG = zzgsr.Y((List) unsafe.getObject(obj, j10));
                    if (iG > 0) {
                        iE = zzgpt.e(i12);
                        iF8 = zzgpt.f(iG);
                        iF3 = iE + iF8;
                        i10 += iF3 + iG;
                    }
                    break;
                case 44:
                    iG = zzgsr.G((List) unsafe.getObject(obj, j10));
                    if (iG > 0) {
                        iE = zzgpt.e(i12);
                        iF8 = zzgpt.f(iG);
                        iF3 = iE + iF8;
                        i10 += iF3 + iG;
                    }
                    break;
                case 45:
                    iG = zzgsr.I((List) unsafe.getObject(obj, j10));
                    if (iG > 0) {
                        iE = zzgpt.e(i12);
                        iF8 = zzgpt.f(iG);
                        iF3 = iE + iF8;
                        i10 += iF3 + iG;
                    }
                    break;
                case 46:
                    iG = zzgsr.K((List) unsafe.getObject(obj, j10));
                    if (iG > 0) {
                        iE = zzgpt.e(i12);
                        iF8 = zzgpt.f(iG);
                        iF3 = iE + iF8;
                        i10 += iF3 + iG;
                    }
                    break;
                case 47:
                    iG = zzgsr.T((List) unsafe.getObject(obj, j10));
                    if (iG > 0) {
                        iE = zzgpt.e(i12);
                        iF8 = zzgpt.f(iG);
                        iF3 = iE + iF8;
                        i10 += iF3 + iG;
                    }
                    break;
                case 48:
                    iG = zzgsr.V((List) unsafe.getObject(obj, j10));
                    if (iG > 0) {
                        iE = zzgpt.e(i12);
                        iF8 = zzgpt.f(iG);
                        iF3 = iE + iF8;
                        i10 += iF3 + iG;
                    }
                    break;
                case 49:
                    iQ = zzgsr.L(i12, (List) zzgtq.p(obj, j10), m(i11));
                    i10 += iQ;
                    break;
                case 50:
                    zzgrr.a(i12, zzgtq.p(obj, j10), o(i11));
                    break;
                case 51:
                    if (G(obj, i12, i11)) {
                        iF = zzgpt.f(i12 << 3);
                        iQ = iF + 8;
                        i10 += iQ;
                    }
                    break;
                case 52:
                    if (G(obj, i12, i11)) {
                        iF2 = zzgpt.f(i12 << 3);
                        iQ = iF2 + 4;
                        i10 += iQ;
                    }
                    break;
                case 53:
                    if (G(obj, i12, i11)) {
                        iG = zzgpt.g(k(obj, j10));
                        iF3 = zzgpt.f(i12 << 3);
                        i10 += iF3 + iG;
                    }
                    break;
                case 54:
                    if (G(obj, i12, i11)) {
                        iG = zzgpt.g(k(obj, j10));
                        iF3 = zzgpt.f(i12 << 3);
                        i10 += iF3 + iG;
                    }
                    break;
                case 55:
                    if (G(obj, i12, i11)) {
                        iG = zzgpt.G(Q(obj, j10));
                        iF3 = zzgpt.f(i12 << 3);
                        i10 += iF3 + iG;
                    }
                    break;
                case 56:
                    if (G(obj, i12, i11)) {
                        iF = zzgpt.f(i12 << 3);
                        iQ = iF + 8;
                        i10 += iQ;
                    }
                    break;
                case 57:
                    if (G(obj, i12, i11)) {
                        iF2 = zzgpt.f(i12 << 3);
                        iQ = iF2 + 4;
                        i10 += iQ;
                    }
                    break;
                case 58:
                    if (G(obj, i12, i11)) {
                        iF4 = zzgpt.f(i12 << 3);
                        iQ = iF4 + 1;
                        i10 += iQ;
                    }
                    break;
                case 59:
                    if (G(obj, i12, i11)) {
                        Object objP2 = zzgtq.p(obj, j10);
                        if (objP2 instanceof zzgpe) {
                            int i19 = i12 << 3;
                            int i20 = zzgpt.f19428d;
                            int iO3 = ((zzgpe) objP2).o();
                            iF5 = zzgpt.f(iO3) + iO3;
                            iF6 = zzgpt.f(i19);
                            iQ = iF6 + iF5;
                            i10 += iQ;
                        } else {
                            iG = zzgpt.d((String) objP2);
                            iF3 = zzgpt.f(i12 << 3);
                            i10 += iF3 + iG;
                        }
                    }
                    break;
                case 60:
                    if (G(obj, i12, i11)) {
                        iQ = zzgsr.Q(i12, zzgtq.p(obj, j10), m(i11));
                        i10 += iQ;
                    }
                    break;
                case 61:
                    if (G(obj, i12, i11)) {
                        zzgpe zzgpeVar2 = (zzgpe) zzgtq.p(obj, j10);
                        int i21 = i12 << 3;
                        int i22 = zzgpt.f19428d;
                        int iO4 = zzgpeVar2.o();
                        iF5 = zzgpt.f(iO4) + iO4;
                        iF6 = zzgpt.f(i21);
                        iQ = iF6 + iF5;
                        i10 += iQ;
                    }
                    break;
                case 62:
                    if (G(obj, i12, i11)) {
                        iG = zzgpt.f(Q(obj, j10));
                        iF3 = zzgpt.f(i12 << 3);
                        i10 += iF3 + iG;
                    }
                    break;
                case 63:
                    if (G(obj, i12, i11)) {
                        iG = zzgpt.G(Q(obj, j10));
                        iF3 = zzgpt.f(i12 << 3);
                        i10 += iF3 + iG;
                    }
                    break;
                case 64:
                    if (G(obj, i12, i11)) {
                        iF2 = zzgpt.f(i12 << 3);
                        iQ = iF2 + 4;
                        i10 += iQ;
                    }
                    break;
                case 65:
                    if (G(obj, i12, i11)) {
                        iF = zzgpt.f(i12 << 3);
                        iQ = iF + 8;
                        i10 += iQ;
                    }
                    break;
                case 66:
                    if (G(obj, i12, i11)) {
                        int iQ2 = Q(obj, j10);
                        iF3 = zzgpt.f(i12 << 3);
                        iG = zzgpt.f((iQ2 >> 31) ^ (iQ2 + iQ2));
                        i10 += iF3 + iG;
                    }
                    break;
                case 67:
                    if (G(obj, i12, i11)) {
                        long jK = k(obj, j10);
                        iF7 = zzgpt.f(i12 << 3);
                        iG2 = zzgpt.g((jK >> 63) ^ (jK + jK));
                        iQ = iF7 + iG2;
                        i10 += iQ;
                    }
                    break;
                case 68:
                    if (G(obj, i12, i11)) {
                        iQ = zzgpt.F(i12, (zzgrw) zzgtq.p(obj, j10), m(i11));
                        i10 += iQ;
                    }
                    break;
            }
        }
        zzgtg zzgtgVar = this.f19558m;
        return i10 + zzgtgVar.a(zzgtgVar.d(obj));
    }

    @Override // com.google.android.gms.internal.ads.zzgsp
    public final Object b() {
        return ((zzgqm) this.f19550e).k();
    }

    @Override // com.google.android.gms.internal.ads.zzgsp
    public final int c(Object obj) {
        int i10;
        int iC;
        int length = this.f19546a.length;
        int i11 = 0;
        for (int i12 = 0; i12 < length; i12 += 3) {
            int iZ = Z(i12);
            int i13 = this.f19546a[i12];
            long j10 = 1048575 & iZ;
            int iHashCode = 37;
            switch (Y(iZ)) {
                case 0:
                    i10 = i11 * 53;
                    iC = zzgqw.c(Double.doubleToLongBits(zzgtq.j(obj, j10)));
                    i11 = i10 + iC;
                    break;
                case 1:
                    i10 = i11 * 53;
                    iC = Float.floatToIntBits(zzgtq.k(obj, j10));
                    i11 = i10 + iC;
                    break;
                case 2:
                    i10 = i11 * 53;
                    iC = zzgqw.c(zzgtq.n(obj, j10));
                    i11 = i10 + iC;
                    break;
                case 3:
                    i10 = i11 * 53;
                    iC = zzgqw.c(zzgtq.n(obj, j10));
                    i11 = i10 + iC;
                    break;
                case 4:
                    i10 = i11 * 53;
                    iC = zzgtq.l(obj, j10);
                    i11 = i10 + iC;
                    break;
                case 5:
                    i10 = i11 * 53;
                    iC = zzgqw.c(zzgtq.n(obj, j10));
                    i11 = i10 + iC;
                    break;
                case 6:
                    i10 = i11 * 53;
                    iC = zzgtq.l(obj, j10);
                    i11 = i10 + iC;
                    break;
                case 7:
                    i10 = i11 * 53;
                    iC = zzgqw.a(zzgtq.H(obj, j10));
                    i11 = i10 + iC;
                    break;
                case 8:
                    i10 = i11 * 53;
                    iC = ((String) zzgtq.p(obj, j10)).hashCode();
                    i11 = i10 + iC;
                    break;
                case 9:
                    Object objP = zzgtq.p(obj, j10);
                    if (objP != null) {
                        iHashCode = objP.hashCode();
                    }
                    i11 = (i11 * 53) + iHashCode;
                    break;
                case 10:
                    i10 = i11 * 53;
                    iC = zzgtq.p(obj, j10).hashCode();
                    i11 = i10 + iC;
                    break;
                case 11:
                    i10 = i11 * 53;
                    iC = zzgtq.l(obj, j10);
                    i11 = i10 + iC;
                    break;
                case 12:
                    i10 = i11 * 53;
                    iC = zzgtq.l(obj, j10);
                    i11 = i10 + iC;
                    break;
                case 13:
                    i10 = i11 * 53;
                    iC = zzgtq.l(obj, j10);
                    i11 = i10 + iC;
                    break;
                case 14:
                    i10 = i11 * 53;
                    iC = zzgqw.c(zzgtq.n(obj, j10));
                    i11 = i10 + iC;
                    break;
                case 15:
                    i10 = i11 * 53;
                    iC = zzgtq.l(obj, j10);
                    i11 = i10 + iC;
                    break;
                case 16:
                    i10 = i11 * 53;
                    iC = zzgqw.c(zzgtq.n(obj, j10));
                    i11 = i10 + iC;
                    break;
                case 17:
                    Object objP2 = zzgtq.p(obj, j10);
                    if (objP2 != null) {
                        iHashCode = objP2.hashCode();
                    }
                    i11 = (i11 * 53) + iHashCode;
                    break;
                case 18:
                case 19:
                case 20:
                case 21:
                case 22:
                case 23:
                case 24:
                case 25:
                case 26:
                case 27:
                case 28:
                case 29:
                case 30:
                case 31:
                case 32:
                case 33:
                case 34:
                case 35:
                case 36:
                case 37:
                case 38:
                case 39:
                case 40:
                case 41:
                case 42:
                case 43:
                case 44:
                case 45:
                case 46:
                case 47:
                case 48:
                case 49:
                    i10 = i11 * 53;
                    iC = zzgtq.p(obj, j10).hashCode();
                    i11 = i10 + iC;
                    break;
                case 50:
                    i10 = i11 * 53;
                    iC = zzgtq.p(obj, j10).hashCode();
                    i11 = i10 + iC;
                    break;
                case 51:
                    if (G(obj, i13, i12)) {
                        i10 = i11 * 53;
                        iC = zzgqw.c(Double.doubleToLongBits(N(obj, j10)));
                        i11 = i10 + iC;
                    }
                    break;
                case 52:
                    if (G(obj, i13, i12)) {
                        i10 = i11 * 53;
                        iC = Float.floatToIntBits(O(obj, j10));
                        i11 = i10 + iC;
                    }
                    break;
                case 53:
                    if (G(obj, i13, i12)) {
                        i10 = i11 * 53;
                        iC = zzgqw.c(k(obj, j10));
                        i11 = i10 + iC;
                    }
                    break;
                case 54:
                    if (G(obj, i13, i12)) {
                        i10 = i11 * 53;
                        iC = zzgqw.c(k(obj, j10));
                        i11 = i10 + iC;
                    }
                    break;
                case 55:
                    if (G(obj, i13, i12)) {
                        i10 = i11 * 53;
                        iC = Q(obj, j10);
                        i11 = i10 + iC;
                    }
                    break;
                case 56:
                    if (G(obj, i13, i12)) {
                        i10 = i11 * 53;
                        iC = zzgqw.c(k(obj, j10));
                        i11 = i10 + iC;
                    }
                    break;
                case 57:
                    if (G(obj, i13, i12)) {
                        i10 = i11 * 53;
                        iC = Q(obj, j10);
                        i11 = i10 + iC;
                    }
                    break;
                case 58:
                    if (G(obj, i13, i12)) {
                        i10 = i11 * 53;
                        iC = zzgqw.a(H(obj, j10));
                        i11 = i10 + iC;
                    }
                    break;
                case 59:
                    if (G(obj, i13, i12)) {
                        i10 = i11 * 53;
                        iC = ((String) zzgtq.p(obj, j10)).hashCode();
                        i11 = i10 + iC;
                    }
                    break;
                case 60:
                    if (G(obj, i13, i12)) {
                        i10 = i11 * 53;
                        iC = zzgtq.p(obj, j10).hashCode();
                        i11 = i10 + iC;
                    }
                    break;
                case 61:
                    if (G(obj, i13, i12)) {
                        i10 = i11 * 53;
                        iC = zzgtq.p(obj, j10).hashCode();
                        i11 = i10 + iC;
                    }
                    break;
                case 62:
                    if (G(obj, i13, i12)) {
                        i10 = i11 * 53;
                        iC = Q(obj, j10);
                        i11 = i10 + iC;
                    }
                    break;
                case 63:
                    if (G(obj, i13, i12)) {
                        i10 = i11 * 53;
                        iC = Q(obj, j10);
                        i11 = i10 + iC;
                    }
                    break;
                case 64:
                    if (G(obj, i13, i12)) {
                        i10 = i11 * 53;
                        iC = Q(obj, j10);
                        i11 = i10 + iC;
                    }
                    break;
                case 65:
                    if (G(obj, i13, i12)) {
                        i10 = i11 * 53;
                        iC = zzgqw.c(k(obj, j10));
                        i11 = i10 + iC;
                    }
                    break;
                case 66:
                    if (G(obj, i13, i12)) {
                        i10 = i11 * 53;
                        iC = Q(obj, j10);
                        i11 = i10 + iC;
                    }
                    break;
                case 67:
                    if (G(obj, i13, i12)) {
                        i10 = i11 * 53;
                        iC = zzgqw.c(k(obj, j10));
                        i11 = i10 + iC;
                    }
                    break;
                case 68:
                    if (G(obj, i13, i12)) {
                        i10 = i11 * 53;
                        iC = zzgtq.p(obj, j10).hashCode();
                        i11 = i10 + iC;
                    }
                    break;
            }
        }
        int iHashCode2 = (i11 * 53) + this.f19558m.d(obj).hashCode();
        if (!this.f19551f) {
            return iHashCode2;
        }
        this.f19559n.a(obj);
        throw null;
    }

    /* JADX WARN: Removed duplicated region for block: B:42:0x00a0  */
    @Override // com.google.android.gms.internal.ads.zzgsp
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean d(java.lang.Object r19) {
        /*
            Method dump skipped, instruction units count: 248
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzgrz.d(java.lang.Object):boolean");
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x004c  */
    @Override // com.google.android.gms.internal.ads.zzgsp
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void e(java.lang.Object r8) {
        /*
            r7 = this;
            boolean r0 = F(r8)
            if (r0 != 0) goto L7
            return
        L7:
            boolean r0 = r8 instanceof com.google.android.gms.internal.ads.zzgqm
            r1 = 0
            if (r0 == 0) goto L1a
            r0 = r8
            com.google.android.gms.internal.ads.zzgqm r0 = (com.google.android.gms.internal.ads.zzgqm) r0
            r2 = 2147483647(0x7fffffff, float:NaN)
            r0.B(r2)
            r0.zza = r1
            r0.z()
        L1a:
            int[] r0 = r7.f19546a
            int r0 = r0.length
        L1d:
            if (r1 >= r0) goto L62
            int r2 = r7.Z(r1)
            r3 = 1048575(0xfffff, float:1.469367E-39)
            r3 = r3 & r2
            int r2 = Y(r2)
            long r3 = (long) r3
            r5 = 9
            if (r2 == r5) goto L4c
            switch(r2) {
                case 17: goto L4c;
                case 18: goto L46;
                case 19: goto L46;
                case 20: goto L46;
                case 21: goto L46;
                case 22: goto L46;
                case 23: goto L46;
                case 24: goto L46;
                case 25: goto L46;
                case 26: goto L46;
                case 27: goto L46;
                case 28: goto L46;
                case 29: goto L46;
                case 30: goto L46;
                case 31: goto L46;
                case 32: goto L46;
                case 33: goto L46;
                case 34: goto L46;
                case 35: goto L46;
                case 36: goto L46;
                case 37: goto L46;
                case 38: goto L46;
                case 39: goto L46;
                case 40: goto L46;
                case 41: goto L46;
                case 42: goto L46;
                case 43: goto L46;
                case 44: goto L46;
                case 45: goto L46;
                case 46: goto L46;
                case 47: goto L46;
                case 48: goto L46;
                case 49: goto L46;
                case 50: goto L34;
                default: goto L33;
            }
        L33:
            goto L5f
        L34:
            sun.misc.Unsafe r2 = com.google.android.gms.internal.ads.zzgrz.f19545r
            java.lang.Object r5 = r2.getObject(r8, r3)
            if (r5 == 0) goto L5f
            r6 = r5
            com.google.android.gms.internal.ads.zzgrq r6 = (com.google.android.gms.internal.ads.zzgrq) r6
            r6.d()
            r2.putObject(r8, r3, r5)
            goto L5f
        L46:
            com.google.android.gms.internal.ads.zzgrk r2 = r7.f19557l
            r2.b(r8, r3)
            goto L5f
        L4c:
            boolean r2 = r7.C(r8, r1)
            if (r2 == 0) goto L5f
            com.google.android.gms.internal.ads.zzgsp r2 = r7.m(r1)
            sun.misc.Unsafe r5 = com.google.android.gms.internal.ads.zzgrz.f19545r
            java.lang.Object r3 = r5.getObject(r8, r3)
            r2.e(r3)
        L5f:
            int r1 = r1 + 3
            goto L1d
        L62:
            com.google.android.gms.internal.ads.zzgtg r0 = r7.f19558m
            r0.m(r8)
            boolean r0 = r7.f19551f
            if (r0 == 0) goto L70
            com.google.android.gms.internal.ads.zzgpz r0 = r7.f19559n
            r0.e(r8)
        L70:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzgrz.e(java.lang.Object):void");
    }

    @Override // com.google.android.gms.internal.ads.zzgsp
    public final void f(Object obj, Object obj2) {
        s(obj);
        Objects.requireNonNull(obj2);
        for (int i10 = 0; i10 < this.f19546a.length; i10 += 3) {
            int iZ = Z(i10);
            int i11 = this.f19546a[i10];
            long j10 = 1048575 & iZ;
            switch (Y(iZ)) {
                case 0:
                    if (C(obj2, i10)) {
                        zzgtq.z(obj, j10, zzgtq.j(obj2, j10));
                        w(obj, i10);
                    }
                    break;
                case 1:
                    if (C(obj2, i10)) {
                        zzgtq.A(obj, j10, zzgtq.k(obj2, j10));
                        w(obj, i10);
                    }
                    break;
                case 2:
                    if (C(obj2, i10)) {
                        zzgtq.C(obj, j10, zzgtq.n(obj2, j10));
                        w(obj, i10);
                    }
                    break;
                case 3:
                    if (C(obj2, i10)) {
                        zzgtq.C(obj, j10, zzgtq.n(obj2, j10));
                        w(obj, i10);
                    }
                    break;
                case 4:
                    if (C(obj2, i10)) {
                        zzgtq.B(obj, j10, zzgtq.l(obj2, j10));
                        w(obj, i10);
                    }
                    break;
                case 5:
                    if (C(obj2, i10)) {
                        zzgtq.C(obj, j10, zzgtq.n(obj2, j10));
                        w(obj, i10);
                    }
                    break;
                case 6:
                    if (C(obj2, i10)) {
                        zzgtq.B(obj, j10, zzgtq.l(obj2, j10));
                        w(obj, i10);
                    }
                    break;
                case 7:
                    if (C(obj2, i10)) {
                        zzgtq.x(obj, j10, zzgtq.H(obj2, j10));
                        w(obj, i10);
                    }
                    break;
                case 8:
                    if (C(obj2, i10)) {
                        zzgtq.D(obj, j10, zzgtq.p(obj2, j10));
                        w(obj, i10);
                    }
                    break;
                case 9:
                    t(obj, obj2, i10);
                    break;
                case 10:
                    if (C(obj2, i10)) {
                        zzgtq.D(obj, j10, zzgtq.p(obj2, j10));
                        w(obj, i10);
                    }
                    break;
                case 11:
                    if (C(obj2, i10)) {
                        zzgtq.B(obj, j10, zzgtq.l(obj2, j10));
                        w(obj, i10);
                    }
                    break;
                case 12:
                    if (C(obj2, i10)) {
                        zzgtq.B(obj, j10, zzgtq.l(obj2, j10));
                        w(obj, i10);
                    }
                    break;
                case 13:
                    if (C(obj2, i10)) {
                        zzgtq.B(obj, j10, zzgtq.l(obj2, j10));
                        w(obj, i10);
                    }
                    break;
                case 14:
                    if (C(obj2, i10)) {
                        zzgtq.C(obj, j10, zzgtq.n(obj2, j10));
                        w(obj, i10);
                    }
                    break;
                case 15:
                    if (C(obj2, i10)) {
                        zzgtq.B(obj, j10, zzgtq.l(obj2, j10));
                        w(obj, i10);
                    }
                    break;
                case 16:
                    if (C(obj2, i10)) {
                        zzgtq.C(obj, j10, zzgtq.n(obj2, j10));
                        w(obj, i10);
                    }
                    break;
                case 17:
                    t(obj, obj2, i10);
                    break;
                case 18:
                case 19:
                case 20:
                case 21:
                case 22:
                case 23:
                case 24:
                case 25:
                case 26:
                case 27:
                case 28:
                case 29:
                case 30:
                case 31:
                case 32:
                case 33:
                case 34:
                case 35:
                case 36:
                case 37:
                case 38:
                case 39:
                case 40:
                case 41:
                case 42:
                case 43:
                case 44:
                case 45:
                case 46:
                case 47:
                case 48:
                case 49:
                    this.f19557l.c(obj, obj2, j10);
                    break;
                case 50:
                    zzgsr.i(this.f19561p, obj, obj2, j10);
                    break;
                case 51:
                case 52:
                case 53:
                case 54:
                case 55:
                case 56:
                case 57:
                case 58:
                case 59:
                    if (G(obj2, i11, i10)) {
                        zzgtq.D(obj, j10, zzgtq.p(obj2, j10));
                        x(obj, i11, i10);
                    }
                    break;
                case 60:
                    u(obj, obj2, i10);
                    break;
                case 61:
                case 62:
                case 63:
                case 64:
                case 65:
                case 66:
                case 67:
                    if (G(obj2, i11, i10)) {
                        zzgtq.D(obj, j10, zzgtq.p(obj2, j10));
                        x(obj, i11, i10);
                    }
                    break;
                case 68:
                    u(obj, obj2, i10);
                    break;
            }
        }
        zzgsr.f(this.f19558m, obj, obj2);
        if (this.f19551f) {
            zzgsr.e(this.f19559n, obj, obj2);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgsp
    public final boolean g(Object obj, Object obj2) {
        boolean zH;
        int length = this.f19546a.length;
        for (int i10 = 0; i10 < length; i10 += 3) {
            int iZ = Z(i10);
            long j10 = iZ & 1048575;
            switch (Y(iZ)) {
                case 0:
                    if (!A(obj, obj2, i10) || Double.doubleToLongBits(zzgtq.j(obj, j10)) != Double.doubleToLongBits(zzgtq.j(obj2, j10))) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 1:
                    if (!A(obj, obj2, i10) || Float.floatToIntBits(zzgtq.k(obj, j10)) != Float.floatToIntBits(zzgtq.k(obj2, j10))) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 2:
                    if (!A(obj, obj2, i10) || zzgtq.n(obj, j10) != zzgtq.n(obj2, j10)) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 3:
                    if (!A(obj, obj2, i10) || zzgtq.n(obj, j10) != zzgtq.n(obj2, j10)) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 4:
                    if (!A(obj, obj2, i10) || zzgtq.l(obj, j10) != zzgtq.l(obj2, j10)) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 5:
                    if (!A(obj, obj2, i10) || zzgtq.n(obj, j10) != zzgtq.n(obj2, j10)) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 6:
                    if (!A(obj, obj2, i10) || zzgtq.l(obj, j10) != zzgtq.l(obj2, j10)) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 7:
                    if (!A(obj, obj2, i10) || zzgtq.H(obj, j10) != zzgtq.H(obj2, j10)) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 8:
                    if (!A(obj, obj2, i10) || !zzgsr.h(zzgtq.p(obj, j10), zzgtq.p(obj2, j10))) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 9:
                    if (!A(obj, obj2, i10) || !zzgsr.h(zzgtq.p(obj, j10), zzgtq.p(obj2, j10))) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 10:
                    if (!A(obj, obj2, i10) || !zzgsr.h(zzgtq.p(obj, j10), zzgtq.p(obj2, j10))) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 11:
                    if (!A(obj, obj2, i10) || zzgtq.l(obj, j10) != zzgtq.l(obj2, j10)) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 12:
                    if (!A(obj, obj2, i10) || zzgtq.l(obj, j10) != zzgtq.l(obj2, j10)) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 13:
                    if (!A(obj, obj2, i10) || zzgtq.l(obj, j10) != zzgtq.l(obj2, j10)) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 14:
                    if (!A(obj, obj2, i10) || zzgtq.n(obj, j10) != zzgtq.n(obj2, j10)) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 15:
                    if (!A(obj, obj2, i10) || zzgtq.l(obj, j10) != zzgtq.l(obj2, j10)) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 16:
                    if (!A(obj, obj2, i10) || zzgtq.n(obj, j10) != zzgtq.n(obj2, j10)) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 17:
                    if (!A(obj, obj2, i10) || !zzgsr.h(zzgtq.p(obj, j10), zzgtq.p(obj2, j10))) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 18:
                case 19:
                case 20:
                case 21:
                case 22:
                case 23:
                case 24:
                case 25:
                case 26:
                case 27:
                case 28:
                case 29:
                case 30:
                case 31:
                case 32:
                case 33:
                case 34:
                case 35:
                case 36:
                case 37:
                case 38:
                case 39:
                case 40:
                case 41:
                case 42:
                case 43:
                case 44:
                case 45:
                case 46:
                case 47:
                case 48:
                case 49:
                    zH = zzgsr.h(zzgtq.p(obj, j10), zzgtq.p(obj2, j10));
                    break;
                case 50:
                    zH = zzgsr.h(zzgtq.p(obj, j10), zzgtq.p(obj2, j10));
                    break;
                case 51:
                case 52:
                case 53:
                case 54:
                case 55:
                case 56:
                case 57:
                case 58:
                case 59:
                case 60:
                case 61:
                case 62:
                case 63:
                case 64:
                case 65:
                case 66:
                case 67:
                case 68:
                    long jW = W(i10) & 1048575;
                    if (zzgtq.l(obj, jW) != zzgtq.l(obj2, jW) || !zzgsr.h(zzgtq.p(obj, j10), zzgtq.p(obj2, j10))) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                default:
                    break;
            }
            if (!zH) {
                return false;
            }
        }
        if (!this.f19558m.d(obj).equals(this.f19558m.d(obj2))) {
            return false;
        }
        if (!this.f19551f) {
            return true;
        }
        this.f19559n.a(obj);
        this.f19559n.a(obj2);
        throw null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:102:0x02ed, code lost:
    
        if (r0 != r24) goto L103;
     */
    /* JADX WARN: Code restructure failed: missing block: B:103:0x02ef, code lost:
    
        r14 = r31;
        r12 = r32;
        r13 = r34;
        r11 = r35;
        r2 = r15;
        r1 = r23;
        r6 = r25;
        r7 = r26;
     */
    /* JADX WARN: Code restructure failed: missing block: B:104:0x0300, code lost:
    
        r2 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:110:0x032c, code lost:
    
        if (r0 != r14) goto L103;
     */
    /* JADX WARN: Code restructure failed: missing block: B:115:0x034f, code lost:
    
        if (r0 != r14) goto L103;
     */
    /* JADX WARN: Failed to find 'out' block for switch in B:30:0x0095. Please report as an issue. */
    @Override // com.google.android.gms.internal.ads.zzgsp
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void h(java.lang.Object r31, byte[] r32, int r33, int r34, com.google.android.gms.internal.ads.zzgoq r35) throws java.io.IOException {
        /*
            Method dump skipped, instruction units count: 974
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzgrz.h(java.lang.Object, byte[], int, int, com.google.android.gms.internal.ads.zzgoq):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:173:0x0621 A[Catch: all -> 0x0616, TryCatch #3 {all -> 0x0616, blocks: (B:157:0x05ef, B:171:0x061c, B:173:0x0621, B:174:0x0626), top: B:201:0x05ef }] */
    /* JADX WARN: Removed duplicated region for block: B:191:0x0659 A[LOOP:3: B:189:0x0655->B:191:0x0659, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:193:0x066d  */
    /* JADX WARN: Removed duplicated region for block: B:221:0x062c A[SYNTHETIC] */
    @Override // com.google.android.gms.internal.ads.zzgsp
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void i(java.lang.Object r18, com.google.android.gms.internal.ads.zzgsh r19, com.google.android.gms.internal.ads.zzgpy r20) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 1794
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzgrz.i(java.lang.Object, com.google.android.gms.internal.ads.zzgsh, com.google.android.gms.internal.ads.zzgpy):void");
    }

    @Override // com.google.android.gms.internal.ads.zzgsp
    public final void j(Object obj, zzgpu zzgpuVar) throws IOException {
        int i10;
        int i11 = 1048575;
        if (this.f19553h) {
            if (this.f19551f) {
                this.f19559n.a(obj);
                throw null;
            }
            int length = this.f19546a.length;
            for (int i12 = 0; i12 < length; i12 += 3) {
                int iZ = Z(i12);
                int i13 = this.f19546a[i12];
                switch (Y(iZ)) {
                    case 0:
                        if (C(obj, i12)) {
                            zzgpuVar.q(i13, zzgtq.j(obj, iZ & 1048575));
                        }
                        break;
                    case 1:
                        if (C(obj, i12)) {
                            zzgpuVar.z(i13, zzgtq.k(obj, iZ & 1048575));
                        }
                        break;
                    case 2:
                        if (C(obj, i12)) {
                            zzgpuVar.E(i13, zzgtq.n(obj, iZ & 1048575));
                        }
                        break;
                    case 3:
                        if (C(obj, i12)) {
                            zzgpuVar.j(i13, zzgtq.n(obj, iZ & 1048575));
                        }
                        break;
                    case 4:
                        if (C(obj, i12)) {
                            zzgpuVar.C(i13, zzgtq.l(obj, iZ & 1048575));
                        }
                        break;
                    case 5:
                        if (C(obj, i12)) {
                            zzgpuVar.x(i13, zzgtq.n(obj, iZ & 1048575));
                        }
                        break;
                    case 6:
                        if (C(obj, i12)) {
                            zzgpuVar.v(i13, zzgtq.l(obj, iZ & 1048575));
                        }
                        break;
                    case 7:
                        if (C(obj, i12)) {
                            zzgpuVar.m(i13, zzgtq.H(obj, iZ & 1048575));
                        }
                        break;
                    case 8:
                        if (C(obj, i12)) {
                            J(i13, zzgtq.p(obj, iZ & 1048575), zzgpuVar);
                        }
                        break;
                    case 9:
                        if (C(obj, i12)) {
                            zzgpuVar.G(i13, zzgtq.p(obj, iZ & 1048575), m(i12));
                        }
                        break;
                    case 10:
                        if (C(obj, i12)) {
                            zzgpuVar.o(i13, (zzgpe) zzgtq.p(obj, iZ & 1048575));
                        }
                        break;
                    case 11:
                        if (C(obj, i12)) {
                            zzgpuVar.h(i13, zzgtq.l(obj, iZ & 1048575));
                        }
                        break;
                    case 12:
                        if (C(obj, i12)) {
                            zzgpuVar.t(i13, zzgtq.l(obj, iZ & 1048575));
                        }
                        break;
                    case 13:
                        if (C(obj, i12)) {
                            zzgpuVar.H(i13, zzgtq.l(obj, iZ & 1048575));
                        }
                        break;
                    case 14:
                        if (C(obj, i12)) {
                            zzgpuVar.J(i13, zzgtq.n(obj, iZ & 1048575));
                        }
                        break;
                    case 15:
                        if (C(obj, i12)) {
                            zzgpuVar.a(i13, zzgtq.l(obj, iZ & 1048575));
                        }
                        break;
                    case 16:
                        if (C(obj, i12)) {
                            zzgpuVar.c(i13, zzgtq.n(obj, iZ & 1048575));
                        }
                        break;
                    case 17:
                        if (C(obj, i12)) {
                            zzgpuVar.B(i13, zzgtq.p(obj, iZ & 1048575), m(i12));
                        }
                        break;
                    case 18:
                        zzgsr.l(i13, (List) zzgtq.p(obj, iZ & 1048575), zzgpuVar, false);
                        break;
                    case 19:
                        zzgsr.p(i13, (List) zzgtq.p(obj, iZ & 1048575), zzgpuVar, false);
                        break;
                    case 20:
                        zzgsr.s(i13, (List) zzgtq.p(obj, iZ & 1048575), zzgpuVar, false);
                        break;
                    case 21:
                        zzgsr.B(i13, (List) zzgtq.p(obj, iZ & 1048575), zzgpuVar, false);
                        break;
                    case 22:
                        zzgsr.r(i13, (List) zzgtq.p(obj, iZ & 1048575), zzgpuVar, false);
                        break;
                    case 23:
                        zzgsr.o(i13, (List) zzgtq.p(obj, iZ & 1048575), zzgpuVar, false);
                        break;
                    case 24:
                        zzgsr.n(i13, (List) zzgtq.p(obj, iZ & 1048575), zzgpuVar, false);
                        break;
                    case 25:
                        zzgsr.j(i13, (List) zzgtq.p(obj, iZ & 1048575), zzgpuVar, false);
                        break;
                    case 26:
                        zzgsr.y(i13, (List) zzgtq.p(obj, iZ & 1048575), zzgpuVar);
                        break;
                    case 27:
                        zzgsr.t(i13, (List) zzgtq.p(obj, iZ & 1048575), zzgpuVar, m(i12));
                        break;
                    case 28:
                        zzgsr.k(i13, (List) zzgtq.p(obj, iZ & 1048575), zzgpuVar);
                        break;
                    case 29:
                        zzgsr.z(i13, (List) zzgtq.p(obj, iZ & 1048575), zzgpuVar, false);
                        break;
                    case 30:
                        zzgsr.m(i13, (List) zzgtq.p(obj, iZ & 1048575), zzgpuVar, false);
                        break;
                    case 31:
                        zzgsr.u(i13, (List) zzgtq.p(obj, iZ & 1048575), zzgpuVar, false);
                        break;
                    case 32:
                        zzgsr.v(i13, (List) zzgtq.p(obj, iZ & 1048575), zzgpuVar, false);
                        break;
                    case 33:
                        zzgsr.w(i13, (List) zzgtq.p(obj, iZ & 1048575), zzgpuVar, false);
                        break;
                    case 34:
                        zzgsr.x(i13, (List) zzgtq.p(obj, iZ & 1048575), zzgpuVar, false);
                        break;
                    case 35:
                        zzgsr.l(i13, (List) zzgtq.p(obj, iZ & 1048575), zzgpuVar, true);
                        break;
                    case 36:
                        zzgsr.p(i13, (List) zzgtq.p(obj, iZ & 1048575), zzgpuVar, true);
                        break;
                    case 37:
                        zzgsr.s(i13, (List) zzgtq.p(obj, iZ & 1048575), zzgpuVar, true);
                        break;
                    case 38:
                        zzgsr.B(i13, (List) zzgtq.p(obj, iZ & 1048575), zzgpuVar, true);
                        break;
                    case 39:
                        zzgsr.r(i13, (List) zzgtq.p(obj, iZ & 1048575), zzgpuVar, true);
                        break;
                    case 40:
                        zzgsr.o(i13, (List) zzgtq.p(obj, iZ & 1048575), zzgpuVar, true);
                        break;
                    case 41:
                        zzgsr.n(i13, (List) zzgtq.p(obj, iZ & 1048575), zzgpuVar, true);
                        break;
                    case 42:
                        zzgsr.j(i13, (List) zzgtq.p(obj, iZ & 1048575), zzgpuVar, true);
                        break;
                    case 43:
                        zzgsr.z(i13, (List) zzgtq.p(obj, iZ & 1048575), zzgpuVar, true);
                        break;
                    case 44:
                        zzgsr.m(i13, (List) zzgtq.p(obj, iZ & 1048575), zzgpuVar, true);
                        break;
                    case 45:
                        zzgsr.u(i13, (List) zzgtq.p(obj, iZ & 1048575), zzgpuVar, true);
                        break;
                    case 46:
                        zzgsr.v(i13, (List) zzgtq.p(obj, iZ & 1048575), zzgpuVar, true);
                        break;
                    case 47:
                        zzgsr.w(i13, (List) zzgtq.p(obj, iZ & 1048575), zzgpuVar, true);
                        break;
                    case 48:
                        zzgsr.x(i13, (List) zzgtq.p(obj, iZ & 1048575), zzgpuVar, true);
                        break;
                    case 49:
                        zzgsr.q(i13, (List) zzgtq.p(obj, iZ & 1048575), zzgpuVar, m(i12));
                        break;
                    case 50:
                        I(zzgpuVar, i13, zzgtq.p(obj, iZ & 1048575), i12);
                        break;
                    case 51:
                        if (G(obj, i13, i12)) {
                            zzgpuVar.q(i13, N(obj, iZ & 1048575));
                        }
                        break;
                    case 52:
                        if (G(obj, i13, i12)) {
                            zzgpuVar.z(i13, O(obj, iZ & 1048575));
                        }
                        break;
                    case 53:
                        if (G(obj, i13, i12)) {
                            zzgpuVar.E(i13, k(obj, iZ & 1048575));
                        }
                        break;
                    case 54:
                        if (G(obj, i13, i12)) {
                            zzgpuVar.j(i13, k(obj, iZ & 1048575));
                        }
                        break;
                    case 55:
                        if (G(obj, i13, i12)) {
                            zzgpuVar.C(i13, Q(obj, iZ & 1048575));
                        }
                        break;
                    case 56:
                        if (G(obj, i13, i12)) {
                            zzgpuVar.x(i13, k(obj, iZ & 1048575));
                        }
                        break;
                    case 57:
                        if (G(obj, i13, i12)) {
                            zzgpuVar.v(i13, Q(obj, iZ & 1048575));
                        }
                        break;
                    case 58:
                        if (G(obj, i13, i12)) {
                            zzgpuVar.m(i13, H(obj, iZ & 1048575));
                        }
                        break;
                    case 59:
                        if (G(obj, i13, i12)) {
                            J(i13, zzgtq.p(obj, iZ & 1048575), zzgpuVar);
                        }
                        break;
                    case 60:
                        if (G(obj, i13, i12)) {
                            zzgpuVar.G(i13, zzgtq.p(obj, iZ & 1048575), m(i12));
                        }
                        break;
                    case 61:
                        if (G(obj, i13, i12)) {
                            zzgpuVar.o(i13, (zzgpe) zzgtq.p(obj, iZ & 1048575));
                        }
                        break;
                    case 62:
                        if (G(obj, i13, i12)) {
                            zzgpuVar.h(i13, Q(obj, iZ & 1048575));
                        }
                        break;
                    case 63:
                        if (G(obj, i13, i12)) {
                            zzgpuVar.t(i13, Q(obj, iZ & 1048575));
                        }
                        break;
                    case 64:
                        if (G(obj, i13, i12)) {
                            zzgpuVar.H(i13, Q(obj, iZ & 1048575));
                        }
                        break;
                    case 65:
                        if (G(obj, i13, i12)) {
                            zzgpuVar.J(i13, k(obj, iZ & 1048575));
                        }
                        break;
                    case 66:
                        if (G(obj, i13, i12)) {
                            zzgpuVar.a(i13, Q(obj, iZ & 1048575));
                        }
                        break;
                    case 67:
                        if (G(obj, i13, i12)) {
                            zzgpuVar.c(i13, k(obj, iZ & 1048575));
                        }
                        break;
                    case 68:
                        if (G(obj, i13, i12)) {
                            zzgpuVar.B(i13, zzgtq.p(obj, iZ & 1048575), m(i12));
                        }
                        break;
                }
            }
            zzgtg zzgtgVar = this.f19558m;
            zzgtgVar.r(zzgtgVar.d(obj), zzgpuVar);
            return;
        }
        if (this.f19551f) {
            this.f19559n.a(obj);
            throw null;
        }
        int length2 = this.f19546a.length;
        Unsafe unsafe = f19545r;
        int i14 = 0;
        int i15 = 1048575;
        int i16 = 0;
        while (i14 < length2) {
            int iZ2 = Z(i14);
            int[] iArr = this.f19546a;
            int i17 = iArr[i14];
            int iY = Y(iZ2);
            if (iY <= 17) {
                int i18 = iArr[i14 + 2];
                int i19 = i18 & i11;
                if (i19 != i15) {
                    i16 = unsafe.getInt(obj, i19);
                    i15 = i19;
                }
                i10 = 1 << (i18 >>> 20);
            } else {
                i10 = 0;
            }
            long j10 = iZ2 & i11;
            switch (iY) {
                case 0:
                    if ((i16 & i10) != 0) {
                        zzgpuVar.q(i17, zzgtq.j(obj, j10));
                        continue;
                    }
                    i14 += 3;
                    i11 = 1048575;
                    break;
                case 1:
                    if ((i16 & i10) != 0) {
                        zzgpuVar.z(i17, zzgtq.k(obj, j10));
                    } else {
                        continue;
                    }
                    i14 += 3;
                    i11 = 1048575;
                    break;
                case 2:
                    if ((i16 & i10) != 0) {
                        zzgpuVar.E(i17, unsafe.getLong(obj, j10));
                    } else {
                        continue;
                    }
                    i14 += 3;
                    i11 = 1048575;
                    break;
                case 3:
                    if ((i16 & i10) != 0) {
                        zzgpuVar.j(i17, unsafe.getLong(obj, j10));
                    } else {
                        continue;
                    }
                    i14 += 3;
                    i11 = 1048575;
                    break;
                case 4:
                    if ((i16 & i10) != 0) {
                        zzgpuVar.C(i17, unsafe.getInt(obj, j10));
                    } else {
                        continue;
                    }
                    i14 += 3;
                    i11 = 1048575;
                    break;
                case 5:
                    if ((i16 & i10) != 0) {
                        zzgpuVar.x(i17, unsafe.getLong(obj, j10));
                    } else {
                        continue;
                    }
                    i14 += 3;
                    i11 = 1048575;
                    break;
                case 6:
                    if ((i16 & i10) != 0) {
                        zzgpuVar.v(i17, unsafe.getInt(obj, j10));
                    } else {
                        continue;
                    }
                    i14 += 3;
                    i11 = 1048575;
                    break;
                case 7:
                    if ((i16 & i10) != 0) {
                        zzgpuVar.m(i17, zzgtq.H(obj, j10));
                    } else {
                        continue;
                    }
                    i14 += 3;
                    i11 = 1048575;
                    break;
                case 8:
                    if ((i16 & i10) != 0) {
                        J(i17, unsafe.getObject(obj, j10), zzgpuVar);
                    } else {
                        continue;
                    }
                    i14 += 3;
                    i11 = 1048575;
                    break;
                case 9:
                    if ((i16 & i10) != 0) {
                        zzgpuVar.G(i17, unsafe.getObject(obj, j10), m(i14));
                    } else {
                        continue;
                    }
                    i14 += 3;
                    i11 = 1048575;
                    break;
                case 10:
                    if ((i16 & i10) != 0) {
                        zzgpuVar.o(i17, (zzgpe) unsafe.getObject(obj, j10));
                    } else {
                        continue;
                    }
                    i14 += 3;
                    i11 = 1048575;
                    break;
                case 11:
                    if ((i16 & i10) != 0) {
                        zzgpuVar.h(i17, unsafe.getInt(obj, j10));
                    } else {
                        continue;
                    }
                    i14 += 3;
                    i11 = 1048575;
                    break;
                case 12:
                    if ((i16 & i10) != 0) {
                        zzgpuVar.t(i17, unsafe.getInt(obj, j10));
                    } else {
                        continue;
                    }
                    i14 += 3;
                    i11 = 1048575;
                    break;
                case 13:
                    if ((i16 & i10) != 0) {
                        zzgpuVar.H(i17, unsafe.getInt(obj, j10));
                    } else {
                        continue;
                    }
                    i14 += 3;
                    i11 = 1048575;
                    break;
                case 14:
                    if ((i16 & i10) != 0) {
                        zzgpuVar.J(i17, unsafe.getLong(obj, j10));
                    } else {
                        continue;
                    }
                    i14 += 3;
                    i11 = 1048575;
                    break;
                case 15:
                    if ((i16 & i10) != 0) {
                        zzgpuVar.a(i17, unsafe.getInt(obj, j10));
                    } else {
                        continue;
                    }
                    i14 += 3;
                    i11 = 1048575;
                    break;
                case 16:
                    if ((i16 & i10) != 0) {
                        zzgpuVar.c(i17, unsafe.getLong(obj, j10));
                    } else {
                        continue;
                    }
                    i14 += 3;
                    i11 = 1048575;
                    break;
                case 17:
                    if ((i16 & i10) != 0) {
                        zzgpuVar.B(i17, unsafe.getObject(obj, j10), m(i14));
                    } else {
                        continue;
                    }
                    i14 += 3;
                    i11 = 1048575;
                    break;
                case 18:
                    zzgsr.l(this.f19546a[i14], (List) unsafe.getObject(obj, j10), zzgpuVar, false);
                    continue;
                    i14 += 3;
                    i11 = 1048575;
                    break;
                case 19:
                    zzgsr.p(this.f19546a[i14], (List) unsafe.getObject(obj, j10), zzgpuVar, false);
                    continue;
                    i14 += 3;
                    i11 = 1048575;
                    break;
                case 20:
                    zzgsr.s(this.f19546a[i14], (List) unsafe.getObject(obj, j10), zzgpuVar, false);
                    continue;
                    i14 += 3;
                    i11 = 1048575;
                    break;
                case 21:
                    zzgsr.B(this.f19546a[i14], (List) unsafe.getObject(obj, j10), zzgpuVar, false);
                    continue;
                    i14 += 3;
                    i11 = 1048575;
                    break;
                case 22:
                    zzgsr.r(this.f19546a[i14], (List) unsafe.getObject(obj, j10), zzgpuVar, false);
                    continue;
                    i14 += 3;
                    i11 = 1048575;
                    break;
                case 23:
                    zzgsr.o(this.f19546a[i14], (List) unsafe.getObject(obj, j10), zzgpuVar, false);
                    continue;
                    i14 += 3;
                    i11 = 1048575;
                    break;
                case 24:
                    zzgsr.n(this.f19546a[i14], (List) unsafe.getObject(obj, j10), zzgpuVar, false);
                    continue;
                    i14 += 3;
                    i11 = 1048575;
                    break;
                case 25:
                    zzgsr.j(this.f19546a[i14], (List) unsafe.getObject(obj, j10), zzgpuVar, false);
                    continue;
                    i14 += 3;
                    i11 = 1048575;
                    break;
                case 26:
                    zzgsr.y(this.f19546a[i14], (List) unsafe.getObject(obj, j10), zzgpuVar);
                    break;
                case 27:
                    zzgsr.t(this.f19546a[i14], (List) unsafe.getObject(obj, j10), zzgpuVar, m(i14));
                    break;
                case 28:
                    zzgsr.k(this.f19546a[i14], (List) unsafe.getObject(obj, j10), zzgpuVar);
                    break;
                case 29:
                    zzgsr.z(this.f19546a[i14], (List) unsafe.getObject(obj, j10), zzgpuVar, false);
                    break;
                case 30:
                    zzgsr.m(this.f19546a[i14], (List) unsafe.getObject(obj, j10), zzgpuVar, false);
                    break;
                case 31:
                    zzgsr.u(this.f19546a[i14], (List) unsafe.getObject(obj, j10), zzgpuVar, false);
                    break;
                case 32:
                    zzgsr.v(this.f19546a[i14], (List) unsafe.getObject(obj, j10), zzgpuVar, false);
                    break;
                case 33:
                    zzgsr.w(this.f19546a[i14], (List) unsafe.getObject(obj, j10), zzgpuVar, false);
                    break;
                case 34:
                    zzgsr.x(this.f19546a[i14], (List) unsafe.getObject(obj, j10), zzgpuVar, false);
                    break;
                case 35:
                    zzgsr.l(this.f19546a[i14], (List) unsafe.getObject(obj, j10), zzgpuVar, true);
                    break;
                case 36:
                    zzgsr.p(this.f19546a[i14], (List) unsafe.getObject(obj, j10), zzgpuVar, true);
                    break;
                case 37:
                    zzgsr.s(this.f19546a[i14], (List) unsafe.getObject(obj, j10), zzgpuVar, true);
                    break;
                case 38:
                    zzgsr.B(this.f19546a[i14], (List) unsafe.getObject(obj, j10), zzgpuVar, true);
                    break;
                case 39:
                    zzgsr.r(this.f19546a[i14], (List) unsafe.getObject(obj, j10), zzgpuVar, true);
                    break;
                case 40:
                    zzgsr.o(this.f19546a[i14], (List) unsafe.getObject(obj, j10), zzgpuVar, true);
                    break;
                case 41:
                    zzgsr.n(this.f19546a[i14], (List) unsafe.getObject(obj, j10), zzgpuVar, true);
                    break;
                case 42:
                    zzgsr.j(this.f19546a[i14], (List) unsafe.getObject(obj, j10), zzgpuVar, true);
                    break;
                case 43:
                    zzgsr.z(this.f19546a[i14], (List) unsafe.getObject(obj, j10), zzgpuVar, true);
                    break;
                case 44:
                    zzgsr.m(this.f19546a[i14], (List) unsafe.getObject(obj, j10), zzgpuVar, true);
                    break;
                case 45:
                    zzgsr.u(this.f19546a[i14], (List) unsafe.getObject(obj, j10), zzgpuVar, true);
                    break;
                case 46:
                    zzgsr.v(this.f19546a[i14], (List) unsafe.getObject(obj, j10), zzgpuVar, true);
                    break;
                case 47:
                    zzgsr.w(this.f19546a[i14], (List) unsafe.getObject(obj, j10), zzgpuVar, true);
                    break;
                case 48:
                    zzgsr.x(this.f19546a[i14], (List) unsafe.getObject(obj, j10), zzgpuVar, true);
                    break;
                case 49:
                    zzgsr.q(this.f19546a[i14], (List) unsafe.getObject(obj, j10), zzgpuVar, m(i14));
                    break;
                case 50:
                    I(zzgpuVar, i17, unsafe.getObject(obj, j10), i14);
                    break;
                case 51:
                    if (G(obj, i17, i14)) {
                        zzgpuVar.q(i17, N(obj, j10));
                    }
                    break;
                case 52:
                    if (G(obj, i17, i14)) {
                        zzgpuVar.z(i17, O(obj, j10));
                    }
                    break;
                case 53:
                    if (G(obj, i17, i14)) {
                        zzgpuVar.E(i17, k(obj, j10));
                    }
                    break;
                case 54:
                    if (G(obj, i17, i14)) {
                        zzgpuVar.j(i17, k(obj, j10));
                    }
                    break;
                case 55:
                    if (G(obj, i17, i14)) {
                        zzgpuVar.C(i17, Q(obj, j10));
                    }
                    break;
                case 56:
                    if (G(obj, i17, i14)) {
                        zzgpuVar.x(i17, k(obj, j10));
                    }
                    break;
                case 57:
                    if (G(obj, i17, i14)) {
                        zzgpuVar.v(i17, Q(obj, j10));
                    }
                    break;
                case 58:
                    if (G(obj, i17, i14)) {
                        zzgpuVar.m(i17, H(obj, j10));
                    }
                    break;
                case 59:
                    if (G(obj, i17, i14)) {
                        J(i17, unsafe.getObject(obj, j10), zzgpuVar);
                    }
                    break;
                case 60:
                    if (G(obj, i17, i14)) {
                        zzgpuVar.G(i17, unsafe.getObject(obj, j10), m(i14));
                    }
                    break;
                case 61:
                    if (G(obj, i17, i14)) {
                        zzgpuVar.o(i17, (zzgpe) unsafe.getObject(obj, j10));
                    }
                    break;
                case 62:
                    if (G(obj, i17, i14)) {
                        zzgpuVar.h(i17, Q(obj, j10));
                    }
                    break;
                case 63:
                    if (G(obj, i17, i14)) {
                        zzgpuVar.t(i17, Q(obj, j10));
                    }
                    break;
                case 64:
                    if (G(obj, i17, i14)) {
                        zzgpuVar.H(i17, Q(obj, j10));
                    }
                    break;
                case 65:
                    if (G(obj, i17, i14)) {
                        zzgpuVar.J(i17, k(obj, j10));
                    }
                    break;
                case 66:
                    if (G(obj, i17, i14)) {
                        zzgpuVar.a(i17, Q(obj, j10));
                    }
                    break;
                case 67:
                    if (G(obj, i17, i14)) {
                        zzgpuVar.c(i17, k(obj, j10));
                    }
                    break;
                case 68:
                    if (G(obj, i17, i14)) {
                        zzgpuVar.B(i17, unsafe.getObject(obj, j10), m(i14));
                    }
                    break;
            }
            i14 += 3;
            i11 = 1048575;
        }
        zzgtg zzgtgVar2 = this.f19558m;
        zzgtgVar2.r(zzgtgVar2.d(obj), zzgpuVar);
    }
}
