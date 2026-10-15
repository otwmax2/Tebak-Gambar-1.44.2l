package com.google.android.gms.internal.ads;

import com.facebook.appevents.integrity.IntegrityManager;
import java.lang.reflect.Field;
import java.nio.Buffer;
import java.nio.ByteBuffer;
import java.security.AccessController;
import java.util.logging.Level;
import java.util.logging.Logger;
import sun.misc.Unsafe;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzgtq {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final Unsafe f19628a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final Class f19629b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final boolean f19630c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final zzgtp f19631d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final boolean f19632e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final boolean f19633f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    static final long f19634g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static final long f19635h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    static final boolean f19636i;

    /* JADX WARN: Removed duplicated region for block: B:11:0x0046  */
    static {
        /*
            Method dump skipped, instruction units count: 318
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzgtq.<clinit>():void");
    }

    private zzgtq() {
    }

    static void A(Object obj, long j10, float f10) {
        f19631d.h(obj, j10, f10);
    }

    static void B(Object obj, long j10, int i10) {
        f19631d.f19627a.putInt(obj, j10, i10);
    }

    static void C(Object obj, long j10, long j11) {
        f19631d.f19627a.putLong(obj, j10, j11);
    }

    static void D(Object obj, long j10, Object obj2) {
        f19631d.f19627a.putObject(obj, j10, obj2);
    }

    static /* bridge */ /* synthetic */ boolean E(Object obj, long j10) {
        return ((byte) ((f19631d.f19627a.getInt(obj, (-4) & j10) >>> ((int) (((j10 ^ (-1)) & 3) << 3))) & 255)) != 0;
    }

    static /* bridge */ /* synthetic */ boolean F(Object obj, long j10) {
        return ((byte) ((f19631d.f19627a.getInt(obj, (-4) & j10) >>> ((int) ((j10 & 3) << 3))) & 255)) != 0;
    }

    /* JADX WARN: Multi-variable type inference failed */
    static boolean G(Class cls) {
        int i10 = zzgop.f19359a;
        try {
            Class cls2 = f19629b;
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

    static boolean H(Object obj, long j10) {
        return f19631d.i(obj, j10);
    }

    static boolean a() {
        return f19633f;
    }

    static boolean b() {
        return f19632e;
    }

    private static int c(Class cls) {
        if (f19633f) {
            return f19631d.f19627a.arrayBaseOffset(cls);
        }
        return -1;
    }

    private static int d(Class cls) {
        if (f19633f) {
            return f19631d.f19627a.arrayIndexScale(cls);
        }
        return -1;
    }

    private static Field e() {
        int i10 = zzgop.f19359a;
        Field fieldF = f(Buffer.class, "effectiveDirectAddress");
        if (fieldF != null) {
            return fieldF;
        }
        Field fieldF2 = f(Buffer.class, IntegrityManager.INTEGRITY_TYPE_ADDRESS);
        if (fieldF2 == null || fieldF2.getType() != Long.TYPE) {
            return null;
        }
        return fieldF2;
    }

    private static Field f(Class cls, String str) {
        try {
            return cls.getDeclaredField(str);
        } catch (Throwable unused) {
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void g(Object obj, long j10, byte b10) {
        zzgtp zzgtpVar = f19631d;
        long j11 = (-4) & j10;
        int i10 = ((((int) j10) ^ (-1)) & 3) << 3;
        zzgtpVar.f19627a.putInt(obj, j11, ((255 & b10) << i10) | (zzgtpVar.f19627a.getInt(obj, j11) & ((255 << i10) ^ (-1))));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void h(Object obj, long j10, byte b10) {
        zzgtp zzgtpVar = f19631d;
        long j11 = (-4) & j10;
        int i10 = (((int) j10) & 3) << 3;
        zzgtpVar.f19627a.putInt(obj, j11, ((255 & b10) << i10) | (zzgtpVar.f19627a.getInt(obj, j11) & ((255 << i10) ^ (-1))));
    }

    static byte i(long j10) {
        return f19631d.a(j10);
    }

    static double j(Object obj, long j10) {
        return f19631d.b(obj, j10);
    }

    static float k(Object obj, long j10) {
        return f19631d.c(obj, j10);
    }

    static int l(Object obj, long j10) {
        return f19631d.f19627a.getInt(obj, j10);
    }

    static long m(ByteBuffer byteBuffer) {
        zzgtp zzgtpVar = f19631d;
        return zzgtpVar.f19627a.getLong(byteBuffer, f19635h);
    }

    static long n(Object obj, long j10) {
        return f19631d.f19627a.getLong(obj, j10);
    }

    static Object o(Class cls) {
        try {
            return f19628a.allocateInstance(cls);
        } catch (InstantiationException e10) {
            throw new IllegalStateException(e10);
        }
    }

    static Object p(Object obj, long j10) {
        return f19631d.f19627a.getObject(obj, j10);
    }

    static Unsafe q() {
        try {
            return (Unsafe) AccessController.doPrivileged(new zzgtm());
        } catch (Throwable unused) {
            return null;
        }
    }

    static /* bridge */ /* synthetic */ void r(Throwable th) {
        Logger.getLogger(zzgtq.class.getName()).logp(Level.WARNING, "com.google.protobuf.UnsafeUtil", "logMissingMethod", "platform method missing - proto runtime falling back to safer methods: ".concat(th.toString()));
    }

    static void w(long j10, byte[] bArr, long j11, long j12) {
        f19631d.d(j10, bArr, j11, j12);
    }

    static void x(Object obj, long j10, boolean z10) {
        f19631d.e(obj, j10, z10);
    }

    static void y(byte[] bArr, long j10, byte b10) {
        f19631d.f(bArr, f19634g + j10, b10);
    }

    static void z(Object obj, long j10, double d10) {
        f19631d.g(obj, j10, d10);
    }
}
