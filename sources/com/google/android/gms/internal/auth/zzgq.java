package com.google.android.gms.internal.auth;

import java.util.Arrays;

/* JADX INFO: compiled from: com.google.android.gms:play-services-auth-base@@17.1.4 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzgq {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final zzgq f21567e = new zzgq(0, new int[0], new Object[0], false);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f21568a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int[] f21569b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Object[] f21570c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f21571d;

    private zzgq() {
        this(0, new int[8], new Object[8], true);
    }

    private zzgq(int i10, int[] iArr, Object[] objArr, boolean z10) {
        this.f21568a = i10;
        this.f21569b = iArr;
        this.f21570c = objArr;
        this.f21571d = z10;
    }

    public static zzgq a() {
        return f21567e;
    }

    static zzgq b(zzgq zzgqVar, zzgq zzgqVar2) {
        int i10 = zzgqVar.f21568a + zzgqVar2.f21568a;
        int[] iArrCopyOf = Arrays.copyOf(zzgqVar.f21569b, i10);
        System.arraycopy(zzgqVar2.f21569b, 0, iArrCopyOf, zzgqVar.f21568a, zzgqVar2.f21568a);
        Object[] objArrCopyOf = Arrays.copyOf(zzgqVar.f21570c, i10);
        System.arraycopy(zzgqVar2.f21570c, 0, objArrCopyOf, zzgqVar.f21568a, zzgqVar2.f21568a);
        return new zzgq(i10, iArrCopyOf, objArrCopyOf, true);
    }

    static zzgq c() {
        return new zzgq(0, new int[8], new Object[8], true);
    }

    public final void d() {
        this.f21571d = false;
    }

    final void e(StringBuilder sb, int i10) {
        for (int i11 = 0; i11 < this.f21568a; i11++) {
            zzfs.b(sb, i10, String.valueOf(this.f21569b[i11] >>> 3), this.f21570c[i11]);
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof zzgq)) {
            return false;
        }
        zzgq zzgqVar = (zzgq) obj;
        int i10 = this.f21568a;
        if (i10 == zzgqVar.f21568a) {
            int[] iArr = this.f21569b;
            int[] iArr2 = zzgqVar.f21569b;
            int i11 = 0;
            while (true) {
                if (i11 >= i10) {
                    Object[] objArr = this.f21570c;
                    Object[] objArr2 = zzgqVar.f21570c;
                    int i12 = this.f21568a;
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

    final void f(int i10, Object obj) {
        if (!this.f21571d) {
            throw new UnsupportedOperationException();
        }
        int i11 = this.f21568a;
        int[] iArr = this.f21569b;
        if (i11 == iArr.length) {
            int i12 = i11 + (i11 < 4 ? 8 : i11 >> 1);
            this.f21569b = Arrays.copyOf(iArr, i12);
            this.f21570c = Arrays.copyOf(this.f21570c, i12);
        }
        int[] iArr2 = this.f21569b;
        int i13 = this.f21568a;
        iArr2[i13] = i10;
        this.f21570c[i13] = obj;
        this.f21568a = i13 + 1;
    }

    public final int hashCode() {
        int i10 = this.f21568a;
        int i11 = (i10 + 527) * 31;
        int[] iArr = this.f21569b;
        int iHashCode = 17;
        int i12 = 17;
        for (int i13 = 0; i13 < i10; i13++) {
            i12 = (i12 * 31) + iArr[i13];
        }
        int i14 = (i11 + i12) * 31;
        Object[] objArr = this.f21570c;
        int i15 = this.f21568a;
        for (int i16 = 0; i16 < i15; i16++) {
            iHashCode = (iHashCode * 31) + objArr[i16].hashCode();
        }
        return i14 + iHashCode;
    }
}
