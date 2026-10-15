package com.google.android.gms.internal.firebase_auth;

import java.io.IOException;
import java.lang.reflect.Field;
import java.util.Arrays;
import java.util.List;
import java.util.Objects;
import sun.misc.Unsafe;

/* JADX INFO: compiled from: com.google.firebase:firebase-auth@@19.3.1 */
/* JADX INFO: loaded from: classes2.dex */
final class zzjr<T> implements zzkd<T> {

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private static final int[] f22806r = new int[0];

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private static final Unsafe f22807s = zzlf.t();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int[] f22808a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Object[] f22809b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final int f22810c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final int f22811d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final zzjn f22812e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final boolean f22813f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final boolean f22814g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final boolean f22815h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final boolean f22816i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final int[] f22817j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final int f22818k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private final int f22819l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private final zzjw f22820m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private final zzix f22821n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final zzkz<?, ?> f22822o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final zzhu<?> f22823p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final zzjk f22824q;

    private zzjr(int[] iArr, Object[] objArr, int i10, int i11, zzjn zzjnVar, boolean z10, boolean z11, int[] iArr2, int i12, int i13, zzjw zzjwVar, zzix zzixVar, zzkz<?, ?> zzkzVar, zzhu<?> zzhuVar, zzjk zzjkVar) {
        this.f22808a = iArr;
        this.f22809b = objArr;
        this.f22810c = i10;
        this.f22811d = i11;
        this.f22814g = zzjnVar instanceof zzif;
        this.f22815h = z10;
        this.f22813f = zzhuVar != null && zzhuVar.d(zzjnVar);
        this.f22816i = false;
        this.f22817j = iArr2;
        this.f22818k = i12;
        this.f22819l = i13;
        this.f22820m = zzjwVar;
        this.f22821n = zzixVar;
        this.f22822o = zzkzVar;
        this.f22823p = zzhuVar;
        this.f22812e = zzjnVar;
        this.f22824q = zzjkVar;
    }

    private static <T> float A(T t10, long j10) {
        return ((Float) zzlf.F(t10, j10)).floatValue();
    }

    private final boolean B(T t10, T t11, int i10) {
        return q(t10, i10) == q(t11, i10);
    }

    private final int C(int i10) {
        return this.f22808a[i10 + 1];
    }

    private static <T> int D(T t10, long j10) {
        return ((Integer) zzlf.F(t10, j10)).intValue();
    }

    private final int E(int i10) {
        return this.f22808a[i10 + 2];
    }

    private static <T> long F(T t10, long j10) {
        return ((Long) zzlf.F(t10, j10)).longValue();
    }

    private static <T> boolean G(T t10, long j10) {
        return ((Boolean) zzlf.F(t10, j10)).booleanValue();
    }

    private static <UT, UB> int h(zzkz<UT, UB> zzkzVar, T t10) {
        return zzkzVar.h(zzkzVar.c(t10));
    }

    /* JADX WARN: Removed duplicated region for block: B:163:0x033a  */
    /* JADX WARN: Removed duplicated region for block: B:177:0x038c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    static <T> com.google.android.gms.internal.firebase_auth.zzjr<T> i(java.lang.Class<T> r33, com.google.android.gms.internal.firebase_auth.zzjl r34, com.google.android.gms.internal.firebase_auth.zzjw r35, com.google.android.gms.internal.firebase_auth.zzix r36, com.google.android.gms.internal.firebase_auth.zzkz<?, ?> r37, com.google.android.gms.internal.firebase_auth.zzhu<?> r38, com.google.android.gms.internal.firebase_auth.zzjk r39) {
        /*
            Method dump skipped, instruction units count: 1054
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.firebase_auth.zzjr.i(java.lang.Class, com.google.android.gms.internal.firebase_auth.zzjl, com.google.android.gms.internal.firebase_auth.zzjw, com.google.android.gms.internal.firebase_auth.zzix, com.google.android.gms.internal.firebase_auth.zzkz, com.google.android.gms.internal.firebase_auth.zzhu, com.google.android.gms.internal.firebase_auth.zzjk):com.google.android.gms.internal.firebase_auth.zzjr");
    }

    private final zzkd j(int i10) {
        int i11 = (i10 / 3) << 1;
        zzkd zzkdVar = (zzkd) this.f22809b[i11];
        if (zzkdVar != null) {
            return zzkdVar;
        }
        zzkd<T> zzkdVarB = zzjz.a().b((Class) this.f22809b[i11 + 1]);
        this.f22809b[i11] = zzkdVarB;
        return zzkdVarB;
    }

    private static Field k(Class<?> cls, String str) {
        try {
            return cls.getDeclaredField(str);
        } catch (NoSuchFieldException unused) {
            Field[] declaredFields = cls.getDeclaredFields();
            for (Field field : declaredFields) {
                if (str.equals(field.getName())) {
                    return field;
                }
            }
            String name = cls.getName();
            String string = Arrays.toString(declaredFields);
            StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 40 + name.length() + String.valueOf(string).length());
            sb.append("Field ");
            sb.append(str);
            sb.append(" for ");
            sb.append(name);
            sb.append(" not found. Known fields are ");
            sb.append(string);
            throw new RuntimeException(sb.toString());
        }
    }

    private static List<?> l(Object obj, long j10) {
        return (List) zzlf.F(obj, j10);
    }

    private static void m(int i10, Object obj, zzls zzlsVar) throws IOException {
        if (obj instanceof String) {
            zzlsVar.P(i10, (String) obj);
        } else {
            zzlsVar.G(i10, (zzgv) obj);
        }
    }

    private static <UT, UB> void n(zzkz<UT, UB> zzkzVar, T t10, zzls zzlsVar) throws IOException {
        zzkzVar.a(zzkzVar.c(t10), zzlsVar);
    }

    private final <K, V> void o(zzls zzlsVar, int i10, Object obj, int i11) throws IOException {
        if (obj != null) {
            zzlsVar.J(i10, this.f22824q.c(v(i11)), this.f22824q.d(obj));
        }
    }

    private final void p(T t10, T t11, int i10) {
        long jC = C(i10) & 1048575;
        if (q(t11, i10)) {
            Object objF = zzlf.F(t10, jC);
            Object objF2 = zzlf.F(t11, jC);
            if (objF != null && objF2 != null) {
                zzlf.j(t10, jC, zzii.e(objF, objF2));
                w(t10, i10);
            } else if (objF2 != null) {
                zzlf.j(t10, jC, objF2);
                w(t10, i10);
            }
        }
    }

    private final boolean q(T t10, int i10) {
        int iE = E(i10);
        long j10 = iE & 1048575;
        if (j10 != 1048575) {
            return (zzlf.b(t10, j10) & (1 << (iE >>> 20))) != 0;
        }
        int iC = C(i10);
        long j11 = iC & 1048575;
        switch ((iC & 267386880) >>> 20) {
            case 0:
                return zzlf.C(t10, j11) != 0.0d;
            case 1:
                return zzlf.x(t10, j11) != 0.0f;
            case 2:
                return zzlf.o(t10, j11) != 0;
            case 3:
                return zzlf.o(t10, j11) != 0;
            case 4:
                return zzlf.b(t10, j11) != 0;
            case 5:
                return zzlf.o(t10, j11) != 0;
            case 6:
                return zzlf.b(t10, j11) != 0;
            case 7:
                return zzlf.w(t10, j11);
            case 8:
                Object objF = zzlf.F(t10, j11);
                if (objF instanceof String) {
                    return !((String) objF).isEmpty();
                }
                if (objF instanceof zzgv) {
                    return !zzgv.f22647p.equals(objF);
                }
                throw new IllegalArgumentException();
            case 9:
                return zzlf.F(t10, j11) != null;
            case 10:
                return !zzgv.f22647p.equals(zzlf.F(t10, j11));
            case 11:
                return zzlf.b(t10, j11) != 0;
            case 12:
                return zzlf.b(t10, j11) != 0;
            case 13:
                return zzlf.b(t10, j11) != 0;
            case 14:
                return zzlf.o(t10, j11) != 0;
            case 15:
                return zzlf.b(t10, j11) != 0;
            case 16:
                return zzlf.o(t10, j11) != 0;
            case 17:
                return zzlf.F(t10, j11) != null;
            default:
                throw new IllegalArgumentException();
        }
    }

    private final boolean r(T t10, int i10, int i11) {
        return zzlf.b(t10, (long) (E(i11) & 1048575)) == i10;
    }

    private final boolean s(T t10, int i10, int i11, int i12, int i13) {
        return i11 == 1048575 ? q(t10, i10) : (i12 & i13) != 0;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private static boolean t(Object obj, int i10, zzkd zzkdVar) {
        return zzkdVar.b(zzlf.F(obj, i10 & 1048575));
    }

    private static <T> double u(T t10, long j10) {
        return ((Double) zzlf.F(t10, j10)).doubleValue();
    }

    private final Object v(int i10) {
        return this.f22809b[(i10 / 3) << 1];
    }

    private final void w(T t10, int i10) {
        int iE = E(i10);
        long j10 = 1048575 & iE;
        if (j10 == 1048575) {
            return;
        }
        zzlf.h(t10, j10, (1 << (iE >>> 20)) | zzlf.b(t10, j10));
    }

    private final void x(T t10, int i10, int i11) {
        zzlf.h(t10, E(i11) & 1048575, i10);
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0023  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private final void y(T r18, com.google.android.gms.internal.firebase_auth.zzls r19) throws java.io.IOException {
        /*
            Method dump skipped, instruction units count: 1342
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.firebase_auth.zzjr.y(java.lang.Object, com.google.android.gms.internal.firebase_auth.zzls):void");
    }

    private final void z(T t10, T t11, int i10) {
        int iC = C(i10);
        int i11 = this.f22808a[i10];
        long j10 = iC & 1048575;
        if (r(t11, i11, i10)) {
            Object objF = zzlf.F(t10, j10);
            Object objF2 = zzlf.F(t11, j10);
            if (objF != null && objF2 != null) {
                zzlf.j(t10, j10, zzii.e(objF, objF2));
                x(t10, i11, i10);
            } else if (objF2 != null) {
                zzlf.j(t10, j10, objF2);
                x(t10, i11, i10);
            }
        }
    }

    @Override // com.google.android.gms.internal.firebase_auth.zzkd
    public final int a(T t10) {
        int i10;
        int iB;
        int length = this.f22808a.length;
        int i11 = 0;
        for (int i12 = 0; i12 < length; i12 += 3) {
            int iC = C(i12);
            int i13 = this.f22808a[i12];
            long j10 = 1048575 & iC;
            int iHashCode = 37;
            switch ((iC & 267386880) >>> 20) {
                case 0:
                    i10 = i11 * 53;
                    iB = zzii.b(Double.doubleToLongBits(zzlf.C(t10, j10)));
                    i11 = i10 + iB;
                    break;
                case 1:
                    i10 = i11 * 53;
                    iB = Float.floatToIntBits(zzlf.x(t10, j10));
                    i11 = i10 + iB;
                    break;
                case 2:
                    i10 = i11 * 53;
                    iB = zzii.b(zzlf.o(t10, j10));
                    i11 = i10 + iB;
                    break;
                case 3:
                    i10 = i11 * 53;
                    iB = zzii.b(zzlf.o(t10, j10));
                    i11 = i10 + iB;
                    break;
                case 4:
                    i10 = i11 * 53;
                    iB = zzlf.b(t10, j10);
                    i11 = i10 + iB;
                    break;
                case 5:
                    i10 = i11 * 53;
                    iB = zzii.b(zzlf.o(t10, j10));
                    i11 = i10 + iB;
                    break;
                case 6:
                    i10 = i11 * 53;
                    iB = zzlf.b(t10, j10);
                    i11 = i10 + iB;
                    break;
                case 7:
                    i10 = i11 * 53;
                    iB = zzii.c(zzlf.w(t10, j10));
                    i11 = i10 + iB;
                    break;
                case 8:
                    i10 = i11 * 53;
                    iB = ((String) zzlf.F(t10, j10)).hashCode();
                    i11 = i10 + iB;
                    break;
                case 9:
                    Object objF = zzlf.F(t10, j10);
                    if (objF != null) {
                        iHashCode = objF.hashCode();
                    }
                    i11 = (i11 * 53) + iHashCode;
                    break;
                case 10:
                    i10 = i11 * 53;
                    iB = zzlf.F(t10, j10).hashCode();
                    i11 = i10 + iB;
                    break;
                case 11:
                    i10 = i11 * 53;
                    iB = zzlf.b(t10, j10);
                    i11 = i10 + iB;
                    break;
                case 12:
                    i10 = i11 * 53;
                    iB = zzlf.b(t10, j10);
                    i11 = i10 + iB;
                    break;
                case 13:
                    i10 = i11 * 53;
                    iB = zzlf.b(t10, j10);
                    i11 = i10 + iB;
                    break;
                case 14:
                    i10 = i11 * 53;
                    iB = zzii.b(zzlf.o(t10, j10));
                    i11 = i10 + iB;
                    break;
                case 15:
                    i10 = i11 * 53;
                    iB = zzlf.b(t10, j10);
                    i11 = i10 + iB;
                    break;
                case 16:
                    i10 = i11 * 53;
                    iB = zzii.b(zzlf.o(t10, j10));
                    i11 = i10 + iB;
                    break;
                case 17:
                    Object objF2 = zzlf.F(t10, j10);
                    if (objF2 != null) {
                        iHashCode = objF2.hashCode();
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
                    iB = zzlf.F(t10, j10).hashCode();
                    i11 = i10 + iB;
                    break;
                case 50:
                    i10 = i11 * 53;
                    iB = zzlf.F(t10, j10).hashCode();
                    i11 = i10 + iB;
                    break;
                case 51:
                    if (r(t10, i13, i12)) {
                        i10 = i11 * 53;
                        iB = zzii.b(Double.doubleToLongBits(u(t10, j10)));
                        i11 = i10 + iB;
                    }
                    break;
                case 52:
                    if (r(t10, i13, i12)) {
                        i10 = i11 * 53;
                        iB = Float.floatToIntBits(A(t10, j10));
                        i11 = i10 + iB;
                    }
                    break;
                case 53:
                    if (r(t10, i13, i12)) {
                        i10 = i11 * 53;
                        iB = zzii.b(F(t10, j10));
                        i11 = i10 + iB;
                    }
                    break;
                case 54:
                    if (r(t10, i13, i12)) {
                        i10 = i11 * 53;
                        iB = zzii.b(F(t10, j10));
                        i11 = i10 + iB;
                    }
                    break;
                case 55:
                    if (r(t10, i13, i12)) {
                        i10 = i11 * 53;
                        iB = D(t10, j10);
                        i11 = i10 + iB;
                    }
                    break;
                case 56:
                    if (r(t10, i13, i12)) {
                        i10 = i11 * 53;
                        iB = zzii.b(F(t10, j10));
                        i11 = i10 + iB;
                    }
                    break;
                case 57:
                    if (r(t10, i13, i12)) {
                        i10 = i11 * 53;
                        iB = D(t10, j10);
                        i11 = i10 + iB;
                    }
                    break;
                case 58:
                    if (r(t10, i13, i12)) {
                        i10 = i11 * 53;
                        iB = zzii.c(G(t10, j10));
                        i11 = i10 + iB;
                    }
                    break;
                case 59:
                    if (r(t10, i13, i12)) {
                        i10 = i11 * 53;
                        iB = ((String) zzlf.F(t10, j10)).hashCode();
                        i11 = i10 + iB;
                    }
                    break;
                case 60:
                    if (r(t10, i13, i12)) {
                        i10 = i11 * 53;
                        iB = zzlf.F(t10, j10).hashCode();
                        i11 = i10 + iB;
                    }
                    break;
                case 61:
                    if (r(t10, i13, i12)) {
                        i10 = i11 * 53;
                        iB = zzlf.F(t10, j10).hashCode();
                        i11 = i10 + iB;
                    }
                    break;
                case 62:
                    if (r(t10, i13, i12)) {
                        i10 = i11 * 53;
                        iB = D(t10, j10);
                        i11 = i10 + iB;
                    }
                    break;
                case 63:
                    if (r(t10, i13, i12)) {
                        i10 = i11 * 53;
                        iB = D(t10, j10);
                        i11 = i10 + iB;
                    }
                    break;
                case 64:
                    if (r(t10, i13, i12)) {
                        i10 = i11 * 53;
                        iB = D(t10, j10);
                        i11 = i10 + iB;
                    }
                    break;
                case 65:
                    if (r(t10, i13, i12)) {
                        i10 = i11 * 53;
                        iB = zzii.b(F(t10, j10));
                        i11 = i10 + iB;
                    }
                    break;
                case 66:
                    if (r(t10, i13, i12)) {
                        i10 = i11 * 53;
                        iB = D(t10, j10);
                        i11 = i10 + iB;
                    }
                    break;
                case 67:
                    if (r(t10, i13, i12)) {
                        i10 = i11 * 53;
                        iB = zzii.b(F(t10, j10));
                        i11 = i10 + iB;
                    }
                    break;
                case 68:
                    if (r(t10, i13, i12)) {
                        i10 = i11 * 53;
                        iB = zzlf.F(t10, j10).hashCode();
                        i11 = i10 + iB;
                    }
                    break;
            }
        }
        int iHashCode2 = (i11 * 53) + this.f22822o.c(t10).hashCode();
        return this.f22813f ? (iHashCode2 * 53) + this.f22823p.b(t10).hashCode() : iHashCode2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:54:0x00df  */
    /* JADX WARN: Type inference failed for: r1v21 */
    /* JADX WARN: Type inference failed for: r1v22 */
    /* JADX WARN: Type inference failed for: r1v23, types: [com.google.android.gms.internal.firebase_auth.zzkd] */
    /* JADX WARN: Type inference failed for: r1v30 */
    /* JADX WARN: Type inference failed for: r1v31 */
    /* JADX WARN: Type inference failed for: r1v8, types: [com.google.android.gms.internal.firebase_auth.zzkd] */
    @Override // com.google.android.gms.internal.firebase_auth.zzkd
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean b(T r19) {
        /*
            Method dump skipped, instruction units count: 320
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.firebase_auth.zzjr.b(java.lang.Object):boolean");
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:420:0x090a A[PHI: r5
      0x090a: PHI (r5v4 int) = 
      (r5v1 int)
      (r5v1 int)
      (r5v1 int)
      (r5v1 int)
      (r5v1 int)
      (r5v1 int)
      (r5v1 int)
      (r5v1 int)
      (r5v1 int)
      (r5v1 int)
      (r5v1 int)
      (r5v1 int)
      (r5v1 int)
      (r5v1 int)
      (r5v1 int)
      (r5v1 int)
      (r5v1 int)
      (r5v1 int)
      (r5v1 int)
      (r5v1 int)
      (r5v1 int)
      (r5v1 int)
      (r5v1 int)
      (r5v1 int)
      (r5v1 int)
      (r5v1 int)
      (r5v1 int)
      (r5v1 int)
      (r5v1 int)
      (r5v1 int)
      (r5v1 int)
      (r5v1 int)
      (r5v1 int)
      (r5v1 int)
      (r5v1 int)
      (r5v1 int)
      (r5v1 int)
      (r5v1 int)
      (r5v1 int)
      (r5v1 int)
      (r5v13 int)
      (r5v1 int)
      (r5v1 int)
      (r5v1 int)
      (r5v1 int)
      (r5v14 int)
      (r5v1 int)
     binds: [B:256:0x0547, B:460:0x09b8, B:457:0x09ae, B:451:0x0992, B:448:0x0980, B:445:0x0971, B:442:0x0964, B:439:0x0957, B:435:0x094c, B:432:0x0941, B:429:0x0934, B:426:0x0927, B:423:0x0914, B:396:0x0820, B:390:0x0803, B:384:0x07e6, B:378:0x07c9, B:372:0x07ab, B:366:0x078d, B:360:0x076f, B:354:0x0751, B:348:0x0733, B:342:0x0715, B:336:0x06f7, B:330:0x06d9, B:324:0x06bb, B:318:0x069d, B:313:0x0669, B:310:0x065c, B:307:0x064c, B:304:0x063c, B:301:0x062c, B:298:0x061e, B:295:0x0611, B:292:0x0605, B:286:0x05e7, B:283:0x05d3, B:280:0x05c1, B:277:0x05b1, B:274:0x05a1, B:437:0x0953, B:271:0x0594, B:268:0x0586, B:265:0x0576, B:262:0x0566, B:419:0x0909, B:259:0x0550] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$PrimitiveArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:593)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    @Override // com.google.android.gms.internal.firebase_auth.zzkd
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final int c(T r20) {
        /*
            Method dump skipped, instruction units count: 2974
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.firebase_auth.zzjr.c(java.lang.Object):int");
    }

    @Override // com.google.android.gms.internal.firebase_auth.zzkd
    public final void d(T t10) {
        int i10;
        int i11 = this.f22818k;
        while (true) {
            i10 = this.f22819l;
            if (i11 >= i10) {
                break;
            }
            long jC = C(this.f22817j[i11]) & 1048575;
            Object objF = zzlf.F(t10, jC);
            if (objF != null) {
                zzlf.j(t10, jC, this.f22824q.b(objF));
            }
            i11++;
        }
        int length = this.f22817j.length;
        while (i10 < length) {
            this.f22821n.d(t10, this.f22817j[i10]);
            i10++;
        }
        this.f22822o.f(t10);
        if (this.f22813f) {
            this.f22823p.f(t10);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:104:0x01c1  */
    @Override // com.google.android.gms.internal.firebase_auth.zzkd
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean e(T r10, T r11) {
        /*
            Method dump skipped, instruction units count: 640
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.firebase_auth.zzjr.e(java.lang.Object, java.lang.Object):boolean");
    }

    @Override // com.google.android.gms.internal.firebase_auth.zzkd
    public final void f(T t10, T t11) {
        Objects.requireNonNull(t11);
        for (int i10 = 0; i10 < this.f22808a.length; i10 += 3) {
            int iC = C(i10);
            long j10 = 1048575 & iC;
            int i11 = this.f22808a[i10];
            switch ((iC & 267386880) >>> 20) {
                case 0:
                    if (q(t11, i10)) {
                        zzlf.f(t10, j10, zzlf.C(t11, j10));
                        w(t10, i10);
                    }
                    break;
                case 1:
                    if (q(t11, i10)) {
                        zzlf.g(t10, j10, zzlf.x(t11, j10));
                        w(t10, i10);
                    }
                    break;
                case 2:
                    if (q(t11, i10)) {
                        zzlf.i(t10, j10, zzlf.o(t11, j10));
                        w(t10, i10);
                    }
                    break;
                case 3:
                    if (q(t11, i10)) {
                        zzlf.i(t10, j10, zzlf.o(t11, j10));
                        w(t10, i10);
                    }
                    break;
                case 4:
                    if (q(t11, i10)) {
                        zzlf.h(t10, j10, zzlf.b(t11, j10));
                        w(t10, i10);
                    }
                    break;
                case 5:
                    if (q(t11, i10)) {
                        zzlf.i(t10, j10, zzlf.o(t11, j10));
                        w(t10, i10);
                    }
                    break;
                case 6:
                    if (q(t11, i10)) {
                        zzlf.h(t10, j10, zzlf.b(t11, j10));
                        w(t10, i10);
                    }
                    break;
                case 7:
                    if (q(t11, i10)) {
                        zzlf.k(t10, j10, zzlf.w(t11, j10));
                        w(t10, i10);
                    }
                    break;
                case 8:
                    if (q(t11, i10)) {
                        zzlf.j(t10, j10, zzlf.F(t11, j10));
                        w(t10, i10);
                    }
                    break;
                case 9:
                    p(t10, t11, i10);
                    break;
                case 10:
                    if (q(t11, i10)) {
                        zzlf.j(t10, j10, zzlf.F(t11, j10));
                        w(t10, i10);
                    }
                    break;
                case 11:
                    if (q(t11, i10)) {
                        zzlf.h(t10, j10, zzlf.b(t11, j10));
                        w(t10, i10);
                    }
                    break;
                case 12:
                    if (q(t11, i10)) {
                        zzlf.h(t10, j10, zzlf.b(t11, j10));
                        w(t10, i10);
                    }
                    break;
                case 13:
                    if (q(t11, i10)) {
                        zzlf.h(t10, j10, zzlf.b(t11, j10));
                        w(t10, i10);
                    }
                    break;
                case 14:
                    if (q(t11, i10)) {
                        zzlf.i(t10, j10, zzlf.o(t11, j10));
                        w(t10, i10);
                    }
                    break;
                case 15:
                    if (q(t11, i10)) {
                        zzlf.h(t10, j10, zzlf.b(t11, j10));
                        w(t10, i10);
                    }
                    break;
                case 16:
                    if (q(t11, i10)) {
                        zzlf.i(t10, j10, zzlf.o(t11, j10));
                        w(t10, i10);
                    }
                    break;
                case 17:
                    p(t10, t11, i10);
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
                    this.f22821n.b(t10, t11, j10);
                    break;
                case 50:
                    zzkf.l(this.f22824q, t10, t11, j10);
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
                    if (r(t11, i11, i10)) {
                        zzlf.j(t10, j10, zzlf.F(t11, j10));
                        x(t10, i11, i10);
                    }
                    break;
                case 60:
                    z(t10, t11, i10);
                    break;
                case 61:
                case 62:
                case 63:
                case 64:
                case 65:
                case 66:
                case 67:
                    if (r(t11, i11, i10)) {
                        zzlf.j(t10, j10, zzlf.F(t11, j10));
                        x(t10, i11, i10);
                    }
                    break;
                case 68:
                    z(t10, t11, i10);
                    break;
            }
        }
        zzkf.m(this.f22822o, t10, t11);
        if (this.f22813f) {
            zzkf.k(this.f22823p, t10, t11);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:178:0x054a  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0032  */
    @Override // com.google.android.gms.internal.firebase_auth.zzkd
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void g(T r14, com.google.android.gms.internal.firebase_auth.zzls r15) throws java.io.IOException {
        /*
            Method dump skipped, instruction units count: 2916
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.firebase_auth.zzjr.g(java.lang.Object, com.google.android.gms.internal.firebase_auth.zzls):void");
    }
}
