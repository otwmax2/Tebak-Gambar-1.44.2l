package com.google.android.gms.internal.measurement;

import java.lang.reflect.Field;
import sun.misc.Unsafe;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-base@@20.1.2 */
/* JADX INFO: loaded from: classes2.dex */
abstract class zzmu {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final Unsafe f23767a;

    zzmu(Unsafe unsafe) {
        this.f23767a = unsafe;
    }

    public abstract double a(Object obj, long j10);

    public abstract float b(Object obj, long j10);

    public abstract void c(Object obj, long j10, boolean z10);

    public abstract void d(Object obj, long j10, byte b10);

    public abstract void e(Object obj, long j10, double d10);

    public abstract void f(Object obj, long j10, float f10);

    public abstract boolean g(Object obj, long j10);

    public final int h(Class cls) {
        return this.f23767a.arrayBaseOffset(cls);
    }

    public final int i(Class cls) {
        return this.f23767a.arrayIndexScale(cls);
    }

    public final int j(Object obj, long j10) {
        return this.f23767a.getInt(obj, j10);
    }

    public final long k(Object obj, long j10) {
        return this.f23767a.getLong(obj, j10);
    }

    public final long l(Field field) {
        return this.f23767a.objectFieldOffset(field);
    }

    public final Object m(Object obj, long j10) {
        return this.f23767a.getObject(obj, j10);
    }

    public final void n(Object obj, long j10, int i10) {
        this.f23767a.putInt(obj, j10, i10);
    }

    public final void o(Object obj, long j10, long j11) {
        this.f23767a.putLong(obj, j10, j11);
    }

    public final void p(Object obj, long j10, Object obj2) {
        this.f23767a.putObject(obj, j10, obj2);
    }
}
