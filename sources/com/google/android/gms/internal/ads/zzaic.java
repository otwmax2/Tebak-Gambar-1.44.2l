package com.google.android.gms.internal.ads;

import java.util.Arrays;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzaic {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f9229a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean f9230b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f9231c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public byte[] f9232d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f9233e;

    public zzaic(int i10, int i11) {
        this.f9229a = i10;
        byte[] bArr = new byte[131];
        this.f9232d = bArr;
        bArr[2] = 1;
    }

    public final void a(byte[] bArr, int i10, int i11) {
        if (this.f9230b) {
            int i12 = i11 - i10;
            byte[] bArr2 = this.f9232d;
            int length = bArr2.length;
            int i13 = this.f9233e + i12;
            if (length < i13) {
                this.f9232d = Arrays.copyOf(bArr2, i13 + i13);
            }
            System.arraycopy(bArr, i10, this.f9232d, this.f9233e, i12);
            this.f9233e += i12;
        }
    }

    public final void b() {
        this.f9230b = false;
        this.f9231c = false;
    }

    public final void c(int i10) {
        zzdl.f(!this.f9230b);
        boolean z10 = i10 == this.f9229a;
        this.f9230b = z10;
        if (z10) {
            this.f9233e = 3;
            this.f9231c = false;
        }
    }

    public final boolean d(int i10) {
        if (!this.f9230b) {
            return false;
        }
        this.f9233e -= i10;
        this.f9230b = false;
        this.f9231c = true;
        return true;
    }

    public final boolean e() {
        return this.f9231c;
    }
}
