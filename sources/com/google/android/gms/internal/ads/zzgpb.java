package com.google.android.gms.internal.ads;

import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Arrays;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzgpb extends OutputStream {

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private static final byte[] f19373t = new byte[0];

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private int f19376q;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private int f19378s;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final int f19374o = 128;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final ArrayList f19375p = new ArrayList();

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private byte[] f19377r = new byte[128];

    zzgpb(int i10) {
    }

    private final void e(int i10) {
        this.f19375p.add(new zzgpa(this.f19377r));
        int length = this.f19376q + this.f19377r.length;
        this.f19376q = length;
        this.f19377r = new byte[Math.max(this.f19374o, Math.max(i10, length >>> 1))];
        this.f19378s = 0;
    }

    public final synchronized int b() {
        return this.f19376q + this.f19378s;
    }

    public final synchronized zzgpe c() {
        int i10 = this.f19378s;
        byte[] bArr = this.f19377r;
        if (i10 >= bArr.length) {
            this.f19375p.add(new zzgpa(this.f19377r));
            this.f19377r = f19373t;
        } else if (i10 > 0) {
            this.f19375p.add(new zzgpa(Arrays.copyOf(bArr, i10)));
        }
        this.f19376q += this.f19378s;
        this.f19378s = 0;
        return zzgpe.I(this.f19375p);
    }

    public final synchronized void d() {
        this.f19375p.clear();
        this.f19376q = 0;
        this.f19378s = 0;
    }

    public final String toString() {
        return String.format("<ByteString.Output@%s size=%d>", Integer.toHexString(System.identityHashCode(this)), Integer.valueOf(b()));
    }

    @Override // java.io.OutputStream
    public final synchronized void write(int i10) {
        if (this.f19378s == this.f19377r.length) {
            e(1);
        }
        byte[] bArr = this.f19377r;
        int i11 = this.f19378s;
        this.f19378s = i11 + 1;
        bArr[i11] = (byte) i10;
    }

    @Override // java.io.OutputStream
    public final synchronized void write(byte[] bArr, int i10, int i11) {
        byte[] bArr2 = this.f19377r;
        int length = bArr2.length;
        int i12 = this.f19378s;
        int i13 = length - i12;
        if (i11 <= i13) {
            System.arraycopy(bArr, i10, bArr2, i12, i11);
            this.f19378s += i11;
            return;
        }
        System.arraycopy(bArr, i10, bArr2, i12, i13);
        int i14 = i11 - i13;
        e(i14);
        System.arraycopy(bArr, i10 + i13, this.f19377r, 0, i14);
        this.f19378s = i14;
    }
}
