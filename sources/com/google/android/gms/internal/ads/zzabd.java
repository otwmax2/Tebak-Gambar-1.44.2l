package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzabd {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final byte[] f8368a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f8369b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f8370c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f8371d;

    public zzabd(byte[] bArr) {
        this.f8368a = bArr;
        this.f8369b = bArr.length;
    }

    public final int a() {
        return (this.f8370c * 8) + this.f8371d;
    }

    public final int b(int i10) {
        int i11 = this.f8370c;
        int i12 = i11 + 1;
        int iMin = Math.min(i10, 8 - this.f8371d);
        int i13 = ((this.f8368a[i11] & 255) >> this.f8371d) & (255 >> (8 - iMin));
        while (iMin < i10) {
            i13 |= (this.f8368a[i12] & 255) << iMin;
            iMin += 8;
            i12++;
        }
        int i14 = i13 & ((-1) >>> (32 - i10));
        c(i10);
        return i14;
    }

    public final void c(int i10) {
        int i11;
        int i12 = i10 / 8;
        int i13 = this.f8370c + i12;
        this.f8370c = i13;
        int i14 = this.f8371d + (i10 - (i12 * 8));
        this.f8371d = i14;
        if (i14 > 7) {
            i13++;
            this.f8370c = i13;
            i14 -= 8;
            this.f8371d = i14;
        }
        boolean z10 = false;
        if (i13 >= 0 && (i13 < (i11 = this.f8369b) || (i13 == i11 && i14 == 0))) {
            z10 = true;
        }
        zzdl.f(z10);
    }

    public final boolean d() {
        int i10 = (this.f8368a[this.f8370c] & 255) >> this.f8371d;
        c(1);
        return 1 == (i10 & 1);
    }
}
