package com.google.android.gms.internal.ads;

import java.util.NoSuchElementException;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzqr {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f20499a = 0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f20500b = -1;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f20501c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int[] f20502d = new int[16];

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f20503e;

    public zzqr() {
        this.f20503e = r0.length - 1;
    }

    public final int a() {
        int i10 = this.f20501c;
        if (i10 == 0) {
            throw new NoSuchElementException();
        }
        int[] iArr = this.f20502d;
        int i11 = this.f20499a;
        int i12 = iArr[i11];
        this.f20499a = (i11 + 1) & this.f20503e;
        this.f20501c = i10 - 1;
        return i12;
    }

    public final void b(int i10) {
        int i11 = this.f20501c;
        int[] iArr = this.f20502d;
        int length = iArr.length;
        if (i11 == length) {
            int i12 = length + length;
            if (i12 < 0) {
                throw new IllegalStateException();
            }
            int[] iArr2 = new int[i12];
            int i13 = this.f20499a;
            int i14 = length - i13;
            System.arraycopy(iArr, i13, iArr2, 0, i14);
            System.arraycopy(this.f20502d, 0, iArr2, i14, i13);
            this.f20499a = 0;
            this.f20500b = this.f20501c - 1;
            this.f20502d = iArr2;
            this.f20503e = iArr2.length - 1;
            iArr = iArr2;
        }
        int i15 = (this.f20500b + 1) & this.f20503e;
        this.f20500b = i15;
        iArr[i15] = i10;
        this.f20501c++;
    }

    public final void c() {
        this.f20499a = 0;
        this.f20500b = -1;
        this.f20501c = 0;
    }

    public final boolean d() {
        return this.f20501c == 0;
    }
}
