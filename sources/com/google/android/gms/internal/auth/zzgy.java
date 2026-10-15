package com.google.android.gms.internal.auth;

import java.lang.reflect.Field;
import sun.misc.Unsafe;

/* JADX INFO: compiled from: com.google.android.gms:play-services-auth-base@@17.1.4 */
/* JADX INFO: loaded from: classes2.dex */
abstract class zzgy {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final Unsafe f21578a;

    zzgy(Unsafe unsafe) {
        this.f21578a = unsafe;
    }

    public abstract double a(Object obj, long j10);

    public abstract float b(Object obj, long j10);

    public abstract void c(Object obj, long j10, boolean z10);

    public abstract void d(Object obj, long j10, double d10);

    public abstract void e(Object obj, long j10, float f10);

    public abstract boolean f(Object obj, long j10);

    public final int g(Class<?> cls) {
        return this.f21578a.arrayBaseOffset(cls);
    }

    public final int h(Class<?> cls) {
        return this.f21578a.arrayIndexScale(cls);
    }

    public final int i(Object obj, long j10) {
        return this.f21578a.getInt(obj, j10);
    }

    public final long j(Object obj, long j10) {
        return this.f21578a.getLong(obj, j10);
    }

    public final long k(Field field) {
        return this.f21578a.objectFieldOffset(field);
    }

    public final Object l(Object obj, long j10) {
        return this.f21578a.getObject(obj, j10);
    }

    public final void m(Object obj, long j10, int i10) {
        this.f21578a.putInt(obj, j10, i10);
    }

    public final void n(Object obj, long j10, long j11) {
        this.f21578a.putLong(obj, j10, j11);
    }

    public final void o(Object obj, long j10, Object obj2) {
        this.f21578a.putObject(obj, j10, obj2);
    }
}
