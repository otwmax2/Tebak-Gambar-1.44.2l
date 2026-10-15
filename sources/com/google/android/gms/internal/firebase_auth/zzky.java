package com.google.android.gms.internal.firebase_auth;

import com.google.android.gms.internal.firebase_auth.zzif;
import java.io.IOException;
import java.util.Arrays;

/* JADX INFO: compiled from: com.google.firebase:firebase-auth@@19.3.1 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzky {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final zzky f22871f = new zzky(0, new int[0], new Object[0], false);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f22872a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int[] f22873b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Object[] f22874c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f22875d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f22876e;

    private zzky() {
        this(0, new int[8], new Object[8], true);
    }

    public static zzky a() {
        return f22871f;
    }

    static zzky b(zzky zzkyVar, zzky zzkyVar2) {
        int i10 = zzkyVar.f22872a + zzkyVar2.f22872a;
        int[] iArrCopyOf = Arrays.copyOf(zzkyVar.f22873b, i10);
        System.arraycopy(zzkyVar2.f22873b, 0, iArrCopyOf, zzkyVar.f22872a, zzkyVar2.f22872a);
        Object[] objArrCopyOf = Arrays.copyOf(zzkyVar.f22874c, i10);
        System.arraycopy(zzkyVar2.f22874c, 0, objArrCopyOf, zzkyVar.f22872a, zzkyVar2.f22872a);
        return new zzky(i10, iArrCopyOf, objArrCopyOf, true);
    }

    private static void c(int i10, Object obj, zzls zzlsVar) throws IOException {
        int i11 = i10 >>> 3;
        int i12 = i10 & 7;
        if (i12 == 0) {
            zzlsVar.a(i11, ((Long) obj).longValue());
            return;
        }
        if (i12 == 1) {
            zzlsVar.I(i11, ((Long) obj).longValue());
            return;
        }
        if (i12 == 2) {
            zzlsVar.G(i11, (zzgv) obj);
            return;
        }
        if (i12 != 3) {
            if (i12 != 5) {
                throw new RuntimeException(zzin.c());
            }
            zzlsVar.A(i11, ((Integer) obj).intValue());
        } else if (zzlsVar.zza() == zzif.zzf.f22758l) {
            zzlsVar.h(i11);
            ((zzky) obj).f(zzlsVar);
            zzlsVar.z(i11);
        } else {
            zzlsVar.z(i11);
            ((zzky) obj).f(zzlsVar);
            zzlsVar.h(i11);
        }
    }

    final void d(zzls zzlsVar) throws IOException {
        if (zzlsVar.zza() == zzif.zzf.f22759m) {
            for (int i10 = this.f22872a - 1; i10 >= 0; i10--) {
                zzlsVar.p(this.f22873b[i10] >>> 3, this.f22874c[i10]);
            }
            return;
        }
        for (int i11 = 0; i11 < this.f22872a; i11++) {
            zzlsVar.p(this.f22873b[i11] >>> 3, this.f22874c[i11]);
        }
    }

    final void e(StringBuilder sb, int i10) {
        for (int i11 = 0; i11 < this.f22872a; i11++) {
            zzjs.d(sb, i10, String.valueOf(this.f22873b[i11] >>> 3), this.f22874c[i11]);
        }
    }

    public final boolean equals(Object obj) {
        boolean z10;
        boolean z11;
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof zzky)) {
            return false;
        }
        zzky zzkyVar = (zzky) obj;
        int i10 = this.f22872a;
        if (i10 == zzkyVar.f22872a) {
            int[] iArr = this.f22873b;
            int[] iArr2 = zzkyVar.f22873b;
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
                Object[] objArr = this.f22874c;
                Object[] objArr2 = zzkyVar.f22874c;
                int i12 = this.f22872a;
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

    public final void f(zzls zzlsVar) throws IOException {
        if (this.f22872a == 0) {
            return;
        }
        if (zzlsVar.zza() == zzif.zzf.f22758l) {
            for (int i10 = 0; i10 < this.f22872a; i10++) {
                c(this.f22873b[i10], this.f22874c[i10], zzlsVar);
            }
            return;
        }
        for (int i11 = this.f22872a - 1; i11 >= 0; i11--) {
            c(this.f22873b[i11], this.f22874c[i11], zzlsVar);
        }
    }

    public final void g() {
        this.f22876e = false;
    }

    public final int h() {
        int i10 = this.f22875d;
        if (i10 != -1) {
            return i10;
        }
        int iD0 = 0;
        for (int i11 = 0; i11 < this.f22872a; i11++) {
            iD0 += zzhm.d0(this.f22873b[i11] >>> 3, (zzgv) this.f22874c[i11]);
        }
        this.f22875d = iD0;
        return iD0;
    }

    public final int hashCode() {
        int i10 = this.f22872a;
        int i11 = (i10 + 527) * 31;
        int[] iArr = this.f22873b;
        int iHashCode = 17;
        int i12 = 17;
        for (int i13 = 0; i13 < i10; i13++) {
            i12 = (i12 * 31) + iArr[i13];
        }
        int i14 = (i11 + i12) * 31;
        Object[] objArr = this.f22874c;
        int i15 = this.f22872a;
        for (int i16 = 0; i16 < i15; i16++) {
            iHashCode = (iHashCode * 31) + objArr[i16].hashCode();
        }
        return i14 + iHashCode;
    }

    public final int i() {
        int iI0;
        int i10 = this.f22875d;
        if (i10 != -1) {
            return i10;
        }
        int i11 = 0;
        for (int i12 = 0; i12 < this.f22872a; i12++) {
            int i13 = this.f22873b[i12];
            int i14 = i13 >>> 3;
            int i15 = i13 & 7;
            if (i15 == 0) {
                iI0 = zzhm.i0(i14, ((Long) this.f22874c[i12]).longValue());
            } else if (i15 == 1) {
                iI0 = zzhm.r0(i14, ((Long) this.f22874c[i12]).longValue());
            } else if (i15 == 2) {
                iI0 = zzhm.U(i14, (zzgv) this.f22874c[i12]);
            } else if (i15 == 3) {
                iI0 = (zzhm.h0(i14) << 1) + ((zzky) this.f22874c[i12]).i();
            } else {
                if (i15 != 5) {
                    throw new IllegalStateException(zzin.c());
                }
                iI0 = zzhm.y0(i14, ((Integer) this.f22874c[i12]).intValue());
            }
            i11 += iI0;
        }
        this.f22875d = i11;
        return i11;
    }

    private zzky(int i10, int[] iArr, Object[] objArr, boolean z10) {
        this.f22875d = -1;
        this.f22872a = i10;
        this.f22873b = iArr;
        this.f22874c = objArr;
        this.f22876e = z10;
    }
}
