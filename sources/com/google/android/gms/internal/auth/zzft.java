package com.google.android.gms.internal.auth;

import com.vungle.mediation.BuildConfig;
import java.io.IOException;
import java.lang.reflect.Field;
import java.util.Arrays;
import java.util.Objects;
import sun.misc.Unsafe;

/* JADX INFO: compiled from: com.google.android.gms:play-services-auth-base@@17.1.4 */
/* JADX INFO: loaded from: classes2.dex */
final class zzft<T> implements zzgb<T> {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private static final int[] f21516o = new int[0];

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private static final Unsafe f21517p = zzgz.g();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int[] f21518a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Object[] f21519b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final int f21520c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final int f21521d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final zzfq f21522e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final boolean f21523f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final int[] f21524g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final int f21525h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final int f21526i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final zzfe f21527j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final zzgp<?, ?> f21528k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private final zzeh<?> f21529l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private final zzfv f21530m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private final zzfl f21531n;

    /* JADX WARN: Multi-variable type inference failed */
    private zzft(int[] iArr, int[] iArr2, Object[] objArr, int i10, int i11, zzfq zzfqVar, boolean z10, boolean z11, int[] iArr3, int i12, int i13, zzfv zzfvVar, zzfe zzfeVar, zzgp<?, ?> zzgpVar, zzeh<?> zzehVar, zzfl zzflVar) {
        this.f21518a = iArr;
        this.f21519b = iArr2;
        this.f21520c = objArr;
        this.f21521d = i10;
        this.f21523f = zzfqVar;
        this.f21524g = z11;
        this.f21525h = iArr3;
        this.f21526i = i12;
        this.f21530m = i13;
        this.f21527j = zzfvVar;
        this.f21528k = zzfeVar;
        this.f21529l = zzgpVar;
        this.f21522e = i11;
        this.f21531n = zzehVar;
    }

    private final int A(int i10) {
        if (i10 < this.f21520c || i10 > this.f21521d) {
            return -1;
        }
        return D(i10, 0);
    }

    private final int B(int i10, int i11) {
        if (i10 < this.f21520c || i10 > this.f21521d) {
            return -1;
        }
        return D(i10, i11);
    }

    private final int C(int i10) {
        return this.f21518a[i10 + 2];
    }

    private final int D(int i10, int i11) {
        int length = (this.f21518a.length / 3) - 1;
        while (i11 <= length) {
            int i12 = (length + i11) >>> 1;
            int i13 = i12 * 3;
            int i14 = this.f21518a[i13];
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

    private static int E(int i10) {
        return (i10 >>> 20) & 255;
    }

    private final int F(int i10) {
        return this.f21518a[i10 + 1];
    }

    private static <T> long G(T t10, long j10) {
        return ((Long) zzgz.f(t10, j10)).longValue();
    }

    private final zzet H(int i10) {
        int i11 = i10 / 3;
        return (zzet) this.f21519b[i11 + i11 + 1];
    }

    private final zzgb I(int i10) {
        int i11 = i10 / 3;
        int i12 = i11 + i11;
        zzgb zzgbVar = (zzgb) this.f21519b[i12];
        if (zzgbVar != null) {
            return zzgbVar;
        }
        zzgb<T> zzgbVarB = zzfy.a().b((Class) this.f21519b[i12 + 1]);
        this.f21519b[i12] = zzgbVarB;
        return zzgbVarB;
    }

    private final Object J(int i10) {
        int i11 = i10 / 3;
        return this.f21519b[i11 + i11];
    }

    private static Field h(Class<?> cls, String str) {
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

    private final void i(T t10, T t11, int i10) {
        long jF = F(i10) & 1048575;
        if (n(t11, i10)) {
            Object objF = zzgz.f(t10, jF);
            Object objF2 = zzgz.f(t11, jF);
            if (objF != null && objF2 != null) {
                zzgz.p(t10, jF, zzev.g(objF, objF2));
                k(t10, i10);
            } else if (objF2 != null) {
                zzgz.p(t10, jF, objF2);
                k(t10, i10);
            }
        }
    }

    private final void j(T t10, T t11, int i10) {
        int iF = F(i10);
        int i11 = this.f21518a[i10];
        long j10 = iF & 1048575;
        if (q(t11, i11, i10)) {
            Object objF = q(t10, i11, i10) ? zzgz.f(t10, j10) : null;
            Object objF2 = zzgz.f(t11, j10);
            if (objF != null && objF2 != null) {
                zzgz.p(t10, j10, zzev.g(objF, objF2));
                l(t10, i11, i10);
            } else if (objF2 != null) {
                zzgz.p(t10, j10, objF2);
                l(t10, i11, i10);
            }
        }
    }

    private final void k(T t10, int i10) {
        int iC = C(i10);
        long j10 = 1048575 & iC;
        if (j10 == 1048575) {
            return;
        }
        zzgz.n(t10, j10, (1 << (iC >>> 20)) | zzgz.c(t10, j10));
    }

    private final void l(T t10, int i10, int i11) {
        zzgz.n(t10, C(i11) & 1048575, i10);
    }

    private final boolean m(T t10, T t11, int i10) {
        return n(t10, i10) == n(t11, i10);
    }

    private final boolean n(T t10, int i10) {
        int iC = C(i10);
        long j10 = iC & 1048575;
        if (j10 != 1048575) {
            return (zzgz.c(t10, j10) & (1 << (iC >>> 20))) != 0;
        }
        int iF = F(i10);
        long j11 = iF & 1048575;
        switch (E(iF)) {
            case 0:
                return zzgz.a(t10, j11) != 0.0d;
            case 1:
                return zzgz.b(t10, j11) != 0.0f;
            case 2:
                return zzgz.d(t10, j11) != 0;
            case 3:
                return zzgz.d(t10, j11) != 0;
            case 4:
                return zzgz.c(t10, j11) != 0;
            case 5:
                return zzgz.d(t10, j11) != 0;
            case 6:
                return zzgz.c(t10, j11) != 0;
            case 7:
                return zzgz.t(t10, j11);
            case 8:
                Object objF = zzgz.f(t10, j11);
                if (objF instanceof String) {
                    return !((String) objF).isEmpty();
                }
                if (objF instanceof zzeb) {
                    return !zzeb.f21462p.equals(objF);
                }
                throw new IllegalArgumentException();
            case 9:
                return zzgz.f(t10, j11) != null;
            case 10:
                return !zzeb.f21462p.equals(zzgz.f(t10, j11));
            case 11:
                return zzgz.c(t10, j11) != 0;
            case 12:
                return zzgz.c(t10, j11) != 0;
            case 13:
                return zzgz.c(t10, j11) != 0;
            case 14:
                return zzgz.d(t10, j11) != 0;
            case 15:
                return zzgz.c(t10, j11) != 0;
            case 16:
                return zzgz.d(t10, j11) != 0;
            case 17:
                return zzgz.f(t10, j11) != null;
            default:
                throw new IllegalArgumentException();
        }
    }

    private final boolean o(T t10, int i10, int i11, int i12, int i13) {
        return i11 == 1048575 ? n(t10, i10) : (i12 & i13) != 0;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private static boolean p(Object obj, int i10, zzgb zzgbVar) {
        return zzgbVar.c(zzgz.f(obj, i10 & 1048575));
    }

    private final boolean q(T t10, int i10, int i11) {
        return zzgz.c(t10, (long) (C(i11) & 1048575)) == i10;
    }

    static zzgq s(Object obj) {
        zzeq zzeqVar = (zzeq) obj;
        zzgq zzgqVar = zzeqVar.zzc;
        if (zzgqVar != zzgq.a()) {
            return zzgqVar;
        }
        zzgq zzgqVarC = zzgq.c();
        zzeqVar.zzc = zzgqVarC;
        return zzgqVarC;
    }

    static <T> zzft<T> t(Class<T> cls, zzfn zzfnVar, zzfv zzfvVar, zzfe zzfeVar, zzgp<?, ?> zzgpVar, zzeh<?> zzehVar, zzfl zzflVar) {
        if (zzfnVar instanceof zzga) {
            return u((zzga) zzfnVar, zzfvVar, zzfeVar, zzgpVar, zzehVar, zzflVar);
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
    static <T> com.google.android.gms.internal.auth.zzft<T> u(com.google.android.gms.internal.auth.zzga r34, com.google.android.gms.internal.auth.zzfv r35, com.google.android.gms.internal.auth.zzfe r36, com.google.android.gms.internal.auth.zzgp<?, ?> r37, com.google.android.gms.internal.auth.zzeh<?> r38, com.google.android.gms.internal.auth.zzfl r39) {
        /*
            Method dump skipped, instruction units count: 1016
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.auth.zzft.u(com.google.android.gms.internal.auth.zzga, com.google.android.gms.internal.auth.zzfv, com.google.android.gms.internal.auth.zzfe, com.google.android.gms.internal.auth.zzgp, com.google.android.gms.internal.auth.zzeh, com.google.android.gms.internal.auth.zzfl):com.google.android.gms.internal.auth.zzft");
    }

    private static <T> int v(T t10, long j10) {
        return ((Integer) zzgz.f(t10, j10)).intValue();
    }

    private final <K, V> int w(T t10, byte[] bArr, int i10, int i11, int i12, long j10, zzdp zzdpVar) throws IOException {
        Unsafe unsafe = f21517p;
        Object objJ = J(i12);
        Object object = unsafe.getObject(t10, j10);
        if (!((zzfk) object).h()) {
            zzfk<K, V> zzfkVarB = zzfk.a().b();
            zzfl.a(zzfkVarB, object);
            unsafe.putObject(t10, j10, zzfkVarB);
        }
        throw null;
    }

    private final int x(T t10, byte[] bArr, int i10, int i11, int i12, int i13, int i14, int i15, int i16, long j10, int i17, zzdp zzdpVar) throws IOException {
        Unsafe unsafe = f21517p;
        long j11 = this.f21518a[i17 + 2] & 1048575;
        switch (i16) {
            case 51:
                if (i14 != 1) {
                    return i10;
                }
                unsafe.putObject(t10, j10, Double.valueOf(Double.longBitsToDouble(zzdq.n(bArr, i10))));
                unsafe.putInt(t10, j11, i13);
                return i10 + 8;
            case 52:
                if (i14 != 5) {
                    return i10;
                }
                unsafe.putObject(t10, j10, Float.valueOf(Float.intBitsToFloat(zzdq.b(bArr, i10))));
                unsafe.putInt(t10, j11, i13);
                return i10 + 4;
            case 53:
            case 54:
                if (i14 != 0) {
                    return i10;
                }
                int iM = zzdq.m(bArr, i10, zzdpVar);
                unsafe.putObject(t10, j10, Long.valueOf(zzdpVar.f21451b));
                unsafe.putInt(t10, j11, i13);
                return iM;
            case 55:
            case 62:
                if (i14 != 0) {
                    return i10;
                }
                int iJ = zzdq.j(bArr, i10, zzdpVar);
                unsafe.putObject(t10, j10, Integer.valueOf(zzdpVar.f21450a));
                unsafe.putInt(t10, j11, i13);
                return iJ;
            case 56:
            case 65:
                if (i14 != 1) {
                    return i10;
                }
                unsafe.putObject(t10, j10, Long.valueOf(zzdq.n(bArr, i10)));
                unsafe.putInt(t10, j11, i13);
                return i10 + 8;
            case 57:
            case 64:
                if (i14 != 5) {
                    return i10;
                }
                unsafe.putObject(t10, j10, Integer.valueOf(zzdq.b(bArr, i10)));
                unsafe.putInt(t10, j11, i13);
                return i10 + 4;
            case 58:
                if (i14 != 0) {
                    return i10;
                }
                int iM2 = zzdq.m(bArr, i10, zzdpVar);
                unsafe.putObject(t10, j10, Boolean.valueOf(zzdpVar.f21451b != 0));
                unsafe.putInt(t10, j11, i13);
                return iM2;
            case 59:
                if (i14 != 2) {
                    return i10;
                }
                int iJ2 = zzdq.j(bArr, i10, zzdpVar);
                int i18 = zzdpVar.f21450a;
                if (i18 == 0) {
                    unsafe.putObject(t10, j10, BuildConfig.FLAVOR);
                } else {
                    if ((i15 & 536870912) != 0 && !zzhd.d(bArr, iJ2, iJ2 + i18)) {
                        throw zzew.b();
                    }
                    unsafe.putObject(t10, j10, new String(bArr, iJ2, i18, zzev.f21493a));
                    iJ2 += i18;
                }
                unsafe.putInt(t10, j11, i13);
                return iJ2;
            case 60:
                if (i14 != 2) {
                    return i10;
                }
                int iD = zzdq.d(I(i17), bArr, i10, i11, zzdpVar);
                Object object = unsafe.getInt(t10, j11) == i13 ? unsafe.getObject(t10, j10) : null;
                if (object == null) {
                    unsafe.putObject(t10, j10, zzdpVar.f21452c);
                } else {
                    unsafe.putObject(t10, j10, zzev.g(object, zzdpVar.f21452c));
                }
                unsafe.putInt(t10, j11, i13);
                return iD;
            case 61:
                if (i14 != 2) {
                    return i10;
                }
                int iA = zzdq.a(bArr, i10, zzdpVar);
                unsafe.putObject(t10, j10, zzdpVar.f21452c);
                unsafe.putInt(t10, j11, i13);
                return iA;
            case 63:
                if (i14 != 0) {
                    return i10;
                }
                int iJ3 = zzdq.j(bArr, i10, zzdpVar);
                int i19 = zzdpVar.f21450a;
                zzet zzetVarH = H(i17);
                if (zzetVarH == null || zzetVarH.zza()) {
                    unsafe.putObject(t10, j10, Integer.valueOf(i19));
                    unsafe.putInt(t10, j11, i13);
                } else {
                    s(t10).f(i12, Long.valueOf(i19));
                }
                return iJ3;
            case 66:
                if (i14 != 0) {
                    return i10;
                }
                int iJ4 = zzdq.j(bArr, i10, zzdpVar);
                unsafe.putObject(t10, j10, Integer.valueOf(zzee.a(zzdpVar.f21450a)));
                unsafe.putInt(t10, j11, i13);
                return iJ4;
            case 67:
                if (i14 != 0) {
                    return i10;
                }
                int iM3 = zzdq.m(bArr, i10, zzdpVar);
                unsafe.putObject(t10, j10, Long.valueOf(zzee.b(zzdpVar.f21451b)));
                unsafe.putInt(t10, j11, i13);
                return iM3;
            case 68:
                if (i14 != 3) {
                    return i10;
                }
                int iC = zzdq.c(I(i17), bArr, i10, i11, (i12 & (-8)) | 4, zzdpVar);
                Object object2 = unsafe.getInt(t10, j11) == i13 ? unsafe.getObject(t10, j10) : null;
                if (object2 == null) {
                    unsafe.putObject(t10, j10, zzdpVar.f21452c);
                } else {
                    unsafe.putObject(t10, j10, zzev.g(object2, zzdpVar.f21452c));
                }
                unsafe.putInt(t10, j11, i13);
                return iC;
            default:
                return i10;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:104:0x02a8, code lost:
    
        if (r0 != r15) goto L105;
     */
    /* JADX WARN: Code restructure failed: missing block: B:105:0x02aa, code lost:
    
        r15 = r30;
        r14 = r31;
        r12 = r32;
        r13 = r34;
        r11 = r35;
        r2 = r19;
        r1 = r20;
        r6 = r24;
        r7 = r25;
     */
    /* JADX WARN: Code restructure failed: missing block: B:106:0x02be, code lost:
    
        r2 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:112:0x02f1, code lost:
    
        if (r0 != r15) goto L105;
     */
    /* JADX WARN: Code restructure failed: missing block: B:117:0x0314, code lost:
    
        if (r0 != r15) goto L105;
     */
    /* JADX WARN: Failed to find 'out' block for switch in B:28:0x0097. Please report as an issue. */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private final int y(T r31, byte[] r32, int r33, int r34, com.google.android.gms.internal.auth.zzdp r35) throws java.io.IOException {
        /*
            Method dump skipped, instruction units count: 898
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.auth.zzft.y(java.lang.Object, byte[], int, int, com.google.android.gms.internal.auth.zzdp):int");
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final int z(T t10, byte[] bArr, int i10, int i11, int i12, int i13, int i14, int i15, long j10, int i16, long j11, zzdp zzdpVar) throws IOException {
        int i17;
        int i18;
        int i19;
        int i20;
        int iJ;
        int iJ2 = i10;
        Unsafe unsafe = f21517p;
        zzeu zzeuVarK = (zzeu) unsafe.getObject(t10, j11);
        if (!zzeuVarK.a()) {
            int size = zzeuVarK.size();
            zzeuVarK = zzeuVarK.K(size == 0 ? 10 : size + size);
            unsafe.putObject(t10, j11, zzeuVarK);
        }
        switch (i16) {
            case 18:
            case 35:
                if (i14 == 2) {
                    zzef zzefVar = (zzef) zzeuVarK;
                    int iJ3 = zzdq.j(bArr, iJ2, zzdpVar);
                    int i21 = zzdpVar.f21450a + iJ3;
                    while (iJ3 < i21) {
                        zzefVar.g(Double.longBitsToDouble(zzdq.n(bArr, iJ3)));
                        iJ3 += 8;
                    }
                    if (iJ3 == i21) {
                        return iJ3;
                    }
                    throw zzew.f();
                }
                if (i14 == 1) {
                    zzef zzefVar2 = (zzef) zzeuVarK;
                    zzefVar2.g(Double.longBitsToDouble(zzdq.n(bArr, i10)));
                    while (true) {
                        i17 = iJ2 + 8;
                        if (i17 < i11) {
                            iJ2 = zzdq.j(bArr, i17, zzdpVar);
                            if (i12 == zzdpVar.f21450a) {
                                zzefVar2.g(Double.longBitsToDouble(zzdq.n(bArr, iJ2)));
                            }
                        }
                    }
                    return i17;
                }
                return iJ2;
            case 19:
            case 36:
                if (i14 == 2) {
                    zzem zzemVar = (zzem) zzeuVarK;
                    int iJ4 = zzdq.j(bArr, iJ2, zzdpVar);
                    int i22 = zzdpVar.f21450a + iJ4;
                    while (iJ4 < i22) {
                        zzemVar.g(Float.intBitsToFloat(zzdq.b(bArr, iJ4)));
                        iJ4 += 4;
                    }
                    if (iJ4 == i22) {
                        return iJ4;
                    }
                    throw zzew.f();
                }
                if (i14 == 5) {
                    zzem zzemVar2 = (zzem) zzeuVarK;
                    zzemVar2.g(Float.intBitsToFloat(zzdq.b(bArr, i10)));
                    while (true) {
                        i18 = iJ2 + 4;
                        if (i18 < i11) {
                            iJ2 = zzdq.j(bArr, i18, zzdpVar);
                            if (i12 == zzdpVar.f21450a) {
                                zzemVar2.g(Float.intBitsToFloat(zzdq.b(bArr, iJ2)));
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
                    zzff zzffVar = (zzff) zzeuVarK;
                    int iJ5 = zzdq.j(bArr, iJ2, zzdpVar);
                    int i23 = zzdpVar.f21450a + iJ5;
                    while (iJ5 < i23) {
                        iJ5 = zzdq.m(bArr, iJ5, zzdpVar);
                        zzffVar.g(zzdpVar.f21451b);
                    }
                    if (iJ5 == i23) {
                        return iJ5;
                    }
                    throw zzew.f();
                }
                if (i14 == 0) {
                    zzff zzffVar2 = (zzff) zzeuVarK;
                    int iM = zzdq.m(bArr, iJ2, zzdpVar);
                    zzffVar2.g(zzdpVar.f21451b);
                    while (iM < i11) {
                        int iJ6 = zzdq.j(bArr, iM, zzdpVar);
                        if (i12 != zzdpVar.f21450a) {
                            return iM;
                        }
                        iM = zzdq.m(bArr, iJ6, zzdpVar);
                        zzffVar2.g(zzdpVar.f21451b);
                    }
                    return iM;
                }
                return iJ2;
            case 22:
            case 29:
            case 39:
            case 43:
                if (i14 == 2) {
                    return zzdq.f(bArr, iJ2, zzeuVarK, zzdpVar);
                }
                if (i14 == 0) {
                    return zzdq.l(i12, bArr, i10, i11, zzeuVarK, zzdpVar);
                }
                return iJ2;
            case 23:
            case 32:
            case 40:
            case 46:
                if (i14 == 2) {
                    zzff zzffVar3 = (zzff) zzeuVarK;
                    int iJ7 = zzdq.j(bArr, iJ2, zzdpVar);
                    int i24 = zzdpVar.f21450a + iJ7;
                    while (iJ7 < i24) {
                        zzffVar3.g(zzdq.n(bArr, iJ7));
                        iJ7 += 8;
                    }
                    if (iJ7 == i24) {
                        return iJ7;
                    }
                    throw zzew.f();
                }
                if (i14 == 1) {
                    zzff zzffVar4 = (zzff) zzeuVarK;
                    zzffVar4.g(zzdq.n(bArr, i10));
                    while (true) {
                        i19 = iJ2 + 8;
                        if (i19 < i11) {
                            iJ2 = zzdq.j(bArr, i19, zzdpVar);
                            if (i12 == zzdpVar.f21450a) {
                                zzffVar4.g(zzdq.n(bArr, iJ2));
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
                    zzer zzerVar = (zzer) zzeuVarK;
                    int iJ8 = zzdq.j(bArr, iJ2, zzdpVar);
                    int i25 = zzdpVar.f21450a + iJ8;
                    while (iJ8 < i25) {
                        zzerVar.g(zzdq.b(bArr, iJ8));
                        iJ8 += 4;
                    }
                    if (iJ8 == i25) {
                        return iJ8;
                    }
                    throw zzew.f();
                }
                if (i14 == 5) {
                    zzer zzerVar2 = (zzer) zzeuVarK;
                    zzerVar2.g(zzdq.b(bArr, i10));
                    while (true) {
                        i20 = iJ2 + 4;
                        if (i20 < i11) {
                            iJ2 = zzdq.j(bArr, i20, zzdpVar);
                            if (i12 == zzdpVar.f21450a) {
                                zzerVar2.g(zzdq.b(bArr, iJ2));
                            }
                        }
                    }
                    return i20;
                }
                return iJ2;
            case 25:
            case 42:
                if (i14 == 2) {
                    zzdr zzdrVar = (zzdr) zzeuVarK;
                    iJ = zzdq.j(bArr, iJ2, zzdpVar);
                    int i26 = zzdpVar.f21450a + iJ;
                    while (iJ < i26) {
                        iJ = zzdq.m(bArr, iJ, zzdpVar);
                        zzdrVar.g(zzdpVar.f21451b != 0);
                    }
                    if (iJ != i26) {
                        throw zzew.f();
                    }
                    return iJ;
                }
                if (i14 == 0) {
                    zzdr zzdrVar2 = (zzdr) zzeuVarK;
                    int iM2 = zzdq.m(bArr, iJ2, zzdpVar);
                    zzdrVar2.g(zzdpVar.f21451b != 0);
                    while (iM2 < i11) {
                        int iJ9 = zzdq.j(bArr, iM2, zzdpVar);
                        if (i12 != zzdpVar.f21450a) {
                            return iM2;
                        }
                        iM2 = zzdq.m(bArr, iJ9, zzdpVar);
                        zzdrVar2.g(zzdpVar.f21451b != 0);
                    }
                    return iM2;
                }
                return iJ2;
            case 26:
                if (i14 == 2) {
                    if ((j10 & 536870912) == 0) {
                        iJ2 = zzdq.j(bArr, iJ2, zzdpVar);
                        int i27 = zzdpVar.f21450a;
                        if (i27 < 0) {
                            throw zzew.c();
                        }
                        if (i27 == 0) {
                            zzeuVarK.add(BuildConfig.FLAVOR);
                        } else {
                            zzeuVarK.add(new String(bArr, iJ2, i27, zzev.f21493a));
                            iJ2 += i27;
                        }
                        while (iJ2 < i11) {
                            int iJ10 = zzdq.j(bArr, iJ2, zzdpVar);
                            if (i12 == zzdpVar.f21450a) {
                                iJ2 = zzdq.j(bArr, iJ10, zzdpVar);
                                int i28 = zzdpVar.f21450a;
                                if (i28 < 0) {
                                    throw zzew.c();
                                }
                                if (i28 == 0) {
                                    zzeuVarK.add(BuildConfig.FLAVOR);
                                } else {
                                    zzeuVarK.add(new String(bArr, iJ2, i28, zzev.f21493a));
                                    iJ2 += i28;
                                }
                            }
                        }
                    } else {
                        iJ2 = zzdq.j(bArr, iJ2, zzdpVar);
                        int i29 = zzdpVar.f21450a;
                        if (i29 < 0) {
                            throw zzew.c();
                        }
                        if (i29 == 0) {
                            zzeuVarK.add(BuildConfig.FLAVOR);
                        } else {
                            int i30 = iJ2 + i29;
                            if (!zzhd.d(bArr, iJ2, i30)) {
                                throw zzew.b();
                            }
                            zzeuVarK.add(new String(bArr, iJ2, i29, zzev.f21493a));
                            iJ2 = i30;
                        }
                        while (iJ2 < i11) {
                            int iJ11 = zzdq.j(bArr, iJ2, zzdpVar);
                            if (i12 == zzdpVar.f21450a) {
                                iJ2 = zzdq.j(bArr, iJ11, zzdpVar);
                                int i31 = zzdpVar.f21450a;
                                if (i31 < 0) {
                                    throw zzew.c();
                                }
                                if (i31 == 0) {
                                    zzeuVarK.add(BuildConfig.FLAVOR);
                                } else {
                                    int i32 = iJ2 + i31;
                                    if (!zzhd.d(bArr, iJ2, i32)) {
                                        throw zzew.b();
                                    }
                                    zzeuVarK.add(new String(bArr, iJ2, i31, zzev.f21493a));
                                    iJ2 = i32;
                                }
                            }
                        }
                    }
                }
                return iJ2;
            case 27:
                if (i14 == 2) {
                    return zzdq.e(I(i15), i12, bArr, i10, i11, zzeuVarK, zzdpVar);
                }
                return iJ2;
            case 28:
                if (i14 == 2) {
                    int iJ12 = zzdq.j(bArr, iJ2, zzdpVar);
                    int i33 = zzdpVar.f21450a;
                    if (i33 < 0) {
                        throw zzew.c();
                    }
                    if (i33 > bArr.length - iJ12) {
                        throw zzew.f();
                    }
                    if (i33 == 0) {
                        zzeuVarK.add(zzeb.f21462p);
                    } else {
                        zzeuVarK.add(zzeb.p(bArr, iJ12, i33));
                        iJ12 += i33;
                    }
                    while (iJ12 < i11) {
                        int iJ13 = zzdq.j(bArr, iJ12, zzdpVar);
                        if (i12 != zzdpVar.f21450a) {
                            return iJ12;
                        }
                        iJ12 = zzdq.j(bArr, iJ13, zzdpVar);
                        int i34 = zzdpVar.f21450a;
                        if (i34 < 0) {
                            throw zzew.c();
                        }
                        if (i34 > bArr.length - iJ12) {
                            throw zzew.f();
                        }
                        if (i34 == 0) {
                            zzeuVarK.add(zzeb.f21462p);
                        } else {
                            zzeuVarK.add(zzeb.p(bArr, iJ12, i34));
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
                        iJ = zzdq.l(i12, bArr, i10, i11, zzeuVarK, zzdpVar);
                    }
                    return iJ2;
                }
                iJ = zzdq.f(bArr, iJ2, zzeuVarK, zzdpVar);
                zzeq zzeqVar = (zzeq) t10;
                zzgq zzgqVar = zzeqVar.zzc;
                if (zzgqVar == zzgq.a()) {
                    zzgqVar = null;
                }
                Object objD = zzgd.d(i13, zzeuVarK, H(i15), zzgqVar, this.f21528k);
                if (objD != null) {
                    zzeqVar.zzc = (zzgq) objD;
                    return iJ;
                }
                return iJ;
            case 33:
            case 47:
                if (i14 == 2) {
                    zzer zzerVar3 = (zzer) zzeuVarK;
                    int iJ14 = zzdq.j(bArr, iJ2, zzdpVar);
                    int i35 = zzdpVar.f21450a + iJ14;
                    while (iJ14 < i35) {
                        iJ14 = zzdq.j(bArr, iJ14, zzdpVar);
                        zzerVar3.g(zzee.a(zzdpVar.f21450a));
                    }
                    if (iJ14 == i35) {
                        return iJ14;
                    }
                    throw zzew.f();
                }
                if (i14 == 0) {
                    zzer zzerVar4 = (zzer) zzeuVarK;
                    int iJ15 = zzdq.j(bArr, iJ2, zzdpVar);
                    zzerVar4.g(zzee.a(zzdpVar.f21450a));
                    while (iJ15 < i11) {
                        int iJ16 = zzdq.j(bArr, iJ15, zzdpVar);
                        if (i12 != zzdpVar.f21450a) {
                            return iJ15;
                        }
                        iJ15 = zzdq.j(bArr, iJ16, zzdpVar);
                        zzerVar4.g(zzee.a(zzdpVar.f21450a));
                    }
                    return iJ15;
                }
                return iJ2;
            case 34:
            case 48:
                if (i14 == 2) {
                    zzff zzffVar5 = (zzff) zzeuVarK;
                    int iJ17 = zzdq.j(bArr, iJ2, zzdpVar);
                    int i36 = zzdpVar.f21450a + iJ17;
                    while (iJ17 < i36) {
                        iJ17 = zzdq.m(bArr, iJ17, zzdpVar);
                        zzffVar5.g(zzee.b(zzdpVar.f21451b));
                    }
                    if (iJ17 == i36) {
                        return iJ17;
                    }
                    throw zzew.f();
                }
                if (i14 == 0) {
                    zzff zzffVar6 = (zzff) zzeuVarK;
                    int iM3 = zzdq.m(bArr, iJ2, zzdpVar);
                    zzffVar6.g(zzee.b(zzdpVar.f21451b));
                    while (iM3 < i11) {
                        int iJ18 = zzdq.j(bArr, iM3, zzdpVar);
                        if (i12 != zzdpVar.f21450a) {
                            return iM3;
                        }
                        iM3 = zzdq.m(bArr, iJ18, zzdpVar);
                        zzffVar6.g(zzee.b(zzdpVar.f21451b));
                    }
                    return iM3;
                }
                return iJ2;
            default:
                if (i14 == 3) {
                    zzgb zzgbVarI = I(i15);
                    int i37 = (i12 & (-8)) | 4;
                    int iC = zzdq.c(zzgbVarI, bArr, i10, i11, i37, zzdpVar);
                    zzeuVarK.add(zzdpVar.f21452c);
                    while (iC < i11) {
                        int iJ19 = zzdq.j(bArr, iC, zzdpVar);
                        if (i12 != zzdpVar.f21450a) {
                            return iC;
                        }
                        iC = zzdq.c(zzgbVarI, bArr, iJ19, i11, i37, zzdpVar);
                        zzeuVarK.add(zzdpVar.f21452c);
                    }
                    return iC;
                }
                return iJ2;
        }
    }

    @Override // com.google.android.gms.internal.auth.zzgb
    public final int a(T t10) {
        int i10;
        int iC;
        int length = this.f21518a.length;
        int i11 = 0;
        for (int i12 = 0; i12 < length; i12 += 3) {
            int iF = F(i12);
            int i13 = this.f21518a[i12];
            long j10 = 1048575 & iF;
            int iHashCode = 37;
            switch (E(iF)) {
                case 0:
                    i10 = i11 * 53;
                    iC = zzev.c(Double.doubleToLongBits(zzgz.a(t10, j10)));
                    i11 = i10 + iC;
                    break;
                case 1:
                    i10 = i11 * 53;
                    iC = Float.floatToIntBits(zzgz.b(t10, j10));
                    i11 = i10 + iC;
                    break;
                case 2:
                    i10 = i11 * 53;
                    iC = zzev.c(zzgz.d(t10, j10));
                    i11 = i10 + iC;
                    break;
                case 3:
                    i10 = i11 * 53;
                    iC = zzev.c(zzgz.d(t10, j10));
                    i11 = i10 + iC;
                    break;
                case 4:
                    i10 = i11 * 53;
                    iC = zzgz.c(t10, j10);
                    i11 = i10 + iC;
                    break;
                case 5:
                    i10 = i11 * 53;
                    iC = zzev.c(zzgz.d(t10, j10));
                    i11 = i10 + iC;
                    break;
                case 6:
                    i10 = i11 * 53;
                    iC = zzgz.c(t10, j10);
                    i11 = i10 + iC;
                    break;
                case 7:
                    i10 = i11 * 53;
                    iC = zzev.a(zzgz.t(t10, j10));
                    i11 = i10 + iC;
                    break;
                case 8:
                    i10 = i11 * 53;
                    iC = ((String) zzgz.f(t10, j10)).hashCode();
                    i11 = i10 + iC;
                    break;
                case 9:
                    Object objF = zzgz.f(t10, j10);
                    if (objF != null) {
                        iHashCode = objF.hashCode();
                    }
                    i11 = (i11 * 53) + iHashCode;
                    break;
                case 10:
                    i10 = i11 * 53;
                    iC = zzgz.f(t10, j10).hashCode();
                    i11 = i10 + iC;
                    break;
                case 11:
                    i10 = i11 * 53;
                    iC = zzgz.c(t10, j10);
                    i11 = i10 + iC;
                    break;
                case 12:
                    i10 = i11 * 53;
                    iC = zzgz.c(t10, j10);
                    i11 = i10 + iC;
                    break;
                case 13:
                    i10 = i11 * 53;
                    iC = zzgz.c(t10, j10);
                    i11 = i10 + iC;
                    break;
                case 14:
                    i10 = i11 * 53;
                    iC = zzev.c(zzgz.d(t10, j10));
                    i11 = i10 + iC;
                    break;
                case 15:
                    i10 = i11 * 53;
                    iC = zzgz.c(t10, j10);
                    i11 = i10 + iC;
                    break;
                case 16:
                    i10 = i11 * 53;
                    iC = zzev.c(zzgz.d(t10, j10));
                    i11 = i10 + iC;
                    break;
                case 17:
                    Object objF2 = zzgz.f(t10, j10);
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
                    iC = zzgz.f(t10, j10).hashCode();
                    i11 = i10 + iC;
                    break;
                case 50:
                    i10 = i11 * 53;
                    iC = zzgz.f(t10, j10).hashCode();
                    i11 = i10 + iC;
                    break;
                case 51:
                    if (q(t10, i13, i12)) {
                        i10 = i11 * 53;
                        iC = zzev.c(Double.doubleToLongBits(((Double) zzgz.f(t10, j10)).doubleValue()));
                        i11 = i10 + iC;
                    }
                    break;
                case 52:
                    if (q(t10, i13, i12)) {
                        i10 = i11 * 53;
                        iC = Float.floatToIntBits(((Float) zzgz.f(t10, j10)).floatValue());
                        i11 = i10 + iC;
                    }
                    break;
                case 53:
                    if (q(t10, i13, i12)) {
                        i10 = i11 * 53;
                        iC = zzev.c(G(t10, j10));
                        i11 = i10 + iC;
                    }
                    break;
                case 54:
                    if (q(t10, i13, i12)) {
                        i10 = i11 * 53;
                        iC = zzev.c(G(t10, j10));
                        i11 = i10 + iC;
                    }
                    break;
                case 55:
                    if (q(t10, i13, i12)) {
                        i10 = i11 * 53;
                        iC = v(t10, j10);
                        i11 = i10 + iC;
                    }
                    break;
                case 56:
                    if (q(t10, i13, i12)) {
                        i10 = i11 * 53;
                        iC = zzev.c(G(t10, j10));
                        i11 = i10 + iC;
                    }
                    break;
                case 57:
                    if (q(t10, i13, i12)) {
                        i10 = i11 * 53;
                        iC = v(t10, j10);
                        i11 = i10 + iC;
                    }
                    break;
                case 58:
                    if (q(t10, i13, i12)) {
                        i10 = i11 * 53;
                        iC = zzev.a(((Boolean) zzgz.f(t10, j10)).booleanValue());
                        i11 = i10 + iC;
                    }
                    break;
                case 59:
                    if (q(t10, i13, i12)) {
                        i10 = i11 * 53;
                        iC = ((String) zzgz.f(t10, j10)).hashCode();
                        i11 = i10 + iC;
                    }
                    break;
                case 60:
                    if (q(t10, i13, i12)) {
                        i10 = i11 * 53;
                        iC = zzgz.f(t10, j10).hashCode();
                        i11 = i10 + iC;
                    }
                    break;
                case 61:
                    if (q(t10, i13, i12)) {
                        i10 = i11 * 53;
                        iC = zzgz.f(t10, j10).hashCode();
                        i11 = i10 + iC;
                    }
                    break;
                case 62:
                    if (q(t10, i13, i12)) {
                        i10 = i11 * 53;
                        iC = v(t10, j10);
                        i11 = i10 + iC;
                    }
                    break;
                case 63:
                    if (q(t10, i13, i12)) {
                        i10 = i11 * 53;
                        iC = v(t10, j10);
                        i11 = i10 + iC;
                    }
                    break;
                case 64:
                    if (q(t10, i13, i12)) {
                        i10 = i11 * 53;
                        iC = v(t10, j10);
                        i11 = i10 + iC;
                    }
                    break;
                case 65:
                    if (q(t10, i13, i12)) {
                        i10 = i11 * 53;
                        iC = zzev.c(G(t10, j10));
                        i11 = i10 + iC;
                    }
                    break;
                case 66:
                    if (q(t10, i13, i12)) {
                        i10 = i11 * 53;
                        iC = v(t10, j10);
                        i11 = i10 + iC;
                    }
                    break;
                case 67:
                    if (q(t10, i13, i12)) {
                        i10 = i11 * 53;
                        iC = zzev.c(G(t10, j10));
                        i11 = i10 + iC;
                    }
                    break;
                case 68:
                    if (q(t10, i13, i12)) {
                        i10 = i11 * 53;
                        iC = zzgz.f(t10, j10).hashCode();
                        i11 = i10 + iC;
                    }
                    break;
            }
        }
        return (i11 * 53) + this.f21528k.a(t10).hashCode();
    }

    @Override // com.google.android.gms.internal.auth.zzgb
    public final void b(T t10) {
        int i10;
        int i11 = this.f21525h;
        while (true) {
            i10 = this.f21526i;
            if (i11 >= i10) {
                break;
            }
            long jF = F(this.f21524g[i11]) & 1048575;
            Object objF = zzgz.f(t10, jF);
            if (objF != null) {
                ((zzfk) objF).d();
                zzgz.p(t10, jF, objF);
            }
            i11++;
        }
        int length = this.f21524g.length;
        while (i10 < length) {
            this.f21527j.a(t10, this.f21524g[i10]);
            i10++;
        }
        this.f21528k.e(t10);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:42:0x009d  */
    @Override // com.google.android.gms.internal.auth.zzgb
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean c(T r18) {
        /*
            Method dump skipped, instruction units count: 231
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.auth.zzft.c(java.lang.Object):boolean");
    }

    @Override // com.google.android.gms.internal.auth.zzgb
    public final T d() {
        return (T) ((zzeq) this.f21522e).k(4, null, null);
    }

    @Override // com.google.android.gms.internal.auth.zzgb
    public final void e(T t10, T t11) {
        Objects.requireNonNull(t11);
        for (int i10 = 0; i10 < this.f21518a.length; i10 += 3) {
            int iF = F(i10);
            long j10 = 1048575 & iF;
            int i11 = this.f21518a[i10];
            switch (E(iF)) {
                case 0:
                    if (n(t11, i10)) {
                        zzgz.l(t10, j10, zzgz.a(t11, j10));
                        k(t10, i10);
                    }
                    break;
                case 1:
                    if (n(t11, i10)) {
                        zzgz.m(t10, j10, zzgz.b(t11, j10));
                        k(t10, i10);
                    }
                    break;
                case 2:
                    if (n(t11, i10)) {
                        zzgz.o(t10, j10, zzgz.d(t11, j10));
                        k(t10, i10);
                    }
                    break;
                case 3:
                    if (n(t11, i10)) {
                        zzgz.o(t10, j10, zzgz.d(t11, j10));
                        k(t10, i10);
                    }
                    break;
                case 4:
                    if (n(t11, i10)) {
                        zzgz.n(t10, j10, zzgz.c(t11, j10));
                        k(t10, i10);
                    }
                    break;
                case 5:
                    if (n(t11, i10)) {
                        zzgz.o(t10, j10, zzgz.d(t11, j10));
                        k(t10, i10);
                    }
                    break;
                case 6:
                    if (n(t11, i10)) {
                        zzgz.n(t10, j10, zzgz.c(t11, j10));
                        k(t10, i10);
                    }
                    break;
                case 7:
                    if (n(t11, i10)) {
                        zzgz.k(t10, j10, zzgz.t(t11, j10));
                        k(t10, i10);
                    }
                    break;
                case 8:
                    if (n(t11, i10)) {
                        zzgz.p(t10, j10, zzgz.f(t11, j10));
                        k(t10, i10);
                    }
                    break;
                case 9:
                    i(t10, t11, i10);
                    break;
                case 10:
                    if (n(t11, i10)) {
                        zzgz.p(t10, j10, zzgz.f(t11, j10));
                        k(t10, i10);
                    }
                    break;
                case 11:
                    if (n(t11, i10)) {
                        zzgz.n(t10, j10, zzgz.c(t11, j10));
                        k(t10, i10);
                    }
                    break;
                case 12:
                    if (n(t11, i10)) {
                        zzgz.n(t10, j10, zzgz.c(t11, j10));
                        k(t10, i10);
                    }
                    break;
                case 13:
                    if (n(t11, i10)) {
                        zzgz.n(t10, j10, zzgz.c(t11, j10));
                        k(t10, i10);
                    }
                    break;
                case 14:
                    if (n(t11, i10)) {
                        zzgz.o(t10, j10, zzgz.d(t11, j10));
                        k(t10, i10);
                    }
                    break;
                case 15:
                    if (n(t11, i10)) {
                        zzgz.n(t10, j10, zzgz.c(t11, j10));
                        k(t10, i10);
                    }
                    break;
                case 16:
                    if (n(t11, i10)) {
                        zzgz.o(t10, j10, zzgz.d(t11, j10));
                        k(t10, i10);
                    }
                    break;
                case 17:
                    i(t10, t11, i10);
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
                    this.f21527j.b(t10, t11, j10);
                    break;
                case 50:
                    zzgd.i(this.f21531n, t10, t11, j10);
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
                    if (q(t11, i11, i10)) {
                        zzgz.p(t10, j10, zzgz.f(t11, j10));
                        l(t10, i11, i10);
                    }
                    break;
                case 60:
                    j(t10, t11, i10);
                    break;
                case 61:
                case 62:
                case 63:
                case 64:
                case 65:
                case 66:
                case 67:
                    if (q(t11, i11, i10)) {
                        zzgz.p(t10, j10, zzgz.f(t11, j10));
                        l(t10, i11, i10);
                    }
                    break;
                case 68:
                    j(t10, t11, i10);
                    break;
            }
        }
        zzgd.f(this.f21528k, t10, t11);
    }

    @Override // com.google.android.gms.internal.auth.zzgb
    public final boolean f(T t10, T t11) {
        boolean zH;
        int length = this.f21518a.length;
        for (int i10 = 0; i10 < length; i10 += 3) {
            int iF = F(i10);
            long j10 = iF & 1048575;
            switch (E(iF)) {
                case 0:
                    if (!m(t10, t11, i10) || Double.doubleToLongBits(zzgz.a(t10, j10)) != Double.doubleToLongBits(zzgz.a(t11, j10))) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 1:
                    if (!m(t10, t11, i10) || Float.floatToIntBits(zzgz.b(t10, j10)) != Float.floatToIntBits(zzgz.b(t11, j10))) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 2:
                    if (!m(t10, t11, i10) || zzgz.d(t10, j10) != zzgz.d(t11, j10)) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 3:
                    if (!m(t10, t11, i10) || zzgz.d(t10, j10) != zzgz.d(t11, j10)) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 4:
                    if (!m(t10, t11, i10) || zzgz.c(t10, j10) != zzgz.c(t11, j10)) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 5:
                    if (!m(t10, t11, i10) || zzgz.d(t10, j10) != zzgz.d(t11, j10)) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 6:
                    if (!m(t10, t11, i10) || zzgz.c(t10, j10) != zzgz.c(t11, j10)) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 7:
                    if (!m(t10, t11, i10) || zzgz.t(t10, j10) != zzgz.t(t11, j10)) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 8:
                    if (!m(t10, t11, i10) || !zzgd.h(zzgz.f(t10, j10), zzgz.f(t11, j10))) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 9:
                    if (!m(t10, t11, i10) || !zzgd.h(zzgz.f(t10, j10), zzgz.f(t11, j10))) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 10:
                    if (!m(t10, t11, i10) || !zzgd.h(zzgz.f(t10, j10), zzgz.f(t11, j10))) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 11:
                    if (!m(t10, t11, i10) || zzgz.c(t10, j10) != zzgz.c(t11, j10)) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 12:
                    if (!m(t10, t11, i10) || zzgz.c(t10, j10) != zzgz.c(t11, j10)) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 13:
                    if (!m(t10, t11, i10) || zzgz.c(t10, j10) != zzgz.c(t11, j10)) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 14:
                    if (!m(t10, t11, i10) || zzgz.d(t10, j10) != zzgz.d(t11, j10)) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 15:
                    if (!m(t10, t11, i10) || zzgz.c(t10, j10) != zzgz.c(t11, j10)) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 16:
                    if (!m(t10, t11, i10) || zzgz.d(t10, j10) != zzgz.d(t11, j10)) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 17:
                    if (!m(t10, t11, i10) || !zzgd.h(zzgz.f(t10, j10), zzgz.f(t11, j10))) {
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
                    zH = zzgd.h(zzgz.f(t10, j10), zzgz.f(t11, j10));
                    break;
                case 50:
                    zH = zzgd.h(zzgz.f(t10, j10), zzgz.f(t11, j10));
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
                    long jC = C(i10) & 1048575;
                    if (zzgz.c(t10, jC) != zzgz.c(t11, jC) || !zzgd.h(zzgz.f(t10, j10), zzgz.f(t11, j10))) {
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
        return this.f21528k.a(t10).equals(this.f21528k.a(t11));
    }

    @Override // com.google.android.gms.internal.auth.zzgb
    public final void g(T t10, byte[] bArr, int i10, int i11, zzdp zzdpVar) throws IOException {
        if (this.f21523f) {
            y(t10, bArr, i10, i11, zzdpVar);
        } else {
            r(t10, bArr, i10, i11, 0, zzdpVar);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:110:0x0322, code lost:
    
        if (r0 != r2) goto L111;
     */
    /* JADX WARN: Code restructure failed: missing block: B:111:0x0324, code lost:
    
        r15 = r28;
        r14 = r29;
        r12 = r30;
        r13 = r32;
        r11 = r33;
        r9 = r34;
        r1 = r18;
        r2 = r19;
        r3 = r20;
        r5 = r22;
        r6 = r24;
     */
    /* JADX WARN: Code restructure failed: missing block: B:112:0x033c, code lost:
    
        r7 = r33;
        r2 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:118:0x0366, code lost:
    
        if (r0 != r15) goto L111;
     */
    /* JADX WARN: Code restructure failed: missing block: B:123:0x0388, code lost:
    
        if (r0 != r15) goto L111;
     */
    /* JADX WARN: Failed to find 'out' block for switch in B:24:0x0089. Please report as an issue. */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    final int r(T r29, byte[] r30, int r31, int r32, int r33, com.google.android.gms.internal.auth.zzdp r34) throws java.io.IOException {
        /*
            Method dump skipped, instruction units count: 1088
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.auth.zzft.r(java.lang.Object, byte[], int, int, int, com.google.android.gms.internal.auth.zzdp):int");
    }
}
