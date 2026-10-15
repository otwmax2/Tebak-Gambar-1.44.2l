package androidx.datastore.preferences.protobuf;

import androidx.datastore.preferences.protobuf.a;
import androidx.datastore.preferences.protobuf.a0;
import androidx.datastore.preferences.protobuf.r0;
import androidx.datastore.preferences.protobuf.t1;
import androidx.datastore.preferences.protobuf.u;
import androidx.datastore.preferences.protobuf.y;
import androidx.datastore.preferences.protobuf.y.a;
import j0.h;
import java.io.IOException;
import java.io.InputStream;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: compiled from: GeneratedMessageLite.java */
/* JADX INFO: loaded from: classes.dex */
public abstract class y<MessageType extends y<MessageType, BuilderType>, BuilderType extends a<MessageType, BuilderType>> extends androidx.datastore.preferences.protobuf.a<MessageType, BuilderType> {
    private static Map<Object, y<?, ?>> defaultInstanceMap = new ConcurrentHashMap();
    protected o1 unknownFields = o1.e();
    protected int memoizedSerializedSize = -1;

    /* JADX INFO: compiled from: GeneratedMessageLite.java */
    public static abstract class a<MessageType extends y<MessageType, BuilderType>, BuilderType extends a<MessageType, BuilderType>> extends a.AbstractC0045a<MessageType, BuilderType> {

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        private final MessageType f2967o;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        protected MessageType f2968p;

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        protected boolean f2969q = false;

        protected a(MessageType messagetype) {
            this.f2967o = messagetype;
            this.f2968p = (MessageType) messagetype.r(f.NEW_MUTABLE_INSTANCE);
        }

        private void v(MessageType messagetype, MessageType messagetype2) {
            c1.a().e(messagetype).a(messagetype, messagetype2);
        }

        @Override // androidx.datastore.preferences.protobuf.r0.a
        /* JADX INFO: renamed from: o, reason: merged with bridge method [inline-methods] */
        public final MessageType build() {
            MessageType messagetype = (MessageType) A2();
            if (messagetype.isInitialized()) {
                return messagetype;
            }
            throw a.AbstractC0045a.n(messagetype);
        }

        @Override // androidx.datastore.preferences.protobuf.r0.a
        /* JADX INFO: renamed from: p, reason: merged with bridge method [inline-methods] */
        public MessageType A2() {
            if (this.f2969q) {
                return this.f2968p;
            }
            this.f2968p.z();
            this.f2969q = true;
            return this.f2968p;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX INFO: renamed from: q, reason: merged with bridge method [inline-methods] */
        public BuilderType clone() {
            h.a aVar = (BuilderType) a().h();
            aVar.u(A2());
            return aVar;
        }

        protected void r() {
            if (this.f2969q) {
                MessageType messagetype = (MessageType) this.f2968p.r(f.NEW_MUTABLE_INSTANCE);
                v(messagetype, this.f2968p);
                this.f2968p = messagetype;
                this.f2969q = false;
            }
        }

        @Override // androidx.datastore.preferences.protobuf.s0
        /* JADX INFO: renamed from: s, reason: merged with bridge method [inline-methods] */
        public MessageType a() {
            return this.f2967o;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // androidx.datastore.preferences.protobuf.a.AbstractC0045a
        /* JADX INFO: renamed from: t, reason: merged with bridge method [inline-methods] */
        public BuilderType l(MessageType messagetype) {
            return (BuilderType) u(messagetype);
        }

        public BuilderType u(MessageType messagetype) {
            r();
            v(this.f2968p, messagetype);
            return this;
        }
    }

    /* JADX INFO: compiled from: GeneratedMessageLite.java */
    protected static class b<T extends y<T, ?>> extends androidx.datastore.preferences.protobuf.b<T> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final T f2970b;

        public b(T t10) {
            this.f2970b = t10;
        }

        @Override // androidx.datastore.preferences.protobuf.z0
        /* JADX INFO: renamed from: g, reason: merged with bridge method [inline-methods] */
        public T b(i iVar, p pVar) throws b0 {
            return (T) y.E(this.f2970b, iVar, pVar);
        }
    }

    /* JADX INFO: compiled from: GeneratedMessageLite.java */
    public static abstract class c<MessageType extends c<MessageType, BuilderType>, BuilderType> extends y<MessageType, BuilderType> implements s0 {
        protected u<d> extensions = u.h();

        u<d> H() {
            if (this.extensions.o()) {
                this.extensions = this.extensions.clone();
            }
            return this.extensions;
        }

        @Override // androidx.datastore.preferences.protobuf.y, androidx.datastore.preferences.protobuf.s0
        public /* bridge */ /* synthetic */ r0 a() {
            return super.a();
        }

        @Override // androidx.datastore.preferences.protobuf.y, androidx.datastore.preferences.protobuf.r0
        public /* bridge */ /* synthetic */ r0.a b() {
            return super.b();
        }

        @Override // androidx.datastore.preferences.protobuf.y, androidx.datastore.preferences.protobuf.r0
        public /* bridge */ /* synthetic */ r0.a h() {
            return super.h();
        }
    }

    /* JADX INFO: compiled from: GeneratedMessageLite.java */
    static final class d implements u.b<d> {

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        final a0.d<?> f2971o;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        final int f2972p;

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        final t1.b f2973q;

        /* JADX INFO: renamed from: r, reason: collision with root package name */
        final boolean f2974r;

        /* JADX INFO: renamed from: s, reason: collision with root package name */
        final boolean f2975s;

        @Override // androidx.datastore.preferences.protobuf.u.b
        public t1.c E() {
            return this.f2973q.c();
        }

        @Override // androidx.datastore.preferences.protobuf.u.b
        public boolean F() {
            return this.f2975s;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // androidx.datastore.preferences.protobuf.u.b
        public r0.a H(r0.a aVar, r0 r0Var) {
            return ((a) aVar).u((y) r0Var);
        }

        @Override // java.lang.Comparable
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public int compareTo(d dVar) {
            return this.f2972p - dVar.f2972p;
        }

        public a0.d<?> e() {
            return this.f2971o;
        }

        @Override // androidx.datastore.preferences.protobuf.u.b
        public int h() {
            return this.f2972p;
        }

        @Override // androidx.datastore.preferences.protobuf.u.b
        public boolean w() {
            return this.f2974r;
        }

        @Override // androidx.datastore.preferences.protobuf.u.b
        public t1.b x() {
            return this.f2973q;
        }
    }

    /* JADX INFO: compiled from: GeneratedMessageLite.java */
    public static class e<ContainingType extends r0, Type> extends n<ContainingType, Type> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final r0 f2976a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final d f2977b;

        public t1.b a() {
            return this.f2977b.x();
        }

        public r0 b() {
            return this.f2976a;
        }

        public int c() {
            return this.f2977b.h();
        }

        public boolean d() {
            return this.f2977b.f2974r;
        }
    }

    /* JADX INFO: compiled from: GeneratedMessageLite.java */
    public enum f {
        GET_MEMOIZED_IS_INITIALIZED,
        SET_MEMOIZED_IS_INITIALIZED,
        BUILD_MESSAGE_INFO,
        NEW_MUTABLE_INSTANCE,
        NEW_BUILDER,
        GET_DEFAULT_INSTANCE,
        GET_PARSER
    }

    protected static <E> a0.i<E> A(a0.i<E> iVar) {
        int size = iVar.size();
        return iVar.B0(size == 0 ? 10 : size * 2);
    }

    protected static Object C(r0 r0Var, String str, Object[] objArr) {
        return new e1(r0Var, str, objArr);
    }

    protected static <T extends y<T, ?>> T D(T t10, InputStream inputStream) throws b0 {
        return (T) p(E(t10, i.f(inputStream), p.b()));
    }

    static <T extends y<T, ?>> T E(T t10, i iVar, p pVar) throws b0 {
        T t11 = (T) t10.r(f.NEW_MUTABLE_INSTANCE);
        try {
            g1 g1VarE = c1.a().e(t11);
            g1VarE.e(t11, j.Q(iVar), pVar);
            g1VarE.f(t11);
            return t11;
        } catch (IOException e10) {
            if (e10.getCause() instanceof b0) {
                throw ((b0) e10.getCause());
            }
            throw new b0(e10.getMessage()).i(t11);
        } catch (RuntimeException e11) {
            if (e11.getCause() instanceof b0) {
                throw ((b0) e11.getCause());
            }
            throw e11;
        }
    }

    protected static <T extends y<?, ?>> void F(Class<T> cls, T t10) {
        defaultInstanceMap.put(cls, t10);
    }

    private static <T extends y<T, ?>> T p(T t10) throws b0 {
        if (t10 == null || t10.isInitialized()) {
            return t10;
        }
        throw t10.l().a().i(t10);
    }

    protected static <E> a0.i<E> u() {
        return d1.i();
    }

    static <T extends y<?, ?>> T v(Class<T> cls) {
        y<?, ?> yVar = defaultInstanceMap.get(cls);
        if (yVar == null) {
            try {
                Class.forName(cls.getName(), true, cls.getClassLoader());
                yVar = defaultInstanceMap.get(cls);
            } catch (ClassNotFoundException e10) {
                throw new IllegalStateException("Class initialization cannot fail.", e10);
            }
        }
        if (yVar == null) {
            yVar = (T) ((y) r1.i(cls)).a();
            if (yVar == null) {
                throw new IllegalStateException();
            }
            defaultInstanceMap.put(cls, yVar);
        }
        return (T) yVar;
    }

    static Object x(Method method, Object obj, Object... objArr) {
        try {
            return method.invoke(obj, objArr);
        } catch (IllegalAccessException e10) {
            throw new RuntimeException("Couldn't use Java reflection to implement protocol message reflection.", e10);
        } catch (InvocationTargetException e11) {
            Throwable cause = e11.getCause();
            if (cause instanceof RuntimeException) {
                throw ((RuntimeException) cause);
            }
            if (cause instanceof Error) {
                throw ((Error) cause);
            }
            throw new RuntimeException("Unexpected exception thrown by generated accessor method.", cause);
        }
    }

    protected static final <T extends y<T, ?>> boolean y(T t10, boolean z10) {
        byte bByteValue = ((Byte) t10.r(f.GET_MEMOIZED_IS_INITIALIZED)).byteValue();
        if (bByteValue == 1) {
            return true;
        }
        if (bByteValue == 0) {
            return false;
        }
        boolean zG = c1.a().e(t10).g(t10);
        if (z10) {
            t10.s(f.SET_MEMOIZED_IS_INITIALIZED, zG ? t10 : null);
        }
        return zG;
    }

    @Override // androidx.datastore.preferences.protobuf.r0
    /* JADX INFO: renamed from: B, reason: merged with bridge method [inline-methods] */
    public final BuilderType h() {
        return (BuilderType) r(f.NEW_BUILDER);
    }

    @Override // androidx.datastore.preferences.protobuf.r0
    /* JADX INFO: renamed from: G, reason: merged with bridge method [inline-methods] */
    public final BuilderType b() {
        BuilderType buildertype = (BuilderType) r(f.NEW_BUILDER);
        buildertype.u(this);
        return buildertype;
    }

    @Override // androidx.datastore.preferences.protobuf.a
    int e() {
        return this.memoizedSerializedSize;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (a().getClass().isInstance(obj)) {
            return c1.a().e(this).c(this, (y) obj);
        }
        return false;
    }

    @Override // androidx.datastore.preferences.protobuf.r0
    public int f() {
        if (this.memoizedSerializedSize == -1) {
            this.memoizedSerializedSize = c1.a().e(this).i(this);
        }
        return this.memoizedSerializedSize;
    }

    @Override // androidx.datastore.preferences.protobuf.r0
    public void g(k kVar) throws IOException {
        c1.a().e(this).h(this, l.P(kVar));
    }

    public int hashCode() {
        int i10 = this.memoizedHashCode;
        if (i10 != 0) {
            return i10;
        }
        int iD = c1.a().e(this).d(this);
        this.memoizedHashCode = iD;
        return iD;
    }

    @Override // androidx.datastore.preferences.protobuf.r0
    public final z0<MessageType> i() {
        return (z0) r(f.GET_PARSER);
    }

    @Override // androidx.datastore.preferences.protobuf.s0
    public final boolean isInitialized() {
        return y(this, true);
    }

    @Override // androidx.datastore.preferences.protobuf.a
    void m(int i10) {
        this.memoizedSerializedSize = i10;
    }

    Object o() throws Exception {
        return r(f.BUILD_MESSAGE_INFO);
    }

    protected final <MessageType extends y<MessageType, BuilderType>, BuilderType extends a<MessageType, BuilderType>> BuilderType q() {
        return (BuilderType) r(f.NEW_BUILDER);
    }

    protected Object r(f fVar) {
        return t(fVar, null, null);
    }

    protected Object s(f fVar, Object obj) {
        return t(fVar, obj, null);
    }

    protected abstract Object t(f fVar, Object obj, Object obj2);

    public String toString() {
        return t0.e(this, super.toString());
    }

    @Override // androidx.datastore.preferences.protobuf.s0
    /* JADX INFO: renamed from: w, reason: merged with bridge method [inline-methods] */
    public final MessageType a() {
        return (MessageType) r(f.GET_DEFAULT_INSTANCE);
    }

    protected void z() {
        c1.a().e(this).f(this);
    }
}
