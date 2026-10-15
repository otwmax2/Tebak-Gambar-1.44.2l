package com.google.android.gms.internal.ads;

import libcore.io.Memory;
import sun.misc.Unsafe;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzgto extends zzgtp {
    zzgto(Unsafe unsafe) {
        super(unsafe);
    }

    @Override // com.google.android.gms.internal.ads.zzgtp
    public final byte a(long j10) {
        return Memory.peekByte(j10);
    }

    @Override // com.google.android.gms.internal.ads.zzgtp
    public final double b(Object obj, long j10) {
        return Double.longBitsToDouble(this.f19627a.getLong(obj, j10));
    }

    @Override // com.google.android.gms.internal.ads.zzgtp
    public final float c(Object obj, long j10) {
        return Float.intBitsToFloat(this.f19627a.getInt(obj, j10));
    }

    @Override // com.google.android.gms.internal.ads.zzgtp
    public final void d(long j10, byte[] bArr, long j11, long j12) {
        Memory.peekByteArray(j10, bArr, (int) j11, (int) j12);
    }

    @Override // com.google.android.gms.internal.ads.zzgtp
    public final void e(Object obj, long j10, boolean z10) {
        if (zzgtq.f19636i) {
            zzgtq.g(obj, j10, z10 ? (byte) 1 : (byte) 0);
        } else {
            zzgtq.h(obj, j10, z10 ? (byte) 1 : (byte) 0);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgtp
    public final void f(Object obj, long j10, byte b10) {
        if (zzgtq.f19636i) {
            zzgtq.g(obj, j10, b10);
        } else {
            zzgtq.h(obj, j10, b10);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgtp
    public final void g(Object obj, long j10, double d10) {
        this.f19627a.putLong(obj, j10, Double.doubleToLongBits(d10));
    }

    @Override // com.google.android.gms.internal.ads.zzgtp
    public final void h(Object obj, long j10, float f10) {
        this.f19627a.putInt(obj, j10, Float.floatToIntBits(f10));
    }

    @Override // com.google.android.gms.internal.ads.zzgtp
    public final boolean i(Object obj, long j10) {
        return zzgtq.f19636i ? zzgtq.E(obj, j10) : zzgtq.F(obj, j10);
    }
}
