package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.util.Arrays;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzgth {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final zzgth f19615f = new zzgth(0, new int[0], new Object[0], false);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f19616a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int[] f19617b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Object[] f19618c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f19619d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f19620e;

    private zzgth() {
        this(0, new int[8], new Object[8], true);
    }

    private zzgth(int i10, int[] iArr, Object[] objArr, boolean z10) {
        this.f19619d = -1;
        this.f19616a = i10;
        this.f19617b = iArr;
        this.f19618c = objArr;
        this.f19620e = z10;
    }

    public static zzgth c() {
        return f19615f;
    }

    static zzgth e(zzgth zzgthVar, zzgth zzgthVar2) {
        int i10 = zzgthVar.f19616a + zzgthVar2.f19616a;
        int[] iArrCopyOf = Arrays.copyOf(zzgthVar.f19617b, i10);
        System.arraycopy(zzgthVar2.f19617b, 0, iArrCopyOf, zzgthVar.f19616a, zzgthVar2.f19616a);
        Object[] objArrCopyOf = Arrays.copyOf(zzgthVar.f19618c, i10);
        System.arraycopy(zzgthVar2.f19618c, 0, objArrCopyOf, zzgthVar.f19616a, zzgthVar2.f19616a);
        return new zzgth(i10, iArrCopyOf, objArrCopyOf, true);
    }

    static zzgth f() {
        return new zzgth(0, new int[8], new Object[8], true);
    }

    private final void l(int i10) {
        int[] iArr = this.f19617b;
        if (i10 > iArr.length) {
            int i11 = this.f19616a;
            int i12 = i11 + (i11 / 2);
            if (i12 >= i10) {
                i10 = i12;
            }
            if (i10 < 8) {
                i10 = 8;
            }
            this.f19617b = Arrays.copyOf(iArr, i10);
            this.f19618c = Arrays.copyOf(this.f19618c, i10);
        }
    }

    public final int a() {
        int iG;
        int iF;
        int iF2;
        int i10 = this.f19619d;
        if (i10 != -1) {
            return i10;
        }
        int i11 = 0;
        for (int i12 = 0; i12 < this.f19616a; i12++) {
            int i13 = this.f19617b[i12];
            int i14 = i13 >>> 3;
            int i15 = i13 & 7;
            if (i15 != 0) {
                if (i15 == 1) {
                    ((Long) this.f19618c[i12]).longValue();
                    iF2 = zzgpt.f(i14 << 3) + 8;
                } else if (i15 == 2) {
                    zzgpe zzgpeVar = (zzgpe) this.f19618c[i12];
                    int i16 = zzgpt.f19428d;
                    int iO = zzgpeVar.o();
                    iF2 = zzgpt.f(i14 << 3) + zzgpt.f(iO) + iO;
                } else if (i15 == 3) {
                    int iE = zzgpt.e(i14);
                    iG = ((zzgth) this.f19618c[i12]).a();
                    iF = iE + iE;
                } else {
                    if (i15 != 5) {
                        throw new IllegalStateException(zzgqy.a());
                    }
                    ((Integer) this.f19618c[i12]).intValue();
                    iF2 = zzgpt.f(i14 << 3) + 4;
                }
                i11 += iF2;
            } else {
                int i17 = i14 << 3;
                iG = zzgpt.g(((Long) this.f19618c[i12]).longValue());
                iF = zzgpt.f(i17);
            }
            iF2 = iF + iG;
            i11 += iF2;
        }
        this.f19619d = i11;
        return i11;
    }

    public final int b() {
        int i10 = this.f19619d;
        if (i10 != -1) {
            return i10;
        }
        int iF = 0;
        for (int i11 = 0; i11 < this.f19616a; i11++) {
            int i12 = this.f19617b[i11] >>> 3;
            zzgpe zzgpeVar = (zzgpe) this.f19618c[i11];
            int i13 = zzgpt.f19428d;
            int iO = zzgpeVar.o();
            int iF2 = zzgpt.f(iO) + iO;
            int iF3 = zzgpt.f(16);
            int iF4 = zzgpt.f(i12);
            int iF5 = zzgpt.f(8);
            iF += iF5 + iF5 + iF3 + iF4 + zzgpt.f(24) + iF2;
        }
        this.f19619d = iF;
        return iF;
    }

    final zzgth d(zzgth zzgthVar) {
        if (zzgthVar.equals(f19615f)) {
            return this;
        }
        g();
        int i10 = this.f19616a + zzgthVar.f19616a;
        l(i10);
        System.arraycopy(zzgthVar.f19617b, 0, this.f19617b, this.f19616a, zzgthVar.f19616a);
        System.arraycopy(zzgthVar.f19618c, 0, this.f19618c, this.f19616a, zzgthVar.f19616a);
        this.f19616a = i10;
        return this;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof zzgth)) {
            return false;
        }
        zzgth zzgthVar = (zzgth) obj;
        int i10 = this.f19616a;
        if (i10 == zzgthVar.f19616a) {
            int[] iArr = this.f19617b;
            int[] iArr2 = zzgthVar.f19617b;
            int i11 = 0;
            while (true) {
                if (i11 >= i10) {
                    Object[] objArr = this.f19618c;
                    Object[] objArr2 = zzgthVar.f19618c;
                    int i12 = this.f19616a;
                    for (int i13 = 0; i13 < i12; i13++) {
                        if (objArr[i13].equals(objArr2[i13])) {
                        }
                    }
                    return true;
                }
                if (iArr[i11] != iArr2[i11]) {
                    break;
                }
                i11++;
            }
        }
        return false;
    }

    final void g() {
        if (!this.f19620e) {
            throw new UnsupportedOperationException();
        }
    }

    public final void h() {
        this.f19620e = false;
    }

    public final int hashCode() {
        int i10 = this.f19616a;
        int i11 = i10 + 527;
        int[] iArr = this.f19617b;
        int iHashCode = 17;
        int i12 = 17;
        for (int i13 = 0; i13 < i10; i13++) {
            i12 = (i12 * 31) + iArr[i13];
        }
        int i14 = (i11 * 31) + i12;
        Object[] objArr = this.f19618c;
        int i15 = this.f19616a;
        for (int i16 = 0; i16 < i15; i16++) {
            iHashCode = (iHashCode * 31) + objArr[i16].hashCode();
        }
        return (i14 * 31) + iHashCode;
    }

    final void i(StringBuilder sb, int i10) {
        for (int i11 = 0; i11 < this.f19616a; i11++) {
            zzgry.b(sb, i10, String.valueOf(this.f19617b[i11] >>> 3), this.f19618c[i11]);
        }
    }

    final void j(int i10, Object obj) {
        g();
        l(this.f19616a + 1);
        int[] iArr = this.f19617b;
        int i11 = this.f19616a;
        iArr[i11] = i10;
        this.f19618c[i11] = obj;
        this.f19616a = i11 + 1;
    }

    public final void k(zzgpu zzgpuVar) throws IOException {
        if (this.f19616a != 0) {
            for (int i10 = 0; i10 < this.f19616a; i10++) {
                int i11 = this.f19617b[i10];
                Object obj = this.f19618c[i10];
                int i12 = i11 & 7;
                int i13 = i11 >>> 3;
                if (i12 == 0) {
                    zzgpuVar.E(i13, ((Long) obj).longValue());
                } else if (i12 == 1) {
                    zzgpuVar.x(i13, ((Long) obj).longValue());
                } else if (i12 == 2) {
                    zzgpuVar.o(i13, (zzgpe) obj);
                } else if (i12 == 3) {
                    zzgpuVar.e(i13);
                    ((zzgth) obj).k(zzgpuVar);
                    zzgpuVar.s(i13);
                } else {
                    if (i12 != 5) {
                        throw new RuntimeException(zzgqy.a());
                    }
                    zzgpuVar.v(i13, ((Integer) obj).intValue());
                }
            }
        }
    }
}
