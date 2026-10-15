package com.google.android.gms.internal.drive;

import com.google.android.gms.internal.drive.zzkk;
import java.io.IOException;
import java.lang.reflect.Field;
import java.util.Arrays;
import java.util.List;
import java.util.Objects;
import sun.misc.Unsafe;

/* JADX INFO: loaded from: classes2.dex */
final class zzlu<T> implements zzmf<T> {

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private static final int[] f22235r = new int[0];

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private static final Unsafe f22236s = zznd.t();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int[] f22237a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Object[] f22238b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final int f22239c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final int f22240d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final zzlq f22241e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final boolean f22242f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final boolean f22243g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final boolean f22244h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final boolean f22245i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final int[] f22246j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final int f22247k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private final int f22248l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private final zzly f22249m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private final zzla f22250n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final zzmx<?, ?> f22251o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final zzjy<?> f22252p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final zzll f22253q;

    private zzlu(int[] iArr, Object[] objArr, int i10, int i11, zzlq zzlqVar, boolean z10, boolean z11, int[] iArr2, int i12, int i13, zzly zzlyVar, zzla zzlaVar, zzmx<?, ?> zzmxVar, zzjy<?> zzjyVar, zzll zzllVar) {
        this.f22237a = iArr;
        this.f22238b = objArr;
        this.f22239c = i10;
        this.f22240d = i11;
        this.f22243g = zzlqVar instanceof zzkk;
        this.f22244h = z10;
        this.f22242f = zzjyVar != null && zzjyVar.f(zzlqVar);
        this.f22245i = false;
        this.f22246j = iArr2;
        this.f22247k = i12;
        this.f22248l = i13;
        this.f22249m = zzlyVar;
        this.f22250n = zzlaVar;
        this.f22251o = zzmxVar;
        this.f22252p = zzjyVar;
        this.f22241e = zzlqVar;
        this.f22253q = zzllVar;
    }

    private final boolean A(T t10, T t11, int i10) {
        return o(t10, i10) == o(t11, i10);
    }

    private static <E> List<E> B(Object obj, long j10) {
        return (List) zznd.G(obj, j10);
    }

    private static <T> double C(T t10, long j10) {
        return ((Double) zznd.G(t10, j10)).doubleValue();
    }

    private static <T> float D(T t10, long j10) {
        return ((Float) zznd.G(t10, j10)).floatValue();
    }

    private static <T> int E(T t10, long j10) {
        return ((Integer) zznd.G(t10, j10)).intValue();
    }

    private static <T> long F(T t10, long j10) {
        return ((Long) zznd.G(t10, j10)).longValue();
    }

    private static <T> boolean G(T t10, long j10) {
        return ((Boolean) zznd.G(t10, j10)).booleanValue();
    }

    private static <UT, UB> int a(zzmx<UT, UB> zzmxVar, T t10) {
        return zzmxVar.f(zzmxVar.g(t10));
    }

    static <T> zzlu<T> i(Class<T> cls, zzlo zzloVar, zzly zzlyVar, zzla zzlaVar, zzmx<?, ?> zzmxVar, zzjy<?> zzjyVar, zzll zzllVar) {
        int i10;
        int iCharAt;
        int iCharAt2;
        int i11;
        int i12;
        int i13;
        int i14;
        int[] iArr;
        int i15;
        int i16;
        char cCharAt;
        int i17;
        char cCharAt2;
        int i18;
        char cCharAt3;
        int i19;
        char cCharAt4;
        int i20;
        char cCharAt5;
        int i21;
        char cCharAt6;
        int i22;
        char cCharAt7;
        int i23;
        char cCharAt8;
        int i24;
        int i25;
        boolean z10;
        int i26;
        zzme zzmeVar;
        int i27;
        int iObjectFieldOffset;
        int i28;
        int i29;
        Class<?> cls2;
        String str;
        int iObjectFieldOffset2;
        int i30;
        Field fieldJ;
        int i31;
        char cCharAt9;
        int i32;
        Field fieldJ2;
        Field fieldJ3;
        int i33;
        char cCharAt10;
        int i34;
        char cCharAt11;
        int i35;
        char cCharAt12;
        int i36;
        char cCharAt13;
        char cCharAt14;
        if (!(zzloVar instanceof zzme)) {
            ((zzms) zzloVar).a();
            int i37 = zzkk.zze.f22185j;
            throw new NoSuchMethodError();
        }
        zzme zzmeVar2 = (zzme) zzloVar;
        int i38 = 0;
        boolean z11 = zzmeVar2.a() == zzkk.zze.f22185j;
        String strD = zzmeVar2.d();
        int length = strD.length();
        int iCharAt3 = strD.charAt(0);
        if (iCharAt3 >= 55296) {
            int i39 = iCharAt3 & 8191;
            int i40 = 1;
            int i41 = 13;
            while (true) {
                i10 = i40 + 1;
                cCharAt14 = strD.charAt(i40);
                if (cCharAt14 < 55296) {
                    break;
                }
                i39 |= (cCharAt14 & 8191) << i41;
                i41 += 13;
                i40 = i10;
            }
            iCharAt3 = i39 | (cCharAt14 << i41);
        } else {
            i10 = 1;
        }
        int i42 = i10 + 1;
        int iCharAt4 = strD.charAt(i10);
        if (iCharAt4 >= 55296) {
            int i43 = iCharAt4 & 8191;
            int i44 = 13;
            while (true) {
                i36 = i42 + 1;
                cCharAt13 = strD.charAt(i42);
                if (cCharAt13 < 55296) {
                    break;
                }
                i43 |= (cCharAt13 & 8191) << i44;
                i44 += 13;
                i42 = i36;
            }
            iCharAt4 = i43 | (cCharAt13 << i44);
            i42 = i36;
        }
        if (iCharAt4 == 0) {
            iArr = f22235r;
            i15 = 0;
            i12 = 0;
            iCharAt = 0;
            i13 = 0;
            iCharAt2 = 0;
            i14 = 0;
        } else {
            int i45 = i42 + 1;
            int iCharAt5 = strD.charAt(i42);
            if (iCharAt5 >= 55296) {
                int i46 = iCharAt5 & 8191;
                int i47 = 13;
                while (true) {
                    i23 = i45 + 1;
                    cCharAt8 = strD.charAt(i45);
                    if (cCharAt8 < 55296) {
                        break;
                    }
                    i46 |= (cCharAt8 & 8191) << i47;
                    i47 += 13;
                    i45 = i23;
                }
                iCharAt5 = i46 | (cCharAt8 << i47);
                i45 = i23;
            }
            int i48 = i45 + 1;
            int iCharAt6 = strD.charAt(i45);
            if (iCharAt6 >= 55296) {
                int i49 = iCharAt6 & 8191;
                int i50 = 13;
                while (true) {
                    i22 = i48 + 1;
                    cCharAt7 = strD.charAt(i48);
                    if (cCharAt7 < 55296) {
                        break;
                    }
                    i49 |= (cCharAt7 & 8191) << i50;
                    i50 += 13;
                    i48 = i22;
                }
                iCharAt6 = i49 | (cCharAt7 << i50);
                i48 = i22;
            }
            int i51 = i48 + 1;
            iCharAt = strD.charAt(i48);
            if (iCharAt >= 55296) {
                int i52 = iCharAt & 8191;
                int i53 = 13;
                while (true) {
                    i21 = i51 + 1;
                    cCharAt6 = strD.charAt(i51);
                    if (cCharAt6 < 55296) {
                        break;
                    }
                    i52 |= (cCharAt6 & 8191) << i53;
                    i53 += 13;
                    i51 = i21;
                }
                iCharAt = i52 | (cCharAt6 << i53);
                i51 = i21;
            }
            int i54 = i51 + 1;
            int iCharAt7 = strD.charAt(i51);
            if (iCharAt7 >= 55296) {
                int i55 = iCharAt7 & 8191;
                int i56 = 13;
                while (true) {
                    i20 = i54 + 1;
                    cCharAt5 = strD.charAt(i54);
                    if (cCharAt5 < 55296) {
                        break;
                    }
                    i55 |= (cCharAt5 & 8191) << i56;
                    i56 += 13;
                    i54 = i20;
                }
                iCharAt7 = i55 | (cCharAt5 << i56);
                i54 = i20;
            }
            int i57 = i54 + 1;
            iCharAt2 = strD.charAt(i54);
            if (iCharAt2 >= 55296) {
                int i58 = iCharAt2 & 8191;
                int i59 = 13;
                while (true) {
                    i19 = i57 + 1;
                    cCharAt4 = strD.charAt(i57);
                    if (cCharAt4 < 55296) {
                        break;
                    }
                    i58 |= (cCharAt4 & 8191) << i59;
                    i59 += 13;
                    i57 = i19;
                }
                iCharAt2 = i58 | (cCharAt4 << i59);
                i57 = i19;
            }
            int i60 = i57 + 1;
            int iCharAt8 = strD.charAt(i57);
            if (iCharAt8 >= 55296) {
                int i61 = iCharAt8 & 8191;
                int i62 = 13;
                while (true) {
                    i18 = i60 + 1;
                    cCharAt3 = strD.charAt(i60);
                    if (cCharAt3 < 55296) {
                        break;
                    }
                    i61 |= (cCharAt3 & 8191) << i62;
                    i62 += 13;
                    i60 = i18;
                }
                iCharAt8 = i61 | (cCharAt3 << i62);
                i60 = i18;
            }
            int i63 = i60 + 1;
            int iCharAt9 = strD.charAt(i60);
            if (iCharAt9 >= 55296) {
                int i64 = iCharAt9 & 8191;
                int i65 = i63;
                int i66 = 13;
                while (true) {
                    i17 = i65 + 1;
                    cCharAt2 = strD.charAt(i65);
                    if (cCharAt2 < 55296) {
                        break;
                    }
                    i64 |= (cCharAt2 & 8191) << i66;
                    i66 += 13;
                    i65 = i17;
                }
                iCharAt9 = i64 | (cCharAt2 << i66);
                i11 = i17;
            } else {
                i11 = i63;
            }
            int i67 = i11 + 1;
            int iCharAt10 = strD.charAt(i11);
            if (iCharAt10 >= 55296) {
                int i68 = iCharAt10 & 8191;
                int i69 = i67;
                int i70 = 13;
                while (true) {
                    i16 = i69 + 1;
                    cCharAt = strD.charAt(i69);
                    if (cCharAt < 55296) {
                        break;
                    }
                    i68 |= (cCharAt & 8191) << i70;
                    i70 += 13;
                    i69 = i16;
                }
                iCharAt10 = i68 | (cCharAt << i70);
                i67 = i16;
            }
            int[] iArr2 = new int[iCharAt10 + iCharAt8 + iCharAt9];
            int i71 = (iCharAt5 << 1) + iCharAt6;
            i12 = iCharAt7;
            i13 = i71;
            i14 = iCharAt10;
            i38 = iCharAt5;
            i42 = i67;
            int i72 = iCharAt8;
            iArr = iArr2;
            i15 = i72;
        }
        Unsafe unsafe = f22236s;
        Object[] objArrE = zzmeVar2.e();
        Class<?> cls3 = zzmeVar2.c().getClass();
        int i73 = i42;
        int[] iArr3 = new int[iCharAt2 * 3];
        Object[] objArr = new Object[iCharAt2 << 1];
        int i74 = i14 + i15;
        int i75 = i14;
        int i76 = i73;
        int i77 = i74;
        int i78 = 0;
        int i79 = 0;
        while (i76 < length) {
            int i80 = i76 + 1;
            int iCharAt11 = strD.charAt(i76);
            int i81 = length;
            if (iCharAt11 >= 55296) {
                int i82 = iCharAt11 & 8191;
                int i83 = i80;
                int i84 = 13;
                while (true) {
                    i35 = i83 + 1;
                    cCharAt12 = strD.charAt(i83);
                    i24 = i14;
                    if (cCharAt12 < 55296) {
                        break;
                    }
                    i82 |= (cCharAt12 & 8191) << i84;
                    i84 += 13;
                    i83 = i35;
                    i14 = i24;
                }
                iCharAt11 = i82 | (cCharAt12 << i84);
                i25 = i35;
            } else {
                i24 = i14;
                i25 = i80;
            }
            int i85 = i25 + 1;
            int iCharAt12 = strD.charAt(i25);
            if (iCharAt12 >= 55296) {
                int i86 = iCharAt12 & 8191;
                int i87 = i85;
                int i88 = 13;
                while (true) {
                    i34 = i87 + 1;
                    cCharAt11 = strD.charAt(i87);
                    z10 = z11;
                    if (cCharAt11 < 55296) {
                        break;
                    }
                    i86 |= (cCharAt11 & 8191) << i88;
                    i88 += 13;
                    i87 = i34;
                    z11 = z10;
                }
                iCharAt12 = i86 | (cCharAt11 << i88);
                i26 = i34;
            } else {
                z10 = z11;
                i26 = i85;
            }
            int i89 = iCharAt12 & 255;
            int i90 = i12;
            if ((iCharAt12 & 1024) != 0) {
                iArr[i78] = i79;
                i78++;
            }
            int i91 = iCharAt;
            if (i89 >= 51) {
                int i92 = i26 + 1;
                int iCharAt13 = strD.charAt(i26);
                char c10 = 55296;
                if (iCharAt13 >= 55296) {
                    int i93 = iCharAt13 & 8191;
                    int i94 = 13;
                    while (true) {
                        i33 = i92 + 1;
                        cCharAt10 = strD.charAt(i92);
                        if (cCharAt10 < c10) {
                            break;
                        }
                        i93 |= (cCharAt10 & 8191) << i94;
                        i94 += 13;
                        i92 = i33;
                        c10 = 55296;
                    }
                    iCharAt13 = i93 | (cCharAt10 << i94);
                    i92 = i33;
                }
                int i95 = i89 - 51;
                int i96 = i92;
                if (i95 == 9 || i95 == 17) {
                    objArr[((i79 / 3) << 1) + 1] = objArrE[i13];
                    i13++;
                } else if (i95 == 12 && (iCharAt3 & 1) == 1) {
                    objArr[((i79 / 3) << 1) + 1] = objArrE[i13];
                    i13++;
                }
                int i97 = iCharAt13 << 1;
                Object obj = objArrE[i97];
                if (obj instanceof Field) {
                    fieldJ2 = (Field) obj;
                } else {
                    fieldJ2 = j(cls3, (String) obj);
                    objArrE[i97] = fieldJ2;
                }
                zzmeVar = zzmeVar2;
                String str2 = strD;
                iObjectFieldOffset = (int) unsafe.objectFieldOffset(fieldJ2);
                int i98 = i97 + 1;
                Object obj2 = objArrE[i98];
                if (obj2 instanceof Field) {
                    fieldJ3 = (Field) obj2;
                } else {
                    fieldJ3 = j(cls3, (String) obj2);
                    objArrE[i98] = fieldJ3;
                }
                cls2 = cls3;
                i28 = i13;
                i26 = i96;
                str = str2;
                i30 = 0;
                iObjectFieldOffset2 = (int) unsafe.objectFieldOffset(fieldJ3);
                i29 = i38;
            } else {
                zzmeVar = zzmeVar2;
                String str3 = strD;
                int i99 = i13 + 1;
                Field fieldJ4 = j(cls3, (String) objArrE[i13]);
                if (i89 == 9 || i89 == 17) {
                    i27 = 1;
                    objArr[((i79 / 3) << 1) + 1] = fieldJ4.getType();
                } else {
                    if (i89 == 27 || i89 == 49) {
                        i27 = 1;
                        i32 = i99 + 1;
                        objArr[((i79 / 3) << 1) + 1] = objArrE[i99];
                    } else if (i89 == 12 || i89 == 30 || i89 == 44) {
                        i27 = 1;
                        if ((iCharAt3 & 1) == 1) {
                            i32 = i99 + 1;
                            objArr[((i79 / 3) << 1) + 1] = objArrE[i99];
                        }
                    } else if (i89 == 50) {
                        int i100 = i75 + 1;
                        iArr[i75] = i79;
                        int i101 = (i79 / 3) << 1;
                        int i102 = i99 + 1;
                        objArr[i101] = objArrE[i99];
                        if ((iCharAt12 & 2048) != 0) {
                            i99 = i102 + 1;
                            objArr[i101 + 1] = objArrE[i102];
                            i75 = i100;
                            i27 = 1;
                        } else {
                            i99 = i102;
                            i27 = 1;
                            i75 = i100;
                        }
                    } else {
                        i27 = 1;
                    }
                    i99 = i32;
                }
                iObjectFieldOffset = (int) unsafe.objectFieldOffset(fieldJ4);
                if ((iCharAt3 & 1) != i27 || i89 > 17) {
                    i28 = i99;
                    i29 = i38;
                    cls2 = cls3;
                    str = str3;
                    iObjectFieldOffset2 = 0;
                    i30 = 0;
                } else {
                    int i103 = i26 + 1;
                    str = str3;
                    int iCharAt14 = str.charAt(i26);
                    if (iCharAt14 >= 55296) {
                        int i104 = iCharAt14 & 8191;
                        int i105 = 13;
                        while (true) {
                            i31 = i103 + 1;
                            cCharAt9 = str.charAt(i103);
                            if (cCharAt9 < 55296) {
                                break;
                            }
                            i104 |= (cCharAt9 & 8191) << i105;
                            i105 += 13;
                            i103 = i31;
                        }
                        iCharAt14 = i104 | (cCharAt9 << i105);
                        i103 = i31;
                    }
                    int i106 = (i38 << 1) + (iCharAt14 / 32);
                    Object obj3 = objArrE[i106];
                    i28 = i99;
                    if (obj3 instanceof Field) {
                        fieldJ = (Field) obj3;
                    } else {
                        fieldJ = j(cls3, (String) obj3);
                        objArrE[i106] = fieldJ;
                    }
                    i29 = i38;
                    cls2 = cls3;
                    iObjectFieldOffset2 = (int) unsafe.objectFieldOffset(fieldJ);
                    i30 = iCharAt14 % 32;
                    i26 = i103;
                }
                if (i89 >= 18 && i89 <= 49) {
                    iArr[i77] = iObjectFieldOffset;
                    i77++;
                }
            }
            int i107 = i79 + 1;
            iArr3[i79] = iCharAt11;
            int i108 = i107 + 1;
            iArr3[i107] = iObjectFieldOffset | ((iCharAt12 & 256) != 0 ? 268435456 : 0) | ((iCharAt12 & 512) != 0 ? 536870912 : 0) | (i89 << 20);
            i79 = i108 + 1;
            iArr3[i108] = (i30 << 20) | iObjectFieldOffset2;
            i38 = i29;
            strD = str;
            i76 = i26;
            cls3 = cls2;
            i12 = i90;
            length = i81;
            i14 = i24;
            z11 = z10;
            iCharAt = i91;
            i13 = i28;
            zzmeVar2 = zzmeVar;
        }
        return new zzlu<>(iArr3, objArr, iCharAt, i12, zzmeVar2.c(), z11, false, iArr, i14, i74, zzlyVar, zzlaVar, zzmxVar, zzjyVar, zzllVar);
    }

    private static Field j(Class<?> cls, String str) {
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

    private static void k(int i10, Object obj, zzns zznsVar) throws IOException {
        if (obj instanceof String) {
            zznsVar.P(i10, (String) obj);
        } else {
            zznsVar.L(i10, (zzjc) obj);
        }
    }

    private static <UT, UB> void l(zzmx<UT, UB> zzmxVar, T t10, zzns zznsVar) throws IOException {
        zzmxVar.a(zzmxVar.g(t10), zznsVar);
    }

    private final <K, V> void m(zzns zznsVar, int i10, Object obj, int i11) throws IOException {
        if (obj != null) {
            zznsVar.F(i10, this.f22253q.g(t(i11)), this.f22253q.c(obj));
        }
    }

    private final void n(T t10, T t11, int i10) {
        long jU = u(i10) & 1048575;
        if (o(t11, i10)) {
            Object objG = zznd.G(t10, jU);
            Object objG2 = zznd.G(t11, jU);
            if (objG != null && objG2 != null) {
                zznd.g(t10, jU, zzkm.d(objG, objG2));
                w(t10, i10);
            } else if (objG2 != null) {
                zznd.g(t10, jU, objG2);
                w(t10, i10);
            }
        }
    }

    private final boolean o(T t10, int i10) {
        if (!this.f22244h) {
            int iV = v(i10);
            return (zznd.A(t10, (long) (iV & 1048575)) & (1 << (iV >>> 20))) != 0;
        }
        int iU = u(i10);
        long j10 = iU & 1048575;
        switch ((iU & 267386880) >>> 20) {
            case 0:
                return zznd.F(t10, j10) != 0.0d;
            case 1:
                return zznd.E(t10, j10) != 0.0f;
            case 2:
                return zznd.B(t10, j10) != 0;
            case 3:
                return zznd.B(t10, j10) != 0;
            case 4:
                return zznd.A(t10, j10) != 0;
            case 5:
                return zznd.B(t10, j10) != 0;
            case 6:
                return zznd.A(t10, j10) != 0;
            case 7:
                return zznd.D(t10, j10);
            case 8:
                Object objG = zznd.G(t10, j10);
                if (objG instanceof String) {
                    return !((String) objG).isEmpty();
                }
                if (objG instanceof zzjc) {
                    return !zzjc.f22078p.equals(objG);
                }
                throw new IllegalArgumentException();
            case 9:
                return zznd.G(t10, j10) != null;
            case 10:
                return !zzjc.f22078p.equals(zznd.G(t10, j10));
            case 11:
                return zznd.A(t10, j10) != 0;
            case 12:
                return zznd.A(t10, j10) != 0;
            case 13:
                return zznd.A(t10, j10) != 0;
            case 14:
                return zznd.B(t10, j10) != 0;
            case 15:
                return zznd.A(t10, j10) != 0;
            case 16:
                return zznd.B(t10, j10) != 0;
            case 17:
                return zznd.G(t10, j10) != null;
            default:
                throw new IllegalArgumentException();
        }
    }

    private final boolean p(T t10, int i10, int i11) {
        return zznd.A(t10, (long) (v(i11) & 1048575)) == i10;
    }

    private final boolean q(T t10, int i10, int i11, int i12) {
        return this.f22244h ? o(t10, i10) : (i11 & i12) != 0;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private static boolean r(Object obj, int i10, zzmf zzmfVar) {
        return zzmfVar.h(zznd.G(obj, i10 & 1048575));
    }

    private final zzmf s(int i10) {
        int i11 = (i10 / 3) << 1;
        zzmf zzmfVar = (zzmf) this.f22238b[i11];
        if (zzmfVar != null) {
            return zzmfVar;
        }
        zzmf<T> zzmfVarB = zzmd.a().b((Class) this.f22238b[i11 + 1]);
        this.f22238b[i11] = zzmfVarB;
        return zzmfVarB;
    }

    private final Object t(int i10) {
        return this.f22238b[(i10 / 3) << 1];
    }

    private final int u(int i10) {
        return this.f22237a[i10 + 1];
    }

    private final int v(int i10) {
        return this.f22237a[i10 + 2];
    }

    private final void w(T t10, int i10) {
        if (this.f22244h) {
            return;
        }
        int iV = v(i10);
        long j10 = iV & 1048575;
        zznd.e(t10, j10, zznd.A(t10, j10) | (1 << (iV >>> 20)));
    }

    private final void x(T t10, int i10, int i11) {
        zznd.e(t10, v(i11) & 1048575, i10);
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0023  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private final void y(T r19, com.google.android.gms.internal.drive.zzns r20) throws java.io.IOException {
        /*
            Method dump skipped, instruction units count: 1344
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.drive.zzlu.y(java.lang.Object, com.google.android.gms.internal.drive.zzns):void");
    }

    private final void z(T t10, T t11, int i10) {
        int iU = u(i10);
        int i11 = this.f22237a[i10];
        long j10 = iU & 1048575;
        if (p(t11, i11, i10)) {
            Object objG = zznd.G(t10, j10);
            Object objG2 = zznd.G(t11, j10);
            if (objG != null && objG2 != null) {
                zznd.g(t10, j10, zzkm.d(objG, objG2));
                x(t10, i11, i10);
            } else if (objG2 != null) {
                zznd.g(t10, j10, objG2);
                x(t10, i11, i10);
            }
        }
    }

    @Override // com.google.android.gms.internal.drive.zzmf
    public final void b(T t10) {
        int i10;
        int i11 = this.f22247k;
        while (true) {
            i10 = this.f22248l;
            if (i11 >= i10) {
                break;
            }
            long jU = u(this.f22246j[i11]) & 1048575;
            Object objG = zznd.G(t10, jU);
            if (objG != null) {
                zznd.g(t10, jU, this.f22253q.d(objG));
            }
            i11++;
        }
        int length = this.f22246j.length;
        while (i10 < length) {
            this.f22250n.a(t10, this.f22246j[i10]);
            i10++;
        }
        this.f22251o.c(t10);
        if (this.f22242f) {
            this.f22252p.e(t10);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:104:0x01c1  */
    @Override // com.google.android.gms.internal.drive.zzmf
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean c(T r10, T r11) {
        /*
            Method dump skipped, instruction units count: 640
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.drive.zzlu.c(java.lang.Object, java.lang.Object):boolean");
    }

    @Override // com.google.android.gms.internal.drive.zzmf
    public final int d(T t10) {
        int i10;
        int iJ;
        int length = this.f22237a.length;
        int i11 = 0;
        for (int i12 = 0; i12 < length; i12 += 3) {
            int iU = u(i12);
            int i13 = this.f22237a[i12];
            long j10 = 1048575 & iU;
            int iHashCode = 37;
            switch ((iU & 267386880) >>> 20) {
                case 0:
                    i10 = i11 * 53;
                    iJ = zzkm.j(Double.doubleToLongBits(zznd.F(t10, j10)));
                    i11 = i10 + iJ;
                    break;
                case 1:
                    i10 = i11 * 53;
                    iJ = Float.floatToIntBits(zznd.E(t10, j10));
                    i11 = i10 + iJ;
                    break;
                case 2:
                    i10 = i11 * 53;
                    iJ = zzkm.j(zznd.B(t10, j10));
                    i11 = i10 + iJ;
                    break;
                case 3:
                    i10 = i11 * 53;
                    iJ = zzkm.j(zznd.B(t10, j10));
                    i11 = i10 + iJ;
                    break;
                case 4:
                    i10 = i11 * 53;
                    iJ = zznd.A(t10, j10);
                    i11 = i10 + iJ;
                    break;
                case 5:
                    i10 = i11 * 53;
                    iJ = zzkm.j(zznd.B(t10, j10));
                    i11 = i10 + iJ;
                    break;
                case 6:
                    i10 = i11 * 53;
                    iJ = zznd.A(t10, j10);
                    i11 = i10 + iJ;
                    break;
                case 7:
                    i10 = i11 * 53;
                    iJ = zzkm.g(zznd.D(t10, j10));
                    i11 = i10 + iJ;
                    break;
                case 8:
                    i10 = i11 * 53;
                    iJ = ((String) zznd.G(t10, j10)).hashCode();
                    i11 = i10 + iJ;
                    break;
                case 9:
                    Object objG = zznd.G(t10, j10);
                    if (objG != null) {
                        iHashCode = objG.hashCode();
                    }
                    i11 = (i11 * 53) + iHashCode;
                    break;
                case 10:
                    i10 = i11 * 53;
                    iJ = zznd.G(t10, j10).hashCode();
                    i11 = i10 + iJ;
                    break;
                case 11:
                    i10 = i11 * 53;
                    iJ = zznd.A(t10, j10);
                    i11 = i10 + iJ;
                    break;
                case 12:
                    i10 = i11 * 53;
                    iJ = zznd.A(t10, j10);
                    i11 = i10 + iJ;
                    break;
                case 13:
                    i10 = i11 * 53;
                    iJ = zznd.A(t10, j10);
                    i11 = i10 + iJ;
                    break;
                case 14:
                    i10 = i11 * 53;
                    iJ = zzkm.j(zznd.B(t10, j10));
                    i11 = i10 + iJ;
                    break;
                case 15:
                    i10 = i11 * 53;
                    iJ = zznd.A(t10, j10);
                    i11 = i10 + iJ;
                    break;
                case 16:
                    i10 = i11 * 53;
                    iJ = zzkm.j(zznd.B(t10, j10));
                    i11 = i10 + iJ;
                    break;
                case 17:
                    Object objG2 = zznd.G(t10, j10);
                    if (objG2 != null) {
                        iHashCode = objG2.hashCode();
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
                    iJ = zznd.G(t10, j10).hashCode();
                    i11 = i10 + iJ;
                    break;
                case 50:
                    i10 = i11 * 53;
                    iJ = zznd.G(t10, j10).hashCode();
                    i11 = i10 + iJ;
                    break;
                case 51:
                    if (p(t10, i13, i12)) {
                        i10 = i11 * 53;
                        iJ = zzkm.j(Double.doubleToLongBits(C(t10, j10)));
                        i11 = i10 + iJ;
                    }
                    break;
                case 52:
                    if (p(t10, i13, i12)) {
                        i10 = i11 * 53;
                        iJ = Float.floatToIntBits(D(t10, j10));
                        i11 = i10 + iJ;
                    }
                    break;
                case 53:
                    if (p(t10, i13, i12)) {
                        i10 = i11 * 53;
                        iJ = zzkm.j(F(t10, j10));
                        i11 = i10 + iJ;
                    }
                    break;
                case 54:
                    if (p(t10, i13, i12)) {
                        i10 = i11 * 53;
                        iJ = zzkm.j(F(t10, j10));
                        i11 = i10 + iJ;
                    }
                    break;
                case 55:
                    if (p(t10, i13, i12)) {
                        i10 = i11 * 53;
                        iJ = E(t10, j10);
                        i11 = i10 + iJ;
                    }
                    break;
                case 56:
                    if (p(t10, i13, i12)) {
                        i10 = i11 * 53;
                        iJ = zzkm.j(F(t10, j10));
                        i11 = i10 + iJ;
                    }
                    break;
                case 57:
                    if (p(t10, i13, i12)) {
                        i10 = i11 * 53;
                        iJ = E(t10, j10);
                        i11 = i10 + iJ;
                    }
                    break;
                case 58:
                    if (p(t10, i13, i12)) {
                        i10 = i11 * 53;
                        iJ = zzkm.g(G(t10, j10));
                        i11 = i10 + iJ;
                    }
                    break;
                case 59:
                    if (p(t10, i13, i12)) {
                        i10 = i11 * 53;
                        iJ = ((String) zznd.G(t10, j10)).hashCode();
                        i11 = i10 + iJ;
                    }
                    break;
                case 60:
                    if (p(t10, i13, i12)) {
                        i10 = i11 * 53;
                        iJ = zznd.G(t10, j10).hashCode();
                        i11 = i10 + iJ;
                    }
                    break;
                case 61:
                    if (p(t10, i13, i12)) {
                        i10 = i11 * 53;
                        iJ = zznd.G(t10, j10).hashCode();
                        i11 = i10 + iJ;
                    }
                    break;
                case 62:
                    if (p(t10, i13, i12)) {
                        i10 = i11 * 53;
                        iJ = E(t10, j10);
                        i11 = i10 + iJ;
                    }
                    break;
                case 63:
                    if (p(t10, i13, i12)) {
                        i10 = i11 * 53;
                        iJ = E(t10, j10);
                        i11 = i10 + iJ;
                    }
                    break;
                case 64:
                    if (p(t10, i13, i12)) {
                        i10 = i11 * 53;
                        iJ = E(t10, j10);
                        i11 = i10 + iJ;
                    }
                    break;
                case 65:
                    if (p(t10, i13, i12)) {
                        i10 = i11 * 53;
                        iJ = zzkm.j(F(t10, j10));
                        i11 = i10 + iJ;
                    }
                    break;
                case 66:
                    if (p(t10, i13, i12)) {
                        i10 = i11 * 53;
                        iJ = E(t10, j10);
                        i11 = i10 + iJ;
                    }
                    break;
                case 67:
                    if (p(t10, i13, i12)) {
                        i10 = i11 * 53;
                        iJ = zzkm.j(F(t10, j10));
                        i11 = i10 + iJ;
                    }
                    break;
                case 68:
                    if (p(t10, i13, i12)) {
                        i10 = i11 * 53;
                        iJ = zznd.G(t10, j10).hashCode();
                        i11 = i10 + iJ;
                    }
                    break;
            }
        }
        int iHashCode2 = (i11 * 53) + this.f22251o.g(t10).hashCode();
        return this.f22242f ? (iHashCode2 * 53) + this.f22252p.c(t10).hashCode() : iHashCode2;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:421:0x090b A[PHI: r6
      0x090b: PHI (r6v4 int) = 
      (r6v1 int)
      (r6v1 int)
      (r6v1 int)
      (r6v1 int)
      (r6v1 int)
      (r6v1 int)
      (r6v1 int)
      (r6v1 int)
      (r6v1 int)
      (r6v1 int)
      (r6v1 int)
      (r6v1 int)
      (r6v1 int)
      (r6v1 int)
      (r6v1 int)
      (r6v1 int)
      (r6v1 int)
      (r6v1 int)
      (r6v1 int)
      (r6v1 int)
      (r6v1 int)
      (r6v1 int)
      (r6v1 int)
      (r6v1 int)
      (r6v1 int)
      (r6v1 int)
      (r6v1 int)
      (r6v1 int)
      (r6v1 int)
      (r6v1 int)
      (r6v1 int)
      (r6v1 int)
      (r6v1 int)
      (r6v1 int)
      (r6v1 int)
      (r6v1 int)
      (r6v1 int)
      (r6v1 int)
      (r6v1 int)
      (r6v16 int)
      (r6v1 int)
      (r6v1 int)
      (r6v1 int)
      (r6v1 int)
      (r6v17 int)
      (r6v1 int)
     binds: [B:256:0x0545, B:459:0x09b0, B:453:0x0994, B:450:0x0982, B:447:0x0973, B:444:0x0966, B:441:0x0959, B:437:0x094e, B:434:0x0943, B:431:0x0936, B:428:0x0929, B:425:0x0916, B:396:0x081f, B:390:0x0802, B:384:0x07e5, B:378:0x07c8, B:372:0x07aa, B:366:0x078c, B:360:0x076e, B:354:0x0750, B:348:0x0732, B:342:0x0714, B:336:0x06f6, B:330:0x06d8, B:324:0x06ba, B:318:0x069c, B:313:0x0668, B:310:0x065b, B:307:0x064b, B:304:0x063b, B:301:0x062b, B:298:0x061d, B:295:0x0610, B:292:0x0603, B:286:0x05e5, B:283:0x05d1, B:280:0x05bf, B:277:0x05af, B:274:0x059f, B:439:0x0955, B:271:0x0592, B:268:0x0584, B:265:0x0574, B:262:0x0564, B:420:0x090a, B:259:0x054e] A[DONT_GENERATE, DONT_INLINE]] */
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
    @Override // com.google.android.gms.internal.drive.zzmf
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final int e(T r20) {
        /*
            Method dump skipped, instruction units count: 2986
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.drive.zzlu.e(java.lang.Object):int");
    }

    /* JADX WARN: Removed duplicated region for block: B:178:0x054a  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0032  */
    @Override // com.google.android.gms.internal.drive.zzmf
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void f(T r14, com.google.android.gms.internal.drive.zzns r15) throws java.io.IOException {
        /*
            Method dump skipped, instruction units count: 2916
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.drive.zzlu.f(java.lang.Object, com.google.android.gms.internal.drive.zzns):void");
    }

    @Override // com.google.android.gms.internal.drive.zzmf
    public final void g(T t10, T t11) {
        Objects.requireNonNull(t11);
        for (int i10 = 0; i10 < this.f22237a.length; i10 += 3) {
            int iU = u(i10);
            long j10 = 1048575 & iU;
            int i11 = this.f22237a[i10];
            switch ((iU & 267386880) >>> 20) {
                case 0:
                    if (o(t11, i10)) {
                        zznd.c(t10, j10, zznd.F(t11, j10));
                        w(t10, i10);
                    }
                    break;
                case 1:
                    if (o(t11, i10)) {
                        zznd.d(t10, j10, zznd.E(t11, j10));
                        w(t10, i10);
                    }
                    break;
                case 2:
                    if (o(t11, i10)) {
                        zznd.f(t10, j10, zznd.B(t11, j10));
                        w(t10, i10);
                    }
                    break;
                case 3:
                    if (o(t11, i10)) {
                        zznd.f(t10, j10, zznd.B(t11, j10));
                        w(t10, i10);
                    }
                    break;
                case 4:
                    if (o(t11, i10)) {
                        zznd.e(t10, j10, zznd.A(t11, j10));
                        w(t10, i10);
                    }
                    break;
                case 5:
                    if (o(t11, i10)) {
                        zznd.f(t10, j10, zznd.B(t11, j10));
                        w(t10, i10);
                    }
                    break;
                case 6:
                    if (o(t11, i10)) {
                        zznd.e(t10, j10, zznd.A(t11, j10));
                        w(t10, i10);
                    }
                    break;
                case 7:
                    if (o(t11, i10)) {
                        zznd.h(t10, j10, zznd.D(t11, j10));
                        w(t10, i10);
                    }
                    break;
                case 8:
                    if (o(t11, i10)) {
                        zznd.g(t10, j10, zznd.G(t11, j10));
                        w(t10, i10);
                    }
                    break;
                case 9:
                    n(t10, t11, i10);
                    break;
                case 10:
                    if (o(t11, i10)) {
                        zznd.g(t10, j10, zznd.G(t11, j10));
                        w(t10, i10);
                    }
                    break;
                case 11:
                    if (o(t11, i10)) {
                        zznd.e(t10, j10, zznd.A(t11, j10));
                        w(t10, i10);
                    }
                    break;
                case 12:
                    if (o(t11, i10)) {
                        zznd.e(t10, j10, zznd.A(t11, j10));
                        w(t10, i10);
                    }
                    break;
                case 13:
                    if (o(t11, i10)) {
                        zznd.e(t10, j10, zznd.A(t11, j10));
                        w(t10, i10);
                    }
                    break;
                case 14:
                    if (o(t11, i10)) {
                        zznd.f(t10, j10, zznd.B(t11, j10));
                        w(t10, i10);
                    }
                    break;
                case 15:
                    if (o(t11, i10)) {
                        zznd.e(t10, j10, zznd.A(t11, j10));
                        w(t10, i10);
                    }
                    break;
                case 16:
                    if (o(t11, i10)) {
                        zznd.f(t10, j10, zznd.B(t11, j10));
                        w(t10, i10);
                    }
                    break;
                case 17:
                    n(t10, t11, i10);
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
                    this.f22250n.b(t10, t11, j10);
                    break;
                case 50:
                    zzmh.f(this.f22253q, t10, t11, j10);
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
                    if (p(t11, i11, i10)) {
                        zznd.g(t10, j10, zznd.G(t11, j10));
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
                    if (p(t11, i11, i10)) {
                        zznd.g(t10, j10, zznd.G(t11, j10));
                        x(t10, i11, i10);
                    }
                    break;
                case 68:
                    z(t10, t11, i10);
                    break;
            }
        }
        if (this.f22244h) {
            return;
        }
        zzmh.g(this.f22251o, t10, t11);
        if (this.f22242f) {
            zzmh.e(this.f22252p, t10, t11);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:54:0x00ca  */
    /* JADX WARN: Type inference failed for: r4v12 */
    /* JADX WARN: Type inference failed for: r4v13 */
    /* JADX WARN: Type inference failed for: r4v14, types: [com.google.android.gms.internal.drive.zzmf] */
    /* JADX WARN: Type inference failed for: r4v17 */
    /* JADX WARN: Type inference failed for: r4v18 */
    /* JADX WARN: Type inference failed for: r4v5, types: [com.google.android.gms.internal.drive.zzmf] */
    @Override // com.google.android.gms.internal.drive.zzmf
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean h(T r14) {
        /*
            Method dump skipped, instruction units count: 285
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.drive.zzlu.h(java.lang.Object):boolean");
    }
}
