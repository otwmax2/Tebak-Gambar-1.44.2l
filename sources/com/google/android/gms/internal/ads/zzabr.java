package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.util.Arrays;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzabr {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected final zzabb f8429a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f8430b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final int f8431c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final long f8432d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final int f8433e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f8434f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f8435g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f8436h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private int f8437i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private int f8438j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private long[] f8439k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private int[] f8440l;

    public zzabr(int i10, int i11, long j10, int i12, zzabb zzabbVar) {
        i11 = i11 != 1 ? 2 : i11;
        this.f8432d = j10;
        this.f8433e = i12;
        this.f8429a = zzabbVar;
        this.f8430b = i(i10, i11 == 2 ? 1667497984 : 1651965952);
        this.f8431c = i11 == 2 ? i(i10, 1650720768) : -1;
        this.f8439k = new long[512];
        this.f8440l = new int[512];
    }

    private static int i(int i10, int i11) {
        return (((i10 % 10) + 48) << 8) | ((i10 / 10) + 48) | i11;
    }

    private final long j(int i10) {
        return (this.f8432d * ((long) i10)) / ((long) this.f8433e);
    }

    private final zzaay k(int i10) {
        return new zzaay(((long) this.f8440l[i10]) * j(1), this.f8439k[i10]);
    }

    public final zzaav a(long j10) {
        int iJ = (int) (j10 / j(1));
        int iN = zzew.N(this.f8440l, iJ, true, true);
        if (this.f8440l[iN] == iJ) {
            zzaay zzaayVarK = k(iN);
            return new zzaav(zzaayVarK, zzaayVarK);
        }
        zzaay zzaayVarK2 = k(iN);
        int i10 = iN + 1;
        return i10 < this.f8439k.length ? new zzaav(zzaayVarK2, k(i10)) : new zzaav(zzaayVarK2, zzaayVarK2);
    }

    public final void b(long j10) {
        if (this.f8438j == this.f8440l.length) {
            long[] jArr = this.f8439k;
            this.f8439k = Arrays.copyOf(jArr, (jArr.length * 3) / 2);
            int[] iArr = this.f8440l;
            this.f8440l = Arrays.copyOf(iArr, (iArr.length * 3) / 2);
        }
        long[] jArr2 = this.f8439k;
        int i10 = this.f8438j;
        jArr2[i10] = j10;
        this.f8440l[i10] = this.f8437i;
        this.f8438j = i10 + 1;
    }

    public final void c() {
        this.f8439k = Arrays.copyOf(this.f8439k, this.f8438j);
        this.f8440l = Arrays.copyOf(this.f8440l, this.f8438j);
    }

    public final void d() {
        this.f8437i++;
    }

    public final void e(int i10) {
        this.f8434f = i10;
        this.f8435g = i10;
    }

    public final void f(long j10) {
        if (this.f8438j == 0) {
            this.f8436h = 0;
        } else {
            this.f8436h = this.f8440l[zzew.O(this.f8439k, j10, true, true)];
        }
    }

    public final boolean g(int i10) {
        return this.f8430b == i10 || this.f8431c == i10;
    }

    public final boolean h(zzzv zzzvVar) throws IOException {
        int i10 = this.f8435g;
        int iB = i10 - this.f8429a.b(zzzvVar, i10, false);
        this.f8435g = iB;
        boolean z10 = iB == 0;
        if (z10) {
            if (this.f8434f > 0) {
                this.f8429a.f(j(this.f8436h), Arrays.binarySearch(this.f8440l, this.f8436h) >= 0 ? 1 : 0, this.f8434f, 0, null);
            }
            this.f8436h++;
        }
        return z10;
    }
}
