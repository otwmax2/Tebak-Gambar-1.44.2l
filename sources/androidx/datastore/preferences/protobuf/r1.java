package androidx.datastore.preferences.protobuf;

import com.facebook.appevents.integrity.IntegrityManager;
import java.lang.reflect.Field;
import java.nio.Buffer;
import java.nio.ByteOrder;
import java.security.AccessController;
import java.security.PrivilegedExceptionAction;
import java.util.logging.Level;
import java.util.logging.Logger;
import sun.misc.Unsafe;

/* JADX INFO: compiled from: UnsafeUtil.java */
/* JADX INFO: loaded from: classes.dex */
final class r1 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final Logger f2835a = Logger.getLogger(r1.class.getName());

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final Unsafe f2836b = B();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final Class<?> f2837c = androidx.datastore.preferences.protobuf.d.b();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final boolean f2838d = m(Long.TYPE);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final boolean f2839e = m(Integer.TYPE);

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final e f2840f = z();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final boolean f2841g = Q();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static final boolean f2842h = P();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    static final long f2843i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static final long f2844j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private static final long f2845k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private static final long f2846l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private static final long f2847m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private static final long f2848n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private static final long f2849o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private static final long f2850p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private static final long f2851q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private static final long f2852r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private static final long f2853s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private static final long f2854t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private static final long f2855u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private static final long f2856v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private static final int f2857w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    static final boolean f2858x;

    /* JADX INFO: compiled from: UnsafeUtil.java */
    static class a implements PrivilegedExceptionAction<Unsafe> {
        a() {
        }

        @Override // java.security.PrivilegedExceptionAction
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Unsafe run() throws Exception {
            for (Field field : Unsafe.class.getDeclaredFields()) {
                field.setAccessible(true);
                Object obj = field.get(null);
                if (Unsafe.class.isInstance(obj)) {
                    return (Unsafe) Unsafe.class.cast(obj);
                }
            }
            return null;
        }
    }

    /* JADX INFO: compiled from: UnsafeUtil.java */
    private static final class b extends e {
        b(Unsafe unsafe) {
            super(unsafe);
        }

        @Override // androidx.datastore.preferences.protobuf.r1.e
        public boolean c(Object obj, long j10) {
            return r1.f2858x ? r1.q(obj, j10) : r1.r(obj, j10);
        }

        @Override // androidx.datastore.preferences.protobuf.r1.e
        public byte d(Object obj, long j10) {
            return r1.f2858x ? r1.t(obj, j10) : r1.u(obj, j10);
        }

        @Override // androidx.datastore.preferences.protobuf.r1.e
        public double e(Object obj, long j10) {
            return Double.longBitsToDouble(h(obj, j10));
        }

        @Override // androidx.datastore.preferences.protobuf.r1.e
        public float f(Object obj, long j10) {
            return Float.intBitsToFloat(g(obj, j10));
        }

        @Override // androidx.datastore.preferences.protobuf.r1.e
        public void k(Object obj, long j10, boolean z10) {
            if (r1.f2858x) {
                r1.F(obj, j10, z10);
            } else {
                r1.G(obj, j10, z10);
            }
        }

        @Override // androidx.datastore.preferences.protobuf.r1.e
        public void l(Object obj, long j10, byte b10) {
            if (r1.f2858x) {
                r1.I(obj, j10, b10);
            } else {
                r1.J(obj, j10, b10);
            }
        }

        @Override // androidx.datastore.preferences.protobuf.r1.e
        public void m(Object obj, long j10, double d10) {
            p(obj, j10, Double.doubleToLongBits(d10));
        }

        @Override // androidx.datastore.preferences.protobuf.r1.e
        public void n(Object obj, long j10, float f10) {
            o(obj, j10, Float.floatToIntBits(f10));
        }
    }

    /* JADX INFO: compiled from: UnsafeUtil.java */
    private static final class c extends e {
        c(Unsafe unsafe) {
            super(unsafe);
        }

        @Override // androidx.datastore.preferences.protobuf.r1.e
        public boolean c(Object obj, long j10) {
            return r1.f2858x ? r1.q(obj, j10) : r1.r(obj, j10);
        }

        @Override // androidx.datastore.preferences.protobuf.r1.e
        public byte d(Object obj, long j10) {
            return r1.f2858x ? r1.t(obj, j10) : r1.u(obj, j10);
        }

        @Override // androidx.datastore.preferences.protobuf.r1.e
        public double e(Object obj, long j10) {
            return Double.longBitsToDouble(h(obj, j10));
        }

        @Override // androidx.datastore.preferences.protobuf.r1.e
        public float f(Object obj, long j10) {
            return Float.intBitsToFloat(g(obj, j10));
        }

        @Override // androidx.datastore.preferences.protobuf.r1.e
        public void k(Object obj, long j10, boolean z10) {
            if (r1.f2858x) {
                r1.F(obj, j10, z10);
            } else {
                r1.G(obj, j10, z10);
            }
        }

        @Override // androidx.datastore.preferences.protobuf.r1.e
        public void l(Object obj, long j10, byte b10) {
            if (r1.f2858x) {
                r1.I(obj, j10, b10);
            } else {
                r1.J(obj, j10, b10);
            }
        }

        @Override // androidx.datastore.preferences.protobuf.r1.e
        public void m(Object obj, long j10, double d10) {
            p(obj, j10, Double.doubleToLongBits(d10));
        }

        @Override // androidx.datastore.preferences.protobuf.r1.e
        public void n(Object obj, long j10, float f10) {
            o(obj, j10, Float.floatToIntBits(f10));
        }
    }

    /* JADX INFO: compiled from: UnsafeUtil.java */
    private static final class d extends e {
        d(Unsafe unsafe) {
            super(unsafe);
        }

        @Override // androidx.datastore.preferences.protobuf.r1.e
        public boolean c(Object obj, long j10) {
            return this.f2859a.getBoolean(obj, j10);
        }

        @Override // androidx.datastore.preferences.protobuf.r1.e
        public byte d(Object obj, long j10) {
            return this.f2859a.getByte(obj, j10);
        }

        @Override // androidx.datastore.preferences.protobuf.r1.e
        public double e(Object obj, long j10) {
            return this.f2859a.getDouble(obj, j10);
        }

        @Override // androidx.datastore.preferences.protobuf.r1.e
        public float f(Object obj, long j10) {
            return this.f2859a.getFloat(obj, j10);
        }

        @Override // androidx.datastore.preferences.protobuf.r1.e
        public void k(Object obj, long j10, boolean z10) {
            this.f2859a.putBoolean(obj, j10, z10);
        }

        @Override // androidx.datastore.preferences.protobuf.r1.e
        public void l(Object obj, long j10, byte b10) {
            this.f2859a.putByte(obj, j10, b10);
        }

        @Override // androidx.datastore.preferences.protobuf.r1.e
        public void m(Object obj, long j10, double d10) {
            this.f2859a.putDouble(obj, j10, d10);
        }

        @Override // androidx.datastore.preferences.protobuf.r1.e
        public void n(Object obj, long j10, float f10) {
            this.f2859a.putFloat(obj, j10, f10);
        }
    }

    /* JADX INFO: compiled from: UnsafeUtil.java */
    private static abstract class e {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        Unsafe f2859a;

        e(Unsafe unsafe) {
            this.f2859a = unsafe;
        }

        public final int a(Class<?> cls) {
            return this.f2859a.arrayBaseOffset(cls);
        }

        public final int b(Class<?> cls) {
            return this.f2859a.arrayIndexScale(cls);
        }

        public abstract boolean c(Object obj, long j10);

        public abstract byte d(Object obj, long j10);

        public abstract double e(Object obj, long j10);

        public abstract float f(Object obj, long j10);

        public final int g(Object obj, long j10) {
            return this.f2859a.getInt(obj, j10);
        }

        public final long h(Object obj, long j10) {
            return this.f2859a.getLong(obj, j10);
        }

        public final Object i(Object obj, long j10) {
            return this.f2859a.getObject(obj, j10);
        }

        public final long j(Field field) {
            return this.f2859a.objectFieldOffset(field);
        }

        public abstract void k(Object obj, long j10, boolean z10);

        public abstract void l(Object obj, long j10, byte b10);

        public abstract void m(Object obj, long j10, double d10);

        public abstract void n(Object obj, long j10, float f10);

        public final void o(Object obj, long j10, int i10) {
            this.f2859a.putInt(obj, j10, i10);
        }

        public final void p(Object obj, long j10, long j11) {
            this.f2859a.putLong(obj, j10, j11);
        }

        public final void q(Object obj, long j10, Object obj2) {
            this.f2859a.putObject(obj, j10, obj2);
        }
    }

    static {
        long j10 = j(byte[].class);
        f2843i = j10;
        f2844j = j(boolean[].class);
        f2845k = k(boolean[].class);
        f2846l = j(int[].class);
        f2847m = k(int[].class);
        f2848n = j(long[].class);
        f2849o = k(long[].class);
        f2850p = j(float[].class);
        f2851q = k(float[].class);
        f2852r = j(double[].class);
        f2853s = k(double[].class);
        f2854t = j(Object[].class);
        f2855u = k(Object[].class);
        f2856v = o(l());
        f2857w = (int) (7 & j10);
        f2858x = ByteOrder.nativeOrder() == ByteOrder.BIG_ENDIAN;
    }

    private r1() {
    }

    static Object A(Object obj, long j10) {
        return f2840f.i(obj, j10);
    }

    static Unsafe B() {
        try {
            return (Unsafe) AccessController.doPrivileged(new a());
        } catch (Throwable unused) {
            return null;
        }
    }

    static boolean C() {
        return f2842h;
    }

    static boolean D() {
        return f2841g;
    }

    static void E(Object obj, long j10, boolean z10) {
        f2840f.k(obj, j10, z10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void F(Object obj, long j10, boolean z10) {
        I(obj, j10, z10 ? (byte) 1 : (byte) 0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void G(Object obj, long j10, boolean z10) {
        J(obj, j10, z10 ? (byte) 1 : (byte) 0);
    }

    static void H(byte[] bArr, long j10, byte b10) {
        f2840f.l(bArr, f2843i + j10, b10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void I(Object obj, long j10, byte b10) {
        long j11 = (-4) & j10;
        int i10 = ((((int) j10) ^ (-1)) & 3) << 3;
        M(obj, j11, ((255 & b10) << i10) | (x(obj, j11) & ((255 << i10) ^ (-1))));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void J(Object obj, long j10, byte b10) {
        long j11 = (-4) & j10;
        int i10 = (((int) j10) & 3) << 3;
        M(obj, j11, ((255 & b10) << i10) | (x(obj, j11) & ((255 << i10) ^ (-1))));
    }

    static void K(Object obj, long j10, double d10) {
        f2840f.m(obj, j10, d10);
    }

    static void L(Object obj, long j10, float f10) {
        f2840f.n(obj, j10, f10);
    }

    static void M(Object obj, long j10, int i10) {
        f2840f.o(obj, j10, i10);
    }

    static void N(Object obj, long j10, long j11) {
        f2840f.p(obj, j10, j11);
    }

    static void O(Object obj, long j10, Object obj2) {
        f2840f.q(obj, j10, obj2);
    }

    private static boolean P() {
        Unsafe unsafe = f2836b;
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
            if (androidx.datastore.preferences.protobuf.d.c()) {
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
            f2835a.log(Level.WARNING, "platform method missing - proto runtime falling back to safer methods: " + th);
            return false;
        }
    }

    private static boolean Q() {
        Unsafe unsafe = f2836b;
        if (unsafe == null) {
            return false;
        }
        try {
            Class<?> cls = unsafe.getClass();
            cls.getMethod("objectFieldOffset", Field.class);
            Class<?> cls2 = Long.TYPE;
            cls.getMethod("getLong", Object.class, cls2);
            if (l() == null) {
                return false;
            }
            if (androidx.datastore.preferences.protobuf.d.c()) {
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
            f2835a.log(Level.WARNING, "platform method missing - proto runtime falling back to safer methods: " + th);
            return false;
        }
    }

    static <T> T i(Class<T> cls) {
        try {
            return (T) f2836b.allocateInstance(cls);
        } catch (InstantiationException e10) {
            throw new IllegalStateException(e10);
        }
    }

    private static int j(Class<?> cls) {
        if (f2842h) {
            return f2840f.a(cls);
        }
        return -1;
    }

    private static int k(Class<?> cls) {
        if (f2842h) {
            return f2840f.b(cls);
        }
        return -1;
    }

    private static Field l() {
        Field fieldN;
        if (androidx.datastore.preferences.protobuf.d.c() && (fieldN = n(Buffer.class, "effectiveDirectAddress")) != null) {
            return fieldN;
        }
        Field fieldN2 = n(Buffer.class, IntegrityManager.INTEGRITY_TYPE_ADDRESS);
        if (fieldN2 == null || fieldN2.getType() != Long.TYPE) {
            return null;
        }
        return fieldN2;
    }

    private static boolean m(Class<?> cls) {
        if (!androidx.datastore.preferences.protobuf.d.c()) {
            return false;
        }
        try {
            Class<?> cls2 = f2837c;
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

    private static Field n(Class<?> cls, String str) {
        try {
            return cls.getDeclaredField(str);
        } catch (Throwable unused) {
            return null;
        }
    }

    private static long o(Field field) {
        e eVar;
        if (field == null || (eVar = f2840f) == null) {
            return -1L;
        }
        return eVar.j(field);
    }

    static boolean p(Object obj, long j10) {
        return f2840f.c(obj, j10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean q(Object obj, long j10) {
        return t(obj, j10) != 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean r(Object obj, long j10) {
        return u(obj, j10) != 0;
    }

    static byte s(byte[] bArr, long j10) {
        return f2840f.d(bArr, f2843i + j10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static byte t(Object obj, long j10) {
        return (byte) ((x(obj, (-4) & j10) >>> ((int) (((j10 ^ (-1)) & 3) << 3))) & 255);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static byte u(Object obj, long j10) {
        return (byte) ((x(obj, (-4) & j10) >>> ((int) ((j10 & 3) << 3))) & 255);
    }

    static double v(Object obj, long j10) {
        return f2840f.e(obj, j10);
    }

    static float w(Object obj, long j10) {
        return f2840f.f(obj, j10);
    }

    static int x(Object obj, long j10) {
        return f2840f.g(obj, j10);
    }

    static long y(Object obj, long j10) {
        return f2840f.h(obj, j10);
    }

    private static e z() {
        Unsafe unsafe = f2836b;
        if (unsafe == null) {
            return null;
        }
        if (!androidx.datastore.preferences.protobuf.d.c()) {
            return new d(unsafe);
        }
        if (f2838d) {
            return new c(unsafe);
        }
        if (f2839e) {
            return new b(unsafe);
        }
        return null;
    }
}
