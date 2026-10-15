package com.google.android.gms.internal.ads;

import java.util.Arrays;
import java.util.Random;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzum {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Random f20801a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int[] f20802b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final int[] f20803c;

    public zzum(int i10) {
        this(0, new Random());
    }

    public final int a() {
        int[] iArr = this.f20802b;
        if (iArr.length > 0) {
            return iArr[0];
        }
        return -1;
    }

    public final int b() {
        int[] iArr = this.f20802b;
        int length = iArr.length;
        if (length > 0) {
            return iArr[length - 1];
        }
        return -1;
    }

    public final int c() {
        return this.f20802b.length;
    }

    public final int d(int i10) {
        int i11 = this.f20803c[i10] + 1;
        int[] iArr = this.f20802b;
        if (i11 < iArr.length) {
            return iArr[i11];
        }
        return -1;
    }

    public final int e(int i10) {
        int i11 = this.f20803c[i10] - 1;
        if (i11 >= 0) {
            return this.f20802b[i11];
        }
        return -1;
    }

    public final zzum f() {
        return new zzum(0, new Random(this.f20801a.nextLong()));
    }

    public final zzum g(int i10, int i11) {
        int[] iArr = new int[i11];
        int[] iArr2 = new int[i11];
        int i12 = 0;
        int i13 = 0;
        while (i13 < i11) {
            iArr[i13] = this.f20801a.nextInt(this.f20802b.length + 1);
            int i14 = i13 + 1;
            int iNextInt = this.f20801a.nextInt(i14);
            iArr2[i13] = iArr2[iNextInt];
            iArr2[iNextInt] = i13;
            i13 = i14;
        }
        Arrays.sort(iArr);
        int[] iArr3 = new int[this.f20802b.length + i11];
        int i15 = 0;
        int i16 = 0;
        while (true) {
            int[] iArr4 = this.f20802b;
            if (i12 >= iArr4.length + i11) {
                return new zzum(iArr3, new Random(this.f20801a.nextLong()));
            }
            if (i15 >= i11 || i16 != iArr[i15]) {
                int i17 = i16 + 1;
                int i18 = iArr4[i16];
                iArr3[i12] = i18;
                if (i18 >= 0) {
                    iArr3[i12] = i18 + i11;
                }
                i16 = i17;
            } else {
                iArr3[i12] = iArr2[i15];
                i15++;
            }
            i12++;
        }
    }

    public final zzum h(int i10, int i11) {
        int[] iArr = new int[this.f20802b.length - i11];
        int i12 = 0;
        int i13 = 0;
        while (true) {
            int[] iArr2 = this.f20802b;
            if (i12 >= iArr2.length) {
                return new zzum(iArr, new Random(this.f20801a.nextLong()));
            }
            int i14 = iArr2[i12];
            if (i14 < 0 || i14 >= i11) {
                int i15 = i12 - i13;
                if (i14 >= 0) {
                    i14 -= i11;
                }
                iArr[i15] = i14;
            } else {
                i13++;
            }
            i12++;
        }
    }

    private zzum(int i10, Random random) {
        this(new int[0], random);
    }

    private zzum(int[] iArr, Random random) {
        this.f20802b = iArr;
        this.f20801a = random;
        this.f20803c = new int[iArr.length];
        for (int i10 = 0; i10 < iArr.length; i10++) {
            this.f20803c[iArr[i10]] = i10;
        }
    }
}
