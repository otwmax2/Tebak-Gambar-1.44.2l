package com.google.android.gms.internal.ads;

import android.net.Uri;
import java.util.Arrays;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzc {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static final String f11629h = zzew.p(0);

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static final String f11630i = zzew.p(1);

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static final String f11631j = zzew.p(2);

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private static final String f11632k = zzew.p(3);

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private static final String f11633l = zzew.p(4);

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private static final String f11634m = zzew.p(5);

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private static final String f11635n = zzew.p(6);

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private static final String f11636o = zzew.p(7);

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public static final zzn f11637p = new zzn() { // from class: com.google.android.gms.internal.ads.zzb
    };

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final long f11638a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f11639b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Uri[] f11640c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int[] f11641d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final long[] f11642e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final long f11643f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final boolean f11644g;

    public zzc(long j10) {
        this(0L, -1, -1, new int[0], new Uri[0], new long[0], 0L, false);
    }

    public final int a(int i10) {
        int i11;
        int i12 = i10 + 1;
        while (true) {
            int[] iArr = this.f11641d;
            if (i12 >= iArr.length || (i11 = iArr[i12]) == 0 || i11 == 1) {
                break;
            }
            i12++;
        }
        return i12;
    }

    public final zzc b(int i10) {
        int[] iArr = this.f11641d;
        int length = iArr.length;
        int iMax = Math.max(0, length);
        int[] iArrCopyOf = Arrays.copyOf(iArr, iMax);
        Arrays.fill(iArrCopyOf, length, iMax, 0);
        long[] jArr = this.f11642e;
        int length2 = jArr.length;
        int iMax2 = Math.max(0, length2);
        long[] jArrCopyOf = Arrays.copyOf(jArr, iMax2);
        Arrays.fill(jArrCopyOf, length2, iMax2, -9223372036854775807L);
        return new zzc(0L, 0, -1, iArrCopyOf, (Uri[]) Arrays.copyOf(this.f11640c, 0), jArrCopyOf, 0L, false);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && zzc.class == obj.getClass()) {
            zzc zzcVar = (zzc) obj;
            if (this.f11639b == zzcVar.f11639b && Arrays.equals(this.f11640c, zzcVar.f11640c) && Arrays.equals(this.f11641d, zzcVar.f11641d) && Arrays.equals(this.f11642e, zzcVar.f11642e)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return ((((((((this.f11639b * 31) - 1) * 961) + Arrays.hashCode(this.f11640c)) * 31) + Arrays.hashCode(this.f11641d)) * 31) + Arrays.hashCode(this.f11642e)) * 961;
    }

    private zzc(long j10, int i10, int i11, int[] iArr, Uri[] uriArr, long[] jArr, long j11, boolean z10) {
        zzdl.d(iArr.length == uriArr.length);
        this.f11638a = 0L;
        this.f11639b = i10;
        this.f11641d = iArr;
        this.f11640c = uriArr;
        this.f11642e = jArr;
        this.f11643f = 0L;
        this.f11644g = false;
    }
}
