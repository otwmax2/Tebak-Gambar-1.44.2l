package kotlinx.coroutines.internal;

import h9.n;
import java.lang.reflect.Constructor;
import java.lang.reflect.Modifier;
import java.util.Comparator;
import java.util.Iterator;

/* JADX INFO: compiled from: ExceptionsConstructor.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class j {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final int f31745a = f(Throwable.class, -1);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final g f31746b;

    /* JADX INFO: compiled from: Comparisons.kt */
    public static final class a<T> implements Comparator {
        /* JADX WARN: Multi-variable type inference failed */
        @Override // java.util.Comparator
        public final int compare(T t10, T t11) {
            return j9.b.a(Integer.valueOf(((Constructor) t11).getParameterTypes().length), Integer.valueOf(((Constructor) t10).getParameterTypes().length));
        }
    }

    /* JADX INFO: compiled from: ExceptionsConstructor.kt */
    static final class b extends t9.n implements s9.l {

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        public static final b f31747o = new b();

        b() {
            super(1);
        }

        @Override // s9.l
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public final Void invoke(Throwable th) {
            return null;
        }
    }

    /* JADX INFO: compiled from: ExceptionsConstructor.kt */
    public static final class c extends t9.n implements s9.l<Throwable, Throwable> {

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        final /* synthetic */ Constructor f31748o;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(Constructor constructor) {
            super(1);
            this.f31748o = constructor;
        }

        @Override // s9.l
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public final Throwable invoke(Throwable th) {
            Object objA;
            Object objNewInstance;
            try {
                n.a aVar = h9.n.f30295o;
                objNewInstance = this.f31748o.newInstance(th.getMessage(), th);
            } catch (Throwable th2) {
                n.a aVar2 = h9.n.f30295o;
                objA = h9.n.a(h9.o.a(th2));
            }
            if (objNewInstance == null) {
                throw new NullPointerException("null cannot be cast to non-null type kotlin.Throwable");
            }
            objA = h9.n.a((Throwable) objNewInstance);
            if (h9.n.c(objA)) {
                objA = null;
            }
            return (Throwable) objA;
        }
    }

    /* JADX INFO: compiled from: ExceptionsConstructor.kt */
    public static final class d extends t9.n implements s9.l<Throwable, Throwable> {

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        final /* synthetic */ Constructor f31749o;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public d(Constructor constructor) {
            super(1);
            this.f31749o = constructor;
        }

        @Override // s9.l
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public final Throwable invoke(Throwable th) {
            Object objA;
            Object objNewInstance;
            try {
                n.a aVar = h9.n.f30295o;
                objNewInstance = this.f31749o.newInstance(th);
            } catch (Throwable th2) {
                n.a aVar2 = h9.n.f30295o;
                objA = h9.n.a(h9.o.a(th2));
            }
            if (objNewInstance == null) {
                throw new NullPointerException("null cannot be cast to non-null type kotlin.Throwable");
            }
            objA = h9.n.a((Throwable) objNewInstance);
            if (h9.n.c(objA)) {
                objA = null;
            }
            return (Throwable) objA;
        }
    }

    /* JADX INFO: compiled from: ExceptionsConstructor.kt */
    public static final class e extends t9.n implements s9.l<Throwable, Throwable> {

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        final /* synthetic */ Constructor f31750o;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public e(Constructor constructor) {
            super(1);
            this.f31750o = constructor;
        }

        @Override // s9.l
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public final Throwable invoke(Throwable th) {
            Object objA;
            Object objNewInstance;
            try {
                n.a aVar = h9.n.f30295o;
                objNewInstance = this.f31750o.newInstance(th.getMessage());
            } catch (Throwable th2) {
                n.a aVar2 = h9.n.f30295o;
                objA = h9.n.a(h9.o.a(th2));
            }
            if (objNewInstance == null) {
                throw new NullPointerException("null cannot be cast to non-null type kotlin.Throwable");
            }
            Throwable th3 = (Throwable) objNewInstance;
            th3.initCause(th);
            objA = h9.n.a(th3);
            if (h9.n.c(objA)) {
                objA = null;
            }
            return (Throwable) objA;
        }
    }

    /* JADX INFO: compiled from: ExceptionsConstructor.kt */
    public static final class f extends t9.n implements s9.l<Throwable, Throwable> {

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        final /* synthetic */ Constructor f31751o;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public f(Constructor constructor) {
            super(1);
            this.f31751o = constructor;
        }

        @Override // s9.l
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public final Throwable invoke(Throwable th) {
            Object objA;
            Object objNewInstance;
            try {
                n.a aVar = h9.n.f30295o;
                objNewInstance = this.f31751o.newInstance(new Object[0]);
            } catch (Throwable th2) {
                n.a aVar2 = h9.n.f30295o;
                objA = h9.n.a(h9.o.a(th2));
            }
            if (objNewInstance == null) {
                throw new NullPointerException("null cannot be cast to non-null type kotlin.Throwable");
            }
            Throwable th3 = (Throwable) objNewInstance;
            th3.initCause(th);
            objA = h9.n.a(th3);
            if (h9.n.c(objA)) {
                objA = null;
            }
            return (Throwable) objA;
        }
    }

    static {
        g gVar;
        try {
            gVar = l.a() ? n0.f31764a : kotlinx.coroutines.internal.d.f31723a;
        } catch (Throwable unused) {
            gVar = n0.f31764a;
        }
        f31746b = gVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final <E extends Throwable> s9.l<Throwable, Throwable> b(Class<E> cls) {
        b bVar = b.f31747o;
        if (f31745a != f(cls, 0)) {
            return bVar;
        }
        Iterator it = i9.g.p(cls.getConstructors(), new a()).iterator();
        while (it.hasNext()) {
            s9.l<Throwable, Throwable> lVarC = c((Constructor) it.next());
            if (lVarC != null) {
                return lVarC;
            }
        }
        return bVar;
    }

    private static final s9.l<Throwable, Throwable> c(Constructor<?> constructor) {
        Class<?>[] parameterTypes = constructor.getParameterTypes();
        int length = parameterTypes.length;
        if (length == 0) {
            return new f(constructor);
        }
        if (length != 1) {
            if (length == 2 && t9.m.a(parameterTypes[0], String.class) && t9.m.a(parameterTypes[1], Throwable.class)) {
                return new c(constructor);
            }
            return null;
        }
        Class<?> cls = parameterTypes[0];
        if (t9.m.a(cls, Throwable.class)) {
            return new d(constructor);
        }
        if (t9.m.a(cls, String.class)) {
            return new e(constructor);
        }
        return null;
    }

    private static final int d(Class<?> cls, int i10) {
        do {
            int length = cls.getDeclaredFields().length;
            int i11 = 0;
            for (int i12 = 0; i12 < length; i12++) {
                if (!Modifier.isStatic(r0[i12].getModifiers())) {
                    i11++;
                }
            }
            i10 += i11;
            cls = cls.getSuperclass();
        } while (cls != null);
        return i10;
    }

    static /* synthetic */ int e(Class cls, int i10, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            i10 = 0;
        }
        return d(cls, i10);
    }

    private static final int f(Class<?> cls, int i10) {
        Object objA;
        r9.a.c(cls);
        try {
            n.a aVar = h9.n.f30295o;
            objA = h9.n.a(Integer.valueOf(e(cls, 0, 1, null)));
        } catch (Throwable th) {
            n.a aVar2 = h9.n.f30295o;
            objA = h9.n.a(h9.o.a(th));
        }
        Integer numValueOf = Integer.valueOf(i10);
        if (h9.n.c(objA)) {
            objA = numValueOf;
        }
        return ((Number) objA).intValue();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final <E extends Throwable> E g(E e10) {
        Object objA;
        if (!(e10 instanceof da.g0)) {
            return (E) f31746b.a(e10.getClass()).invoke(e10);
        }
        try {
            n.a aVar = h9.n.f30295o;
            objA = h9.n.a(((da.g0) e10).a());
        } catch (Throwable th) {
            n.a aVar2 = h9.n.f30295o;
            objA = h9.n.a(h9.o.a(th));
        }
        if (h9.n.c(objA)) {
            objA = null;
        }
        return (E) objA;
    }
}
