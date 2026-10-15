package com.google.android.gms.internal.measurement;

import com.facebook.appevents.integrity.IntegrityManager;
import java.lang.reflect.Field;
import java.nio.Buffer;
import java.security.AccessController;
import java.util.logging.Level;
import java.util.logging.Logger;
import sun.misc.Unsafe;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-base@@20.1.2 */
/* JADX INFO: loaded from: classes2.dex */
final class zzmv {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final Unsafe f23768a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final Class f23769b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final boolean f23770c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final zzmu f23771d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final boolean f23772e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final boolean f23773f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    static final long f23774g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    static final boolean f23775h;

    /* JADX WARN: Removed duplicated region for block: B:11:0x0046  */
    static {
        /*
            Method dump skipped, instruction units count: 310
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.zzmv.<clinit>():void");
    }

    private zzmv() {
    }

    /* JADX WARN: Multi-variable type inference failed */
    static boolean A(Class cls) {
        int i10 = zzin.f23575a;
        try {
            Class cls2 = f23769b;
            Class cls3 = Boolean.TYPE;
            cls2.getMethod("peekLong", cls, cls3);
            cls2.getMethod("pokeLong", cls, Long.TYPE, cls3);
            Class cls4 = Integer.TYPE;
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

    static boolean B(Object obj, long j10) {
        return f23771d.g(obj, j10);
    }

    static boolean C() {
        return f23773f;
    }

    static boolean D() {
        return f23772e;
    }

    private static int E(Class cls) {
        if (f23773f) {
            return f23771d.h(cls);
        }
        return -1;
    }

    private static int a(Class cls) {
        if (f23773f) {
            return f23771d.i(cls);
        }
        return -1;
    }

    private static Field b() {
        int i10 = zzin.f23575a;
        Field fieldC = c(Buffer.class, "effectiveDirectAddress");
        if (fieldC != null) {
            return fieldC;
        }
        Field fieldC2 = c(Buffer.class, IntegrityManager.INTEGRITY_TYPE_ADDRESS);
        if (fieldC2 == null || fieldC2.getType() != Long.TYPE) {
            return null;
        }
        return fieldC2;
    }

    private static Field c(Class cls, String str) {
        try {
            return cls.getDeclaredField(str);
        } catch (Throwable unused) {
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void d(Object obj, long j10, byte b10) {
        long j11 = (-4) & j10;
        zzmu zzmuVar = f23771d;
        int i10 = ((((int) j10) ^ (-1)) & 3) << 3;
        zzmuVar.n(obj, j11, ((255 & b10) << i10) | (zzmuVar.j(obj, j11) & ((255 << i10) ^ (-1))));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void e(Object obj, long j10, byte b10) {
        long j11 = (-4) & j10;
        zzmu zzmuVar = f23771d;
        int i10 = (((int) j10) & 3) << 3;
        zzmuVar.n(obj, j11, ((255 & b10) << i10) | (zzmuVar.j(obj, j11) & ((255 << i10) ^ (-1))));
    }

    static double f(Object obj, long j10) {
        return f23771d.a(obj, j10);
    }

    static float g(Object obj, long j10) {
        return f23771d.b(obj, j10);
    }

    static int h(Object obj, long j10) {
        return f23771d.j(obj, j10);
    }

    static long i(Object obj, long j10) {
        return f23771d.k(obj, j10);
    }

    static Object j(Class cls) {
        try {
            return f23768a.allocateInstance(cls);
        } catch (InstantiationException e10) {
            throw new IllegalStateException(e10);
        }
    }

    static Object k(Object obj, long j10) {
        return f23771d.m(obj, j10);
    }

    static Unsafe l() {
        try {
            return (Unsafe) AccessController.doPrivileged(new zzmr());
        } catch (Throwable unused) {
            return null;
        }
    }

    static /* bridge */ /* synthetic */ void m(Throwable th) {
        Logger.getLogger(zzmv.class.getName()).logp(Level.WARNING, "com.google.protobuf.UnsafeUtil", "logMissingMethod", "platform method missing - proto runtime falling back to safer methods: ".concat(th.toString()));
    }

    static void r(Object obj, long j10, boolean z10) {
        f23771d.c(obj, j10, z10);
    }

    static void s(byte[] bArr, long j10, byte b10) {
        f23771d.d(bArr, f23774g + j10, b10);
    }

    static void t(Object obj, long j10, double d10) {
        f23771d.e(obj, j10, d10);
    }

    static void u(Object obj, long j10, float f10) {
        f23771d.f(obj, j10, f10);
    }

    static void v(Object obj, long j10, int i10) {
        f23771d.n(obj, j10, i10);
    }

    static void w(Object obj, long j10, long j11) {
        f23771d.o(obj, j10, j11);
    }

    static void x(Object obj, long j10, Object obj2) {
        f23771d.p(obj, j10, obj2);
    }

    static /* bridge */ /* synthetic */ boolean y(Object obj, long j10) {
        return ((byte) ((f23771d.j(obj, (-4) & j10) >>> ((int) (((j10 ^ (-1)) & 3) << 3))) & 255)) != 0;
    }

    static /* bridge */ /* synthetic */ boolean z(Object obj, long j10) {
        return ((byte) ((f23771d.j(obj, (-4) & j10) >>> ((int) ((j10 & 3) << 3))) & 255)) != 0;
    }
}
