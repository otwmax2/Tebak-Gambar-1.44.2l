package com.google.android.gms.internal.measurement;

import com.vungle.mediation.BuildConfig;
import java.io.IOException;
import java.lang.reflect.Field;
import java.util.Arrays;
import java.util.List;
import java.util.Objects;
import sun.misc.Unsafe;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-base@@20.1.2 */
/* JADX INFO: loaded from: classes2.dex */
final class zzlm<T> implements zzlu<T> {

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private static final int[] f23701p = new int[0];

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private static final Unsafe f23702q = zzmv.l();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int[] f23703a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Object[] f23704b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final int f23705c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final int f23706d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final zzlj f23707e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final boolean f23708f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final boolean f23709g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final int[] f23710h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final int f23711i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final int f23712j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final zzkx f23713k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private final zzml f23714l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private final zzjp f23715m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private final zzlo f23716n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final zzle f23717o;

    private zzlm(int[] iArr, Object[] objArr, int i10, int i11, zzlj zzljVar, boolean z10, boolean z11, int[] iArr2, int i12, int i13, zzlo zzloVar, zzkx zzkxVar, zzml zzmlVar, zzjp zzjpVar, zzle zzleVar, byte[] bArr) {
        this.f23703a = iArr;
        this.f23704b = objArr;
        this.f23705c = i10;
        this.f23706d = i11;
        this.f23709g = z10;
        boolean z12 = false;
        if (zzjpVar != null && zzjpVar.c(zzljVar)) {
            z12 = true;
        }
        this.f23708f = z12;
        this.f23710h = iArr2;
        this.f23711i = i12;
        this.f23712j = i13;
        this.f23716n = zzloVar;
        this.f23713k = zzkxVar;
        this.f23714l = zzmlVar;
        this.f23715m = zzjpVar;
        this.f23707e = zzljVar;
        this.f23717o = zzleVar;
    }

    private final boolean A(Object obj, int i10, int i11) {
        return zzmv.h(obj, (long) (S(i11) & 1048575)) == i10;
    }

    private static boolean B(Object obj, long j10) {
        return ((Boolean) zzmv.k(obj, j10)).booleanValue();
    }

    private static final void C(int i10, Object obj, zznd zzndVar) throws IOException {
        if (obj instanceof String) {
            zzndVar.o(i10, (String) obj);
        } else {
            zzndVar.l(i10, (zzjb) obj);
        }
    }

    static zzmm E(Object obj) {
        zzkc zzkcVar = (zzkc) obj;
        zzmm zzmmVar = zzkcVar.zzc;
        if (zzmmVar != zzmm.c()) {
            return zzmmVar;
        }
        zzmm zzmmVarE = zzmm.e();
        zzkcVar.zzc = zzmmVarE;
        return zzmmVarE;
    }

    static zzlm F(Class cls, zzlg zzlgVar, zzlo zzloVar, zzkx zzkxVar, zzml zzmlVar, zzjp zzjpVar, zzle zzleVar) {
        if (zzlgVar instanceof zzlt) {
            return G((zzlt) zzlgVar, zzloVar, zzkxVar, zzmlVar, zzjpVar, zzleVar);
        }
        throw null;
    }

    /* JADX WARN: Removed duplicated region for block: B:123:0x025d  */
    /* JADX WARN: Removed duplicated region for block: B:124:0x0260  */
    /* JADX WARN: Removed duplicated region for block: B:127:0x0278  */
    /* JADX WARN: Removed duplicated region for block: B:128:0x027b  */
    /* JADX WARN: Removed duplicated region for block: B:162:0x032b  */
    /* JADX WARN: Removed duplicated region for block: B:177:0x0378  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    static com.google.android.gms.internal.measurement.zzlm G(com.google.android.gms.internal.measurement.zzlt r34, com.google.android.gms.internal.measurement.zzlo r35, com.google.android.gms.internal.measurement.zzkx r36, com.google.android.gms.internal.measurement.zzml r37, com.google.android.gms.internal.measurement.zzjp r38, com.google.android.gms.internal.measurement.zzle r39) {
        /*
            Method dump skipped, instruction units count: 1016
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.zzlm.G(com.google.android.gms.internal.measurement.zzlt, com.google.android.gms.internal.measurement.zzlo, com.google.android.gms.internal.measurement.zzkx, com.google.android.gms.internal.measurement.zzml, com.google.android.gms.internal.measurement.zzjp, com.google.android.gms.internal.measurement.zzle):com.google.android.gms.internal.measurement.zzlm");
    }

    private static double H(Object obj, long j10) {
        return ((Double) zzmv.k(obj, j10)).doubleValue();
    }

    private static float I(Object obj, long j10) {
        return ((Float) zzmv.k(obj, j10)).floatValue();
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    private final int J(Object obj) {
        int i10;
        int iA;
        int iA2;
        int iA3;
        int iB;
        int iA4;
        int iZ;
        int iA5;
        int iA6;
        int i11;
        int iA7;
        int i12;
        int iW;
        int iK;
        int iD;
        int iA8;
        int iA9;
        int iA10;
        int iA11;
        int iA12;
        int iB2;
        int iA13;
        int i13;
        int iA14;
        int i14;
        Unsafe unsafe = f23702q;
        int i15 = 1048575;
        int i16 = 0;
        int iA15 = 0;
        int i17 = 0;
        int i18 = 1048575;
        while (i16 < this.f23703a.length) {
            int iK2 = k(i16);
            int[] iArr = this.f23703a;
            int i19 = iArr[i16];
            int iJ = j(iK2);
            if (iJ <= 17) {
                int i20 = iArr[i16 + 2];
                int i21 = i20 & i15;
                i10 = 1 << (i20 >>> 20);
                if (i21 != i18) {
                    i17 = unsafe.getInt(obj, i21);
                    i18 = i21;
                }
            } else {
                i10 = 0;
            }
            long j10 = iK2 & i15;
            switch (iJ) {
                case 0:
                    if ((i17 & i10) != 0) {
                        iA = zzjj.a(i19 << 3);
                        iA5 = iA + 8;
                        iA15 += iA5;
                    }
                    break;
                case 1:
                    if ((i17 & i10) != 0) {
                        iA2 = zzjj.a(i19 << 3);
                        iA5 = iA2 + 4;
                        iA15 += iA5;
                    }
                    break;
                case 2:
                    if ((i17 & i10) != 0) {
                        long j11 = unsafe.getLong(obj, j10);
                        iA3 = zzjj.a(i19 << 3);
                        iB = zzjj.b(j11);
                        iA15 += iA3 + iB;
                    }
                    break;
                case 3:
                    if ((i17 & i10) != 0) {
                        long j12 = unsafe.getLong(obj, j10);
                        iA3 = zzjj.a(i19 << 3);
                        iB = zzjj.b(j12);
                        iA15 += iA3 + iB;
                    }
                    break;
                case 4:
                    if ((i17 & i10) != 0) {
                        int i22 = unsafe.getInt(obj, j10);
                        iA4 = zzjj.a(i19 << 3);
                        iZ = zzjj.z(i22);
                        i12 = iA4 + iZ;
                        iA15 += i12;
                    }
                    break;
                case 5:
                    if ((i17 & i10) != 0) {
                        iA = zzjj.a(i19 << 3);
                        iA5 = iA + 8;
                        iA15 += iA5;
                    }
                    break;
                case 6:
                    if ((i17 & i10) != 0) {
                        iA2 = zzjj.a(i19 << 3);
                        iA5 = iA2 + 4;
                        iA15 += iA5;
                    }
                    break;
                case 7:
                    if ((i17 & i10) != 0) {
                        iA5 = zzjj.a(i19 << 3) + 1;
                        iA15 += iA5;
                    }
                    break;
                case 8:
                    if ((i17 & i10) != 0) {
                        Object object = unsafe.getObject(obj, j10);
                        if (!(object instanceof zzjb)) {
                            iA4 = zzjj.a(i19 << 3);
                            iZ = zzjj.C((String) object);
                            i12 = iA4 + iZ;
                            iA15 += i12;
                        } else {
                            iA6 = zzjj.a(i19 << 3);
                            i11 = ((zzjb) object).i();
                            iA7 = zzjj.a(i11);
                            i12 = iA6 + iA7 + i11;
                            iA15 += i12;
                        }
                    }
                    break;
                case 9:
                    if ((i17 & i10) != 0) {
                        iA5 = zzlw.Q(i19, unsafe.getObject(obj, j10), n(i16));
                        iA15 += iA5;
                    }
                    break;
                case 10:
                    if ((i17 & i10) != 0) {
                        zzjb zzjbVar = (zzjb) unsafe.getObject(obj, j10);
                        iA6 = zzjj.a(i19 << 3);
                        i11 = zzjbVar.i();
                        iA7 = zzjj.a(i11);
                        i12 = iA6 + iA7 + i11;
                        iA15 += i12;
                    }
                    break;
                case 11:
                    if ((i17 & i10) != 0) {
                        int i23 = unsafe.getInt(obj, j10);
                        iA4 = zzjj.a(i19 << 3);
                        iZ = zzjj.a(i23);
                        i12 = iA4 + iZ;
                        iA15 += i12;
                    }
                    break;
                case 12:
                    if ((i17 & i10) != 0) {
                        int i24 = unsafe.getInt(obj, j10);
                        iA4 = zzjj.a(i19 << 3);
                        iZ = zzjj.z(i24);
                        i12 = iA4 + iZ;
                        iA15 += i12;
                    }
                    break;
                case 13:
                    if ((i17 & i10) != 0) {
                        iA2 = zzjj.a(i19 << 3);
                        iA5 = iA2 + 4;
                        iA15 += iA5;
                    }
                    break;
                case 14:
                    if ((i17 & i10) != 0) {
                        iA = zzjj.a(i19 << 3);
                        iA5 = iA + 8;
                        iA15 += iA5;
                    }
                    break;
                case 15:
                    if ((i17 & i10) != 0) {
                        int i25 = unsafe.getInt(obj, j10);
                        iA4 = zzjj.a(i19 << 3);
                        iZ = zzjj.a((i25 >> 31) ^ (i25 + i25));
                        i12 = iA4 + iZ;
                        iA15 += i12;
                    }
                    break;
                case 16:
                    if ((i10 & i17) != 0) {
                        long j13 = unsafe.getLong(obj, j10);
                        iA15 += zzjj.a(i19 << 3) + zzjj.b((j13 >> 63) ^ (j13 + j13));
                    }
                    break;
                case 17:
                    if ((i17 & i10) != 0) {
                        iA5 = zzjj.y(i19, (zzlj) unsafe.getObject(obj, j10), n(i16));
                        iA15 += iA5;
                    }
                    break;
                case 18:
                    iA5 = zzlw.J(i19, (List) unsafe.getObject(obj, j10), false);
                    iA15 += iA5;
                    break;
                case 19:
                    iA5 = zzlw.H(i19, (List) unsafe.getObject(obj, j10), false);
                    iA15 += iA5;
                    break;
                case 20:
                    iA5 = zzlw.O(i19, (List) unsafe.getObject(obj, j10), false);
                    iA15 += iA5;
                    break;
                case 21:
                    iA5 = zzlw.Z(i19, (List) unsafe.getObject(obj, j10), false);
                    iA15 += iA5;
                    break;
                case 22:
                    iA5 = zzlw.M(i19, (List) unsafe.getObject(obj, j10), false);
                    iA15 += iA5;
                    break;
                case 23:
                    iA5 = zzlw.J(i19, (List) unsafe.getObject(obj, j10), false);
                    iA15 += iA5;
                    break;
                case 24:
                    iA5 = zzlw.H(i19, (List) unsafe.getObject(obj, j10), false);
                    iA15 += iA5;
                    break;
                case 25:
                    iA5 = zzlw.A(i19, (List) unsafe.getObject(obj, j10), false);
                    iA15 += iA5;
                    break;
                case 26:
                    iW = zzlw.W(i19, (List) unsafe.getObject(obj, j10));
                    iA15 += iW;
                    break;
                case 27:
                    iW = zzlw.R(i19, (List) unsafe.getObject(obj, j10), n(i16));
                    iA15 += iW;
                    break;
                case 28:
                    iW = zzlw.E(i19, (List) unsafe.getObject(obj, j10));
                    iA15 += iW;
                    break;
                case 29:
                    iW = zzlw.X(i19, (List) unsafe.getObject(obj, j10), false);
                    iA15 += iW;
                    break;
                case 30:
                    iW = zzlw.F(i19, (List) unsafe.getObject(obj, j10), false);
                    iA15 += iW;
                    break;
                case 31:
                    iW = zzlw.H(i19, (List) unsafe.getObject(obj, j10), false);
                    iA15 += iW;
                    break;
                case 32:
                    iW = zzlw.J(i19, (List) unsafe.getObject(obj, j10), false);
                    iA15 += iW;
                    break;
                case 33:
                    iW = zzlw.S(i19, (List) unsafe.getObject(obj, j10), false);
                    iA15 += iW;
                    break;
                case 34:
                    iW = zzlw.U(i19, (List) unsafe.getObject(obj, j10), false);
                    iA15 += iW;
                    break;
                case 35:
                    iK = zzlw.K((List) unsafe.getObject(obj, j10));
                    if (iK > 0) {
                        iD = zzjj.D(i19);
                        iA8 = zzjj.a(iK);
                        iA9 = iD + iA8;
                        i14 = iA9 + iK;
                        iA15 += i14;
                    }
                    break;
                case 36:
                    iK = zzlw.I((List) unsafe.getObject(obj, j10));
                    if (iK > 0) {
                        iD = zzjj.D(i19);
                        iA8 = zzjj.a(iK);
                        iA9 = iD + iA8;
                        i14 = iA9 + iK;
                        iA15 += i14;
                    }
                    break;
                case 37:
                    iK = zzlw.P((List) unsafe.getObject(obj, j10));
                    if (iK > 0) {
                        iD = zzjj.D(i19);
                        iA8 = zzjj.a(iK);
                        iA9 = iD + iA8;
                        i14 = iA9 + iK;
                        iA15 += i14;
                    }
                    break;
                case 38:
                    iK = zzlw.a0((List) unsafe.getObject(obj, j10));
                    if (iK > 0) {
                        iD = zzjj.D(i19);
                        iA8 = zzjj.a(iK);
                        iA9 = iD + iA8;
                        i14 = iA9 + iK;
                        iA15 += i14;
                    }
                    break;
                case 39:
                    iK = zzlw.N((List) unsafe.getObject(obj, j10));
                    if (iK > 0) {
                        iD = zzjj.D(i19);
                        iA8 = zzjj.a(iK);
                        iA9 = iD + iA8;
                        i14 = iA9 + iK;
                        iA15 += i14;
                    }
                    break;
                case 40:
                    iK = zzlw.K((List) unsafe.getObject(obj, j10));
                    if (iK > 0) {
                        iD = zzjj.D(i19);
                        iA8 = zzjj.a(iK);
                        iA9 = iD + iA8;
                        i14 = iA9 + iK;
                        iA15 += i14;
                    }
                    break;
                case 41:
                    iK = zzlw.I((List) unsafe.getObject(obj, j10));
                    if (iK > 0) {
                        iD = zzjj.D(i19);
                        iA8 = zzjj.a(iK);
                        iA9 = iD + iA8;
                        i14 = iA9 + iK;
                        iA15 += i14;
                    }
                    break;
                case 42:
                    iK = zzlw.D((List) unsafe.getObject(obj, j10));
                    if (iK > 0) {
                        iD = zzjj.D(i19);
                        iA8 = zzjj.a(iK);
                        iA9 = iD + iA8;
                        i14 = iA9 + iK;
                        iA15 += i14;
                    }
                    break;
                case 43:
                    iK = zzlw.Y((List) unsafe.getObject(obj, j10));
                    if (iK > 0) {
                        iD = zzjj.D(i19);
                        iA8 = zzjj.a(iK);
                        iA9 = iD + iA8;
                        i14 = iA9 + iK;
                        iA15 += i14;
                    }
                    break;
                case 44:
                    iK = zzlw.G((List) unsafe.getObject(obj, j10));
                    if (iK > 0) {
                        iD = zzjj.D(i19);
                        iA8 = zzjj.a(iK);
                        iA9 = iD + iA8;
                        i14 = iA9 + iK;
                        iA15 += i14;
                    }
                    break;
                case 45:
                    iK = zzlw.I((List) unsafe.getObject(obj, j10));
                    if (iK > 0) {
                        iD = zzjj.D(i19);
                        iA8 = zzjj.a(iK);
                        iA9 = iD + iA8;
                        i14 = iA9 + iK;
                        iA15 += i14;
                    }
                    break;
                case 46:
                    iK = zzlw.K((List) unsafe.getObject(obj, j10));
                    if (iK > 0) {
                        iD = zzjj.D(i19);
                        iA8 = zzjj.a(iK);
                        iA9 = iD + iA8;
                        i14 = iA9 + iK;
                        iA15 += i14;
                    }
                    break;
                case 47:
                    iK = zzlw.T((List) unsafe.getObject(obj, j10));
                    if (iK > 0) {
                        iD = zzjj.D(i19);
                        iA8 = zzjj.a(iK);
                        iA9 = iD + iA8;
                        i14 = iA9 + iK;
                        iA15 += i14;
                    }
                    break;
                case 48:
                    iK = zzlw.V((List) unsafe.getObject(obj, j10));
                    if (iK > 0) {
                        iD = zzjj.D(i19);
                        iA8 = zzjj.a(iK);
                        iA9 = iD + iA8;
                        i14 = iA9 + iK;
                        iA15 += i14;
                    }
                    break;
                case 49:
                    iW = zzlw.L(i19, (List) unsafe.getObject(obj, j10), n(i16));
                    iA15 += iW;
                    break;
                case 50:
                    zzle.a(i19, unsafe.getObject(obj, j10), o(i16));
                    break;
                case 51:
                    if (A(obj, i19, i16)) {
                        iA10 = zzjj.a(i19 << 3);
                        iW = iA10 + 8;
                        iA15 += iW;
                    }
                    break;
                case 52:
                    if (A(obj, i19, i16)) {
                        iA11 = zzjj.a(i19 << 3);
                        iW = iA11 + 4;
                        iA15 += iW;
                    }
                    break;
                case 53:
                    if (A(obj, i19, i16)) {
                        long jL = l(obj, j10);
                        iA12 = zzjj.a(i19 << 3);
                        iB2 = zzjj.b(jL);
                        iA15 += iA12 + iB2;
                    }
                    break;
                case 54:
                    if (A(obj, i19, i16)) {
                        long jL2 = l(obj, j10);
                        iA12 = zzjj.a(i19 << 3);
                        iB2 = zzjj.b(jL2);
                        iA15 += iA12 + iB2;
                    }
                    break;
                case 55:
                    if (A(obj, i19, i16)) {
                        int iL = L(obj, j10);
                        iA9 = zzjj.a(i19 << 3);
                        iK = zzjj.z(iL);
                        i14 = iA9 + iK;
                        iA15 += i14;
                    }
                    break;
                case 56:
                    if (A(obj, i19, i16)) {
                        iA10 = zzjj.a(i19 << 3);
                        iW = iA10 + 8;
                        iA15 += iW;
                    }
                    break;
                case 57:
                    if (A(obj, i19, i16)) {
                        iA11 = zzjj.a(i19 << 3);
                        iW = iA11 + 4;
                        iA15 += iW;
                    }
                    break;
                case 58:
                    if (A(obj, i19, i16)) {
                        iW = zzjj.a(i19 << 3) + 1;
                        iA15 += iW;
                    }
                    break;
                case 59:
                    if (A(obj, i19, i16)) {
                        Object object2 = unsafe.getObject(obj, j10);
                        if (object2 instanceof zzjb) {
                            iA13 = zzjj.a(i19 << 3);
                            i13 = ((zzjb) object2).i();
                            iA14 = zzjj.a(i13);
                            i14 = iA13 + iA14 + i13;
                            iA15 += i14;
                        } else {
                            iA9 = zzjj.a(i19 << 3);
                            iK = zzjj.C((String) object2);
                            i14 = iA9 + iK;
                            iA15 += i14;
                        }
                    }
                    break;
                case 60:
                    if (A(obj, i19, i16)) {
                        iW = zzlw.Q(i19, unsafe.getObject(obj, j10), n(i16));
                        iA15 += iW;
                    }
                    break;
                case 61:
                    if (A(obj, i19, i16)) {
                        zzjb zzjbVar2 = (zzjb) unsafe.getObject(obj, j10);
                        iA13 = zzjj.a(i19 << 3);
                        i13 = zzjbVar2.i();
                        iA14 = zzjj.a(i13);
                        i14 = iA13 + iA14 + i13;
                        iA15 += i14;
                    }
                    break;
                case 62:
                    if (A(obj, i19, i16)) {
                        int iL2 = L(obj, j10);
                        iA9 = zzjj.a(i19 << 3);
                        iK = zzjj.a(iL2);
                        i14 = iA9 + iK;
                        iA15 += i14;
                    }
                    break;
                case 63:
                    if (A(obj, i19, i16)) {
                        int iL3 = L(obj, j10);
                        iA9 = zzjj.a(i19 << 3);
                        iK = zzjj.z(iL3);
                        i14 = iA9 + iK;
                        iA15 += i14;
                    }
                    break;
                case 64:
                    if (A(obj, i19, i16)) {
                        iA11 = zzjj.a(i19 << 3);
                        iW = iA11 + 4;
                        iA15 += iW;
                    }
                    break;
                case 65:
                    if (A(obj, i19, i16)) {
                        iA10 = zzjj.a(i19 << 3);
                        iW = iA10 + 8;
                        iA15 += iW;
                    }
                    break;
                case 66:
                    if (A(obj, i19, i16)) {
                        int iL4 = L(obj, j10);
                        iA9 = zzjj.a(i19 << 3);
                        iK = zzjj.a((iL4 >> 31) ^ (iL4 + iL4));
                        i14 = iA9 + iK;
                        iA15 += i14;
                    }
                    break;
                case 67:
                    if (A(obj, i19, i16)) {
                        long jL3 = l(obj, j10);
                        iA15 += zzjj.a(i19 << 3) + zzjj.b((jL3 >> 63) ^ (jL3 + jL3));
                    }
                    break;
                case 68:
                    if (A(obj, i19, i16)) {
                        iW = zzjj.y(i19, (zzlj) unsafe.getObject(obj, j10), n(i16));
                        iA15 += iW;
                    }
                    break;
            }
            i16 += 3;
            i15 = 1048575;
        }
        zzml zzmlVar = this.f23714l;
        int iA16 = iA15 + zzmlVar.a(zzmlVar.c(obj));
        if (!this.f23708f) {
            return iA16;
        }
        this.f23715m.a(obj);
        throw null;
    }

    private final int K(Object obj) {
        int iA;
        int iA2;
        int iA3;
        int iB;
        int iA4;
        int iZ;
        int iA5;
        int iA6;
        int i10;
        int iA7;
        int iQ;
        int iD;
        int iA8;
        int i11;
        Unsafe unsafe = f23702q;
        int i12 = 0;
        for (int i13 = 0; i13 < this.f23703a.length; i13 += 3) {
            int iK = k(i13);
            int iJ = j(iK);
            int i14 = this.f23703a[i13];
            long j10 = iK & 1048575;
            if (iJ >= zzju.f23620a0.zza() && iJ <= zzju.f23633n0.zza()) {
                int i15 = this.f23703a[i13 + 2];
            }
            switch (iJ) {
                case 0:
                    if (x(obj, i13)) {
                        iA = zzjj.a(i14 << 3);
                        iQ = iA + 8;
                        i12 += iQ;
                    }
                    break;
                case 1:
                    if (x(obj, i13)) {
                        iA2 = zzjj.a(i14 << 3);
                        iQ = iA2 + 4;
                        i12 += iQ;
                    }
                    break;
                case 2:
                    if (x(obj, i13)) {
                        long jI = zzmv.i(obj, j10);
                        iA3 = zzjj.a(i14 << 3);
                        iB = zzjj.b(jI);
                        i12 += iA3 + iB;
                    }
                    break;
                case 3:
                    if (x(obj, i13)) {
                        long jI2 = zzmv.i(obj, j10);
                        iA3 = zzjj.a(i14 << 3);
                        iB = zzjj.b(jI2);
                        i12 += iA3 + iB;
                    }
                    break;
                case 4:
                    if (x(obj, i13)) {
                        int iH = zzmv.h(obj, j10);
                        iA4 = zzjj.a(i14 << 3);
                        iZ = zzjj.z(iH);
                        i11 = iA4 + iZ;
                        i12 += i11;
                    }
                    break;
                case 5:
                    if (x(obj, i13)) {
                        iA = zzjj.a(i14 << 3);
                        iQ = iA + 8;
                        i12 += iQ;
                    }
                    break;
                case 6:
                    if (x(obj, i13)) {
                        iA2 = zzjj.a(i14 << 3);
                        iQ = iA2 + 4;
                        i12 += iQ;
                    }
                    break;
                case 7:
                    if (x(obj, i13)) {
                        iA5 = zzjj.a(i14 << 3);
                        iQ = iA5 + 1;
                        i12 += iQ;
                    }
                    break;
                case 8:
                    if (x(obj, i13)) {
                        Object objK = zzmv.k(obj, j10);
                        if (objK instanceof zzjb) {
                            iA6 = zzjj.a(i14 << 3);
                            i10 = ((zzjb) objK).i();
                            iA7 = zzjj.a(i10);
                            i11 = iA6 + iA7 + i10;
                            i12 += i11;
                        } else {
                            iA4 = zzjj.a(i14 << 3);
                            iZ = zzjj.C((String) objK);
                            i11 = iA4 + iZ;
                            i12 += i11;
                        }
                    }
                    break;
                case 9:
                    if (x(obj, i13)) {
                        iQ = zzlw.Q(i14, zzmv.k(obj, j10), n(i13));
                        i12 += iQ;
                    }
                    break;
                case 10:
                    if (x(obj, i13)) {
                        zzjb zzjbVar = (zzjb) zzmv.k(obj, j10);
                        iA6 = zzjj.a(i14 << 3);
                        i10 = zzjbVar.i();
                        iA7 = zzjj.a(i10);
                        i11 = iA6 + iA7 + i10;
                        i12 += i11;
                    }
                    break;
                case 11:
                    if (x(obj, i13)) {
                        int iH2 = zzmv.h(obj, j10);
                        iA4 = zzjj.a(i14 << 3);
                        iZ = zzjj.a(iH2);
                        i11 = iA4 + iZ;
                        i12 += i11;
                    }
                    break;
                case 12:
                    if (x(obj, i13)) {
                        int iH3 = zzmv.h(obj, j10);
                        iA4 = zzjj.a(i14 << 3);
                        iZ = zzjj.z(iH3);
                        i11 = iA4 + iZ;
                        i12 += i11;
                    }
                    break;
                case 13:
                    if (x(obj, i13)) {
                        iA2 = zzjj.a(i14 << 3);
                        iQ = iA2 + 4;
                        i12 += iQ;
                    }
                    break;
                case 14:
                    if (x(obj, i13)) {
                        iA = zzjj.a(i14 << 3);
                        iQ = iA + 8;
                        i12 += iQ;
                    }
                    break;
                case 15:
                    if (x(obj, i13)) {
                        int iH4 = zzmv.h(obj, j10);
                        iA4 = zzjj.a(i14 << 3);
                        iZ = zzjj.a((iH4 >> 31) ^ (iH4 + iH4));
                        i11 = iA4 + iZ;
                        i12 += i11;
                    }
                    break;
                case 16:
                    if (x(obj, i13)) {
                        long jI3 = zzmv.i(obj, j10);
                        iA4 = zzjj.a(i14 << 3);
                        iZ = zzjj.b((jI3 >> 63) ^ (jI3 + jI3));
                        i11 = iA4 + iZ;
                        i12 += i11;
                    }
                    break;
                case 17:
                    if (x(obj, i13)) {
                        iQ = zzjj.y(i14, (zzlj) zzmv.k(obj, j10), n(i13));
                        i12 += iQ;
                    }
                    break;
                case 18:
                    iQ = zzlw.J(i14, (List) zzmv.k(obj, j10), false);
                    i12 += iQ;
                    break;
                case 19:
                    iQ = zzlw.H(i14, (List) zzmv.k(obj, j10), false);
                    i12 += iQ;
                    break;
                case 20:
                    iQ = zzlw.O(i14, (List) zzmv.k(obj, j10), false);
                    i12 += iQ;
                    break;
                case 21:
                    iQ = zzlw.Z(i14, (List) zzmv.k(obj, j10), false);
                    i12 += iQ;
                    break;
                case 22:
                    iQ = zzlw.M(i14, (List) zzmv.k(obj, j10), false);
                    i12 += iQ;
                    break;
                case 23:
                    iQ = zzlw.J(i14, (List) zzmv.k(obj, j10), false);
                    i12 += iQ;
                    break;
                case 24:
                    iQ = zzlw.H(i14, (List) zzmv.k(obj, j10), false);
                    i12 += iQ;
                    break;
                case 25:
                    iQ = zzlw.A(i14, (List) zzmv.k(obj, j10), false);
                    i12 += iQ;
                    break;
                case 26:
                    iQ = zzlw.W(i14, (List) zzmv.k(obj, j10));
                    i12 += iQ;
                    break;
                case 27:
                    iQ = zzlw.R(i14, (List) zzmv.k(obj, j10), n(i13));
                    i12 += iQ;
                    break;
                case 28:
                    iQ = zzlw.E(i14, (List) zzmv.k(obj, j10));
                    i12 += iQ;
                    break;
                case 29:
                    iQ = zzlw.X(i14, (List) zzmv.k(obj, j10), false);
                    i12 += iQ;
                    break;
                case 30:
                    iQ = zzlw.F(i14, (List) zzmv.k(obj, j10), false);
                    i12 += iQ;
                    break;
                case 31:
                    iQ = zzlw.H(i14, (List) zzmv.k(obj, j10), false);
                    i12 += iQ;
                    break;
                case 32:
                    iQ = zzlw.J(i14, (List) zzmv.k(obj, j10), false);
                    i12 += iQ;
                    break;
                case 33:
                    iQ = zzlw.S(i14, (List) zzmv.k(obj, j10), false);
                    i12 += iQ;
                    break;
                case 34:
                    iQ = zzlw.U(i14, (List) zzmv.k(obj, j10), false);
                    i12 += iQ;
                    break;
                case 35:
                    iZ = zzlw.K((List) unsafe.getObject(obj, j10));
                    if (iZ > 0) {
                        iD = zzjj.D(i14);
                        iA8 = zzjj.a(iZ);
                        iA4 = iD + iA8;
                        i11 = iA4 + iZ;
                        i12 += i11;
                    }
                    break;
                case 36:
                    iZ = zzlw.I((List) unsafe.getObject(obj, j10));
                    if (iZ > 0) {
                        iD = zzjj.D(i14);
                        iA8 = zzjj.a(iZ);
                        iA4 = iD + iA8;
                        i11 = iA4 + iZ;
                        i12 += i11;
                    }
                    break;
                case 37:
                    iZ = zzlw.P((List) unsafe.getObject(obj, j10));
                    if (iZ > 0) {
                        iD = zzjj.D(i14);
                        iA8 = zzjj.a(iZ);
                        iA4 = iD + iA8;
                        i11 = iA4 + iZ;
                        i12 += i11;
                    }
                    break;
                case 38:
                    iZ = zzlw.a0((List) unsafe.getObject(obj, j10));
                    if (iZ > 0) {
                        iD = zzjj.D(i14);
                        iA8 = zzjj.a(iZ);
                        iA4 = iD + iA8;
                        i11 = iA4 + iZ;
                        i12 += i11;
                    }
                    break;
                case 39:
                    iZ = zzlw.N((List) unsafe.getObject(obj, j10));
                    if (iZ > 0) {
                        iD = zzjj.D(i14);
                        iA8 = zzjj.a(iZ);
                        iA4 = iD + iA8;
                        i11 = iA4 + iZ;
                        i12 += i11;
                    }
                    break;
                case 40:
                    iZ = zzlw.K((List) unsafe.getObject(obj, j10));
                    if (iZ > 0) {
                        iD = zzjj.D(i14);
                        iA8 = zzjj.a(iZ);
                        iA4 = iD + iA8;
                        i11 = iA4 + iZ;
                        i12 += i11;
                    }
                    break;
                case 41:
                    iZ = zzlw.I((List) unsafe.getObject(obj, j10));
                    if (iZ > 0) {
                        iD = zzjj.D(i14);
                        iA8 = zzjj.a(iZ);
                        iA4 = iD + iA8;
                        i11 = iA4 + iZ;
                        i12 += i11;
                    }
                    break;
                case 42:
                    iZ = zzlw.D((List) unsafe.getObject(obj, j10));
                    if (iZ > 0) {
                        iD = zzjj.D(i14);
                        iA8 = zzjj.a(iZ);
                        iA4 = iD + iA8;
                        i11 = iA4 + iZ;
                        i12 += i11;
                    }
                    break;
                case 43:
                    iZ = zzlw.Y((List) unsafe.getObject(obj, j10));
                    if (iZ > 0) {
                        iD = zzjj.D(i14);
                        iA8 = zzjj.a(iZ);
                        iA4 = iD + iA8;
                        i11 = iA4 + iZ;
                        i12 += i11;
                    }
                    break;
                case 44:
                    iZ = zzlw.G((List) unsafe.getObject(obj, j10));
                    if (iZ > 0) {
                        iD = zzjj.D(i14);
                        iA8 = zzjj.a(iZ);
                        iA4 = iD + iA8;
                        i11 = iA4 + iZ;
                        i12 += i11;
                    }
                    break;
                case 45:
                    iZ = zzlw.I((List) unsafe.getObject(obj, j10));
                    if (iZ > 0) {
                        iD = zzjj.D(i14);
                        iA8 = zzjj.a(iZ);
                        iA4 = iD + iA8;
                        i11 = iA4 + iZ;
                        i12 += i11;
                    }
                    break;
                case 46:
                    iZ = zzlw.K((List) unsafe.getObject(obj, j10));
                    if (iZ > 0) {
                        iD = zzjj.D(i14);
                        iA8 = zzjj.a(iZ);
                        iA4 = iD + iA8;
                        i11 = iA4 + iZ;
                        i12 += i11;
                    }
                    break;
                case 47:
                    iZ = zzlw.T((List) unsafe.getObject(obj, j10));
                    if (iZ > 0) {
                        iD = zzjj.D(i14);
                        iA8 = zzjj.a(iZ);
                        iA4 = iD + iA8;
                        i11 = iA4 + iZ;
                        i12 += i11;
                    }
                    break;
                case 48:
                    iZ = zzlw.V((List) unsafe.getObject(obj, j10));
                    if (iZ > 0) {
                        iD = zzjj.D(i14);
                        iA8 = zzjj.a(iZ);
                        iA4 = iD + iA8;
                        i11 = iA4 + iZ;
                        i12 += i11;
                    }
                    break;
                case 49:
                    iQ = zzlw.L(i14, (List) zzmv.k(obj, j10), n(i13));
                    i12 += iQ;
                    break;
                case 50:
                    zzle.a(i14, zzmv.k(obj, j10), o(i13));
                    break;
                case 51:
                    if (A(obj, i14, i13)) {
                        iA = zzjj.a(i14 << 3);
                        iQ = iA + 8;
                        i12 += iQ;
                    }
                    break;
                case 52:
                    if (A(obj, i14, i13)) {
                        iA2 = zzjj.a(i14 << 3);
                        iQ = iA2 + 4;
                        i12 += iQ;
                    }
                    break;
                case 53:
                    if (A(obj, i14, i13)) {
                        long jL = l(obj, j10);
                        iA3 = zzjj.a(i14 << 3);
                        iB = zzjj.b(jL);
                        i12 += iA3 + iB;
                    }
                    break;
                case 54:
                    if (A(obj, i14, i13)) {
                        long jL2 = l(obj, j10);
                        iA3 = zzjj.a(i14 << 3);
                        iB = zzjj.b(jL2);
                        i12 += iA3 + iB;
                    }
                    break;
                case 55:
                    if (A(obj, i14, i13)) {
                        int iL = L(obj, j10);
                        iA4 = zzjj.a(i14 << 3);
                        iZ = zzjj.z(iL);
                        i11 = iA4 + iZ;
                        i12 += i11;
                    }
                    break;
                case 56:
                    if (A(obj, i14, i13)) {
                        iA = zzjj.a(i14 << 3);
                        iQ = iA + 8;
                        i12 += iQ;
                    }
                    break;
                case 57:
                    if (A(obj, i14, i13)) {
                        iA2 = zzjj.a(i14 << 3);
                        iQ = iA2 + 4;
                        i12 += iQ;
                    }
                    break;
                case 58:
                    if (A(obj, i14, i13)) {
                        iA5 = zzjj.a(i14 << 3);
                        iQ = iA5 + 1;
                        i12 += iQ;
                    }
                    break;
                case 59:
                    if (A(obj, i14, i13)) {
                        Object objK2 = zzmv.k(obj, j10);
                        if (objK2 instanceof zzjb) {
                            iA6 = zzjj.a(i14 << 3);
                            i10 = ((zzjb) objK2).i();
                            iA7 = zzjj.a(i10);
                            i11 = iA6 + iA7 + i10;
                            i12 += i11;
                        } else {
                            iA4 = zzjj.a(i14 << 3);
                            iZ = zzjj.C((String) objK2);
                            i11 = iA4 + iZ;
                            i12 += i11;
                        }
                    }
                    break;
                case 60:
                    if (A(obj, i14, i13)) {
                        iQ = zzlw.Q(i14, zzmv.k(obj, j10), n(i13));
                        i12 += iQ;
                    }
                    break;
                case 61:
                    if (A(obj, i14, i13)) {
                        zzjb zzjbVar2 = (zzjb) zzmv.k(obj, j10);
                        iA6 = zzjj.a(i14 << 3);
                        i10 = zzjbVar2.i();
                        iA7 = zzjj.a(i10);
                        i11 = iA6 + iA7 + i10;
                        i12 += i11;
                    }
                    break;
                case 62:
                    if (A(obj, i14, i13)) {
                        int iL2 = L(obj, j10);
                        iA4 = zzjj.a(i14 << 3);
                        iZ = zzjj.a(iL2);
                        i11 = iA4 + iZ;
                        i12 += i11;
                    }
                    break;
                case 63:
                    if (A(obj, i14, i13)) {
                        int iL3 = L(obj, j10);
                        iA4 = zzjj.a(i14 << 3);
                        iZ = zzjj.z(iL3);
                        i11 = iA4 + iZ;
                        i12 += i11;
                    }
                    break;
                case 64:
                    if (A(obj, i14, i13)) {
                        iA2 = zzjj.a(i14 << 3);
                        iQ = iA2 + 4;
                        i12 += iQ;
                    }
                    break;
                case 65:
                    if (A(obj, i14, i13)) {
                        iA = zzjj.a(i14 << 3);
                        iQ = iA + 8;
                        i12 += iQ;
                    }
                    break;
                case 66:
                    if (A(obj, i14, i13)) {
                        int iL4 = L(obj, j10);
                        iA4 = zzjj.a(i14 << 3);
                        iZ = zzjj.a((iL4 >> 31) ^ (iL4 + iL4));
                        i11 = iA4 + iZ;
                        i12 += i11;
                    }
                    break;
                case 67:
                    if (A(obj, i14, i13)) {
                        long jL3 = l(obj, j10);
                        iA4 = zzjj.a(i14 << 3);
                        iZ = zzjj.b((jL3 >> 63) ^ (jL3 + jL3));
                        i11 = iA4 + iZ;
                        i12 += i11;
                    }
                    break;
                case 68:
                    if (A(obj, i14, i13)) {
                        iQ = zzjj.y(i14, (zzlj) zzmv.k(obj, j10), n(i13));
                        i12 += iQ;
                    }
                    break;
            }
        }
        zzml zzmlVar = this.f23714l;
        return i12 + zzmlVar.a(zzmlVar.c(obj));
    }

    private static int L(Object obj, long j10) {
        return ((Integer) zzmv.k(obj, j10)).intValue();
    }

    private final int M(Object obj, byte[] bArr, int i10, int i11, int i12, long j10, zzio zzioVar) throws IOException {
        Unsafe unsafe = f23702q;
        Object objO = o(i12);
        Object object = unsafe.getObject(obj, j10);
        if (!((zzld) object).h()) {
            zzld zzldVarB = zzld.a().b();
            zzle.b(zzldVarB, object);
            unsafe.putObject(obj, j10, zzldVarB);
        }
        throw null;
    }

    private final int N(Object obj, byte[] bArr, int i10, int i11, int i12, int i13, int i14, int i15, int i16, long j10, int i17, zzio zzioVar) throws IOException {
        Unsafe unsafe = f23702q;
        long j11 = this.f23703a[i17 + 2] & 1048575;
        switch (i16) {
            case 51:
                if (i14 != 1) {
                    return i10;
                }
                unsafe.putObject(obj, j10, Double.valueOf(Double.longBitsToDouble(zzip.n(bArr, i10))));
                unsafe.putInt(obj, j11, i13);
                return i10 + 8;
            case 52:
                if (i14 != 5) {
                    return i10;
                }
                unsafe.putObject(obj, j10, Float.valueOf(Float.intBitsToFloat(zzip.b(bArr, i10))));
                unsafe.putInt(obj, j11, i13);
                return i10 + 4;
            case 53:
            case 54:
                if (i14 != 0) {
                    return i10;
                }
                int iM = zzip.m(bArr, i10, zzioVar);
                unsafe.putObject(obj, j10, Long.valueOf(zzioVar.f23577b));
                unsafe.putInt(obj, j11, i13);
                return iM;
            case 55:
            case 62:
                if (i14 != 0) {
                    return i10;
                }
                int iJ = zzip.j(bArr, i10, zzioVar);
                unsafe.putObject(obj, j10, Integer.valueOf(zzioVar.f23576a));
                unsafe.putInt(obj, j11, i13);
                return iJ;
            case 56:
            case 65:
                if (i14 != 1) {
                    return i10;
                }
                unsafe.putObject(obj, j10, Long.valueOf(zzip.n(bArr, i10)));
                unsafe.putInt(obj, j11, i13);
                return i10 + 8;
            case 57:
            case 64:
                if (i14 != 5) {
                    return i10;
                }
                unsafe.putObject(obj, j10, Integer.valueOf(zzip.b(bArr, i10)));
                unsafe.putInt(obj, j11, i13);
                return i10 + 4;
            case 58:
                if (i14 != 0) {
                    return i10;
                }
                int iM2 = zzip.m(bArr, i10, zzioVar);
                unsafe.putObject(obj, j10, Boolean.valueOf(zzioVar.f23577b != 0));
                unsafe.putInt(obj, j11, i13);
                return iM2;
            case 59:
                if (i14 != 2) {
                    return i10;
                }
                int iJ2 = zzip.j(bArr, i10, zzioVar);
                int i18 = zzioVar.f23576a;
                if (i18 == 0) {
                    unsafe.putObject(obj, j10, BuildConfig.FLAVOR);
                } else {
                    if ((i15 & 536870912) != 0 && !zzna.f(bArr, iJ2, iJ2 + i18)) {
                        throw zzkm.c();
                    }
                    unsafe.putObject(obj, j10, new String(bArr, iJ2, i18, zzkk.f23664b));
                    iJ2 += i18;
                }
                unsafe.putInt(obj, j11, i13);
                return iJ2;
            case 60:
                if (i14 != 2) {
                    return i10;
                }
                int iD = zzip.d(n(i17), bArr, i10, i11, zzioVar);
                Object object = unsafe.getInt(obj, j11) == i13 ? unsafe.getObject(obj, j10) : null;
                if (object == null) {
                    unsafe.putObject(obj, j10, zzioVar.f23578c);
                } else {
                    unsafe.putObject(obj, j10, zzkk.g(object, zzioVar.f23578c));
                }
                unsafe.putInt(obj, j11, i13);
                return iD;
            case 61:
                if (i14 != 2) {
                    return i10;
                }
                int iA = zzip.a(bArr, i10, zzioVar);
                unsafe.putObject(obj, j10, zzioVar.f23578c);
                unsafe.putInt(obj, j11, i13);
                return iA;
            case 63:
                if (i14 != 0) {
                    return i10;
                }
                int iJ3 = zzip.j(bArr, i10, zzioVar);
                int i19 = zzioVar.f23576a;
                zzkg zzkgVarM = m(i17);
                if (zzkgVarM == null || zzkgVarM.h(i19)) {
                    unsafe.putObject(obj, j10, Integer.valueOf(i19));
                    unsafe.putInt(obj, j11, i13);
                } else {
                    E(obj).h(i12, Long.valueOf(i19));
                }
                return iJ3;
            case 66:
                if (i14 != 0) {
                    return i10;
                }
                int iJ4 = zzip.j(bArr, i10, zzioVar);
                unsafe.putObject(obj, j10, Integer.valueOf(zzjf.a(zzioVar.f23576a)));
                unsafe.putInt(obj, j11, i13);
                return iJ4;
            case 67:
                if (i14 != 0) {
                    return i10;
                }
                int iM3 = zzip.m(bArr, i10, zzioVar);
                unsafe.putObject(obj, j10, Long.valueOf(zzjf.b(zzioVar.f23577b)));
                unsafe.putInt(obj, j11, i13);
                return iM3;
            case 68:
                if (i14 != 3) {
                    return i10;
                }
                int iC = zzip.c(n(i17), bArr, i10, i11, (i12 & (-8)) | 4, zzioVar);
                Object object2 = unsafe.getInt(obj, j11) == i13 ? unsafe.getObject(obj, j10) : null;
                if (object2 == null) {
                    unsafe.putObject(obj, j10, zzioVar.f23578c);
                } else {
                    unsafe.putObject(obj, j10, zzkk.g(object2, zzioVar.f23578c));
                }
                unsafe.putInt(obj, j11, i13);
                return iC;
            default:
                return i10;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:100:0x02e7, code lost:
    
        if (r0 != r5) goto L101;
     */
    /* JADX WARN: Code restructure failed: missing block: B:101:0x02e9, code lost:
    
        r15 = r30;
        r14 = r31;
        r12 = r32;
        r13 = r34;
        r11 = r35;
        r1 = r20;
        r2 = r23;
        r6 = r26;
        r7 = r27;
     */
    /* JADX WARN: Code restructure failed: missing block: B:102:0x02fd, code lost:
    
        r2 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:108:0x032e, code lost:
    
        if (r0 != r15) goto L101;
     */
    /* JADX WARN: Code restructure failed: missing block: B:113:0x0351, code lost:
    
        if (r0 != r15) goto L101;
     */
    /* JADX WARN: Failed to find 'out' block for switch in B:28:0x0090. Please report as an issue. */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private final int O(java.lang.Object r31, byte[] r32, int r33, int r34, com.google.android.gms.internal.measurement.zzio r35) throws java.io.IOException {
        /*
            Method dump skipped, instruction units count: 960
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.zzlm.O(java.lang.Object, byte[], int, int, com.google.android.gms.internal.measurement.zzio):int");
    }

    private final int P(Object obj, byte[] bArr, int i10, int i11, int i12, int i13, int i14, int i15, long j10, int i16, long j11, zzio zzioVar) throws IOException {
        int i17;
        int i18;
        int i19;
        int i20;
        int iJ;
        int iJ2 = i10;
        Unsafe unsafe = f23702q;
        zzkj zzkjVarK = (zzkj) unsafe.getObject(obj, j11);
        if (!zzkjVarK.a()) {
            int size = zzkjVarK.size();
            zzkjVarK = zzkjVarK.K(size == 0 ? 10 : size + size);
            unsafe.putObject(obj, j11, zzkjVarK);
        }
        switch (i16) {
            case 18:
            case 35:
                if (i14 == 2) {
                    zzjl zzjlVar = (zzjl) zzkjVarK;
                    int iJ3 = zzip.j(bArr, iJ2, zzioVar);
                    int i21 = zzioVar.f23576a + iJ3;
                    while (iJ3 < i21) {
                        zzjlVar.g(Double.longBitsToDouble(zzip.n(bArr, iJ3)));
                        iJ3 += 8;
                    }
                    if (iJ3 == i21) {
                        return iJ3;
                    }
                    throw zzkm.f();
                }
                if (i14 == 1) {
                    zzjl zzjlVar2 = (zzjl) zzkjVarK;
                    zzjlVar2.g(Double.longBitsToDouble(zzip.n(bArr, i10)));
                    while (true) {
                        i17 = iJ2 + 8;
                        if (i17 < i11) {
                            iJ2 = zzip.j(bArr, i17, zzioVar);
                            if (i12 == zzioVar.f23576a) {
                                zzjlVar2.g(Double.longBitsToDouble(zzip.n(bArr, iJ2)));
                            }
                        }
                    }
                    return i17;
                }
                return iJ2;
            case 19:
            case 36:
                if (i14 == 2) {
                    zzjv zzjvVar = (zzjv) zzkjVarK;
                    int iJ4 = zzip.j(bArr, iJ2, zzioVar);
                    int i22 = zzioVar.f23576a + iJ4;
                    while (iJ4 < i22) {
                        zzjvVar.g(Float.intBitsToFloat(zzip.b(bArr, iJ4)));
                        iJ4 += 4;
                    }
                    if (iJ4 == i22) {
                        return iJ4;
                    }
                    throw zzkm.f();
                }
                if (i14 == 5) {
                    zzjv zzjvVar2 = (zzjv) zzkjVarK;
                    zzjvVar2.g(Float.intBitsToFloat(zzip.b(bArr, i10)));
                    while (true) {
                        i18 = iJ2 + 4;
                        if (i18 < i11) {
                            iJ2 = zzip.j(bArr, i18, zzioVar);
                            if (i12 == zzioVar.f23576a) {
                                zzjvVar2.g(Float.intBitsToFloat(zzip.b(bArr, iJ2)));
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
                    zzky zzkyVar = (zzky) zzkjVarK;
                    int iJ5 = zzip.j(bArr, iJ2, zzioVar);
                    int i23 = zzioVar.f23576a + iJ5;
                    while (iJ5 < i23) {
                        iJ5 = zzip.m(bArr, iJ5, zzioVar);
                        zzkyVar.i(zzioVar.f23577b);
                    }
                    if (iJ5 == i23) {
                        return iJ5;
                    }
                    throw zzkm.f();
                }
                if (i14 == 0) {
                    zzky zzkyVar2 = (zzky) zzkjVarK;
                    int iM = zzip.m(bArr, iJ2, zzioVar);
                    zzkyVar2.i(zzioVar.f23577b);
                    while (iM < i11) {
                        int iJ6 = zzip.j(bArr, iM, zzioVar);
                        if (i12 != zzioVar.f23576a) {
                            return iM;
                        }
                        iM = zzip.m(bArr, iJ6, zzioVar);
                        zzkyVar2.i(zzioVar.f23577b);
                    }
                    return iM;
                }
                return iJ2;
            case 22:
            case 29:
            case 39:
            case 43:
                if (i14 == 2) {
                    return zzip.f(bArr, iJ2, zzkjVarK, zzioVar);
                }
                if (i14 == 0) {
                    return zzip.l(i12, bArr, i10, i11, zzkjVarK, zzioVar);
                }
                return iJ2;
            case 23:
            case 32:
            case 40:
            case 46:
                if (i14 == 2) {
                    zzky zzkyVar3 = (zzky) zzkjVarK;
                    int iJ7 = zzip.j(bArr, iJ2, zzioVar);
                    int i24 = zzioVar.f23576a + iJ7;
                    while (iJ7 < i24) {
                        zzkyVar3.i(zzip.n(bArr, iJ7));
                        iJ7 += 8;
                    }
                    if (iJ7 == i24) {
                        return iJ7;
                    }
                    throw zzkm.f();
                }
                if (i14 == 1) {
                    zzky zzkyVar4 = (zzky) zzkjVarK;
                    zzkyVar4.i(zzip.n(bArr, i10));
                    while (true) {
                        i19 = iJ2 + 8;
                        if (i19 < i11) {
                            iJ2 = zzip.j(bArr, i19, zzioVar);
                            if (i12 == zzioVar.f23576a) {
                                zzkyVar4.i(zzip.n(bArr, iJ2));
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
                    zzkd zzkdVar = (zzkd) zzkjVarK;
                    int iJ8 = zzip.j(bArr, iJ2, zzioVar);
                    int i25 = zzioVar.f23576a + iJ8;
                    while (iJ8 < i25) {
                        zzkdVar.j0(zzip.b(bArr, iJ8));
                        iJ8 += 4;
                    }
                    if (iJ8 == i25) {
                        return iJ8;
                    }
                    throw zzkm.f();
                }
                if (i14 == 5) {
                    zzkd zzkdVar2 = (zzkd) zzkjVarK;
                    zzkdVar2.j0(zzip.b(bArr, i10));
                    while (true) {
                        i20 = iJ2 + 4;
                        if (i20 < i11) {
                            iJ2 = zzip.j(bArr, i20, zzioVar);
                            if (i12 == zzioVar.f23576a) {
                                zzkdVar2.j0(zzip.b(bArr, iJ2));
                            }
                        }
                    }
                    return i20;
                }
                return iJ2;
            case 25:
            case 42:
                if (i14 == 2) {
                    zziq zziqVar = (zziq) zzkjVarK;
                    iJ = zzip.j(bArr, iJ2, zzioVar);
                    int i26 = zzioVar.f23576a + iJ;
                    while (iJ < i26) {
                        iJ = zzip.m(bArr, iJ, zzioVar);
                        zziqVar.g(zzioVar.f23577b != 0);
                    }
                    if (iJ != i26) {
                        throw zzkm.f();
                    }
                    return iJ;
                }
                if (i14 == 0) {
                    zziq zziqVar2 = (zziq) zzkjVarK;
                    int iM2 = zzip.m(bArr, iJ2, zzioVar);
                    zziqVar2.g(zzioVar.f23577b != 0);
                    while (iM2 < i11) {
                        int iJ9 = zzip.j(bArr, iM2, zzioVar);
                        if (i12 != zzioVar.f23576a) {
                            return iM2;
                        }
                        iM2 = zzip.m(bArr, iJ9, zzioVar);
                        zziqVar2.g(zzioVar.f23577b != 0);
                    }
                    return iM2;
                }
                return iJ2;
            case 26:
                if (i14 == 2) {
                    if ((j10 & 536870912) == 0) {
                        iJ2 = zzip.j(bArr, iJ2, zzioVar);
                        int i27 = zzioVar.f23576a;
                        if (i27 < 0) {
                            throw zzkm.d();
                        }
                        if (i27 == 0) {
                            zzkjVarK.add(BuildConfig.FLAVOR);
                        } else {
                            zzkjVarK.add(new String(bArr, iJ2, i27, zzkk.f23664b));
                            iJ2 += i27;
                        }
                        while (iJ2 < i11) {
                            int iJ10 = zzip.j(bArr, iJ2, zzioVar);
                            if (i12 == zzioVar.f23576a) {
                                iJ2 = zzip.j(bArr, iJ10, zzioVar);
                                int i28 = zzioVar.f23576a;
                                if (i28 < 0) {
                                    throw zzkm.d();
                                }
                                if (i28 == 0) {
                                    zzkjVarK.add(BuildConfig.FLAVOR);
                                } else {
                                    zzkjVarK.add(new String(bArr, iJ2, i28, zzkk.f23664b));
                                    iJ2 += i28;
                                }
                            }
                        }
                    } else {
                        iJ2 = zzip.j(bArr, iJ2, zzioVar);
                        int i29 = zzioVar.f23576a;
                        if (i29 < 0) {
                            throw zzkm.d();
                        }
                        if (i29 == 0) {
                            zzkjVarK.add(BuildConfig.FLAVOR);
                        } else {
                            int i30 = iJ2 + i29;
                            if (!zzna.f(bArr, iJ2, i30)) {
                                throw zzkm.c();
                            }
                            zzkjVarK.add(new String(bArr, iJ2, i29, zzkk.f23664b));
                            iJ2 = i30;
                        }
                        while (iJ2 < i11) {
                            int iJ11 = zzip.j(bArr, iJ2, zzioVar);
                            if (i12 == zzioVar.f23576a) {
                                iJ2 = zzip.j(bArr, iJ11, zzioVar);
                                int i31 = zzioVar.f23576a;
                                if (i31 < 0) {
                                    throw zzkm.d();
                                }
                                if (i31 == 0) {
                                    zzkjVarK.add(BuildConfig.FLAVOR);
                                } else {
                                    int i32 = iJ2 + i31;
                                    if (!zzna.f(bArr, iJ2, i32)) {
                                        throw zzkm.c();
                                    }
                                    zzkjVarK.add(new String(bArr, iJ2, i31, zzkk.f23664b));
                                    iJ2 = i32;
                                }
                            }
                        }
                    }
                }
                return iJ2;
            case 27:
                if (i14 == 2) {
                    return zzip.e(n(i15), i12, bArr, i10, i11, zzkjVarK, zzioVar);
                }
                return iJ2;
            case 28:
                if (i14 == 2) {
                    int iJ12 = zzip.j(bArr, iJ2, zzioVar);
                    int i33 = zzioVar.f23576a;
                    if (i33 < 0) {
                        throw zzkm.d();
                    }
                    if (i33 > bArr.length - iJ12) {
                        throw zzkm.f();
                    }
                    if (i33 == 0) {
                        zzkjVarK.add(zzjb.f23589p);
                    } else {
                        zzkjVarK.add(zzjb.q(bArr, iJ12, i33));
                        iJ12 += i33;
                    }
                    while (iJ12 < i11) {
                        int iJ13 = zzip.j(bArr, iJ12, zzioVar);
                        if (i12 != zzioVar.f23576a) {
                            return iJ12;
                        }
                        iJ12 = zzip.j(bArr, iJ13, zzioVar);
                        int i34 = zzioVar.f23576a;
                        if (i34 < 0) {
                            throw zzkm.d();
                        }
                        if (i34 > bArr.length - iJ12) {
                            throw zzkm.f();
                        }
                        if (i34 == 0) {
                            zzkjVarK.add(zzjb.f23589p);
                        } else {
                            zzkjVarK.add(zzjb.q(bArr, iJ12, i34));
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
                        iJ = zzip.l(i12, bArr, i10, i11, zzkjVarK, zzioVar);
                    }
                    return iJ2;
                }
                iJ = zzip.f(bArr, iJ2, zzkjVarK, zzioVar);
                zzkc zzkcVar = (zzkc) obj;
                zzmm zzmmVar = zzkcVar.zzc;
                if (zzmmVar == zzmm.c()) {
                    zzmmVar = null;
                }
                Object objC = zzlw.c(i13, zzkjVarK, m(i15), zzmmVar, this.f23714l);
                if (objC != null) {
                    zzkcVar.zzc = (zzmm) objC;
                    return iJ;
                }
                return iJ;
            case 33:
            case 47:
                if (i14 == 2) {
                    zzkd zzkdVar3 = (zzkd) zzkjVarK;
                    int iJ14 = zzip.j(bArr, iJ2, zzioVar);
                    int i35 = zzioVar.f23576a + iJ14;
                    while (iJ14 < i35) {
                        iJ14 = zzip.j(bArr, iJ14, zzioVar);
                        zzkdVar3.j0(zzjf.a(zzioVar.f23576a));
                    }
                    if (iJ14 == i35) {
                        return iJ14;
                    }
                    throw zzkm.f();
                }
                if (i14 == 0) {
                    zzkd zzkdVar4 = (zzkd) zzkjVarK;
                    int iJ15 = zzip.j(bArr, iJ2, zzioVar);
                    zzkdVar4.j0(zzjf.a(zzioVar.f23576a));
                    while (iJ15 < i11) {
                        int iJ16 = zzip.j(bArr, iJ15, zzioVar);
                        if (i12 != zzioVar.f23576a) {
                            return iJ15;
                        }
                        iJ15 = zzip.j(bArr, iJ16, zzioVar);
                        zzkdVar4.j0(zzjf.a(zzioVar.f23576a));
                    }
                    return iJ15;
                }
                return iJ2;
            case 34:
            case 48:
                if (i14 == 2) {
                    zzky zzkyVar5 = (zzky) zzkjVarK;
                    int iJ17 = zzip.j(bArr, iJ2, zzioVar);
                    int i36 = zzioVar.f23576a + iJ17;
                    while (iJ17 < i36) {
                        iJ17 = zzip.m(bArr, iJ17, zzioVar);
                        zzkyVar5.i(zzjf.b(zzioVar.f23577b));
                    }
                    if (iJ17 == i36) {
                        return iJ17;
                    }
                    throw zzkm.f();
                }
                if (i14 == 0) {
                    zzky zzkyVar6 = (zzky) zzkjVarK;
                    int iM3 = zzip.m(bArr, iJ2, zzioVar);
                    zzkyVar6.i(zzjf.b(zzioVar.f23577b));
                    while (iM3 < i11) {
                        int iJ18 = zzip.j(bArr, iM3, zzioVar);
                        if (i12 != zzioVar.f23576a) {
                            return iM3;
                        }
                        iM3 = zzip.m(bArr, iJ18, zzioVar);
                        zzkyVar6.i(zzjf.b(zzioVar.f23577b));
                    }
                    return iM3;
                }
                return iJ2;
            default:
                if (i14 == 3) {
                    zzlu zzluVarN = n(i15);
                    int i37 = (i12 & (-8)) | 4;
                    int iC = zzip.c(zzluVarN, bArr, i10, i11, i37, zzioVar);
                    zzkjVarK.add(zzioVar.f23578c);
                    while (iC < i11) {
                        int iJ19 = zzip.j(bArr, iC, zzioVar);
                        if (i12 != zzioVar.f23576a) {
                            return iC;
                        }
                        iC = zzip.c(zzluVarN, bArr, iJ19, i11, i37, zzioVar);
                        zzkjVarK.add(zzioVar.f23578c);
                    }
                    return iC;
                }
                return iJ2;
        }
    }

    private final int Q(int i10) {
        if (i10 < this.f23705c || i10 > this.f23706d) {
            return -1;
        }
        return T(i10, 0);
    }

    private final int R(int i10, int i11) {
        if (i10 < this.f23705c || i10 > this.f23706d) {
            return -1;
        }
        return T(i10, i11);
    }

    private final int S(int i10) {
        return this.f23703a[i10 + 2];
    }

    private final int T(int i10, int i11) {
        int length = (this.f23703a.length / 3) - 1;
        while (i11 <= length) {
            int i12 = (length + i11) >>> 1;
            int i13 = i12 * 3;
            int i14 = this.f23703a[i13];
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

    private static int j(int i10) {
        return (i10 >>> 20) & 255;
    }

    private final int k(int i10) {
        return this.f23703a[i10 + 1];
    }

    private static long l(Object obj, long j10) {
        return ((Long) zzmv.k(obj, j10)).longValue();
    }

    private final zzkg m(int i10) {
        int i11 = i10 / 3;
        return (zzkg) this.f23704b[i11 + i11 + 1];
    }

    private final zzlu n(int i10) {
        int i11 = i10 / 3;
        int i12 = i11 + i11;
        zzlu zzluVar = (zzlu) this.f23704b[i12];
        if (zzluVar != null) {
            return zzluVar;
        }
        zzlu zzluVarB = zzlr.a().b((Class) this.f23704b[i12 + 1]);
        this.f23704b[i12] = zzluVarB;
        return zzluVarB;
    }

    private final Object o(int i10) {
        int i11 = i10 / 3;
        return this.f23704b[i11 + i11];
    }

    private static Field p(Class cls, String str) {
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

    private final void q(Object obj, Object obj2, int i10) {
        long jK = k(i10) & 1048575;
        if (x(obj2, i10)) {
            Object objK = zzmv.k(obj, jK);
            Object objK2 = zzmv.k(obj2, jK);
            if (objK != null && objK2 != null) {
                zzmv.x(obj, jK, zzkk.g(objK, objK2));
                s(obj, i10);
            } else if (objK2 != null) {
                zzmv.x(obj, jK, objK2);
                s(obj, i10);
            }
        }
    }

    private final void r(Object obj, Object obj2, int i10) {
        int iK = k(i10);
        int i11 = this.f23703a[i10];
        long j10 = iK & 1048575;
        if (A(obj2, i11, i10)) {
            Object objK = A(obj, i11, i10) ? zzmv.k(obj, j10) : null;
            Object objK2 = zzmv.k(obj2, j10);
            if (objK != null && objK2 != null) {
                zzmv.x(obj, j10, zzkk.g(objK, objK2));
                t(obj, i11, i10);
            } else if (objK2 != null) {
                zzmv.x(obj, j10, objK2);
                t(obj, i11, i10);
            }
        }
    }

    private final void s(Object obj, int i10) {
        int iS = S(i10);
        long j10 = 1048575 & iS;
        if (j10 == 1048575) {
            return;
        }
        zzmv.v(obj, j10, (1 << (iS >>> 20)) | zzmv.h(obj, j10));
    }

    private final void t(Object obj, int i10, int i11) {
        zzmv.v(obj, S(i11) & 1048575, i10);
    }

    private final void u(Object obj, zznd zzndVar) throws IOException {
        int i10;
        if (this.f23708f) {
            this.f23715m.a(obj);
            throw null;
        }
        int length = this.f23703a.length;
        Unsafe unsafe = f23702q;
        int i11 = 1048575;
        int i12 = 0;
        int i13 = 0;
        int i14 = 1048575;
        while (i12 < length) {
            int iK = k(i12);
            int[] iArr = this.f23703a;
            int i15 = iArr[i12];
            int iJ = j(iK);
            if (iJ <= 17) {
                int i16 = iArr[i12 + 2];
                int i17 = i16 & i11;
                if (i17 != i14) {
                    i13 = unsafe.getInt(obj, i17);
                    i14 = i17;
                }
                i10 = 1 << (i16 >>> 20);
            } else {
                i10 = 0;
            }
            long j10 = iK & i11;
            switch (iJ) {
                case 0:
                    if ((i13 & i10) != 0) {
                        zzndVar.v(i15, zzmv.f(obj, j10));
                        continue;
                    }
                    i12 += 3;
                    i11 = 1048575;
                    break;
                case 1:
                    if ((i13 & i10) != 0) {
                        zzndVar.x(i15, zzmv.g(obj, j10));
                    } else {
                        continue;
                    }
                    i12 += 3;
                    i11 = 1048575;
                    break;
                case 2:
                    if ((i13 & i10) != 0) {
                        zzndVar.p(i15, unsafe.getLong(obj, j10));
                    } else {
                        continue;
                    }
                    i12 += 3;
                    i11 = 1048575;
                    break;
                case 3:
                    if ((i13 & i10) != 0) {
                        zzndVar.C(i15, unsafe.getLong(obj, j10));
                    } else {
                        continue;
                    }
                    i12 += 3;
                    i11 = 1048575;
                    break;
                case 4:
                    if ((i13 & i10) != 0) {
                        zzndVar.F0(i15, unsafe.getInt(obj, j10));
                    } else {
                        continue;
                    }
                    i12 += 3;
                    i11 = 1048575;
                    break;
                case 5:
                    if ((i13 & i10) != 0) {
                        zzndVar.h(i15, unsafe.getLong(obj, j10));
                    } else {
                        continue;
                    }
                    i12 += 3;
                    i11 = 1048575;
                    break;
                case 6:
                    if ((i13 & i10) != 0) {
                        zzndVar.k(i15, unsafe.getInt(obj, j10));
                    } else {
                        continue;
                    }
                    i12 += 3;
                    i11 = 1048575;
                    break;
                case 7:
                    if ((i13 & i10) != 0) {
                        zzndVar.m(i15, zzmv.B(obj, j10));
                    } else {
                        continue;
                    }
                    i12 += 3;
                    i11 = 1048575;
                    break;
                case 8:
                    if ((i13 & i10) != 0) {
                        C(i15, unsafe.getObject(obj, j10), zzndVar);
                    } else {
                        continue;
                    }
                    i12 += 3;
                    i11 = 1048575;
                    break;
                case 9:
                    if ((i13 & i10) != 0) {
                        zzndVar.j(i15, unsafe.getObject(obj, j10), n(i12));
                    } else {
                        continue;
                    }
                    i12 += 3;
                    i11 = 1048575;
                    break;
                case 10:
                    if ((i13 & i10) != 0) {
                        zzndVar.l(i15, (zzjb) unsafe.getObject(obj, j10));
                    } else {
                        continue;
                    }
                    i12 += 3;
                    i11 = 1048575;
                    break;
                case 11:
                    if ((i13 & i10) != 0) {
                        zzndVar.a(i15, unsafe.getInt(obj, j10));
                    } else {
                        continue;
                    }
                    i12 += 3;
                    i11 = 1048575;
                    break;
                case 12:
                    if ((i13 & i10) != 0) {
                        zzndVar.t(i15, unsafe.getInt(obj, j10));
                    } else {
                        continue;
                    }
                    i12 += 3;
                    i11 = 1048575;
                    break;
                case 13:
                    if ((i13 & i10) != 0) {
                        zzndVar.w(i15, unsafe.getInt(obj, j10));
                    } else {
                        continue;
                    }
                    i12 += 3;
                    i11 = 1048575;
                    break;
                case 14:
                    if ((i13 & i10) != 0) {
                        zzndVar.q(i15, unsafe.getLong(obj, j10));
                    } else {
                        continue;
                    }
                    i12 += 3;
                    i11 = 1048575;
                    break;
                case 15:
                    if ((i13 & i10) != 0) {
                        zzndVar.n(i15, unsafe.getInt(obj, j10));
                    } else {
                        continue;
                    }
                    i12 += 3;
                    i11 = 1048575;
                    break;
                case 16:
                    if ((i13 & i10) != 0) {
                        zzndVar.G(i15, unsafe.getLong(obj, j10));
                    } else {
                        continue;
                    }
                    i12 += 3;
                    i11 = 1048575;
                    break;
                case 17:
                    if ((i13 & i10) != 0) {
                        zzndVar.F(i15, unsafe.getObject(obj, j10), n(i12));
                    } else {
                        continue;
                    }
                    i12 += 3;
                    i11 = 1048575;
                    break;
                case 18:
                    zzlw.j(this.f23703a[i12], (List) unsafe.getObject(obj, j10), zzndVar, false);
                    continue;
                    i12 += 3;
                    i11 = 1048575;
                    break;
                case 19:
                    zzlw.n(this.f23703a[i12], (List) unsafe.getObject(obj, j10), zzndVar, false);
                    continue;
                    i12 += 3;
                    i11 = 1048575;
                    break;
                case 20:
                    zzlw.q(this.f23703a[i12], (List) unsafe.getObject(obj, j10), zzndVar, false);
                    continue;
                    i12 += 3;
                    i11 = 1048575;
                    break;
                case 21:
                    zzlw.y(this.f23703a[i12], (List) unsafe.getObject(obj, j10), zzndVar, false);
                    continue;
                    i12 += 3;
                    i11 = 1048575;
                    break;
                case 22:
                    zzlw.p(this.f23703a[i12], (List) unsafe.getObject(obj, j10), zzndVar, false);
                    continue;
                    i12 += 3;
                    i11 = 1048575;
                    break;
                case 23:
                    zzlw.m(this.f23703a[i12], (List) unsafe.getObject(obj, j10), zzndVar, false);
                    continue;
                    i12 += 3;
                    i11 = 1048575;
                    break;
                case 24:
                    zzlw.l(this.f23703a[i12], (List) unsafe.getObject(obj, j10), zzndVar, false);
                    continue;
                    i12 += 3;
                    i11 = 1048575;
                    break;
                case 25:
                    zzlw.h(this.f23703a[i12], (List) unsafe.getObject(obj, j10), zzndVar, false);
                    continue;
                    i12 += 3;
                    i11 = 1048575;
                    break;
                case 26:
                    zzlw.w(this.f23703a[i12], (List) unsafe.getObject(obj, j10), zzndVar);
                    break;
                case 27:
                    zzlw.r(this.f23703a[i12], (List) unsafe.getObject(obj, j10), zzndVar, n(i12));
                    break;
                case 28:
                    zzlw.i(this.f23703a[i12], (List) unsafe.getObject(obj, j10), zzndVar);
                    break;
                case 29:
                    zzlw.x(this.f23703a[i12], (List) unsafe.getObject(obj, j10), zzndVar, false);
                    break;
                case 30:
                    zzlw.k(this.f23703a[i12], (List) unsafe.getObject(obj, j10), zzndVar, false);
                    break;
                case 31:
                    zzlw.s(this.f23703a[i12], (List) unsafe.getObject(obj, j10), zzndVar, false);
                    break;
                case 32:
                    zzlw.t(this.f23703a[i12], (List) unsafe.getObject(obj, j10), zzndVar, false);
                    break;
                case 33:
                    zzlw.u(this.f23703a[i12], (List) unsafe.getObject(obj, j10), zzndVar, false);
                    break;
                case 34:
                    zzlw.v(this.f23703a[i12], (List) unsafe.getObject(obj, j10), zzndVar, false);
                    break;
                case 35:
                    zzlw.j(this.f23703a[i12], (List) unsafe.getObject(obj, j10), zzndVar, true);
                    break;
                case 36:
                    zzlw.n(this.f23703a[i12], (List) unsafe.getObject(obj, j10), zzndVar, true);
                    break;
                case 37:
                    zzlw.q(this.f23703a[i12], (List) unsafe.getObject(obj, j10), zzndVar, true);
                    break;
                case 38:
                    zzlw.y(this.f23703a[i12], (List) unsafe.getObject(obj, j10), zzndVar, true);
                    break;
                case 39:
                    zzlw.p(this.f23703a[i12], (List) unsafe.getObject(obj, j10), zzndVar, true);
                    break;
                case 40:
                    zzlw.m(this.f23703a[i12], (List) unsafe.getObject(obj, j10), zzndVar, true);
                    break;
                case 41:
                    zzlw.l(this.f23703a[i12], (List) unsafe.getObject(obj, j10), zzndVar, true);
                    break;
                case 42:
                    zzlw.h(this.f23703a[i12], (List) unsafe.getObject(obj, j10), zzndVar, true);
                    break;
                case 43:
                    zzlw.x(this.f23703a[i12], (List) unsafe.getObject(obj, j10), zzndVar, true);
                    break;
                case 44:
                    zzlw.k(this.f23703a[i12], (List) unsafe.getObject(obj, j10), zzndVar, true);
                    break;
                case 45:
                    zzlw.s(this.f23703a[i12], (List) unsafe.getObject(obj, j10), zzndVar, true);
                    break;
                case 46:
                    zzlw.t(this.f23703a[i12], (List) unsafe.getObject(obj, j10), zzndVar, true);
                    break;
                case 47:
                    zzlw.u(this.f23703a[i12], (List) unsafe.getObject(obj, j10), zzndVar, true);
                    break;
                case 48:
                    zzlw.v(this.f23703a[i12], (List) unsafe.getObject(obj, j10), zzndVar, true);
                    break;
                case 49:
                    zzlw.o(this.f23703a[i12], (List) unsafe.getObject(obj, j10), zzndVar, n(i12));
                    break;
                case 50:
                    v(zzndVar, i15, unsafe.getObject(obj, j10), i12);
                    break;
                case 51:
                    if (A(obj, i15, i12)) {
                        zzndVar.v(i15, H(obj, j10));
                    }
                    break;
                case 52:
                    if (A(obj, i15, i12)) {
                        zzndVar.x(i15, I(obj, j10));
                    }
                    break;
                case 53:
                    if (A(obj, i15, i12)) {
                        zzndVar.p(i15, l(obj, j10));
                    }
                    break;
                case 54:
                    if (A(obj, i15, i12)) {
                        zzndVar.C(i15, l(obj, j10));
                    }
                    break;
                case 55:
                    if (A(obj, i15, i12)) {
                        zzndVar.F0(i15, L(obj, j10));
                    }
                    break;
                case 56:
                    if (A(obj, i15, i12)) {
                        zzndVar.h(i15, l(obj, j10));
                    }
                    break;
                case 57:
                    if (A(obj, i15, i12)) {
                        zzndVar.k(i15, L(obj, j10));
                    }
                    break;
                case 58:
                    if (A(obj, i15, i12)) {
                        zzndVar.m(i15, B(obj, j10));
                    }
                    break;
                case 59:
                    if (A(obj, i15, i12)) {
                        C(i15, unsafe.getObject(obj, j10), zzndVar);
                    }
                    break;
                case 60:
                    if (A(obj, i15, i12)) {
                        zzndVar.j(i15, unsafe.getObject(obj, j10), n(i12));
                    }
                    break;
                case 61:
                    if (A(obj, i15, i12)) {
                        zzndVar.l(i15, (zzjb) unsafe.getObject(obj, j10));
                    }
                    break;
                case 62:
                    if (A(obj, i15, i12)) {
                        zzndVar.a(i15, L(obj, j10));
                    }
                    break;
                case 63:
                    if (A(obj, i15, i12)) {
                        zzndVar.t(i15, L(obj, j10));
                    }
                    break;
                case 64:
                    if (A(obj, i15, i12)) {
                        zzndVar.w(i15, L(obj, j10));
                    }
                    break;
                case 65:
                    if (A(obj, i15, i12)) {
                        zzndVar.q(i15, l(obj, j10));
                    }
                    break;
                case 66:
                    if (A(obj, i15, i12)) {
                        zzndVar.n(i15, L(obj, j10));
                    }
                    break;
                case 67:
                    if (A(obj, i15, i12)) {
                        zzndVar.G(i15, l(obj, j10));
                    }
                    break;
                case 68:
                    if (A(obj, i15, i12)) {
                        zzndVar.F(i15, unsafe.getObject(obj, j10), n(i12));
                    }
                    break;
            }
            i12 += 3;
            i11 = 1048575;
        }
        zzml zzmlVar = this.f23714l;
        zzmlVar.i(zzmlVar.c(obj), zzndVar);
    }

    private final void v(zznd zzndVar, int i10, Object obj, int i11) throws IOException {
        if (obj == null) {
            return;
        }
        throw null;
    }

    private final boolean w(Object obj, Object obj2, int i10) {
        return x(obj, i10) == x(obj2, i10);
    }

    private final boolean x(Object obj, int i10) {
        int iS = S(i10);
        long j10 = iS & 1048575;
        if (j10 != 1048575) {
            return (zzmv.h(obj, j10) & (1 << (iS >>> 20))) != 0;
        }
        int iK = k(i10);
        long j11 = iK & 1048575;
        switch (j(iK)) {
            case 0:
                return Double.doubleToRawLongBits(zzmv.f(obj, j11)) != 0;
            case 1:
                return Float.floatToRawIntBits(zzmv.g(obj, j11)) != 0;
            case 2:
                return zzmv.i(obj, j11) != 0;
            case 3:
                return zzmv.i(obj, j11) != 0;
            case 4:
                return zzmv.h(obj, j11) != 0;
            case 5:
                return zzmv.i(obj, j11) != 0;
            case 6:
                return zzmv.h(obj, j11) != 0;
            case 7:
                return zzmv.B(obj, j11);
            case 8:
                Object objK = zzmv.k(obj, j11);
                if (objK instanceof String) {
                    return !((String) objK).isEmpty();
                }
                if (objK instanceof zzjb) {
                    return !zzjb.f23589p.equals(objK);
                }
                throw new IllegalArgumentException();
            case 9:
                return zzmv.k(obj, j11) != null;
            case 10:
                return !zzjb.f23589p.equals(zzmv.k(obj, j11));
            case 11:
                return zzmv.h(obj, j11) != 0;
            case 12:
                return zzmv.h(obj, j11) != 0;
            case 13:
                return zzmv.h(obj, j11) != 0;
            case 14:
                return zzmv.i(obj, j11) != 0;
            case 15:
                return zzmv.h(obj, j11) != 0;
            case 16:
                return zzmv.i(obj, j11) != 0;
            case 17:
                return zzmv.k(obj, j11) != null;
            default:
                throw new IllegalArgumentException();
        }
    }

    private final boolean y(Object obj, int i10, int i11, int i12, int i13) {
        return i11 == 1048575 ? x(obj, i10) : (i12 & i13) != 0;
    }

    private static boolean z(Object obj, int i10, zzlu zzluVar) {
        return zzluVar.d(zzmv.k(obj, i10 & 1048575));
    }

    /* JADX WARN: Code restructure failed: missing block: B:154:0x0463, code lost:
    
        if (r6 == 1048575) goto L156;
     */
    /* JADX WARN: Code restructure failed: missing block: B:155:0x0465, code lost:
    
        r28.putInt(r12, r6, r5);
     */
    /* JADX WARN: Code restructure failed: missing block: B:156:0x046b, code lost:
    
        r3 = r9.f23711i;
     */
    /* JADX WARN: Code restructure failed: missing block: B:158:0x046f, code lost:
    
        if (r3 >= r9.f23712j) goto L245;
     */
    /* JADX WARN: Code restructure failed: missing block: B:159:0x0471, code lost:
    
        r4 = r9.f23710h[r3];
        r5 = r9.f23703a[r4];
        r5 = com.google.android.gms.internal.measurement.zzmv.k(r12, r9.k(r4) & 1048575);
     */
    /* JADX WARN: Code restructure failed: missing block: B:160:0x0483, code lost:
    
        if (r5 != null) goto L162;
     */
    /* JADX WARN: Code restructure failed: missing block: B:163:0x048a, code lost:
    
        if (r9.m(r4) != null) goto L244;
     */
    /* JADX WARN: Code restructure failed: missing block: B:164:0x048c, code lost:
    
        r3 = r3 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:165:0x048f, code lost:
    
        r5 = (com.google.android.gms.internal.measurement.zzld) r5;
        r0 = (com.google.android.gms.internal.measurement.zzlc) r9.o(r4);
     */
    /* JADX WARN: Code restructure failed: missing block: B:166:0x0497, code lost:
    
        throw null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:167:0x0498, code lost:
    
        if (r7 != 0) goto L173;
     */
    /* JADX WARN: Code restructure failed: missing block: B:169:0x049c, code lost:
    
        if (r0 != r33) goto L171;
     */
    /* JADX WARN: Code restructure failed: missing block: B:172:0x04a3, code lost:
    
        throw com.google.android.gms.internal.measurement.zzkm.e();
     */
    /* JADX WARN: Code restructure failed: missing block: B:174:0x04a6, code lost:
    
        if (r0 > r33) goto L177;
     */
    /* JADX WARN: Code restructure failed: missing block: B:175:0x04a8, code lost:
    
        if (r1 != r7) goto L177;
     */
    /* JADX WARN: Code restructure failed: missing block: B:176:0x04aa, code lost:
    
        return r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:178:0x04b0, code lost:
    
        throw com.google.android.gms.internal.measurement.zzkm.e();
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    final int D(java.lang.Object r30, byte[] r31, int r32, int r33, int r34, com.google.android.gms.internal.measurement.zzio r35) throws java.io.IOException {
        /*
            Method dump skipped, instruction units count: 1240
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.zzlm.D(java.lang.Object, byte[], int, int, int, com.google.android.gms.internal.measurement.zzio):int");
    }

    @Override // com.google.android.gms.internal.measurement.zzlu
    public final int a(Object obj) {
        return this.f23709g ? K(obj) : J(obj);
    }

    @Override // com.google.android.gms.internal.measurement.zzlu
    public final Object b() {
        return ((zzkc) this.f23707e).t(4, null, null);
    }

    @Override // com.google.android.gms.internal.measurement.zzlu
    public final int c(Object obj) {
        int i10;
        int iC;
        int length = this.f23703a.length;
        int i11 = 0;
        for (int i12 = 0; i12 < length; i12 += 3) {
            int iK = k(i12);
            int i13 = this.f23703a[i12];
            long j10 = 1048575 & iK;
            int iHashCode = 37;
            switch (j(iK)) {
                case 0:
                    i10 = i11 * 53;
                    iC = zzkk.c(Double.doubleToLongBits(zzmv.f(obj, j10)));
                    i11 = i10 + iC;
                    break;
                case 1:
                    i10 = i11 * 53;
                    iC = Float.floatToIntBits(zzmv.g(obj, j10));
                    i11 = i10 + iC;
                    break;
                case 2:
                    i10 = i11 * 53;
                    iC = zzkk.c(zzmv.i(obj, j10));
                    i11 = i10 + iC;
                    break;
                case 3:
                    i10 = i11 * 53;
                    iC = zzkk.c(zzmv.i(obj, j10));
                    i11 = i10 + iC;
                    break;
                case 4:
                    i10 = i11 * 53;
                    iC = zzmv.h(obj, j10);
                    i11 = i10 + iC;
                    break;
                case 5:
                    i10 = i11 * 53;
                    iC = zzkk.c(zzmv.i(obj, j10));
                    i11 = i10 + iC;
                    break;
                case 6:
                    i10 = i11 * 53;
                    iC = zzmv.h(obj, j10);
                    i11 = i10 + iC;
                    break;
                case 7:
                    i10 = i11 * 53;
                    iC = zzkk.a(zzmv.B(obj, j10));
                    i11 = i10 + iC;
                    break;
                case 8:
                    i10 = i11 * 53;
                    iC = ((String) zzmv.k(obj, j10)).hashCode();
                    i11 = i10 + iC;
                    break;
                case 9:
                    Object objK = zzmv.k(obj, j10);
                    if (objK != null) {
                        iHashCode = objK.hashCode();
                    }
                    i11 = (i11 * 53) + iHashCode;
                    break;
                case 10:
                    i10 = i11 * 53;
                    iC = zzmv.k(obj, j10).hashCode();
                    i11 = i10 + iC;
                    break;
                case 11:
                    i10 = i11 * 53;
                    iC = zzmv.h(obj, j10);
                    i11 = i10 + iC;
                    break;
                case 12:
                    i10 = i11 * 53;
                    iC = zzmv.h(obj, j10);
                    i11 = i10 + iC;
                    break;
                case 13:
                    i10 = i11 * 53;
                    iC = zzmv.h(obj, j10);
                    i11 = i10 + iC;
                    break;
                case 14:
                    i10 = i11 * 53;
                    iC = zzkk.c(zzmv.i(obj, j10));
                    i11 = i10 + iC;
                    break;
                case 15:
                    i10 = i11 * 53;
                    iC = zzmv.h(obj, j10);
                    i11 = i10 + iC;
                    break;
                case 16:
                    i10 = i11 * 53;
                    iC = zzkk.c(zzmv.i(obj, j10));
                    i11 = i10 + iC;
                    break;
                case 17:
                    Object objK2 = zzmv.k(obj, j10);
                    if (objK2 != null) {
                        iHashCode = objK2.hashCode();
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
                    iC = zzmv.k(obj, j10).hashCode();
                    i11 = i10 + iC;
                    break;
                case 50:
                    i10 = i11 * 53;
                    iC = zzmv.k(obj, j10).hashCode();
                    i11 = i10 + iC;
                    break;
                case 51:
                    if (A(obj, i13, i12)) {
                        i10 = i11 * 53;
                        iC = zzkk.c(Double.doubleToLongBits(H(obj, j10)));
                        i11 = i10 + iC;
                    }
                    break;
                case 52:
                    if (A(obj, i13, i12)) {
                        i10 = i11 * 53;
                        iC = Float.floatToIntBits(I(obj, j10));
                        i11 = i10 + iC;
                    }
                    break;
                case 53:
                    if (A(obj, i13, i12)) {
                        i10 = i11 * 53;
                        iC = zzkk.c(l(obj, j10));
                        i11 = i10 + iC;
                    }
                    break;
                case 54:
                    if (A(obj, i13, i12)) {
                        i10 = i11 * 53;
                        iC = zzkk.c(l(obj, j10));
                        i11 = i10 + iC;
                    }
                    break;
                case 55:
                    if (A(obj, i13, i12)) {
                        i10 = i11 * 53;
                        iC = L(obj, j10);
                        i11 = i10 + iC;
                    }
                    break;
                case 56:
                    if (A(obj, i13, i12)) {
                        i10 = i11 * 53;
                        iC = zzkk.c(l(obj, j10));
                        i11 = i10 + iC;
                    }
                    break;
                case 57:
                    if (A(obj, i13, i12)) {
                        i10 = i11 * 53;
                        iC = L(obj, j10);
                        i11 = i10 + iC;
                    }
                    break;
                case 58:
                    if (A(obj, i13, i12)) {
                        i10 = i11 * 53;
                        iC = zzkk.a(B(obj, j10));
                        i11 = i10 + iC;
                    }
                    break;
                case 59:
                    if (A(obj, i13, i12)) {
                        i10 = i11 * 53;
                        iC = ((String) zzmv.k(obj, j10)).hashCode();
                        i11 = i10 + iC;
                    }
                    break;
                case 60:
                    if (A(obj, i13, i12)) {
                        i10 = i11 * 53;
                        iC = zzmv.k(obj, j10).hashCode();
                        i11 = i10 + iC;
                    }
                    break;
                case 61:
                    if (A(obj, i13, i12)) {
                        i10 = i11 * 53;
                        iC = zzmv.k(obj, j10).hashCode();
                        i11 = i10 + iC;
                    }
                    break;
                case 62:
                    if (A(obj, i13, i12)) {
                        i10 = i11 * 53;
                        iC = L(obj, j10);
                        i11 = i10 + iC;
                    }
                    break;
                case 63:
                    if (A(obj, i13, i12)) {
                        i10 = i11 * 53;
                        iC = L(obj, j10);
                        i11 = i10 + iC;
                    }
                    break;
                case 64:
                    if (A(obj, i13, i12)) {
                        i10 = i11 * 53;
                        iC = L(obj, j10);
                        i11 = i10 + iC;
                    }
                    break;
                case 65:
                    if (A(obj, i13, i12)) {
                        i10 = i11 * 53;
                        iC = zzkk.c(l(obj, j10));
                        i11 = i10 + iC;
                    }
                    break;
                case 66:
                    if (A(obj, i13, i12)) {
                        i10 = i11 * 53;
                        iC = L(obj, j10);
                        i11 = i10 + iC;
                    }
                    break;
                case 67:
                    if (A(obj, i13, i12)) {
                        i10 = i11 * 53;
                        iC = zzkk.c(l(obj, j10));
                        i11 = i10 + iC;
                    }
                    break;
                case 68:
                    if (A(obj, i13, i12)) {
                        i10 = i11 * 53;
                        iC = zzmv.k(obj, j10).hashCode();
                        i11 = i10 + iC;
                    }
                    break;
            }
        }
        int iHashCode2 = (i11 * 53) + this.f23714l.c(obj).hashCode();
        if (!this.f23708f) {
            return iHashCode2;
        }
        this.f23715m.a(obj);
        throw null;
    }

    /* JADX WARN: Removed duplicated region for block: B:42:0x00a0  */
    @Override // com.google.android.gms.internal.measurement.zzlu
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean d(java.lang.Object r19) {
        /*
            Method dump skipped, instruction units count: 248
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.zzlm.d(java.lang.Object):boolean");
    }

    @Override // com.google.android.gms.internal.measurement.zzlu
    public final void e(Object obj) {
        int i10;
        int i11 = this.f23711i;
        while (true) {
            i10 = this.f23712j;
            if (i11 >= i10) {
                break;
            }
            long jK = k(this.f23710h[i11]) & 1048575;
            Object objK = zzmv.k(obj, jK);
            if (objK != null) {
                ((zzld) objK).d();
                zzmv.x(obj, jK, objK);
            }
            i11++;
        }
        int length = this.f23710h.length;
        while (i10 < length) {
            this.f23713k.a(obj, this.f23710h[i10]);
            i10++;
        }
        this.f23714l.g(obj);
        if (this.f23708f) {
            this.f23715m.b(obj);
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzlu
    public final void f(Object obj, Object obj2) {
        Objects.requireNonNull(obj2);
        for (int i10 = 0; i10 < this.f23703a.length; i10 += 3) {
            int iK = k(i10);
            long j10 = 1048575 & iK;
            int i11 = this.f23703a[i10];
            switch (j(iK)) {
                case 0:
                    if (x(obj2, i10)) {
                        zzmv.t(obj, j10, zzmv.f(obj2, j10));
                        s(obj, i10);
                    }
                    break;
                case 1:
                    if (x(obj2, i10)) {
                        zzmv.u(obj, j10, zzmv.g(obj2, j10));
                        s(obj, i10);
                    }
                    break;
                case 2:
                    if (x(obj2, i10)) {
                        zzmv.w(obj, j10, zzmv.i(obj2, j10));
                        s(obj, i10);
                    }
                    break;
                case 3:
                    if (x(obj2, i10)) {
                        zzmv.w(obj, j10, zzmv.i(obj2, j10));
                        s(obj, i10);
                    }
                    break;
                case 4:
                    if (x(obj2, i10)) {
                        zzmv.v(obj, j10, zzmv.h(obj2, j10));
                        s(obj, i10);
                    }
                    break;
                case 5:
                    if (x(obj2, i10)) {
                        zzmv.w(obj, j10, zzmv.i(obj2, j10));
                        s(obj, i10);
                    }
                    break;
                case 6:
                    if (x(obj2, i10)) {
                        zzmv.v(obj, j10, zzmv.h(obj2, j10));
                        s(obj, i10);
                    }
                    break;
                case 7:
                    if (x(obj2, i10)) {
                        zzmv.r(obj, j10, zzmv.B(obj2, j10));
                        s(obj, i10);
                    }
                    break;
                case 8:
                    if (x(obj2, i10)) {
                        zzmv.x(obj, j10, zzmv.k(obj2, j10));
                        s(obj, i10);
                    }
                    break;
                case 9:
                    q(obj, obj2, i10);
                    break;
                case 10:
                    if (x(obj2, i10)) {
                        zzmv.x(obj, j10, zzmv.k(obj2, j10));
                        s(obj, i10);
                    }
                    break;
                case 11:
                    if (x(obj2, i10)) {
                        zzmv.v(obj, j10, zzmv.h(obj2, j10));
                        s(obj, i10);
                    }
                    break;
                case 12:
                    if (x(obj2, i10)) {
                        zzmv.v(obj, j10, zzmv.h(obj2, j10));
                        s(obj, i10);
                    }
                    break;
                case 13:
                    if (x(obj2, i10)) {
                        zzmv.v(obj, j10, zzmv.h(obj2, j10));
                        s(obj, i10);
                    }
                    break;
                case 14:
                    if (x(obj2, i10)) {
                        zzmv.w(obj, j10, zzmv.i(obj2, j10));
                        s(obj, i10);
                    }
                    break;
                case 15:
                    if (x(obj2, i10)) {
                        zzmv.v(obj, j10, zzmv.h(obj2, j10));
                        s(obj, i10);
                    }
                    break;
                case 16:
                    if (x(obj2, i10)) {
                        zzmv.w(obj, j10, zzmv.i(obj2, j10));
                        s(obj, i10);
                    }
                    break;
                case 17:
                    q(obj, obj2, i10);
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
                    this.f23713k.b(obj, obj2, j10);
                    break;
                case 50:
                    zzlw.B(this.f23717o, obj, obj2, j10);
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
                    if (A(obj2, i11, i10)) {
                        zzmv.x(obj, j10, zzmv.k(obj2, j10));
                        t(obj, i11, i10);
                    }
                    break;
                case 60:
                    r(obj, obj2, i10);
                    break;
                case 61:
                case 62:
                case 63:
                case 64:
                case 65:
                case 66:
                case 67:
                    if (A(obj2, i11, i10)) {
                        zzmv.x(obj, j10, zzmv.k(obj2, j10));
                        t(obj, i11, i10);
                    }
                    break;
                case 68:
                    r(obj, obj2, i10);
                    break;
            }
        }
        zzlw.f(this.f23714l, obj, obj2);
        if (this.f23708f) {
            zzlw.e(this.f23715m, obj, obj2);
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzlu
    public final boolean g(Object obj, Object obj2) {
        boolean z10;
        int length = this.f23703a.length;
        for (int i10 = 0; i10 < length; i10 += 3) {
            int iK = k(i10);
            long j10 = iK & 1048575;
            switch (j(iK)) {
                case 0:
                    if (!w(obj, obj2, i10) || Double.doubleToLongBits(zzmv.f(obj, j10)) != Double.doubleToLongBits(zzmv.f(obj2, j10))) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 1:
                    if (!w(obj, obj2, i10) || Float.floatToIntBits(zzmv.g(obj, j10)) != Float.floatToIntBits(zzmv.g(obj2, j10))) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 2:
                    if (!w(obj, obj2, i10) || zzmv.i(obj, j10) != zzmv.i(obj2, j10)) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 3:
                    if (!w(obj, obj2, i10) || zzmv.i(obj, j10) != zzmv.i(obj2, j10)) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 4:
                    if (!w(obj, obj2, i10) || zzmv.h(obj, j10) != zzmv.h(obj2, j10)) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 5:
                    if (!w(obj, obj2, i10) || zzmv.i(obj, j10) != zzmv.i(obj2, j10)) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 6:
                    if (!w(obj, obj2, i10) || zzmv.h(obj, j10) != zzmv.h(obj2, j10)) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 7:
                    if (!w(obj, obj2, i10) || zzmv.B(obj, j10) != zzmv.B(obj2, j10)) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 8:
                    if (!w(obj, obj2, i10) || !zzlw.z(zzmv.k(obj, j10), zzmv.k(obj2, j10))) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 9:
                    if (!w(obj, obj2, i10) || !zzlw.z(zzmv.k(obj, j10), zzmv.k(obj2, j10))) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 10:
                    if (!w(obj, obj2, i10) || !zzlw.z(zzmv.k(obj, j10), zzmv.k(obj2, j10))) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 11:
                    if (!w(obj, obj2, i10) || zzmv.h(obj, j10) != zzmv.h(obj2, j10)) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 12:
                    if (!w(obj, obj2, i10) || zzmv.h(obj, j10) != zzmv.h(obj2, j10)) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 13:
                    if (!w(obj, obj2, i10) || zzmv.h(obj, j10) != zzmv.h(obj2, j10)) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 14:
                    if (!w(obj, obj2, i10) || zzmv.i(obj, j10) != zzmv.i(obj2, j10)) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 15:
                    if (!w(obj, obj2, i10) || zzmv.h(obj, j10) != zzmv.h(obj2, j10)) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 16:
                    if (!w(obj, obj2, i10) || zzmv.i(obj, j10) != zzmv.i(obj2, j10)) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 17:
                    if (!w(obj, obj2, i10) || !zzlw.z(zzmv.k(obj, j10), zzmv.k(obj2, j10))) {
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
                    z10 = zzlw.z(zzmv.k(obj, j10), zzmv.k(obj2, j10));
                    break;
                case 50:
                    z10 = zzlw.z(zzmv.k(obj, j10), zzmv.k(obj2, j10));
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
                    long jS = S(i10) & 1048575;
                    if (zzmv.h(obj, jS) != zzmv.h(obj2, jS) || !zzlw.z(zzmv.k(obj, j10), zzmv.k(obj2, j10))) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                default:
                    break;
            }
            if (!z10) {
                return false;
            }
        }
        if (!this.f23714l.c(obj).equals(this.f23714l.c(obj2))) {
            return false;
        }
        if (!this.f23708f) {
            return true;
        }
        this.f23715m.a(obj);
        this.f23715m.a(obj2);
        throw null;
    }

    @Override // com.google.android.gms.internal.measurement.zzlu
    public final void h(Object obj, byte[] bArr, int i10, int i11, zzio zzioVar) throws IOException {
        if (this.f23709g) {
            O(obj, bArr, i10, i11, zzioVar);
        } else {
            D(obj, bArr, i10, i11, 0, zzioVar);
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzlu
    public final void i(Object obj, zznd zzndVar) throws IOException {
        if (!this.f23709g) {
            u(obj, zzndVar);
            return;
        }
        if (this.f23708f) {
            this.f23715m.a(obj);
            throw null;
        }
        int length = this.f23703a.length;
        for (int i10 = 0; i10 < length; i10 += 3) {
            int iK = k(i10);
            int i11 = this.f23703a[i10];
            switch (j(iK)) {
                case 0:
                    if (x(obj, i10)) {
                        zzndVar.v(i11, zzmv.f(obj, iK & 1048575));
                    }
                    break;
                case 1:
                    if (x(obj, i10)) {
                        zzndVar.x(i11, zzmv.g(obj, iK & 1048575));
                    }
                    break;
                case 2:
                    if (x(obj, i10)) {
                        zzndVar.p(i11, zzmv.i(obj, iK & 1048575));
                    }
                    break;
                case 3:
                    if (x(obj, i10)) {
                        zzndVar.C(i11, zzmv.i(obj, iK & 1048575));
                    }
                    break;
                case 4:
                    if (x(obj, i10)) {
                        zzndVar.F0(i11, zzmv.h(obj, iK & 1048575));
                    }
                    break;
                case 5:
                    if (x(obj, i10)) {
                        zzndVar.h(i11, zzmv.i(obj, iK & 1048575));
                    }
                    break;
                case 6:
                    if (x(obj, i10)) {
                        zzndVar.k(i11, zzmv.h(obj, iK & 1048575));
                    }
                    break;
                case 7:
                    if (x(obj, i10)) {
                        zzndVar.m(i11, zzmv.B(obj, iK & 1048575));
                    }
                    break;
                case 8:
                    if (x(obj, i10)) {
                        C(i11, zzmv.k(obj, iK & 1048575), zzndVar);
                    }
                    break;
                case 9:
                    if (x(obj, i10)) {
                        zzndVar.j(i11, zzmv.k(obj, iK & 1048575), n(i10));
                    }
                    break;
                case 10:
                    if (x(obj, i10)) {
                        zzndVar.l(i11, (zzjb) zzmv.k(obj, iK & 1048575));
                    }
                    break;
                case 11:
                    if (x(obj, i10)) {
                        zzndVar.a(i11, zzmv.h(obj, iK & 1048575));
                    }
                    break;
                case 12:
                    if (x(obj, i10)) {
                        zzndVar.t(i11, zzmv.h(obj, iK & 1048575));
                    }
                    break;
                case 13:
                    if (x(obj, i10)) {
                        zzndVar.w(i11, zzmv.h(obj, iK & 1048575));
                    }
                    break;
                case 14:
                    if (x(obj, i10)) {
                        zzndVar.q(i11, zzmv.i(obj, iK & 1048575));
                    }
                    break;
                case 15:
                    if (x(obj, i10)) {
                        zzndVar.n(i11, zzmv.h(obj, iK & 1048575));
                    }
                    break;
                case 16:
                    if (x(obj, i10)) {
                        zzndVar.G(i11, zzmv.i(obj, iK & 1048575));
                    }
                    break;
                case 17:
                    if (x(obj, i10)) {
                        zzndVar.F(i11, zzmv.k(obj, iK & 1048575), n(i10));
                    }
                    break;
                case 18:
                    zzlw.j(i11, (List) zzmv.k(obj, iK & 1048575), zzndVar, false);
                    break;
                case 19:
                    zzlw.n(i11, (List) zzmv.k(obj, iK & 1048575), zzndVar, false);
                    break;
                case 20:
                    zzlw.q(i11, (List) zzmv.k(obj, iK & 1048575), zzndVar, false);
                    break;
                case 21:
                    zzlw.y(i11, (List) zzmv.k(obj, iK & 1048575), zzndVar, false);
                    break;
                case 22:
                    zzlw.p(i11, (List) zzmv.k(obj, iK & 1048575), zzndVar, false);
                    break;
                case 23:
                    zzlw.m(i11, (List) zzmv.k(obj, iK & 1048575), zzndVar, false);
                    break;
                case 24:
                    zzlw.l(i11, (List) zzmv.k(obj, iK & 1048575), zzndVar, false);
                    break;
                case 25:
                    zzlw.h(i11, (List) zzmv.k(obj, iK & 1048575), zzndVar, false);
                    break;
                case 26:
                    zzlw.w(i11, (List) zzmv.k(obj, iK & 1048575), zzndVar);
                    break;
                case 27:
                    zzlw.r(i11, (List) zzmv.k(obj, iK & 1048575), zzndVar, n(i10));
                    break;
                case 28:
                    zzlw.i(i11, (List) zzmv.k(obj, iK & 1048575), zzndVar);
                    break;
                case 29:
                    zzlw.x(i11, (List) zzmv.k(obj, iK & 1048575), zzndVar, false);
                    break;
                case 30:
                    zzlw.k(i11, (List) zzmv.k(obj, iK & 1048575), zzndVar, false);
                    break;
                case 31:
                    zzlw.s(i11, (List) zzmv.k(obj, iK & 1048575), zzndVar, false);
                    break;
                case 32:
                    zzlw.t(i11, (List) zzmv.k(obj, iK & 1048575), zzndVar, false);
                    break;
                case 33:
                    zzlw.u(i11, (List) zzmv.k(obj, iK & 1048575), zzndVar, false);
                    break;
                case 34:
                    zzlw.v(i11, (List) zzmv.k(obj, iK & 1048575), zzndVar, false);
                    break;
                case 35:
                    zzlw.j(i11, (List) zzmv.k(obj, iK & 1048575), zzndVar, true);
                    break;
                case 36:
                    zzlw.n(i11, (List) zzmv.k(obj, iK & 1048575), zzndVar, true);
                    break;
                case 37:
                    zzlw.q(i11, (List) zzmv.k(obj, iK & 1048575), zzndVar, true);
                    break;
                case 38:
                    zzlw.y(i11, (List) zzmv.k(obj, iK & 1048575), zzndVar, true);
                    break;
                case 39:
                    zzlw.p(i11, (List) zzmv.k(obj, iK & 1048575), zzndVar, true);
                    break;
                case 40:
                    zzlw.m(i11, (List) zzmv.k(obj, iK & 1048575), zzndVar, true);
                    break;
                case 41:
                    zzlw.l(i11, (List) zzmv.k(obj, iK & 1048575), zzndVar, true);
                    break;
                case 42:
                    zzlw.h(i11, (List) zzmv.k(obj, iK & 1048575), zzndVar, true);
                    break;
                case 43:
                    zzlw.x(i11, (List) zzmv.k(obj, iK & 1048575), zzndVar, true);
                    break;
                case 44:
                    zzlw.k(i11, (List) zzmv.k(obj, iK & 1048575), zzndVar, true);
                    break;
                case 45:
                    zzlw.s(i11, (List) zzmv.k(obj, iK & 1048575), zzndVar, true);
                    break;
                case 46:
                    zzlw.t(i11, (List) zzmv.k(obj, iK & 1048575), zzndVar, true);
                    break;
                case 47:
                    zzlw.u(i11, (List) zzmv.k(obj, iK & 1048575), zzndVar, true);
                    break;
                case 48:
                    zzlw.v(i11, (List) zzmv.k(obj, iK & 1048575), zzndVar, true);
                    break;
                case 49:
                    zzlw.o(i11, (List) zzmv.k(obj, iK & 1048575), zzndVar, n(i10));
                    break;
                case 50:
                    v(zzndVar, i11, zzmv.k(obj, iK & 1048575), i10);
                    break;
                case 51:
                    if (A(obj, i11, i10)) {
                        zzndVar.v(i11, H(obj, iK & 1048575));
                    }
                    break;
                case 52:
                    if (A(obj, i11, i10)) {
                        zzndVar.x(i11, I(obj, iK & 1048575));
                    }
                    break;
                case 53:
                    if (A(obj, i11, i10)) {
                        zzndVar.p(i11, l(obj, iK & 1048575));
                    }
                    break;
                case 54:
                    if (A(obj, i11, i10)) {
                        zzndVar.C(i11, l(obj, iK & 1048575));
                    }
                    break;
                case 55:
                    if (A(obj, i11, i10)) {
                        zzndVar.F0(i11, L(obj, iK & 1048575));
                    }
                    break;
                case 56:
                    if (A(obj, i11, i10)) {
                        zzndVar.h(i11, l(obj, iK & 1048575));
                    }
                    break;
                case 57:
                    if (A(obj, i11, i10)) {
                        zzndVar.k(i11, L(obj, iK & 1048575));
                    }
                    break;
                case 58:
                    if (A(obj, i11, i10)) {
                        zzndVar.m(i11, B(obj, iK & 1048575));
                    }
                    break;
                case 59:
                    if (A(obj, i11, i10)) {
                        C(i11, zzmv.k(obj, iK & 1048575), zzndVar);
                    }
                    break;
                case 60:
                    if (A(obj, i11, i10)) {
                        zzndVar.j(i11, zzmv.k(obj, iK & 1048575), n(i10));
                    }
                    break;
                case 61:
                    if (A(obj, i11, i10)) {
                        zzndVar.l(i11, (zzjb) zzmv.k(obj, iK & 1048575));
                    }
                    break;
                case 62:
                    if (A(obj, i11, i10)) {
                        zzndVar.a(i11, L(obj, iK & 1048575));
                    }
                    break;
                case 63:
                    if (A(obj, i11, i10)) {
                        zzndVar.t(i11, L(obj, iK & 1048575));
                    }
                    break;
                case 64:
                    if (A(obj, i11, i10)) {
                        zzndVar.w(i11, L(obj, iK & 1048575));
                    }
                    break;
                case 65:
                    if (A(obj, i11, i10)) {
                        zzndVar.q(i11, l(obj, iK & 1048575));
                    }
                    break;
                case 66:
                    if (A(obj, i11, i10)) {
                        zzndVar.n(i11, L(obj, iK & 1048575));
                    }
                    break;
                case 67:
                    if (A(obj, i11, i10)) {
                        zzndVar.G(i11, l(obj, iK & 1048575));
                    }
                    break;
                case 68:
                    if (A(obj, i11, i10)) {
                        zzndVar.F(i11, zzmv.k(obj, iK & 1048575), n(i10));
                    }
                    break;
            }
        }
        zzml zzmlVar = this.f23714l;
        zzmlVar.i(zzmlVar.c(obj), zzndVar);
    }
}
