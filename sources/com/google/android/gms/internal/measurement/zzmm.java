package com.google.android.gms.internal.measurement;

import java.io.IOException;
import java.util.Arrays;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-base@@20.1.2 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzmm {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final zzmm f23755f = new zzmm(0, new int[0], new Object[0], false);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f23756a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int[] f23757b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Object[] f23758c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f23759d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f23760e;

    private zzmm() {
        this(0, new int[8], new Object[8], true);
    }

    private zzmm(int i10, int[] iArr, Object[] objArr, boolean z10) {
        this.f23759d = -1;
        this.f23756a = i10;
        this.f23757b = iArr;
        this.f23758c = objArr;
        this.f23760e = z10;
    }

    public static zzmm c() {
        return f23755f;
    }

    static zzmm d(zzmm zzmmVar, zzmm zzmmVar2) {
        int i10 = zzmmVar.f23756a + zzmmVar2.f23756a;
        int[] iArrCopyOf = Arrays.copyOf(zzmmVar.f23757b, i10);
        System.arraycopy(zzmmVar2.f23757b, 0, iArrCopyOf, zzmmVar.f23756a, zzmmVar2.f23756a);
        Object[] objArrCopyOf = Arrays.copyOf(zzmmVar.f23758c, i10);
        System.arraycopy(zzmmVar2.f23758c, 0, objArrCopyOf, zzmmVar.f23756a, zzmmVar2.f23756a);
        return new zzmm(i10, iArrCopyOf, objArrCopyOf, true);
    }

    static zzmm e() {
        return new zzmm(0, new int[8], new Object[8], true);
    }

    public final int a() {
        int iA;
        int iB;
        int iA2;
        int i10 = this.f23759d;
        if (i10 != -1) {
            return i10;
        }
        int iA3 = 0;
        for (int i11 = 0; i11 < this.f23756a; i11++) {
            int i12 = this.f23757b[i11];
            int i13 = i12 >>> 3;
            int i14 = i12 & 7;
            if (i14 != 0) {
                if (i14 == 1) {
                    ((Long) this.f23758c[i11]).longValue();
                    iA2 = zzjj.a(i13 << 3) + 8;
                } else if (i14 == 2) {
                    zzjb zzjbVar = (zzjb) this.f23758c[i11];
                    int iA4 = zzjj.a(i13 << 3);
                    int i15 = zzjbVar.i();
                    iA3 += iA4 + zzjj.a(i15) + i15;
                } else if (i14 == 3) {
                    int iD = zzjj.D(i13);
                    iA = iD + iD;
                    iB = ((zzmm) this.f23758c[i11]).a();
                } else {
                    if (i14 != 5) {
                        throw new IllegalStateException(zzkm.a());
                    }
                    ((Integer) this.f23758c[i11]).intValue();
                    iA2 = zzjj.a(i13 << 3) + 4;
                }
                iA3 += iA2;
            } else {
                long jLongValue = ((Long) this.f23758c[i11]).longValue();
                iA = zzjj.a(i13 << 3);
                iB = zzjj.b(jLongValue);
            }
            iA2 = iA + iB;
            iA3 += iA2;
        }
        this.f23759d = iA3;
        return iA3;
    }

    public final int b() {
        int i10 = this.f23759d;
        if (i10 != -1) {
            return i10;
        }
        int iA = 0;
        for (int i11 = 0; i11 < this.f23756a; i11++) {
            int i12 = this.f23757b[i11];
            zzjb zzjbVar = (zzjb) this.f23758c[i11];
            int iA2 = zzjj.a(8);
            int i13 = zzjbVar.i();
            iA += iA2 + iA2 + zzjj.a(16) + zzjj.a(i12 >>> 3) + zzjj.a(24) + zzjj.a(i13) + i13;
        }
        this.f23759d = iA;
        return iA;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof zzmm)) {
            return false;
        }
        zzmm zzmmVar = (zzmm) obj;
        int i10 = this.f23756a;
        if (i10 == zzmmVar.f23756a) {
            int[] iArr = this.f23757b;
            int[] iArr2 = zzmmVar.f23757b;
            int i11 = 0;
            while (true) {
                if (i11 >= i10) {
                    Object[] objArr = this.f23758c;
                    Object[] objArr2 = zzmmVar.f23758c;
                    int i12 = this.f23756a;
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

    public final void f() {
        this.f23760e = false;
    }

    final void g(StringBuilder sb, int i10) {
        for (int i11 = 0; i11 < this.f23756a; i11++) {
            zzll.b(sb, i10, String.valueOf(this.f23757b[i11] >>> 3), this.f23758c[i11]);
        }
    }

    final void h(int i10, Object obj) {
        if (!this.f23760e) {
            throw new UnsupportedOperationException();
        }
        int i11 = this.f23756a;
        int[] iArr = this.f23757b;
        if (i11 == iArr.length) {
            int i12 = i11 + (i11 < 4 ? 8 : i11 >> 1);
            this.f23757b = Arrays.copyOf(iArr, i12);
            this.f23758c = Arrays.copyOf(this.f23758c, i12);
        }
        int[] iArr2 = this.f23757b;
        int i13 = this.f23756a;
        iArr2[i13] = i10;
        this.f23758c[i13] = obj;
        this.f23756a = i13 + 1;
    }

    public final int hashCode() {
        int i10 = this.f23756a;
        int i11 = (i10 + 527) * 31;
        int[] iArr = this.f23757b;
        int iHashCode = 17;
        int i12 = 17;
        for (int i13 = 0; i13 < i10; i13++) {
            i12 = (i12 * 31) + iArr[i13];
        }
        int i14 = (i11 + i12) * 31;
        Object[] objArr = this.f23758c;
        int i15 = this.f23756a;
        for (int i16 = 0; i16 < i15; i16++) {
            iHashCode = (iHashCode * 31) + objArr[i16].hashCode();
        }
        return i14 + iHashCode;
    }

    public final void i(zznd zzndVar) throws IOException {
        if (this.f23756a != 0) {
            for (int i10 = 0; i10 < this.f23756a; i10++) {
                int i11 = this.f23757b[i10];
                Object obj = this.f23758c[i10];
                int i12 = i11 >>> 3;
                int i13 = i11 & 7;
                if (i13 == 0) {
                    zzndVar.p(i12, ((Long) obj).longValue());
                } else if (i13 == 1) {
                    zzndVar.h(i12, ((Long) obj).longValue());
                } else if (i13 == 2) {
                    zzndVar.l(i12, (zzjb) obj);
                } else if (i13 == 3) {
                    zzndVar.v0(i12);
                    ((zzmm) obj).i(zzndVar);
                    zzndVar.j0(i12);
                } else {
                    if (i13 != 5) {
                        throw new RuntimeException(zzkm.a());
                    }
                    zzndVar.k(i12, ((Integer) obj).intValue());
                }
            }
        }
    }
}
