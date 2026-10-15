package com.google.android.gms.internal.ads;

import java.util.Arrays;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzwg {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String[] f20941a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int[] f20942b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final zzur[] f20943c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final int[] f20944d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final int[][][] f20945e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final zzur f20946f;

    zzwg(String[] strArr, int[] iArr, zzur[] zzurVarArr, int[] iArr2, int[][][] iArr3, zzur zzurVar) {
        this.f20941a = strArr;
        this.f20942b = iArr;
        this.f20943c = zzurVarArr;
        this.f20945e = iArr3;
        this.f20944d = iArr2;
        this.f20946f = zzurVar;
    }

    public final int a(int i10, int i11, boolean z10) {
        int i12 = this.f20943c[i10].b(i11).f13690a;
        int[] iArr = new int[1];
        int i13 = 0;
        int i14 = 0;
        for (int i15 = 0; i15 <= 0; i15++) {
            if ((this.f20945e[i10][i11][i15] & 7) == 4) {
                iArr[i14] = i15;
                i14++;
            }
        }
        int[] iArrCopyOf = Arrays.copyOf(iArr, i14);
        String str = null;
        boolean z11 = false;
        int i16 = 0;
        int iMin = 16;
        while (i13 < iArrCopyOf.length) {
            String str2 = this.f20943c[i10].b(i11).b(iArrCopyOf[i13]).f8731l;
            int i17 = i16 + 1;
            if (i16 == 0) {
                str = str2;
            } else {
                z11 |= !zzew.u(str, str2);
            }
            iMin = Math.min(iMin, this.f20945e[i10][i11][i13] & 24);
            i13++;
            i16 = i17;
        }
        return z11 ? Math.min(iMin, this.f20944d[i10]) : iMin;
    }

    public final int b(int i10, int i11, int i12) {
        return this.f20945e[i10][i11][i12];
    }

    public final int c(int i10) {
        return this.f20942b[i10];
    }

    public final zzur d(int i10) {
        return this.f20943c[i10];
    }

    public final zzur e() {
        return this.f20946f;
    }
}
