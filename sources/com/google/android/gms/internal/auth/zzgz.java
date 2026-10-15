package com.google.android.gms.internal.auth;

import com.facebook.appevents.integrity.IntegrityManager;
import java.lang.reflect.Field;
import java.nio.Buffer;
import java.security.AccessController;
import java.util.logging.Level;
import java.util.logging.Logger;
import sun.misc.Unsafe;

/* JADX INFO: compiled from: com.google.android.gms:play-services-auth-base@@17.1.4 */
/* JADX INFO: loaded from: classes2.dex */
final class zzgz {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final Unsafe f21579a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final Class<?> f21580b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final boolean f21581c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final boolean f21582d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final zzgy f21583e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final boolean f21584f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final boolean f21585g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    static final boolean f21586h;

    /* JADX WARN: Removed duplicated region for block: B:11:0x0048  */
    static {
        /*
            Method dump skipped, instruction units count: 315
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.auth.zzgz.<clinit>():void");
    }

    private zzgz() {
    }

    static double a(Object obj, long j10) {
        return f21583e.a(obj, j10);
    }

    static float b(Object obj, long j10) {
        return f21583e.b(obj, j10);
    }

    static int c(Object obj, long j10) {
        return f21583e.i(obj, j10);
    }

    static long d(Object obj, long j10) {
        return f21583e.j(obj, j10);
    }

    static <T> T e(Class<T> cls) {
        try {
            return (T) f21579a.allocateInstance(cls);
        } catch (InstantiationException e10) {
            throw new IllegalStateException(e10);
        }
    }

    static Object f(Object obj, long j10) {
        return f21583e.l(obj, j10);
    }

    static Unsafe g() {
        try {
            return (Unsafe) AccessController.doPrivileged(new zzgv());
        } catch (Throwable unused) {
            return null;
        }
    }

    static /* synthetic */ void h(Throwable th) {
        Logger logger = Logger.getLogger(zzgz.class.getName());
        Level level = Level.WARNING;
        String strValueOf = String.valueOf(th);
        StringBuilder sb = new StringBuilder(strValueOf.length() + 71);
        sb.append("platform method missing - proto runtime falling back to safer methods: ");
        sb.append(strValueOf);
        logger.logp(level, "com.google.protobuf.UnsafeUtil", "logMissingMethod", sb.toString());
    }

    static /* synthetic */ void i(Object obj, long j10, boolean z10) {
        long j11 = (-4) & j10;
        zzgy zzgyVar = f21583e;
        int i10 = ((((int) j10) ^ (-1)) & 3) << 3;
        zzgyVar.m(obj, j11, ((z10 ? 1 : 0) << i10) | (((255 << i10) ^ (-1)) & zzgyVar.i(obj, j11)));
    }

    static /* synthetic */ void j(Object obj, long j10, boolean z10) {
        long j11 = (-4) & j10;
        zzgy zzgyVar = f21583e;
        int i10 = (((int) j10) & 3) << 3;
        zzgyVar.m(obj, j11, ((z10 ? 1 : 0) << i10) | (((255 << i10) ^ (-1)) & zzgyVar.i(obj, j11)));
    }

    static void k(Object obj, long j10, boolean z10) {
        f21583e.c(obj, j10, z10);
    }

    static void l(Object obj, long j10, double d10) {
        f21583e.d(obj, j10, d10);
    }

    static void m(Object obj, long j10, float f10) {
        f21583e.e(obj, j10, f10);
    }

    static void n(Object obj, long j10, int i10) {
        f21583e.m(obj, j10, i10);
    }

    static void o(Object obj, long j10, long j11) {
        f21583e.n(obj, j10, j11);
    }

    static void p(Object obj, long j10, Object obj2) {
        f21583e.o(obj, j10, obj2);
    }

    static /* synthetic */ boolean q(Object obj, long j10) {
        return ((byte) ((f21583e.i(obj, (-4) & j10) >>> ((int) (((j10 ^ (-1)) & 3) << 3))) & 255)) != 0;
    }

    static /* synthetic */ boolean r(Object obj, long j10) {
        return ((byte) ((f21583e.i(obj, (-4) & j10) >>> ((int) ((j10 & 3) << 3))) & 255)) != 0;
    }

    static boolean s(Class<?> cls) {
        int i10 = zzdo.f21449a;
        try {
            Class<?> cls2 = f21580b;
            Class<?> cls3 = Boolean.TYPE;
            cls2.getMethod("peekLong", cls, cls3);
            cls2.getMethod("pokeLong", cls, Long.TYPE, cls3);
            Class<?> cls4 = Integer.TYPE;
            cls2.getMethod("pokeInt", cls, cls4, cls3);
            cls2.getMethod("peekInt", cls, cls3);
            cls2.getMethod("pokeByte", cls, Byte.TYPE);
            cls2.getMethod("peekByte", cls);
            cls2.getMethod("pokeByteArray", cls, byte[].class, cls4, cls4);
            cls2.getMethod("peekByteArray", cls, byte[].class, cls4, cls4);
            return true;
        } catch (Throwable unused) {
            return false;
        }
    }

    static boolean t(Object obj, long j10) {
        return f21583e.f(obj, j10);
    }

    static boolean u() {
        return f21585g;
    }

    static boolean v() {
        return f21584f;
    }

    private static int w(Class<?> cls) {
        if (f21585g) {
            return f21583e.g(cls);
        }
        return -1;
    }

    private static int x(Class<?> cls) {
        if (f21585g) {
            return f21583e.h(cls);
        }
        return -1;
    }

    private static Field y() {
        int i10 = zzdo.f21449a;
        Field fieldZ = z(Buffer.class, "effectiveDirectAddress");
        if (fieldZ != null) {
            return fieldZ;
        }
        Field fieldZ2 = z(Buffer.class, IntegrityManager.INTEGRITY_TYPE_ADDRESS);
        if (fieldZ2 == null || fieldZ2.getType() != Long.TYPE) {
            return null;
        }
        return fieldZ2;
    }

    private static Field z(Class<?> cls, String str) {
        try {
            return cls.getDeclaredField(str);
        } catch (Throwable unused) {
            return null;
        }
    }
}
