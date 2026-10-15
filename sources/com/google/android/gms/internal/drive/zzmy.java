package com.google.android.gms.internal.drive;

import com.google.android.gms.internal.drive.zzkk;
import java.io.IOException;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public final class zzmy {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final zzmy f22304f = new zzmy(0, new int[0], new Object[0], false);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f22305a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int[] f22306b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Object[] f22307c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f22308d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f22309e;

    private zzmy() {
        this(0, new int[8], new Object[8], true);
    }

    static zzmy a(zzmy zzmyVar, zzmy zzmyVar2) {
        int i10 = zzmyVar.f22305a + zzmyVar2.f22305a;
        int[] iArrCopyOf = Arrays.copyOf(zzmyVar.f22306b, i10);
        System.arraycopy(zzmyVar2.f22306b, 0, iArrCopyOf, zzmyVar.f22305a, zzmyVar2.f22305a);
        Object[] objArrCopyOf = Arrays.copyOf(zzmyVar.f22307c, i10);
        System.arraycopy(zzmyVar2.f22307c, 0, objArrCopyOf, zzmyVar.f22305a, zzmyVar2.f22305a);
        return new zzmy(i10, iArrCopyOf, objArrCopyOf, true);
    }

    private static void d(int i10, Object obj, zzns zznsVar) throws IOException {
        int i11 = i10 >>> 3;
        int i12 = i10 & 7;
        if (i12 == 0) {
            zznsVar.G(i11, ((Long) obj).longValue());
            return;
        }
        if (i12 == 1) {
            zznsVar.o(i11, ((Long) obj).longValue());
            return;
        }
        if (i12 == 2) {
            zznsVar.L(i11, (zzjc) obj);
            return;
        }
        if (i12 != 3) {
            if (i12 != 5) {
                throw new RuntimeException(zzkq.c());
            }
            zznsVar.v(i11, ((Integer) obj).intValue());
        } else if (zznsVar.J() == zzkk.zze.f22187l) {
            zznsVar.H(i11);
            ((zzmy) obj).e(zznsVar);
            zznsVar.E(i11);
        } else {
            zznsVar.E(i11);
            ((zzmy) obj).e(zznsVar);
            zznsVar.H(i11);
        }
    }

    public static zzmy h() {
        return f22304f;
    }

    final void b(zzns zznsVar) throws IOException {
        if (zznsVar.J() == zzkk.zze.f22188m) {
            for (int i10 = this.f22305a - 1; i10 >= 0; i10--) {
                zznsVar.p(this.f22306b[i10] >>> 3, this.f22307c[i10]);
            }
            return;
        }
        for (int i11 = 0; i11 < this.f22305a; i11++) {
            zznsVar.p(this.f22306b[i11] >>> 3, this.f22307c[i11]);
        }
    }

    final void c(StringBuilder sb, int i10) {
        for (int i11 = 0; i11 < this.f22305a; i11++) {
            zzlt.c(sb, i10, String.valueOf(this.f22306b[i11] >>> 3), this.f22307c[i11]);
        }
    }

    public final void e(zzns zznsVar) throws IOException {
        if (this.f22305a == 0) {
            return;
        }
        if (zznsVar.J() == zzkk.zze.f22187l) {
            for (int i10 = 0; i10 < this.f22305a; i10++) {
                d(this.f22306b[i10], this.f22307c[i10], zznsVar);
            }
            return;
        }
        for (int i11 = this.f22305a - 1; i11 >= 0; i11--) {
            d(this.f22306b[i11], this.f22307c[i11], zznsVar);
        }
    }

    public final boolean equals(Object obj) {
        boolean z10;
        boolean z11;
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof zzmy)) {
            return false;
        }
        zzmy zzmyVar = (zzmy) obj;
        int i10 = this.f22305a;
        if (i10 == zzmyVar.f22305a) {
            int[] iArr = this.f22306b;
            int[] iArr2 = zzmyVar.f22306b;
            int i11 = 0;
            while (true) {
                if (i11 >= i10) {
                    z10 = true;
                    break;
                }
                if (iArr[i11] != iArr2[i11]) {
                    z10 = false;
                    break;
                }
                i11++;
            }
            if (z10) {
                Object[] objArr = this.f22307c;
                Object[] objArr2 = zzmyVar.f22307c;
                int i12 = this.f22305a;
                int i13 = 0;
                while (true) {
                    if (i13 >= i12) {
                        z11 = true;
                        break;
                    }
                    if (!objArr[i13].equals(objArr2[i13])) {
                        z11 = false;
                        break;
                    }
                    i13++;
                }
                if (z11) {
                    return true;
                }
            }
        }
        return false;
    }

    public final void f() {
        this.f22309e = false;
    }

    public final int g() {
        int iG0;
        int i10 = this.f22308d;
        if (i10 != -1) {
            return i10;
        }
        int i11 = 0;
        for (int i12 = 0; i12 < this.f22305a; i12++) {
            int i13 = this.f22306b[i12];
            int i14 = i13 >>> 3;
            int i15 = i13 & 7;
            if (i15 == 0) {
                iG0 = zzjr.g0(i14, ((Long) this.f22307c[i12]).longValue());
            } else if (i15 == 1) {
                iG0 = zzjr.l0(i14, ((Long) this.f22307c[i12]).longValue());
            } else if (i15 == 2) {
                iG0 = zzjr.O(i14, (zzjc) this.f22307c[i12]);
            } else if (i15 == 3) {
                iG0 = (zzjr.q(i14) << 1) + ((zzmy) this.f22307c[i12]).g();
            } else {
                if (i15 != 5) {
                    throw new IllegalStateException(zzkq.c());
                }
                iG0 = zzjr.p0(i14, ((Integer) this.f22307c[i12]).intValue());
            }
            i11 += iG0;
        }
        this.f22308d = i11;
        return i11;
    }

    public final int hashCode() {
        int i10 = this.f22305a;
        int i11 = (i10 + 527) * 31;
        int[] iArr = this.f22306b;
        int iHashCode = 17;
        int i12 = 17;
        for (int i13 = 0; i13 < i10; i13++) {
            i12 = (i12 * 31) + iArr[i13];
        }
        int i14 = (i11 + i12) * 31;
        Object[] objArr = this.f22307c;
        int i15 = this.f22305a;
        for (int i16 = 0; i16 < i15; i16++) {
            iHashCode = (iHashCode * 31) + objArr[i16].hashCode();
        }
        return i14 + iHashCode;
    }

    public final int i() {
        int i10 = this.f22308d;
        if (i10 != -1) {
            return i10;
        }
        int iB0 = 0;
        for (int i11 = 0; i11 < this.f22305a; i11++) {
            iB0 += zzjr.b0(this.f22306b[i11] >>> 3, (zzjc) this.f22307c[i11]);
        }
        this.f22308d = iB0;
        return iB0;
    }

    private zzmy(int i10, int[] iArr, Object[] objArr, boolean z10) {
        this.f22308d = -1;
        this.f22305a = i10;
        this.f22306b = iArr;
        this.f22307c = objArr;
        this.f22309e = z10;
    }
}
