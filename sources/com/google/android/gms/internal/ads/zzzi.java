package com.google.android.gms.internal.ads;

import java.util.Arrays;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzzi implements zzaax {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f21180a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int[] f21181b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final long[] f21182c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final long[] f21183d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final long[] f21184e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final long f21185f;

    public zzzi(int[] iArr, long[] jArr, long[] jArr2, long[] jArr3) {
        this.f21181b = iArr;
        this.f21182c = jArr;
        this.f21183d = jArr2;
        this.f21184e = jArr3;
        int length = iArr.length;
        this.f21180a = length;
        if (length <= 0) {
            this.f21185f = 0L;
        } else {
            int i10 = length - 1;
            this.f21185f = jArr2[i10] + jArr3[i10];
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaax
    public final long b() {
        return this.f21185f;
    }

    @Override // com.google.android.gms.internal.ads.zzaax
    public final zzaav c(long j10) {
        int iO = zzew.O(this.f21184e, j10, true, true);
        zzaay zzaayVar = new zzaay(this.f21184e[iO], this.f21182c[iO]);
        if (zzaayVar.f8354a >= j10 || iO == this.f21180a - 1) {
            return new zzaav(zzaayVar, zzaayVar);
        }
        int i10 = iO + 1;
        return new zzaav(zzaayVar, new zzaay(this.f21184e[i10], this.f21182c[i10]));
    }

    @Override // com.google.android.gms.internal.ads.zzaax
    public final boolean f() {
        return true;
    }

    public final String toString() {
        return "ChunkIndex(length=" + this.f21180a + ", sizes=" + Arrays.toString(this.f21181b) + ", offsets=" + Arrays.toString(this.f21182c) + ", timeUs=" + Arrays.toString(this.f21184e) + ", durationsUs=" + Arrays.toString(this.f21183d) + ")";
    }
}
