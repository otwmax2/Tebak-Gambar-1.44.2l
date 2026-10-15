package com.google.android.gms.internal.drive;

import com.facebook.appevents.integrity.IntegrityManager;
import java.lang.reflect.Field;
import java.nio.Buffer;
import java.nio.ByteOrder;
import java.security.AccessController;
import java.util.logging.Level;
import java.util.logging.Logger;
import sun.misc.Unsafe;

/* JADX INFO: loaded from: classes2.dex */
final class zznd {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final Logger f22316a = Logger.getLogger(zznd.class.getName());

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final Unsafe f22317b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final Class<?> f22318c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final boolean f22319d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final boolean f22320e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final zzd f22321f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final boolean f22322g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static final boolean f22323h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static final long f22324i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static final long f22325j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private static final long f22326k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private static final long f22327l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private static final long f22328m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private static final long f22329n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private static final long f22330o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private static final long f22331p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private static final long f22332q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private static final long f22333r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private static final long f22334s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private static final long f22335t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private static final long f22336u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private static final long f22337v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private static final int f22338w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    static final boolean f22339x;

    static final class zza extends zzd {
        zza(Unsafe unsafe) {
            super(unsafe);
        }

        @Override // com.google.android.gms.internal.drive.zznd.zzd
        public final void a(Object obj, long j10, double d10) {
            d(obj, j10, Double.doubleToLongBits(d10));
        }

        @Override // com.google.android.gms.internal.drive.zznd.zzd
        public final void b(Object obj, long j10, float f10) {
            c(obj, j10, Float.floatToIntBits(f10));
        }

        @Override // com.google.android.gms.internal.drive.zznd.zzd
        public final void e(Object obj, long j10, boolean z10) {
            if (zznd.f22339x) {
                zznd.l(obj, j10, z10);
            } else {
                zznd.n(obj, j10, z10);
            }
        }

        @Override // com.google.android.gms.internal.drive.zznd.zzd
        public final void f(Object obj, long j10, byte b10) {
            if (zznd.f22339x) {
                zznd.b(obj, j10, b10);
            } else {
                zznd.k(obj, j10, b10);
            }
        }

        @Override // com.google.android.gms.internal.drive.zznd.zzd
        public final boolean i(Object obj, long j10) {
            return zznd.f22339x ? zznd.J(obj, j10) : zznd.K(obj, j10);
        }

        @Override // com.google.android.gms.internal.drive.zznd.zzd
        public final float j(Object obj, long j10) {
            return Float.intBitsToFloat(g(obj, j10));
        }

        @Override // com.google.android.gms.internal.drive.zznd.zzd
        public final double k(Object obj, long j10) {
            return Double.longBitsToDouble(h(obj, j10));
        }

        @Override // com.google.android.gms.internal.drive.zznd.zzd
        public final byte l(Object obj, long j10) {
            return zznd.f22339x ? zznd.H(obj, j10) : zznd.I(obj, j10);
        }
    }

    static final class zzb extends zzd {
        zzb(Unsafe unsafe) {
            super(unsafe);
        }

        @Override // com.google.android.gms.internal.drive.zznd.zzd
        public final void a(Object obj, long j10, double d10) {
            d(obj, j10, Double.doubleToLongBits(d10));
        }

        @Override // com.google.android.gms.internal.drive.zznd.zzd
        public final void b(Object obj, long j10, float f10) {
            c(obj, j10, Float.floatToIntBits(f10));
        }

        @Override // com.google.android.gms.internal.drive.zznd.zzd
        public final void e(Object obj, long j10, boolean z10) {
            if (zznd.f22339x) {
                zznd.l(obj, j10, z10);
            } else {
                zznd.n(obj, j10, z10);
            }
        }

        @Override // com.google.android.gms.internal.drive.zznd.zzd
        public final void f(Object obj, long j10, byte b10) {
            if (zznd.f22339x) {
                zznd.b(obj, j10, b10);
            } else {
                zznd.k(obj, j10, b10);
            }
        }

        @Override // com.google.android.gms.internal.drive.zznd.zzd
        public final boolean i(Object obj, long j10) {
            return zznd.f22339x ? zznd.J(obj, j10) : zznd.K(obj, j10);
        }

        @Override // com.google.android.gms.internal.drive.zznd.zzd
        public final float j(Object obj, long j10) {
            return Float.intBitsToFloat(g(obj, j10));
        }

        @Override // com.google.android.gms.internal.drive.zznd.zzd
        public final double k(Object obj, long j10) {
            return Double.longBitsToDouble(h(obj, j10));
        }

        @Override // com.google.android.gms.internal.drive.zznd.zzd
        public final byte l(Object obj, long j10) {
            return zznd.f22339x ? zznd.H(obj, j10) : zznd.I(obj, j10);
        }
    }

    static final class zzc extends zzd {
        zzc(Unsafe unsafe) {
            super(unsafe);
        }

        @Override // com.google.android.gms.internal.drive.zznd.zzd
        public final void a(Object obj, long j10, double d10) {
            this.f22340a.putDouble(obj, j10, d10);
        }

        @Override // com.google.android.gms.internal.drive.zznd.zzd
        public final void b(Object obj, long j10, float f10) {
            this.f22340a.putFloat(obj, j10, f10);
        }

        @Override // com.google.android.gms.internal.drive.zznd.zzd
        public final void e(Object obj, long j10, boolean z10) {
            this.f22340a.putBoolean(obj, j10, z10);
        }

        @Override // com.google.android.gms.internal.drive.zznd.zzd
        public final void f(Object obj, long j10, byte b10) {
            this.f22340a.putByte(obj, j10, b10);
        }

        @Override // com.google.android.gms.internal.drive.zznd.zzd
        public final boolean i(Object obj, long j10) {
            return this.f22340a.getBoolean(obj, j10);
        }

        @Override // com.google.android.gms.internal.drive.zznd.zzd
        public final float j(Object obj, long j10) {
            return this.f22340a.getFloat(obj, j10);
        }

        @Override // com.google.android.gms.internal.drive.zznd.zzd
        public final double k(Object obj, long j10) {
            return this.f22340a.getDouble(obj, j10);
        }

        @Override // com.google.android.gms.internal.drive.zznd.zzd
        public final byte l(Object obj, long j10) {
            return this.f22340a.getByte(obj, j10);
        }
    }

    static abstract class zzd {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        Unsafe f22340a;

        zzd(Unsafe unsafe) {
            this.f22340a = unsafe;
        }

        public abstract void a(Object obj, long j10, double d10);

        public abstract void b(Object obj, long j10, float f10);

        public final void c(Object obj, long j10, int i10) {
            this.f22340a.putInt(obj, j10, i10);
        }

        public final void d(Object obj, long j10, long j11) {
            this.f22340a.putLong(obj, j10, j11);
        }

        public abstract void e(Object obj, long j10, boolean z10);

        public abstract void f(Object obj, long j10, byte b10);

        public final int g(Object obj, long j10) {
            return this.f22340a.getInt(obj, j10);
        }

        public final long h(Object obj, long j10) {
            return this.f22340a.getLong(obj, j10);
        }

        public abstract boolean i(Object obj, long j10);

        public abstract float j(Object obj, long j10);

        public abstract double k(Object obj, long j10);

        public abstract byte l(Object obj, long j10);
    }

    static {
        Unsafe unsafeT = t();
        f22317b = unsafeT;
        f22318c = zzix.b();
        boolean zC = C(Long.TYPE);
        f22319d = zC;
        boolean zC2 = C(Integer.TYPE);
        f22320e = zC2;
        zzd zzcVar = null;
        if (unsafeT != null) {
            if (!zzix.a()) {
                zzcVar = new zzc(unsafeT);
            } else if (zC) {
                zzcVar = new zzb(unsafeT);
            } else if (zC2) {
                zzcVar = new zza(unsafeT);
            }
        }
        f22321f = zzcVar;
        f22322g = v();
        f22323h = u();
        long jY = y(byte[].class);
        f22324i = jY;
        f22325j = y(boolean[].class);
        f22326k = z(boolean[].class);
        f22327l = y(int[].class);
        f22328m = z(int[].class);
        f22329n = y(long[].class);
        f22330o = z(long[].class);
        f22331p = y(float[].class);
        f22332q = z(float[].class);
        f22333r = y(double[].class);
        f22334s = z(double[].class);
        f22335t = y(Object[].class);
        f22336u = z(Object[].class);
        Field fieldW = w();
        f22337v = (fieldW == null || zzcVar == null) ? -1L : zzcVar.f22340a.objectFieldOffset(fieldW);
        f22338w = (int) (7 & jY);
        f22339x = ByteOrder.nativeOrder() == ByteOrder.BIG_ENDIAN;
    }

    private zznd() {
    }

    static int A(Object obj, long j10) {
        return f22321f.g(obj, j10);
    }

    static long B(Object obj, long j10) {
        return f22321f.h(obj, j10);
    }

    private static boolean C(Class<?> cls) {
        if (!zzix.a()) {
            return false;
        }
        try {
            Class<?> cls2 = f22318c;
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

    static boolean D(Object obj, long j10) {
        return f22321f.i(obj, j10);
    }

    static float E(Object obj, long j10) {
        return f22321f.j(obj, j10);
    }

    static double F(Object obj, long j10) {
        return f22321f.k(obj, j10);
    }

    static Object G(Object obj, long j10) {
        return f22321f.f22340a.getObject(obj, j10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static byte H(Object obj, long j10) {
        return (byte) (A(obj, (-4) & j10) >>> ((int) (((j10 ^ (-1)) & 3) << 3)));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static byte I(Object obj, long j10) {
        return (byte) (A(obj, (-4) & j10) >>> ((int) ((j10 & 3) << 3)));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean J(Object obj, long j10) {
        return H(obj, j10) != 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean K(Object obj, long j10) {
        return I(obj, j10) != 0;
    }

    static byte a(byte[] bArr, long j10) {
        return f22321f.l(bArr, f22324i + j10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void b(Object obj, long j10, byte b10) {
        long j11 = (-4) & j10;
        int i10 = ((((int) j10) ^ (-1)) & 3) << 3;
        e(obj, j11, ((255 & b10) << i10) | (A(obj, j11) & ((255 << i10) ^ (-1))));
    }

    static void c(Object obj, long j10, double d10) {
        f22321f.a(obj, j10, d10);
    }

    static void d(Object obj, long j10, float f10) {
        f22321f.b(obj, j10, f10);
    }

    static void e(Object obj, long j10, int i10) {
        f22321f.c(obj, j10, i10);
    }

    static void f(Object obj, long j10, long j11) {
        f22321f.d(obj, j10, j11);
    }

    static void g(Object obj, long j10, Object obj2) {
        f22321f.f22340a.putObject(obj, j10, obj2);
    }

    static void h(Object obj, long j10, boolean z10) {
        f22321f.e(obj, j10, z10);
    }

    static void i(byte[] bArr, long j10, byte b10) {
        f22321f.f(bArr, f22324i + j10, b10);
    }

    private static Field j(Class<?> cls, String str) {
        try {
            return cls.getDeclaredField(str);
        } catch (Throwable unused) {
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void k(Object obj, long j10, byte b10) {
        long j11 = (-4) & j10;
        int i10 = (((int) j10) & 3) << 3;
        e(obj, j11, ((255 & b10) << i10) | (A(obj, j11) & ((255 << i10) ^ (-1))));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void l(Object obj, long j10, boolean z10) {
        b(obj, j10, z10 ? (byte) 1 : (byte) 0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void n(Object obj, long j10, boolean z10) {
        k(obj, j10, z10 ? (byte) 1 : (byte) 0);
    }

    static boolean r() {
        return f22323h;
    }

    static boolean s() {
        return f22322g;
    }

    static Unsafe t() {
        try {
            return (Unsafe) AccessController.doPrivileged(new zzne());
        } catch (Throwable unused) {
            return null;
        }
    }

    private static boolean u() {
        Unsafe unsafe = f22317b;
        if (unsafe == null) {
            return false;
        }
        try {
            Class<?> cls = unsafe.getClass();
            cls.getMethod("objectFieldOffset", Field.class);
            cls.getMethod("arrayBaseOffset", Class.class);
            cls.getMethod("arrayIndexScale", Class.class);
            Class<?> cls2 = Long.TYPE;
            cls.getMethod("getInt", Object.class, cls2);
            cls.getMethod("putInt", Object.class, cls2, Integer.TYPE);
            cls.getMethod("getLong", Object.class, cls2);
            cls.getMethod("putLong", Object.class, cls2, cls2);
            cls.getMethod("getObject", Object.class, cls2);
            cls.getMethod("putObject", Object.class, cls2, Object.class);
            if (zzix.a()) {
                return true;
            }
            cls.getMethod("getByte", Object.class, cls2);
            cls.getMethod("putByte", Object.class, cls2, Byte.TYPE);
            cls.getMethod("getBoolean", Object.class, cls2);
            cls.getMethod("putBoolean", Object.class, cls2, Boolean.TYPE);
            cls.getMethod("getFloat", Object.class, cls2);
            cls.getMethod("putFloat", Object.class, cls2, Float.TYPE);
            cls.getMethod("getDouble", Object.class, cls2);
            cls.getMethod("putDouble", Object.class, cls2, Double.TYPE);
            return true;
        } catch (Throwable th) {
            Logger logger = f22316a;
            Level level = Level.WARNING;
            String strValueOf = String.valueOf(th);
            StringBuilder sb = new StringBuilder(strValueOf.length() + 71);
            sb.append("platform method missing - proto runtime falling back to safer methods: ");
            sb.append(strValueOf);
            logger.logp(level, "com.google.protobuf.UnsafeUtil", "supportsUnsafeArrayOperations", sb.toString());
            return false;
        }
    }

    private static boolean v() {
        Unsafe unsafe = f22317b;
        if (unsafe == null) {
            return false;
        }
        try {
            Class<?> cls = unsafe.getClass();
            cls.getMethod("objectFieldOffset", Field.class);
            Class<?> cls2 = Long.TYPE;
            cls.getMethod("getLong", Object.class, cls2);
            if (w() == null) {
                return false;
            }
            if (zzix.a()) {
                return true;
            }
            cls.getMethod("getByte", cls2);
            cls.getMethod("putByte", cls2, Byte.TYPE);
            cls.getMethod("getInt", cls2);
            cls.getMethod("putInt", cls2, Integer.TYPE);
            cls.getMethod("getLong", cls2);
            cls.getMethod("putLong", cls2, cls2);
            cls.getMethod("copyMemory", cls2, cls2, cls2);
            cls.getMethod("copyMemory", Object.class, cls2, Object.class, cls2, cls2);
            return true;
        } catch (Throwable th) {
            Logger logger = f22316a;
            Level level = Level.WARNING;
            String strValueOf = String.valueOf(th);
            StringBuilder sb = new StringBuilder(strValueOf.length() + 71);
            sb.append("platform method missing - proto runtime falling back to safer methods: ");
            sb.append(strValueOf);
            logger.logp(level, "com.google.protobuf.UnsafeUtil", "supportsUnsafeByteBufferOperations", sb.toString());
            return false;
        }
    }

    private static Field w() {
        Field fieldJ;
        if (zzix.a() && (fieldJ = j(Buffer.class, "effectiveDirectAddress")) != null) {
            return fieldJ;
        }
        Field fieldJ2 = j(Buffer.class, IntegrityManager.INTEGRITY_TYPE_ADDRESS);
        if (fieldJ2 == null || fieldJ2.getType() != Long.TYPE) {
            return null;
        }
        return fieldJ2;
    }

    static <T> T x(Class<T> cls) {
        try {
            return (T) f22317b.allocateInstance(cls);
        } catch (InstantiationException e10) {
            throw new IllegalStateException(e10);
        }
    }

    private static int y(Class<?> cls) {
        if (f22323h) {
            return f22321f.f22340a.arrayBaseOffset(cls);
        }
        return -1;
    }

    private static int z(Class<?> cls) {
        if (f22323h) {
            return f22321f.f22340a.arrayIndexScale(cls);
        }
        return -1;
    }
}
