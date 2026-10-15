package k7;

/* JADX INFO: compiled from: Encoder.java */
/* JADX INFO: loaded from: classes2.dex */
public final class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final int[] f31599a = {4, 6, 6, 8, 8, 8, 8, 8, 8, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12};

    private static int[] a(l7.a aVar, int i10, int i11) {
        int[] iArr = new int[i11];
        int i12 = aVar.i() / i10;
        for (int i13 = 0; i13 < i12; i13++) {
            int i14 = 0;
            for (int i15 = 0; i15 < i10; i15++) {
                i14 |= aVar.h((i13 * i10) + i15) ? 1 << ((i10 - i15) - 1) : 0;
            }
            iArr[i13] = i14;
        }
        return iArr;
    }

    private static void b(l7.b bVar, int i10, int i11) {
        for (int i12 = 0; i12 < i11; i12 += 2) {
            int i13 = i10 - i12;
            int i14 = i13;
            while (true) {
                int i15 = i10 + i12;
                if (i14 <= i15) {
                    bVar.i(i14, i13);
                    bVar.i(i14, i15);
                    bVar.i(i13, i14);
                    bVar.i(i15, i14);
                    i14++;
                }
            }
        }
        int i16 = i10 - i11;
        bVar.i(i16, i16);
        int i17 = i16 + 1;
        bVar.i(i17, i16);
        bVar.i(i16, i17);
        int i18 = i10 + i11;
        bVar.i(i18, i16);
        bVar.i(i18, i17);
        bVar.i(i18, i18 - 1);
    }

    private static void c(l7.b bVar, boolean z10, int i10, l7.a aVar) {
        int i11 = i10 / 2;
        int i12 = 0;
        if (z10) {
            while (i12 < 7) {
                int i13 = (i11 - 3) + i12;
                if (aVar.h(i12)) {
                    bVar.i(i13, i11 - 5);
                }
                if (aVar.h(i12 + 7)) {
                    bVar.i(i11 + 5, i13);
                }
                if (aVar.h(20 - i12)) {
                    bVar.i(i13, i11 + 5);
                }
                if (aVar.h(27 - i12)) {
                    bVar.i(i11 - 5, i13);
                }
                i12++;
            }
            return;
        }
        while (i12 < 10) {
            int i14 = (i11 - 5) + i12 + (i12 / 5);
            if (aVar.h(i12)) {
                bVar.i(i14, i11 - 7);
            }
            if (aVar.h(i12 + 10)) {
                bVar.i(i11 + 7, i14);
            }
            if (aVar.h(29 - i12)) {
                bVar.i(i14, i11 + 7);
            }
            if (aVar.h(39 - i12)) {
                bVar.i(i11 - 7, i14);
            }
            i12++;
        }
    }

    public static a d(byte[] bArr, int i10, int i11) {
        l7.a aVarH;
        int i12;
        boolean z10;
        int iAbs;
        int i13;
        int i14;
        l7.a aVarA = new d(bArr).a();
        int i15 = ((aVarA.i() * i10) / 100) + 11;
        int i16 = aVarA.i() + i15;
        int i17 = 0;
        int i18 = 1;
        if (i11 == 0) {
            l7.a aVarH2 = null;
            int i19 = 0;
            int i20 = 0;
            while (i19 <= 32) {
                boolean z11 = i19 <= 3;
                int i21 = z11 ? i19 + 1 : i19;
                int i22 = i(i21, z11);
                if (i16 <= i22) {
                    if (aVarH2 == null || i20 != f31599a[i21]) {
                        int i23 = f31599a[i21];
                        i20 = i23;
                        aVarH2 = h(aVarA, i23);
                    }
                    int i24 = i22 - (i22 % i20);
                    if ((!z11 || aVarH2.i() <= (i20 << 6)) && aVarH2.i() + i15 <= i24) {
                        aVarH = aVarH2;
                        i12 = i20;
                        z10 = z11;
                        iAbs = i21;
                        i13 = i22;
                    }
                }
                i19++;
                i17 = 0;
                i18 = 1;
            }
            throw new IllegalArgumentException("Data too large for an Aztec code");
        }
        z10 = i11 < 0;
        iAbs = Math.abs(i11);
        if (iAbs > (z10 ? 4 : 32)) {
            throw new IllegalArgumentException(String.format("Illegal value %s for layers", Integer.valueOf(i11)));
        }
        i13 = i(iAbs, z10);
        i12 = f31599a[iAbs];
        int i25 = i13 - (i13 % i12);
        aVarH = h(aVarA, i12);
        if (aVarH.i() + i15 > i25) {
            throw new IllegalArgumentException("Data to large for user specified layer");
        }
        if (z10 && aVarH.i() > (i12 << 6)) {
            throw new IllegalArgumentException("Data to large for user specified layer");
        }
        l7.a aVarE = e(aVarH, i13, i12);
        int i26 = aVarH.i() / i12;
        l7.a aVarF = f(z10, iAbs, i26);
        int i27 = (z10 ? 11 : 14) + (iAbs << 2);
        int[] iArr = new int[i27];
        int i28 = 2;
        if (z10) {
            for (int i29 = 0; i29 < i27; i29++) {
                iArr[i29] = i29;
            }
            i14 = i27;
        } else {
            int i30 = i27 / 2;
            i14 = i27 + 1 + (((i30 - 1) / 15) * 2);
            int i31 = i14 / 2;
            for (int i32 = 0; i32 < i30; i32++) {
                iArr[(i30 - i32) - i18] = (i31 - r14) - 1;
                iArr[i30 + i32] = (i32 / 15) + i32 + i31 + i18;
            }
        }
        l7.b bVar = new l7.b(i14);
        int i33 = 0;
        int i34 = 0;
        while (i33 < iAbs) {
            int i35 = ((iAbs - i33) << i28) + (z10 ? 9 : 12);
            int i36 = 0;
            while (i36 < i35) {
                int i37 = i36 << 1;
                while (i17 < i28) {
                    if (aVarE.h(i34 + i37 + i17)) {
                        int i38 = i33 << 1;
                        bVar.i(iArr[i38 + i17], iArr[i38 + i36]);
                    }
                    if (aVarE.h((i35 << 1) + i34 + i37 + i17)) {
                        int i39 = i33 << 1;
                        bVar.i(iArr[i39 + i36], iArr[((i27 - 1) - i39) - i17]);
                    }
                    if (aVarE.h((i35 << 2) + i34 + i37 + i17)) {
                        int i40 = (i27 - 1) - (i33 << 1);
                        bVar.i(iArr[i40 - i17], iArr[i40 - i36]);
                    }
                    if (aVarE.h((i35 * 6) + i34 + i37 + i17)) {
                        int i41 = i33 << 1;
                        bVar.i(iArr[((i27 - 1) - i41) - i36], iArr[i41 + i17]);
                    }
                    i17++;
                    i28 = 2;
                }
                i36++;
                i17 = 0;
                i28 = 2;
            }
            i34 += i35 << 3;
            i33++;
            i17 = 0;
            i28 = 2;
        }
        c(bVar, z10, i14, aVarF);
        if (z10) {
            b(bVar, i14 / 2, 5);
        } else {
            int i42 = i14 / 2;
            b(bVar, i42, 7);
            int i43 = 0;
            int i44 = 0;
            while (i44 < (i27 / 2) - 1) {
                for (int i45 = i42 & 1; i45 < i14; i45 += 2) {
                    int i46 = i42 - i43;
                    bVar.i(i46, i45);
                    int i47 = i42 + i43;
                    bVar.i(i47, i45);
                    bVar.i(i45, i46);
                    bVar.i(i45, i47);
                }
                i44 += 15;
                i43 += 16;
            }
        }
        a aVar = new a();
        aVar.c(z10);
        aVar.f(i14);
        aVar.d(iAbs);
        aVar.b(i26);
        aVar.e(bVar);
        return aVar;
    }

    private static l7.a e(l7.a aVar, int i10, int i11) {
        int i12 = aVar.i() / i11;
        m7.c cVar = new m7.c(g(i11));
        int i13 = i10 / i11;
        int[] iArrA = a(aVar, i11, i13);
        cVar.b(iArrA, i13 - i12);
        l7.a aVar2 = new l7.a();
        aVar2.d(0, i10 % i11);
        for (int i14 : iArrA) {
            aVar2.d(i14, i11);
        }
        return aVar2;
    }

    static l7.a f(boolean z10, int i10, int i11) {
        l7.a aVar = new l7.a();
        if (z10) {
            aVar.d(i10 - 1, 2);
            aVar.d(i11 - 1, 6);
            return e(aVar, 28, 4);
        }
        aVar.d(i10 - 1, 5);
        aVar.d(i11 - 1, 11);
        return e(aVar, 40, 4);
    }

    private static m7.a g(int i10) {
        if (i10 == 4) {
            return m7.a.f32183k;
        }
        if (i10 == 6) {
            return m7.a.f32182j;
        }
        if (i10 == 8) {
            return m7.a.f32186n;
        }
        if (i10 == 10) {
            return m7.a.f32181i;
        }
        if (i10 == 12) {
            return m7.a.f32180h;
        }
        throw new IllegalArgumentException("Unsupported word size ".concat(String.valueOf(i10)));
    }

    static l7.a h(l7.a aVar, int i10) {
        l7.a aVar2 = new l7.a();
        int i11 = aVar.i();
        int i12 = (1 << i10) - 2;
        int i13 = 0;
        while (i13 < i11) {
            int i14 = 0;
            for (int i15 = 0; i15 < i10; i15++) {
                int i16 = i13 + i15;
                if (i16 >= i11 || aVar.h(i16)) {
                    i14 |= 1 << ((i10 - 1) - i15);
                }
            }
            int i17 = i14 & i12;
            if (i17 == i12) {
                aVar2.d(i17, i10);
            } else if (i17 == 0) {
                aVar2.d(i14 | 1, i10);
            } else {
                aVar2.d(i14, i10);
                i13 += i10;
            }
            i13--;
            i13 += i10;
        }
        return aVar2;
    }

    private static int i(int i10, boolean z10) {
        return ((z10 ? 88 : 112) + (i10 << 4)) * i10;
    }
}
