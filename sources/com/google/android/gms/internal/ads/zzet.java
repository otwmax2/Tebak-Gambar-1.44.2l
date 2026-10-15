package com.google.android.gms.internal.ads;

import java.util.Arrays;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzet {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private long[] f17327a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Object[] f17328b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f17329c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f17330d;

    public zzet() {
        this(10);
    }

    public zzet(int i10) {
        this.f17327a = new long[10];
        this.f17328b = new Object[10];
    }

    private final Object f() {
        zzdl.f(this.f17330d > 0);
        Object[] objArr = this.f17328b;
        int i10 = this.f17329c;
        Object obj = objArr[i10];
        objArr[i10] = null;
        this.f17329c = (i10 + 1) % objArr.length;
        this.f17330d--;
        return obj;
    }

    public final synchronized int a() {
        return this.f17330d;
    }

    public final synchronized Object b() {
        if (this.f17330d == 0) {
            return null;
        }
        return f();
    }

    public final synchronized Object c(long j10) {
        Object objF;
        objF = null;
        while (this.f17330d > 0 && j10 - this.f17327a[this.f17329c] >= 0) {
            objF = f();
        }
        return objF;
    }

    public final synchronized void d(long j10, Object obj) {
        if (this.f17330d > 0) {
            if (j10 <= this.f17327a[((this.f17329c + r0) - 1) % this.f17328b.length]) {
                e();
            }
        }
        int length = this.f17328b.length;
        if (this.f17330d >= length) {
            int i10 = length + length;
            long[] jArr = new long[i10];
            Object[] objArr = new Object[i10];
            int i11 = this.f17329c;
            int i12 = length - i11;
            System.arraycopy(this.f17327a, i11, jArr, 0, i12);
            System.arraycopy(this.f17328b, this.f17329c, objArr, 0, i12);
            int i13 = this.f17329c;
            if (i13 > 0) {
                System.arraycopy(this.f17327a, 0, jArr, i12, i13);
                System.arraycopy(this.f17328b, 0, objArr, i12, this.f17329c);
            }
            this.f17327a = jArr;
            this.f17328b = objArr;
            this.f17329c = 0;
        }
        int i14 = this.f17329c;
        int i15 = this.f17330d;
        Object[] objArr2 = this.f17328b;
        int length2 = (i14 + i15) % objArr2.length;
        this.f17327a[length2] = j10;
        objArr2[length2] = obj;
        this.f17330d = i15 + 1;
    }

    public final synchronized void e() {
        this.f17329c = 0;
        this.f17330d = 0;
        Arrays.fill(this.f17328b, (Object) null);
    }
}
