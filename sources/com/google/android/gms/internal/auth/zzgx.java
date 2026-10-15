package com.google.android.gms.internal.auth;

import sun.misc.Unsafe;

/* JADX INFO: compiled from: com.google.android.gms:play-services-auth-base@@17.1.4 */
/* JADX INFO: loaded from: classes2.dex */
final class zzgx extends zzgy {
    zzgx(Unsafe unsafe) {
        super(unsafe);
    }

    @Override // com.google.android.gms.internal.auth.zzgy
    public final double a(Object obj, long j10) {
        return Double.longBitsToDouble(j(obj, j10));
    }

    @Override // com.google.android.gms.internal.auth.zzgy
    public final float b(Object obj, long j10) {
        return Float.intBitsToFloat(i(obj, j10));
    }

    @Override // com.google.android.gms.internal.auth.zzgy
    public final void c(Object obj, long j10, boolean z10) {
        if (zzgz.f21586h) {
            zzgz.i(obj, j10, z10);
        } else {
            zzgz.j(obj, j10, z10);
        }
    }

    @Override // com.google.android.gms.internal.auth.zzgy
    public final void d(Object obj, long j10, double d10) {
        n(obj, j10, Double.doubleToLongBits(d10));
    }

    @Override // com.google.android.gms.internal.auth.zzgy
    public final void e(Object obj, long j10, float f10) {
        m(obj, j10, Float.floatToIntBits(f10));
    }

    @Override // com.google.android.gms.internal.auth.zzgy
    public final boolean f(Object obj, long j10) {
        return zzgz.f21586h ? zzgz.q(obj, j10) : zzgz.r(obj, j10);
    }
}
