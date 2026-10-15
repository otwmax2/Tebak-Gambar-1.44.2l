package com.google.android.gms.internal.ads;

import java.util.Arrays;
import org.checkerframework.dataflow.qual.Pure;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes.dex */
public final class zzq {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final zzq f20442f = new zzq(1, 2, 3, null);

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final String f20443g = zzew.p(0);

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static final String f20444h = zzew.p(1);

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static final String f20445i = zzew.p(2);

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static final String f20446j = zzew.p(3);

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final zzn f20447k = new zzn() { // from class: com.google.android.gms.internal.ads.zzp
    };

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f20448a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f20449b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f20450c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final byte[] f20451d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f20452e;

    @Deprecated
    public zzq(int i10, int i11, int i12, byte[] bArr) {
        this.f20448a = i10;
        this.f20449b = i11;
        this.f20450c = i12;
        this.f20451d = bArr;
    }

    @Pure
    public static int a(int i10) {
        if (i10 == 1) {
            return 1;
        }
        if (i10 != 9) {
            return (i10 == 4 || i10 == 5 || i10 == 6 || i10 == 7) ? 2 : -1;
        }
        return 6;
    }

    @Pure
    public static int b(int i10) {
        if (i10 == 1) {
            return 3;
        }
        if (i10 == 16) {
            return 6;
        }
        if (i10 != 18) {
            return (i10 == 6 || i10 == 7) ? 3 : -1;
        }
        return 7;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && zzq.class == obj.getClass()) {
            zzq zzqVar = (zzq) obj;
            if (this.f20448a == zzqVar.f20448a && this.f20449b == zzqVar.f20449b && this.f20450c == zzqVar.f20450c && Arrays.equals(this.f20451d, zzqVar.f20451d)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int i10 = this.f20452e;
        if (i10 != 0) {
            return i10;
        }
        int iHashCode = ((((((this.f20448a + 527) * 31) + this.f20449b) * 31) + this.f20450c) * 31) + Arrays.hashCode(this.f20451d);
        this.f20452e = iHashCode;
        return iHashCode;
    }

    public final String toString() {
        int i10 = this.f20448a;
        String str = i10 != -1 ? i10 != 6 ? i10 != 1 ? i10 != 2 ? "Undefined color space" : "BT601" : "BT709" : "BT2020" : "Unset color space";
        int i11 = this.f20449b;
        String str2 = i11 != -1 ? i11 != 1 ? i11 != 2 ? "Undefined color range" : "Limited range" : "Full range" : "Unset color range";
        int i12 = this.f20450c;
        return "ColorInfo(" + str + ", " + str2 + ", " + (i12 != -1 ? i12 != 1 ? i12 != 3 ? i12 != 6 ? i12 != 7 ? "Undefined color transfer" : "HLG" : "ST2084 PQ" : "SDR SMPTE 170M" : "Linear" : "Unset color transfer") + ", " + (this.f20451d != null) + ")";
    }
}
