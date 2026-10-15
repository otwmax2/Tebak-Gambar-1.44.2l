package com.google.android.gms.internal.measurement;

import sun.misc.Unsafe;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-base@@20.1.2 */
/* JADX INFO: loaded from: classes2.dex */
final class zzmt extends zzmu {
    zzmt(Unsafe unsafe) {
        super(unsafe);
    }

    @Override // com.google.android.gms.internal.measurement.zzmu
    public final double a(Object obj, long j10) {
        return Double.longBitsToDouble(k(obj, j10));
    }

    @Override // com.google.android.gms.internal.measurement.zzmu
    public final float b(Object obj, long j10) {
        return Float.intBitsToFloat(j(obj, j10));
    }

    @Override // com.google.android.gms.internal.measurement.zzmu
    public final void c(Object obj, long j10, boolean z10) {
        if (zzmv.f23775h) {
            zzmv.d(obj, j10, z10 ? (byte) 1 : (byte) 0);
        } else {
            zzmv.e(obj, j10, z10 ? (byte) 1 : (byte) 0);
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzmu
    public final void d(Object obj, long j10, byte b10) {
        if (zzmv.f23775h) {
            zzmv.d(obj, j10, b10);
        } else {
            zzmv.e(obj, j10, b10);
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzmu
    public final void e(Object obj, long j10, double d10) {
        o(obj, j10, Double.doubleToLongBits(d10));
    }

    @Override // com.google.android.gms.internal.measurement.zzmu
    public final void f(Object obj, long j10, float f10) {
        n(obj, j10, Float.floatToIntBits(f10));
    }

    @Override // com.google.android.gms.internal.measurement.zzmu
    public final boolean g(Object obj, long j10) {
        return zzmv.f23775h ? zzmv.y(obj, j10) : zzmv.z(obj, j10);
    }
}
