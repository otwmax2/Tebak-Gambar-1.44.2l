package d7;

import java.io.IOException;
import java.lang.reflect.Field;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.net.InetAddress;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URL;
import java.security.AccessController;
import java.security.PrivilegedAction;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.BitSet;
import java.util.Calendar;
import java.util.Currency;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Locale;
import java.util.Map;
import java.util.StringTokenizer;
import java.util.UUID;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicIntegerArray;

/* JADX INFO: compiled from: TypeAdapters.java */
/* JADX INFO: loaded from: classes2.dex */
public final class n {
    public static final com.google.gson.w<String> A;
    public static final com.google.gson.w<BigDecimal> B;
    public static final com.google.gson.w<BigInteger> C;
    public static final com.google.gson.x D;
    public static final com.google.gson.w<StringBuilder> E;
    public static final com.google.gson.x F;
    public static final com.google.gson.w<StringBuffer> G;
    public static final com.google.gson.x H;
    public static final com.google.gson.w<URL> I;
    public static final com.google.gson.x J;
    public static final com.google.gson.w<URI> K;
    public static final com.google.gson.x L;
    public static final com.google.gson.w<InetAddress> M;
    public static final com.google.gson.x N;
    public static final com.google.gson.w<UUID> O;
    public static final com.google.gson.x P;
    public static final com.google.gson.w<Currency> Q;
    public static final com.google.gson.x R;
    public static final com.google.gson.x S;
    public static final com.google.gson.w<Calendar> T;
    public static final com.google.gson.x U;
    public static final com.google.gson.w<Locale> V;
    public static final com.google.gson.x W;
    public static final com.google.gson.w<com.google.gson.l> X;
    public static final com.google.gson.x Y;
    public static final com.google.gson.x Z;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final com.google.gson.w<Class> f28693a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final com.google.gson.x f28694b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final com.google.gson.w<BitSet> f28695c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final com.google.gson.x f28696d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final com.google.gson.w<Boolean> f28697e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final com.google.gson.w<Boolean> f28698f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final com.google.gson.x f28699g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final com.google.gson.w<Number> f28700h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final com.google.gson.x f28701i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final com.google.gson.w<Number> f28702j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final com.google.gson.x f28703k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static final com.google.gson.w<Number> f28704l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public static final com.google.gson.x f28705m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public static final com.google.gson.w<AtomicInteger> f28706n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public static final com.google.gson.x f28707o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public static final com.google.gson.w<AtomicBoolean> f28708p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public static final com.google.gson.x f28709q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public static final com.google.gson.w<AtomicIntegerArray> f28710r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public static final com.google.gson.x f28711s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public static final com.google.gson.w<Number> f28712t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public static final com.google.gson.w<Number> f28713u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public static final com.google.gson.w<Number> f28714v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public static final com.google.gson.w<Number> f28715w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public static final com.google.gson.x f28716x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public static final com.google.gson.w<Character> f28717y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public static final com.google.gson.x f28718z;

    /* JADX INFO: compiled from: TypeAdapters.java */
    class a extends com.google.gson.w<AtomicIntegerArray> {
        a() {
        }

        @Override // com.google.gson.w
        /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
        public AtomicIntegerArray b(h7.a aVar) throws IOException {
            ArrayList arrayList = new ArrayList();
            aVar.b();
            while (aVar.j()) {
                try {
                    arrayList.add(Integer.valueOf(aVar.p()));
                } catch (NumberFormatException e10) {
                    throw new com.google.gson.u(e10);
                }
            }
            aVar.g();
            int size = arrayList.size();
            AtomicIntegerArray atomicIntegerArray = new AtomicIntegerArray(size);
            for (int i10 = 0; i10 < size; i10++) {
                atomicIntegerArray.set(i10, ((Integer) arrayList.get(i10)).intValue());
            }
            return atomicIntegerArray;
        }

        @Override // com.google.gson.w
        /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
        public void d(h7.c cVar, AtomicIntegerArray atomicIntegerArray) throws IOException {
            cVar.d();
            int length = atomicIntegerArray.length();
            for (int i10 = 0; i10 < length; i10++) {
                cVar.x(atomicIntegerArray.get(i10));
            }
            cVar.g();
        }
    }

    /* JADX INFO: compiled from: TypeAdapters.java */
    class a0 implements com.google.gson.x {

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        final /* synthetic */ Class f28719o;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        final /* synthetic */ Class f28720p;

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        final /* synthetic */ com.google.gson.w f28721q;

        a0(Class cls, Class cls2, com.google.gson.w wVar) {
            this.f28719o = cls;
            this.f28720p = cls2;
            this.f28721q = wVar;
        }

        @Override // com.google.gson.x
        public <T> com.google.gson.w<T> a(com.google.gson.f fVar, g7.a<T> aVar) {
            Class<? super T> rawType = aVar.getRawType();
            if (rawType == this.f28719o || rawType == this.f28720p) {
                return this.f28721q;
            }
            return null;
        }

        public String toString() {
            return "Factory[type=" + this.f28719o.getName() + "+" + this.f28720p.getName() + ",adapter=" + this.f28721q + "]";
        }
    }

    /* JADX INFO: compiled from: TypeAdapters.java */
    class b extends com.google.gson.w<Number> {
        b() {
        }

        @Override // com.google.gson.w
        /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
        public Number b(h7.a aVar) throws IOException {
            if (aVar.x() == h7.b.NULL) {
                aVar.t();
                return null;
            }
            try {
                return Long.valueOf(aVar.q());
            } catch (NumberFormatException e10) {
                throw new com.google.gson.u(e10);
            }
        }

        @Override // com.google.gson.w
        /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
        public void d(h7.c cVar, Number number) throws IOException {
            cVar.z(number);
        }
    }

    /* JADX INFO: compiled from: TypeAdapters.java */
    class b0 implements com.google.gson.x {

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        final /* synthetic */ Class f28722o;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        final /* synthetic */ com.google.gson.w f28723p;

        /* JADX INFO: Add missing generic type declarations: [T1] */
        /* JADX INFO: compiled from: TypeAdapters.java */
        class a<T1> extends com.google.gson.w<T1> {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            final /* synthetic */ Class f28724a;

            a(Class cls) {
                this.f28724a = cls;
            }

            @Override // com.google.gson.w
            public T1 b(h7.a aVar) throws IOException {
                T1 t12 = (T1) b0.this.f28723p.b(aVar);
                if (t12 == null || this.f28724a.isInstance(t12)) {
                    return t12;
                }
                throw new com.google.gson.u("Expected a " + this.f28724a.getName() + " but was " + t12.getClass().getName());
            }

            @Override // com.google.gson.w
            public void d(h7.c cVar, T1 t12) throws IOException {
                b0.this.f28723p.d(cVar, t12);
            }
        }

        b0(Class cls, com.google.gson.w wVar) {
            this.f28722o = cls;
            this.f28723p = wVar;
        }

        @Override // com.google.gson.x
        public <T2> com.google.gson.w<T2> a(com.google.gson.f fVar, g7.a<T2> aVar) {
            Class<? super T2> rawType = aVar.getRawType();
            if (this.f28722o.isAssignableFrom(rawType)) {
                return new a(rawType);
            }
            return null;
        }

        public String toString() {
            return "Factory[typeHierarchy=" + this.f28722o.getName() + ",adapter=" + this.f28723p + "]";
        }
    }

    /* JADX INFO: compiled from: TypeAdapters.java */
    class c extends com.google.gson.w<Number> {
        c() {
        }

        @Override // com.google.gson.w
        /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
        public Number b(h7.a aVar) throws IOException {
            if (aVar.x() != h7.b.NULL) {
                return Float.valueOf((float) aVar.o());
            }
            aVar.t();
            return null;
        }

        @Override // com.google.gson.w
        /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
        public void d(h7.c cVar, Number number) throws IOException {
            cVar.z(number);
        }
    }

    /* JADX INFO: compiled from: TypeAdapters.java */
    static /* synthetic */ class c0 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f28726a;

        static {
            int[] iArr = new int[h7.b.values().length];
            f28726a = iArr;
            try {
                iArr[h7.b.NUMBER.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f28726a[h7.b.BOOLEAN.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f28726a[h7.b.STRING.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f28726a[h7.b.NULL.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f28726a[h7.b.BEGIN_ARRAY.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f28726a[h7.b.BEGIN_OBJECT.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f28726a[h7.b.END_DOCUMENT.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f28726a[h7.b.NAME.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f28726a[h7.b.END_OBJECT.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f28726a[h7.b.END_ARRAY.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
        }
    }

    /* JADX INFO: compiled from: TypeAdapters.java */
    class d extends com.google.gson.w<Number> {
        d() {
        }

        @Override // com.google.gson.w
        /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
        public Number b(h7.a aVar) throws IOException {
            if (aVar.x() != h7.b.NULL) {
                return Double.valueOf(aVar.o());
            }
            aVar.t();
            return null;
        }

        @Override // com.google.gson.w
        /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
        public void d(h7.c cVar, Number number) throws IOException {
            cVar.z(number);
        }
    }

    /* JADX INFO: compiled from: TypeAdapters.java */
    class d0 extends com.google.gson.w<Boolean> {
        d0() {
        }

        @Override // com.google.gson.w
        /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
        public Boolean b(h7.a aVar) throws IOException {
            h7.b bVarX = aVar.x();
            if (bVarX != h7.b.NULL) {
                return bVarX == h7.b.STRING ? Boolean.valueOf(Boolean.parseBoolean(aVar.v())) : Boolean.valueOf(aVar.n());
            }
            aVar.t();
            return null;
        }

        @Override // com.google.gson.w
        /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
        public void d(h7.c cVar, Boolean bool) throws IOException {
            cVar.y(bool);
        }
    }

    /* JADX INFO: compiled from: TypeAdapters.java */
    class e extends com.google.gson.w<Number> {
        e() {
        }

        @Override // com.google.gson.w
        /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
        public Number b(h7.a aVar) throws IOException {
            h7.b bVarX = aVar.x();
            int i10 = c0.f28726a[bVarX.ordinal()];
            if (i10 == 1 || i10 == 3) {
                return new c7.g(aVar.v());
            }
            if (i10 == 4) {
                aVar.t();
                return null;
            }
            throw new com.google.gson.u("Expecting number, got: " + bVarX);
        }

        @Override // com.google.gson.w
        /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
        public void d(h7.c cVar, Number number) throws IOException {
            cVar.z(number);
        }
    }

    /* JADX INFO: compiled from: TypeAdapters.java */
    class e0 extends com.google.gson.w<Boolean> {
        e0() {
        }

        @Override // com.google.gson.w
        /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
        public Boolean b(h7.a aVar) throws IOException {
            if (aVar.x() != h7.b.NULL) {
                return Boolean.valueOf(aVar.v());
            }
            aVar.t();
            return null;
        }

        @Override // com.google.gson.w
        /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
        public void d(h7.c cVar, Boolean bool) throws IOException {
            cVar.A(bool == null ? "null" : bool.toString());
        }
    }

    /* JADX INFO: compiled from: TypeAdapters.java */
    class f extends com.google.gson.w<Character> {
        f() {
        }

        @Override // com.google.gson.w
        /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
        public Character b(h7.a aVar) throws IOException {
            if (aVar.x() == h7.b.NULL) {
                aVar.t();
                return null;
            }
            String strV = aVar.v();
            if (strV.length() == 1) {
                return Character.valueOf(strV.charAt(0));
            }
            throw new com.google.gson.u("Expecting character, got: " + strV);
        }

        @Override // com.google.gson.w
        /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
        public void d(h7.c cVar, Character ch) throws IOException {
            cVar.A(ch == null ? null : String.valueOf(ch));
        }
    }

    /* JADX INFO: compiled from: TypeAdapters.java */
    class f0 extends com.google.gson.w<Number> {
        f0() {
        }

        @Override // com.google.gson.w
        /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
        public Number b(h7.a aVar) throws IOException {
            if (aVar.x() == h7.b.NULL) {
                aVar.t();
                return null;
            }
            try {
                return Byte.valueOf((byte) aVar.p());
            } catch (NumberFormatException e10) {
                throw new com.google.gson.u(e10);
            }
        }

        @Override // com.google.gson.w
        /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
        public void d(h7.c cVar, Number number) throws IOException {
            cVar.z(number);
        }
    }

    /* JADX INFO: compiled from: TypeAdapters.java */
    class g extends com.google.gson.w<String> {
        g() {
        }

        @Override // com.google.gson.w
        /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
        public String b(h7.a aVar) throws IOException {
            h7.b bVarX = aVar.x();
            if (bVarX != h7.b.NULL) {
                return bVarX == h7.b.BOOLEAN ? Boolean.toString(aVar.n()) : aVar.v();
            }
            aVar.t();
            return null;
        }

        @Override // com.google.gson.w
        /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
        public void d(h7.c cVar, String str) throws IOException {
            cVar.A(str);
        }
    }

    /* JADX INFO: compiled from: TypeAdapters.java */
    class g0 extends com.google.gson.w<Number> {
        g0() {
        }

        @Override // com.google.gson.w
        /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
        public Number b(h7.a aVar) throws IOException {
            if (aVar.x() == h7.b.NULL) {
                aVar.t();
                return null;
            }
            try {
                return Short.valueOf((short) aVar.p());
            } catch (NumberFormatException e10) {
                throw new com.google.gson.u(e10);
            }
        }

        @Override // com.google.gson.w
        /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
        public void d(h7.c cVar, Number number) throws IOException {
            cVar.z(number);
        }
    }

    /* JADX INFO: compiled from: TypeAdapters.java */
    class h extends com.google.gson.w<BigDecimal> {
        h() {
        }

        @Override // com.google.gson.w
        /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
        public BigDecimal b(h7.a aVar) throws IOException {
            if (aVar.x() == h7.b.NULL) {
                aVar.t();
                return null;
            }
            try {
                return new BigDecimal(aVar.v());
            } catch (NumberFormatException e10) {
                throw new com.google.gson.u(e10);
            }
        }

        @Override // com.google.gson.w
        /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
        public void d(h7.c cVar, BigDecimal bigDecimal) throws IOException {
            cVar.z(bigDecimal);
        }
    }

    /* JADX INFO: compiled from: TypeAdapters.java */
    class h0 extends com.google.gson.w<Number> {
        h0() {
        }

        @Override // com.google.gson.w
        /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
        public Number b(h7.a aVar) throws IOException {
            if (aVar.x() == h7.b.NULL) {
                aVar.t();
                return null;
            }
            try {
                return Integer.valueOf(aVar.p());
            } catch (NumberFormatException e10) {
                throw new com.google.gson.u(e10);
            }
        }

        @Override // com.google.gson.w
        /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
        public void d(h7.c cVar, Number number) throws IOException {
            cVar.z(number);
        }
    }

    /* JADX INFO: compiled from: TypeAdapters.java */
    class i extends com.google.gson.w<BigInteger> {
        i() {
        }

        @Override // com.google.gson.w
        /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
        public BigInteger b(h7.a aVar) throws IOException {
            if (aVar.x() == h7.b.NULL) {
                aVar.t();
                return null;
            }
            try {
                return new BigInteger(aVar.v());
            } catch (NumberFormatException e10) {
                throw new com.google.gson.u(e10);
            }
        }

        @Override // com.google.gson.w
        /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
        public void d(h7.c cVar, BigInteger bigInteger) throws IOException {
            cVar.z(bigInteger);
        }
    }

    /* JADX INFO: compiled from: TypeAdapters.java */
    class i0 extends com.google.gson.w<AtomicInteger> {
        i0() {
        }

        @Override // com.google.gson.w
        /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
        public AtomicInteger b(h7.a aVar) throws IOException {
            try {
                return new AtomicInteger(aVar.p());
            } catch (NumberFormatException e10) {
                throw new com.google.gson.u(e10);
            }
        }

        @Override // com.google.gson.w
        /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
        public void d(h7.c cVar, AtomicInteger atomicInteger) throws IOException {
            cVar.x(atomicInteger.get());
        }
    }

    /* JADX INFO: compiled from: TypeAdapters.java */
    class j extends com.google.gson.w<StringBuilder> {
        j() {
        }

        @Override // com.google.gson.w
        /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
        public StringBuilder b(h7.a aVar) throws IOException {
            if (aVar.x() != h7.b.NULL) {
                return new StringBuilder(aVar.v());
            }
            aVar.t();
            return null;
        }

        @Override // com.google.gson.w
        /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
        public void d(h7.c cVar, StringBuilder sb) throws IOException {
            cVar.A(sb == null ? null : sb.toString());
        }
    }

    /* JADX INFO: compiled from: TypeAdapters.java */
    class j0 extends com.google.gson.w<AtomicBoolean> {
        j0() {
        }

        @Override // com.google.gson.w
        /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
        public AtomicBoolean b(h7.a aVar) throws IOException {
            return new AtomicBoolean(aVar.n());
        }

        @Override // com.google.gson.w
        /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
        public void d(h7.c cVar, AtomicBoolean atomicBoolean) throws IOException {
            cVar.C(atomicBoolean.get());
        }
    }

    /* JADX INFO: compiled from: TypeAdapters.java */
    class k extends com.google.gson.w<Class> {
        k() {
        }

        @Override // com.google.gson.w
        /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
        public Class b(h7.a aVar) throws IOException {
            throw new UnsupportedOperationException("Attempted to deserialize a java.lang.Class. Forgot to register a type adapter?");
        }

        @Override // com.google.gson.w
        /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
        public void d(h7.c cVar, Class cls) throws IOException {
            throw new UnsupportedOperationException("Attempted to serialize java.lang.Class: " + cls.getName() + ". Forgot to register a type adapter?");
        }
    }

    /* JADX INFO: compiled from: TypeAdapters.java */
    private static final class k0<T extends Enum<T>> extends com.google.gson.w<T> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Map<String, T> f28727a = new HashMap();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final Map<T, String> f28728b = new HashMap();

        /* JADX INFO: compiled from: TypeAdapters.java */
        class a implements PrivilegedAction<Void> {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            final /* synthetic */ Field f28729a;

            a(Field field) {
                this.f28729a = field;
            }

            @Override // java.security.PrivilegedAction
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public Void run() {
                this.f28729a.setAccessible(true);
                return null;
            }
        }

        public k0(Class<T> cls) {
            try {
                for (Field field : cls.getDeclaredFields()) {
                    if (field.isEnumConstant()) {
                        AccessController.doPrivileged(new a(field));
                        Enum r42 = (Enum) field.get(null);
                        String strName = r42.name();
                        b7.c cVar = (b7.c) field.getAnnotation(b7.c.class);
                        if (cVar != null) {
                            strName = cVar.value();
                            for (String str : cVar.alternate()) {
                                this.f28727a.put(str, (T) r42);
                            }
                        }
                        this.f28727a.put(strName, (T) r42);
                        this.f28728b.put((T) r42, strName);
                    }
                }
            } catch (IllegalAccessException e10) {
                throw new AssertionError(e10);
            }
        }

        @Override // com.google.gson.w
        /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
        public T b(h7.a aVar) throws IOException {
            if (aVar.x() != h7.b.NULL) {
                return this.f28727a.get(aVar.v());
            }
            aVar.t();
            return null;
        }

        @Override // com.google.gson.w
        /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
        public void d(h7.c cVar, T t10) throws IOException {
            cVar.A(t10 == null ? null : this.f28728b.get(t10));
        }
    }

    /* JADX INFO: compiled from: TypeAdapters.java */
    class l extends com.google.gson.w<StringBuffer> {
        l() {
        }

        @Override // com.google.gson.w
        /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
        public StringBuffer b(h7.a aVar) throws IOException {
            if (aVar.x() != h7.b.NULL) {
                return new StringBuffer(aVar.v());
            }
            aVar.t();
            return null;
        }

        @Override // com.google.gson.w
        /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
        public void d(h7.c cVar, StringBuffer stringBuffer) throws IOException {
            cVar.A(stringBuffer == null ? null : stringBuffer.toString());
        }
    }

    /* JADX INFO: compiled from: TypeAdapters.java */
    class m extends com.google.gson.w<URL> {
        m() {
        }

        @Override // com.google.gson.w
        /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
        public URL b(h7.a aVar) throws IOException {
            if (aVar.x() == h7.b.NULL) {
                aVar.t();
                return null;
            }
            String strV = aVar.v();
            if ("null".equals(strV)) {
                return null;
            }
            return new URL(strV);
        }

        @Override // com.google.gson.w
        /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
        public void d(h7.c cVar, URL url) throws IOException {
            cVar.A(url == null ? null : url.toExternalForm());
        }
    }

    /* JADX INFO: renamed from: d7.n$n, reason: collision with other inner class name */
    /* JADX INFO: compiled from: TypeAdapters.java */
    class C0145n extends com.google.gson.w<URI> {
        C0145n() {
        }

        @Override // com.google.gson.w
        /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
        public URI b(h7.a aVar) throws IOException {
            if (aVar.x() == h7.b.NULL) {
                aVar.t();
                return null;
            }
            try {
                String strV = aVar.v();
                if ("null".equals(strV)) {
                    return null;
                }
                return new URI(strV);
            } catch (URISyntaxException e10) {
                throw new com.google.gson.m(e10);
            }
        }

        @Override // com.google.gson.w
        /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
        public void d(h7.c cVar, URI uri) throws IOException {
            cVar.A(uri == null ? null : uri.toASCIIString());
        }
    }

    /* JADX INFO: compiled from: TypeAdapters.java */
    class o extends com.google.gson.w<InetAddress> {
        o() {
        }

        @Override // com.google.gson.w
        /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
        public InetAddress b(h7.a aVar) throws IOException {
            if (aVar.x() != h7.b.NULL) {
                return InetAddress.getByName(aVar.v());
            }
            aVar.t();
            return null;
        }

        @Override // com.google.gson.w
        /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
        public void d(h7.c cVar, InetAddress inetAddress) throws IOException {
            cVar.A(inetAddress == null ? null : inetAddress.getHostAddress());
        }
    }

    /* JADX INFO: compiled from: TypeAdapters.java */
    class p extends com.google.gson.w<UUID> {
        p() {
        }

        @Override // com.google.gson.w
        /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
        public UUID b(h7.a aVar) throws IOException {
            if (aVar.x() != h7.b.NULL) {
                return UUID.fromString(aVar.v());
            }
            aVar.t();
            return null;
        }

        @Override // com.google.gson.w
        /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
        public void d(h7.c cVar, UUID uuid) throws IOException {
            cVar.A(uuid == null ? null : uuid.toString());
        }
    }

    /* JADX INFO: compiled from: TypeAdapters.java */
    class q extends com.google.gson.w<Currency> {
        q() {
        }

        @Override // com.google.gson.w
        /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
        public Currency b(h7.a aVar) throws IOException {
            return Currency.getInstance(aVar.v());
        }

        @Override // com.google.gson.w
        /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
        public void d(h7.c cVar, Currency currency) throws IOException {
            cVar.A(currency.getCurrencyCode());
        }
    }

    /* JADX INFO: compiled from: TypeAdapters.java */
    class r implements com.google.gson.x {

        /* JADX INFO: compiled from: TypeAdapters.java */
        class a extends com.google.gson.w<Timestamp> {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            final /* synthetic */ com.google.gson.w f28731a;

            a(com.google.gson.w wVar) {
                this.f28731a = wVar;
            }

            @Override // com.google.gson.w
            /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
            public Timestamp b(h7.a aVar) throws IOException {
                Date date = (Date) this.f28731a.b(aVar);
                if (date != null) {
                    return new Timestamp(date.getTime());
                }
                return null;
            }

            @Override // com.google.gson.w
            /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
            public void d(h7.c cVar, Timestamp timestamp) throws IOException {
                this.f28731a.d(cVar, timestamp);
            }
        }

        r() {
        }

        @Override // com.google.gson.x
        public <T> com.google.gson.w<T> a(com.google.gson.f fVar, g7.a<T> aVar) {
            if (aVar.getRawType() != Timestamp.class) {
                return null;
            }
            return new a(fVar.n(Date.class));
        }
    }

    /* JADX INFO: compiled from: TypeAdapters.java */
    class s extends com.google.gson.w<Calendar> {
        s() {
        }

        @Override // com.google.gson.w
        /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
        public Calendar b(h7.a aVar) throws IOException {
            if (aVar.x() == h7.b.NULL) {
                aVar.t();
                return null;
            }
            aVar.c();
            int i10 = 0;
            int i11 = 0;
            int i12 = 0;
            int i13 = 0;
            int i14 = 0;
            int i15 = 0;
            while (aVar.x() != h7.b.END_OBJECT) {
                String strR = aVar.r();
                int iP = aVar.p();
                if ("year".equals(strR)) {
                    i10 = iP;
                } else if ("month".equals(strR)) {
                    i11 = iP;
                } else if ("dayOfMonth".equals(strR)) {
                    i12 = iP;
                } else if ("hourOfDay".equals(strR)) {
                    i13 = iP;
                } else if ("minute".equals(strR)) {
                    i14 = iP;
                } else if ("second".equals(strR)) {
                    i15 = iP;
                }
            }
            aVar.h();
            return new GregorianCalendar(i10, i11, i12, i13, i14, i15);
        }

        @Override // com.google.gson.w
        /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
        public void d(h7.c cVar, Calendar calendar) throws IOException {
            if (calendar == null) {
                cVar.n();
                return;
            }
            cVar.e();
            cVar.l("year");
            cVar.x(calendar.get(1));
            cVar.l("month");
            cVar.x(calendar.get(2));
            cVar.l("dayOfMonth");
            cVar.x(calendar.get(5));
            cVar.l("hourOfDay");
            cVar.x(calendar.get(11));
            cVar.l("minute");
            cVar.x(calendar.get(12));
            cVar.l("second");
            cVar.x(calendar.get(13));
            cVar.h();
        }
    }

    /* JADX INFO: compiled from: TypeAdapters.java */
    class t extends com.google.gson.w<Locale> {
        t() {
        }

        @Override // com.google.gson.w
        /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
        public Locale b(h7.a aVar) throws IOException {
            if (aVar.x() == h7.b.NULL) {
                aVar.t();
                return null;
            }
            StringTokenizer stringTokenizer = new StringTokenizer(aVar.v(), "_");
            String strNextToken = stringTokenizer.hasMoreElements() ? stringTokenizer.nextToken() : null;
            String strNextToken2 = stringTokenizer.hasMoreElements() ? stringTokenizer.nextToken() : null;
            String strNextToken3 = stringTokenizer.hasMoreElements() ? stringTokenizer.nextToken() : null;
            return (strNextToken2 == null && strNextToken3 == null) ? new Locale(strNextToken) : strNextToken3 == null ? new Locale(strNextToken, strNextToken2) : new Locale(strNextToken, strNextToken2, strNextToken3);
        }

        @Override // com.google.gson.w
        /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
        public void d(h7.c cVar, Locale locale) throws IOException {
            cVar.A(locale == null ? null : locale.toString());
        }
    }

    /* JADX INFO: compiled from: TypeAdapters.java */
    class u extends com.google.gson.w<com.google.gson.l> {
        u() {
        }

        @Override // com.google.gson.w
        /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
        public com.google.gson.l b(h7.a aVar) throws IOException {
            switch (c0.f28726a[aVar.x().ordinal()]) {
                case 1:
                    return new com.google.gson.r(new c7.g(aVar.v()));
                case 2:
                    return new com.google.gson.r(Boolean.valueOf(aVar.n()));
                case 3:
                    return new com.google.gson.r(aVar.v());
                case 4:
                    aVar.t();
                    return com.google.gson.n.f26734a;
                case 5:
                    com.google.gson.i iVar = new com.google.gson.i();
                    aVar.b();
                    while (aVar.j()) {
                        iVar.t(b(aVar));
                    }
                    aVar.g();
                    return iVar;
                case 6:
                    com.google.gson.o oVar = new com.google.gson.o();
                    aVar.c();
                    while (aVar.j()) {
                        oVar.t(aVar.r(), b(aVar));
                    }
                    aVar.h();
                    return oVar;
                default:
                    throw new IllegalArgumentException();
            }
        }

        @Override // com.google.gson.w
        /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
        public void d(h7.c cVar, com.google.gson.l lVar) throws IOException {
            if (lVar == null || lVar.q()) {
                cVar.n();
                return;
            }
            if (lVar.s()) {
                com.google.gson.r rVarM = lVar.m();
                if (rVarM.x()) {
                    cVar.z(rVarM.t());
                    return;
                } else if (rVarM.u()) {
                    cVar.C(rVarM.c());
                    return;
                } else {
                    cVar.A(rVarM.o());
                    return;
                }
            }
            if (lVar.p()) {
                cVar.d();
                Iterator<com.google.gson.l> it = lVar.k().iterator();
                while (it.hasNext()) {
                    d(cVar, it.next());
                }
                cVar.g();
                return;
            }
            if (!lVar.r()) {
                throw new IllegalArgumentException("Couldn't write " + lVar.getClass());
            }
            cVar.e();
            for (Map.Entry<String, com.google.gson.l> entry : lVar.l().y()) {
                cVar.l(entry.getKey());
                d(cVar, entry.getValue());
            }
            cVar.h();
        }
    }

    /* JADX INFO: compiled from: TypeAdapters.java */
    class v extends com.google.gson.w<BitSet> {
        v() {
        }

        /* JADX WARN: Removed duplicated region for block: B:15:0x002e  */
        @Override // com.google.gson.w
        /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public java.util.BitSet b(h7.a r8) throws java.io.IOException {
            /*
                r7 = this;
                java.util.BitSet r0 = new java.util.BitSet
                r0.<init>()
                r8.b()
                h7.b r1 = r8.x()
                r2 = 0
                r3 = 0
            Le:
                h7.b r4 = h7.b.END_ARRAY
                if (r1 == r4) goto L75
                int[] r4 = d7.n.c0.f28726a
                int r5 = r1.ordinal()
                r4 = r4[r5]
                r5 = 1
                if (r4 == r5) goto L63
                r6 = 2
                if (r4 == r6) goto L5e
                r6 = 3
                if (r4 != r6) goto L47
                java.lang.String r1 = r8.v()
                int r1 = java.lang.Integer.parseInt(r1)     // Catch: java.lang.NumberFormatException -> L30
                if (r1 == 0) goto L2e
                goto L69
            L2e:
                r5 = 0
                goto L69
            L30:
                com.google.gson.u r8 = new com.google.gson.u
                java.lang.StringBuilder r0 = new java.lang.StringBuilder
                r0.<init>()
                java.lang.String r2 = "Error: Expecting: bitset number value (1, 0), Found: "
                r0.append(r2)
                r0.append(r1)
                java.lang.String r0 = r0.toString()
                r8.<init>(r0)
                throw r8
            L47:
                com.google.gson.u r8 = new com.google.gson.u
                java.lang.StringBuilder r0 = new java.lang.StringBuilder
                r0.<init>()
                java.lang.String r2 = "Invalid bitset value type: "
                r0.append(r2)
                r0.append(r1)
                java.lang.String r0 = r0.toString()
                r8.<init>(r0)
                throw r8
            L5e:
                boolean r5 = r8.n()
                goto L69
            L63:
                int r1 = r8.p()
                if (r1 == 0) goto L2e
            L69:
                if (r5 == 0) goto L6e
                r0.set(r3)
            L6e:
                int r3 = r3 + 1
                h7.b r1 = r8.x()
                goto Le
            L75:
                r8.g()
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: d7.n.v.b(h7.a):java.util.BitSet");
        }

        @Override // com.google.gson.w
        /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
        public void d(h7.c cVar, BitSet bitSet) throws IOException {
            cVar.d();
            int length = bitSet.length();
            for (int i10 = 0; i10 < length; i10++) {
                cVar.x(bitSet.get(i10) ? 1L : 0L);
            }
            cVar.g();
        }
    }

    /* JADX INFO: compiled from: TypeAdapters.java */
    class w implements com.google.gson.x {
        w() {
        }

        @Override // com.google.gson.x
        public <T> com.google.gson.w<T> a(com.google.gson.f fVar, g7.a<T> aVar) {
            Class<? super T> rawType = aVar.getRawType();
            if (!Enum.class.isAssignableFrom(rawType) || rawType == Enum.class) {
                return null;
            }
            if (!rawType.isEnum()) {
                rawType = rawType.getSuperclass();
            }
            return new k0(rawType);
        }
    }

    /* JADX INFO: compiled from: TypeAdapters.java */
    class x implements com.google.gson.x {

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        final /* synthetic */ g7.a f28733o;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        final /* synthetic */ com.google.gson.w f28734p;

        x(g7.a aVar, com.google.gson.w wVar) {
            this.f28733o = aVar;
            this.f28734p = wVar;
        }

        @Override // com.google.gson.x
        public <T> com.google.gson.w<T> a(com.google.gson.f fVar, g7.a<T> aVar) {
            if (aVar.equals(this.f28733o)) {
                return this.f28734p;
            }
            return null;
        }
    }

    /* JADX INFO: compiled from: TypeAdapters.java */
    class y implements com.google.gson.x {

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        final /* synthetic */ Class f28735o;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        final /* synthetic */ com.google.gson.w f28736p;

        y(Class cls, com.google.gson.w wVar) {
            this.f28735o = cls;
            this.f28736p = wVar;
        }

        @Override // com.google.gson.x
        public <T> com.google.gson.w<T> a(com.google.gson.f fVar, g7.a<T> aVar) {
            if (aVar.getRawType() == this.f28735o) {
                return this.f28736p;
            }
            return null;
        }

        public String toString() {
            return "Factory[type=" + this.f28735o.getName() + ",adapter=" + this.f28736p + "]";
        }
    }

    /* JADX INFO: compiled from: TypeAdapters.java */
    class z implements com.google.gson.x {

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        final /* synthetic */ Class f28737o;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        final /* synthetic */ Class f28738p;

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        final /* synthetic */ com.google.gson.w f28739q;

        z(Class cls, Class cls2, com.google.gson.w wVar) {
            this.f28737o = cls;
            this.f28738p = cls2;
            this.f28739q = wVar;
        }

        @Override // com.google.gson.x
        public <T> com.google.gson.w<T> a(com.google.gson.f fVar, g7.a<T> aVar) {
            Class<? super T> rawType = aVar.getRawType();
            if (rawType == this.f28737o || rawType == this.f28738p) {
                return this.f28739q;
            }
            return null;
        }

        public String toString() {
            return "Factory[type=" + this.f28738p.getName() + "+" + this.f28737o.getName() + ",adapter=" + this.f28739q + "]";
        }
    }

    static {
        com.google.gson.w<Class> wVarA = new k().a();
        f28693a = wVarA;
        f28694b = b(Class.class, wVarA);
        com.google.gson.w<BitSet> wVarA2 = new v().a();
        f28695c = wVarA2;
        f28696d = b(BitSet.class, wVarA2);
        d0 d0Var = new d0();
        f28697e = d0Var;
        f28698f = new e0();
        f28699g = c(Boolean.TYPE, Boolean.class, d0Var);
        f0 f0Var = new f0();
        f28700h = f0Var;
        f28701i = c(Byte.TYPE, Byte.class, f0Var);
        g0 g0Var = new g0();
        f28702j = g0Var;
        f28703k = c(Short.TYPE, Short.class, g0Var);
        h0 h0Var = new h0();
        f28704l = h0Var;
        f28705m = c(Integer.TYPE, Integer.class, h0Var);
        com.google.gson.w<AtomicInteger> wVarA3 = new i0().a();
        f28706n = wVarA3;
        f28707o = b(AtomicInteger.class, wVarA3);
        com.google.gson.w<AtomicBoolean> wVarA4 = new j0().a();
        f28708p = wVarA4;
        f28709q = b(AtomicBoolean.class, wVarA4);
        com.google.gson.w<AtomicIntegerArray> wVarA5 = new a().a();
        f28710r = wVarA5;
        f28711s = b(AtomicIntegerArray.class, wVarA5);
        f28712t = new b();
        f28713u = new c();
        f28714v = new d();
        e eVar = new e();
        f28715w = eVar;
        f28716x = b(Number.class, eVar);
        f fVar = new f();
        f28717y = fVar;
        f28718z = c(Character.TYPE, Character.class, fVar);
        g gVar = new g();
        A = gVar;
        B = new h();
        C = new i();
        D = b(String.class, gVar);
        j jVar = new j();
        E = jVar;
        F = b(StringBuilder.class, jVar);
        l lVar = new l();
        G = lVar;
        H = b(StringBuffer.class, lVar);
        m mVar = new m();
        I = mVar;
        J = b(URL.class, mVar);
        C0145n c0145n = new C0145n();
        K = c0145n;
        L = b(URI.class, c0145n);
        o oVar = new o();
        M = oVar;
        N = e(InetAddress.class, oVar);
        p pVar = new p();
        O = pVar;
        P = b(UUID.class, pVar);
        com.google.gson.w<Currency> wVarA6 = new q().a();
        Q = wVarA6;
        R = b(Currency.class, wVarA6);
        S = new r();
        s sVar = new s();
        T = sVar;
        U = d(Calendar.class, GregorianCalendar.class, sVar);
        t tVar = new t();
        V = tVar;
        W = b(Locale.class, tVar);
        u uVar = new u();
        X = uVar;
        Y = e(com.google.gson.l.class, uVar);
        Z = new w();
    }

    public static <TT> com.google.gson.x a(g7.a<TT> aVar, com.google.gson.w<TT> wVar) {
        return new x(aVar, wVar);
    }

    public static <TT> com.google.gson.x b(Class<TT> cls, com.google.gson.w<TT> wVar) {
        return new y(cls, wVar);
    }

    public static <TT> com.google.gson.x c(Class<TT> cls, Class<TT> cls2, com.google.gson.w<? super TT> wVar) {
        return new z(cls, cls2, wVar);
    }

    public static <TT> com.google.gson.x d(Class<TT> cls, Class<? extends TT> cls2, com.google.gson.w<? super TT> wVar) {
        return new a0(cls, cls2, wVar);
    }

    public static <T1> com.google.gson.x e(Class<T1> cls, com.google.gson.w<T1> wVar) {
        return new b0(cls, wVar);
    }
}
