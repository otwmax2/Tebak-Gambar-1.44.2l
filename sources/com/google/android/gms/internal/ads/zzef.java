package com.google.android.gms.internal.ads;

import java.util.Arrays;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzef {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f16489a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private long[] f16490b;

    public zzef() {
        this(32);
    }

    public zzef(int i10) {
        this.f16490b = new long[32];
    }

    public final int a() {
        return this.f16489a;
    }

    public final long b(int i10) {
        if (i10 >= 0 && i10 < this.f16489a) {
            return this.f16490b[i10];
        }
        throw new IndexOutOfBoundsException("Invalid index " + i10 + ", size is " + this.f16489a);
    }

    public final void c(long j10) {
        int i10 = this.f16489a;
        long[] jArr = this.f16490b;
        if (i10 == jArr.length) {
            this.f16490b = Arrays.copyOf(jArr, i10 + i10);
        }
        long[] jArr2 = this.f16490b;
        int i11 = this.f16489a;
        this.f16489a = i11 + 1;
        jArr2[i11] = j10;
    }
}
