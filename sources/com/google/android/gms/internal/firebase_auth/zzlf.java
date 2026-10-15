package com.google.android.gms.internal.firebase_auth;

import com.facebook.appevents.integrity.IntegrityManager;
import java.lang.reflect.Field;
import java.nio.Buffer;
import java.nio.ByteOrder;
import java.security.AccessController;
import java.util.logging.Level;
import java.util.logging.Logger;
import sun.misc.Unsafe;

/* JADX INFO: compiled from: com.google.firebase:firebase-auth@@19.3.1 */
/* JADX INFO: loaded from: classes2.dex */
final class zzlf {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final Logger f22883a = Logger.getLogger(zzlf.class.getName());

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final Unsafe f22884b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final Class<?> f22885c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final boolean f22886d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final boolean f22887e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final zzc f22888f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final boolean f22889g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static final boolean f22890h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static final long f22891i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static final long f22892j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private static final long f22893k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private static final long f22894l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private static final long f22895m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private static final long f22896n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private static final long f22897o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private static final long f22898p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private static final long f22899q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private static final long f22900r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private static final long f22901s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private static final long f22902t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private static final long f22903u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private static final long f22904v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private static final int f22905w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    static final boolean f22906x;

    /* JADX INFO: compiled from: com.google.firebase:firebase-auth@@19.3.1 */
    static final class zza extends zzc {
        zza(Unsafe unsafe) {
            super(unsafe);
        }

        @Override // com.google.android.gms.internal.firebase_auth.zzlf.zzc
        public final byte a(Object obj, long j10) {
            return zzlf.f22906x ? zzlf.L(obj, j10) : zzlf.M(obj, j10);
        }

        @Override // com.google.android.gms.internal.firebase_auth.zzlf.zzc
        public final void b(Object obj, long j10, byte b10) {
            if (zzlf.f22906x) {
                zzlf.u(obj, j10, b10);
            } else {
                zzlf.y(obj, j10, b10);
            }
        }

        @Override // com.google.android.gms.internal.firebase_auth.zzlf.zzc
        public final void c(Object obj, long j10, double d10) {
            f(obj, j10, Double.doubleToLongBits(d10));
        }

        @Override // com.google.android.gms.internal.firebase_auth.zzlf.zzc
        public final void d(Object obj, long j10, float f10) {
            e(obj, j10, Float.floatToIntBits(f10));
        }

        @Override // com.google.android.gms.internal.firebase_auth.zzlf.zzc
        public final void g(Object obj, long j10, boolean z10) {
            if (zzlf.f22906x) {
                zzlf.z(obj, j10, z10);
            } else {
                zzlf.D(obj, j10, z10);
            }
        }

        @Override // com.google.android.gms.internal.firebase_auth.zzlf.zzc
        public final boolean h(Object obj, long j10) {
            return zzlf.f22906x ? zzlf.N(obj, j10) : zzlf.O(obj, j10);
        }

        @Override // com.google.android.gms.internal.firebase_auth.zzlf.zzc
        public final float i(Object obj, long j10) {
            return Float.intBitsToFloat(k(obj, j10));
        }

        @Override // com.google.android.gms.internal.firebase_auth.zzlf.zzc
        public final double j(Object obj, long j10) {
            return Double.longBitsToDouble(l(obj, j10));
        }
    }

    /* JADX INFO: compiled from: com.google.firebase:firebase-auth@@19.3.1 */
    static final class zzb extends zzc {
        zzb(Unsafe unsafe) {
            super(unsafe);
        }

        @Override // com.google.android.gms.internal.firebase_auth.zzlf.zzc
        public final byte a(Object obj, long j10) {
            return zzlf.f22906x ? zzlf.L(obj, j10) : zzlf.M(obj, j10);
        }

        @Override // com.google.android.gms.internal.firebase_auth.zzlf.zzc
        public final void b(Object obj, long j10, byte b10) {
            if (zzlf.f22906x) {
                zzlf.u(obj, j10, b10);
            } else {
                zzlf.y(obj, j10, b10);
            }
        }

        @Override // com.google.android.gms.internal.firebase_auth.zzlf.zzc
        public final void c(Object obj, long j10, double d10) {
            f(obj, j10, Double.doubleToLongBits(d10));
        }

        @Override // com.google.android.gms.internal.firebase_auth.zzlf.zzc
        public final void d(Object obj, long j10, float f10) {
            e(obj, j10, Float.floatToIntBits(f10));
        }

        @Override // com.google.android.gms.internal.firebase_auth.zzlf.zzc
        public final void g(Object obj, long j10, boolean z10) {
            if (zzlf.f22906x) {
                zzlf.z(obj, j10, z10);
            } else {
                zzlf.D(obj, j10, z10);
            }
        }

        @Override // com.google.android.gms.internal.firebase_auth.zzlf.zzc
        public final boolean h(Object obj, long j10) {
            return zzlf.f22906x ? zzlf.N(obj, j10) : zzlf.O(obj, j10);
        }

        @Override // com.google.android.gms.internal.firebase_auth.zzlf.zzc
        public final float i(Object obj, long j10) {
            return Float.intBitsToFloat(k(obj, j10));
        }

        @Override // com.google.android.gms.internal.firebase_auth.zzlf.zzc
        public final double j(Object obj, long j10) {
            return Double.longBitsToDouble(l(obj, j10));
        }
    }

    /* JADX INFO: compiled from: com.google.firebase:firebase-auth@@19.3.1 */
    static abstract class zzc {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        Unsafe f22907a;

        zzc(Unsafe unsafe) {
            this.f22907a = unsafe;
        }

        public abstract byte a(Object obj, long j10);

        public abstract void b(Object obj, long j10, byte b10);

        public abstract void c(Object obj, long j10, double d10);

        public abstract void d(Object obj, long j10, float f10);

        public final void e(Object obj, long j10, int i10) {
            this.f22907a.putInt(obj, j10, i10);
        }

        public final void f(Object obj, long j10, long j11) {
            this.f22907a.putLong(obj, j10, j11);
        }

        public abstract void g(Object obj, long j10, boolean z10);

        public abstract boolean h(Object obj, long j10);

        public abstract float i(Object obj, long j10);

        public abstract double j(Object obj, long j10);

        public final int k(Object obj, long j10) {
            return this.f22907a.getInt(obj, j10);
        }

        public final long l(Object obj, long j10) {
            return this.f22907a.getLong(obj, j10);
        }
    }

    /* JADX INFO: compiled from: com.google.firebase:firebase-auth@@19.3.1 */
    static final class zzd extends zzc {
        zzd(Unsafe unsafe) {
            super(unsafe);
        }

        @Override // com.google.android.gms.internal.firebase_auth.zzlf.zzc
        public final byte a(Object obj, long j10) {
            return this.f22907a.getByte(obj, j10);
        }

        @Override // com.google.android.gms.internal.firebase_auth.zzlf.zzc
        public final void b(Object obj, long j10, byte b10) {
            this.f22907a.putByte(obj, j10, b10);
        }

        @Override // com.google.android.gms.internal.firebase_auth.zzlf.zzc
        public final void c(Object obj, long j10, double d10) {
            this.f22907a.putDouble(obj, j10, d10);
        }

        @Override // com.google.android.gms.internal.firebase_auth.zzlf.zzc
        public final void d(Object obj, long j10, float f10) {
            this.f22907a.putFloat(obj, j10, f10);
        }

        @Override // com.google.android.gms.internal.firebase_auth.zzlf.zzc
        public final void g(Object obj, long j10, boolean z10) {
            this.f22907a.putBoolean(obj, j10, z10);
        }

        @Override // com.google.android.gms.internal.firebase_auth.zzlf.zzc
        public final boolean h(Object obj, long j10) {
            return this.f22907a.getBoolean(obj, j10);
        }

        @Override // com.google.android.gms.internal.firebase_auth.zzlf.zzc
        public final float i(Object obj, long j10) {
            return this.f22907a.getFloat(obj, j10);
        }

        @Override // com.google.android.gms.internal.firebase_auth.zzlf.zzc
        public final double j(Object obj, long j10) {
            return this.f22907a.getDouble(obj, j10);
        }
    }

    static {
        Unsafe unsafeT = t();
        f22884b = unsafeT;
        f22885c = zzgq.c();
        boolean zB = B(Long.TYPE);
        f22886d = zB;
        boolean zB2 = B(Integer.TYPE);
        f22887e = zB2;
        zzc zzdVar = null;
        if (unsafeT != null) {
            if (!zzgq.b()) {
                zzdVar = new zzd(unsafeT);
            } else if (zB) {
                zzdVar = new zza(unsafeT);
            } else if (zB2) {
                zzdVar = new zzb(unsafeT);
            }
        }
        f22888f = zzdVar;
        f22889g = E();
        f22890h = A();
        long jN = n(byte[].class);
        f22891i = jN;
        f22892j = n(boolean[].class);
        f22893k = s(boolean[].class);
        f22894l = n(int[].class);
        f22895m = s(int[].class);
        f22896n = n(long[].class);
        f22897o = s(long[].class);
        f22898p = n(float[].class);
        f22899q = s(float[].class);
        f22900r = n(double[].class);
        f22901s = s(double[].class);
        f22902t = n(Object[].class);
        f22903u = s(Object[].class);
        Field fieldG = G();
        f22904v = (fieldG == null || zzdVar == null) ? -1L : zzdVar.f22907a.objectFieldOffset(fieldG);
        f22905w = (int) (7 & jN);
        f22906x = ByteOrder.nativeOrder() == ByteOrder.BIG_ENDIAN;
    }

    private zzlf() {
    }

    private static boolean A() {
        Unsafe unsafe = f22884b;
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
            if (zzgq.b()) {
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
            Logger logger = f22883a;
            Level level = Level.WARNING;
            String strValueOf = String.valueOf(th);
            StringBuilder sb = new StringBuilder(strValueOf.length() + 71);
            sb.append("platform method missing - proto runtime falling back to safer methods: ");
            sb.append(strValueOf);
            logger.logp(level, "com.google.protobuf.UnsafeUtil", "supportsUnsafeArrayOperations", sb.toString());
            return false;
        }
    }

    private static boolean B(Class<?> cls) {
        if (!zzgq.b()) {
            return false;
        }
        try {
            Class<?> cls2 = f22885c;
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

    static double C(Object obj, long j10) {
        return f22888f.j(obj, j10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void D(Object obj, long j10, boolean z10) {
        y(obj, j10, z10 ? (byte) 1 : (byte) 0);
    }

    private static boolean E() {
        Unsafe unsafe = f22884b;
        if (unsafe == null) {
            return false;
        }
        try {
            Class<?> cls = unsafe.getClass();
            cls.getMethod("objectFieldOffset", Field.class);
            Class<?> cls2 = Long.TYPE;
            cls.getMethod("getLong", Object.class, cls2);
            if (G() == null) {
                return false;
            }
            if (zzgq.b()) {
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
            Logger logger = f22883a;
            Level level = Level.WARNING;
            String strValueOf = String.valueOf(th);
            StringBuilder sb = new StringBuilder(strValueOf.length() + 71);
            sb.append("platform method missing - proto runtime falling back to safer methods: ");
            sb.append(strValueOf);
            logger.logp(level, "com.google.protobuf.UnsafeUtil", "supportsUnsafeByteBufferOperations", sb.toString());
            return false;
        }
    }

    static Object F(Object obj, long j10) {
        return f22888f.f22907a.getObject(obj, j10);
    }

    private static Field G() {
        Field fieldD;
        if (zzgq.b() && (fieldD = d(Buffer.class, "effectiveDirectAddress")) != null) {
            return fieldD;
        }
        Field fieldD2 = d(Buffer.class, IntegrityManager.INTEGRITY_TYPE_ADDRESS);
        if (fieldD2 == null || fieldD2.getType() != Long.TYPE) {
            return null;
        }
        return fieldD2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static byte L(Object obj, long j10) {
        return (byte) (b(obj, (-4) & j10) >>> ((int) (((j10 ^ (-1)) & 3) << 3)));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static byte M(Object obj, long j10) {
        return (byte) (b(obj, (-4) & j10) >>> ((int) ((j10 & 3) << 3)));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean N(Object obj, long j10) {
        return L(obj, j10) != 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean O(Object obj, long j10) {
        return M(obj, j10) != 0;
    }

    static byte a(byte[] bArr, long j10) {
        return f22888f.a(bArr, f22891i + j10);
    }

    static int b(Object obj, long j10) {
        return f22888f.k(obj, j10);
    }

    static <T> T c(Class<T> cls) {
        try {
            return (T) f22884b.allocateInstance(cls);
        } catch (InstantiationException e10) {
            throw new IllegalStateException(e10);
        }
    }

    private static Field d(Class<?> cls, String str) {
        try {
            return cls.getDeclaredField(str);
        } catch (Throwable unused) {
            return null;
        }
    }

    static void f(Object obj, long j10, double d10) {
        f22888f.c(obj, j10, d10);
    }

    static void g(Object obj, long j10, float f10) {
        f22888f.d(obj, j10, f10);
    }

    static void h(Object obj, long j10, int i10) {
        f22888f.e(obj, j10, i10);
    }

    static void i(Object obj, long j10, long j11) {
        f22888f.f(obj, j10, j11);
    }

    static void j(Object obj, long j10, Object obj2) {
        f22888f.f22907a.putObject(obj, j10, obj2);
    }

    static void k(Object obj, long j10, boolean z10) {
        f22888f.g(obj, j10, z10);
    }

    static void l(byte[] bArr, long j10, byte b10) {
        f22888f.b(bArr, f22891i + j10, b10);
    }

    static boolean m() {
        return f22890h;
    }

    private static int n(Class<?> cls) {
        if (f22890h) {
            return f22888f.f22907a.arrayBaseOffset(cls);
        }
        return -1;
    }

    static long o(Object obj, long j10) {
        return f22888f.l(obj, j10);
    }

    static boolean r() {
        return f22889g;
    }

    private static int s(Class<?> cls) {
        if (f22890h) {
            return f22888f.f22907a.arrayIndexScale(cls);
        }
        return -1;
    }

    static Unsafe t() {
        try {
            return (Unsafe) AccessController.doPrivileged(new zzle());
        } catch (Throwable unused) {
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void u(Object obj, long j10, byte b10) {
        long j11 = (-4) & j10;
        int i10 = ((((int) j10) ^ (-1)) & 3) << 3;
        h(obj, j11, ((255 & b10) << i10) | (b(obj, j11) & ((255 << i10) ^ (-1))));
    }

    static boolean w(Object obj, long j10) {
        return f22888f.h(obj, j10);
    }

    static float x(Object obj, long j10) {
        return f22888f.i(obj, j10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void y(Object obj, long j10, byte b10) {
        long j11 = (-4) & j10;
        int i10 = (((int) j10) & 3) << 3;
        h(obj, j11, ((255 & b10) << i10) | (b(obj, j11) & ((255 << i10) ^ (-1))));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void z(Object obj, long j10, boolean z10) {
        u(obj, j10, z10 ? (byte) 1 : (byte) 0);
    }
}
