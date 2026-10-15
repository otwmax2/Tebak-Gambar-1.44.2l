package com.google.android.gms.internal.ads;

import sun.misc.Unsafe;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
abstract class zzgtp {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final Unsafe f19627a;

    zzgtp(Unsafe unsafe) {
        this.f19627a = unsafe;
    }

    public abstract byte a(long j10);

    public abstract double b(Object obj, long j10);

    public abstract float c(Object obj, long j10);

    public abstract void d(long j10, byte[] bArr, long j11, long j12);

    public abstract void e(Object obj, long j10, boolean z10);

    public abstract void f(Object obj, long j10, byte b10);

    public abstract void g(Object obj, long j10, double d10);

    public abstract void h(Object obj, long j10, float f10);

    public abstract boolean i(Object obj, long j10);
}
