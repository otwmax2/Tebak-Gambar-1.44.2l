package wa;

import com.vungle.mediation.BuildConfig;
import ja.b0;
import ja.d0;
import ja.e;
import ja.t;
import ja.x;
import java.lang.annotation.Annotation;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.Executor;
import javax.annotation.Nullable;
import wa.a;
import wa.c;
import wa.e;
import wa.n;

/* JADX INFO: compiled from: Retrofit.java */
/* JADX INFO: loaded from: classes.dex */
public final class m {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Map<Method, n<?, ?>> f36115a = new ConcurrentHashMap();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final e.a f36116b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final t f36117c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final List<e.a> f36118d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    final List<c.a> f36119e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @Nullable
    final Executor f36120f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    final boolean f36121g;

    /* JADX INFO: compiled from: Retrofit.java */
    class a implements InvocationHandler {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final j f36122a = j.d();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ Class f36123b;

        a(Class cls) {
            this.f36123b = cls;
        }

        @Override // java.lang.reflect.InvocationHandler
        public Object invoke(Object obj, Method method, @Nullable Object[] objArr) throws Throwable {
            if (method.getDeclaringClass() == Object.class) {
                return method.invoke(this, objArr);
            }
            if (this.f36122a.f(method)) {
                return this.f36122a.e(method, this.f36123b, obj, objArr);
            }
            n<?, ?> nVarF = m.this.f(method);
            return nVarF.a(new h(nVarF, objArr));
        }
    }

    m(e.a aVar, t tVar, List<e.a> list, List<c.a> list2, @Nullable Executor executor, boolean z10) {
        this.f36116b = aVar;
        this.f36117c = tVar;
        this.f36118d = list;
        this.f36119e = list2;
        this.f36120f = executor;
        this.f36121g = z10;
    }

    private void e(Class<?> cls) {
        j jVarD = j.d();
        for (Method method : cls.getDeclaredMethods()) {
            if (!jVarD.f(method)) {
                f(method);
            }
        }
    }

    public t a() {
        return this.f36117c;
    }

    public c<?, ?> b(Type type, Annotation[] annotationArr) {
        return g(null, type, annotationArr);
    }

    public e.a c() {
        return this.f36116b;
    }

    public <T> T d(Class<T> cls) {
        o.r(cls);
        if (this.f36121g) {
            e(cls);
        }
        return (T) Proxy.newProxyInstance(cls.getClassLoader(), new Class[]{cls}, new a(cls));
    }

    n<?, ?> f(Method method) {
        n nVarA;
        n<?, ?> nVar = this.f36115a.get(method);
        if (nVar != null) {
            return nVar;
        }
        synchronized (this.f36115a) {
            nVarA = this.f36115a.get(method);
            if (nVarA == null) {
                nVarA = new n.a(this, method).a();
                this.f36115a.put(method, nVarA);
            }
        }
        return nVarA;
    }

    public c<?, ?> g(@Nullable c.a aVar, Type type, Annotation[] annotationArr) {
        o.b(type, "returnType == null");
        o.b(annotationArr, "annotations == null");
        int iIndexOf = this.f36119e.indexOf(aVar) + 1;
        int size = this.f36119e.size();
        for (int i10 = iIndexOf; i10 < size; i10++) {
            c<?, ?> cVarA = this.f36119e.get(i10).a(type, annotationArr, this);
            if (cVarA != null) {
                return cVarA;
            }
        }
        StringBuilder sb = new StringBuilder("Could not locate call adapter for ");
        sb.append(type);
        sb.append(".\n");
        if (aVar != null) {
            sb.append("  Skipped:");
            for (int i11 = 0; i11 < iIndexOf; i11++) {
                sb.append("\n   * ");
                sb.append(this.f36119e.get(i11).getClass().getName());
            }
            sb.append('\n');
        }
        sb.append("  Tried:");
        int size2 = this.f36119e.size();
        while (iIndexOf < size2) {
            sb.append("\n   * ");
            sb.append(this.f36119e.get(iIndexOf).getClass().getName());
            iIndexOf++;
        }
        throw new IllegalArgumentException(sb.toString());
    }

    public <T> e<T, b0> h(@Nullable e.a aVar, Type type, Annotation[] annotationArr, Annotation[] annotationArr2) {
        o.b(type, "type == null");
        o.b(annotationArr, "parameterAnnotations == null");
        o.b(annotationArr2, "methodAnnotations == null");
        int iIndexOf = this.f36118d.indexOf(aVar) + 1;
        int size = this.f36118d.size();
        for (int i10 = iIndexOf; i10 < size; i10++) {
            e<T, b0> eVar = (e<T, b0>) this.f36118d.get(i10).a(type, annotationArr, annotationArr2, this);
            if (eVar != null) {
                return eVar;
            }
        }
        StringBuilder sb = new StringBuilder("Could not locate RequestBody converter for ");
        sb.append(type);
        sb.append(".\n");
        if (aVar != null) {
            sb.append("  Skipped:");
            for (int i11 = 0; i11 < iIndexOf; i11++) {
                sb.append("\n   * ");
                sb.append(this.f36118d.get(i11).getClass().getName());
            }
            sb.append('\n');
        }
        sb.append("  Tried:");
        int size2 = this.f36118d.size();
        while (iIndexOf < size2) {
            sb.append("\n   * ");
            sb.append(this.f36118d.get(iIndexOf).getClass().getName());
            iIndexOf++;
        }
        throw new IllegalArgumentException(sb.toString());
    }

    public <T> e<d0, T> i(@Nullable e.a aVar, Type type, Annotation[] annotationArr) {
        o.b(type, "type == null");
        o.b(annotationArr, "annotations == null");
        int iIndexOf = this.f36118d.indexOf(aVar) + 1;
        int size = this.f36118d.size();
        for (int i10 = iIndexOf; i10 < size; i10++) {
            e<d0, T> eVar = (e<d0, T>) this.f36118d.get(i10).b(type, annotationArr, this);
            if (eVar != null) {
                return eVar;
            }
        }
        StringBuilder sb = new StringBuilder("Could not locate ResponseBody converter for ");
        sb.append(type);
        sb.append(".\n");
        if (aVar != null) {
            sb.append("  Skipped:");
            for (int i11 = 0; i11 < iIndexOf; i11++) {
                sb.append("\n   * ");
                sb.append(this.f36118d.get(i11).getClass().getName());
            }
            sb.append('\n');
        }
        sb.append("  Tried:");
        int size2 = this.f36118d.size();
        while (iIndexOf < size2) {
            sb.append("\n   * ");
            sb.append(this.f36118d.get(iIndexOf).getClass().getName());
            iIndexOf++;
        }
        throw new IllegalArgumentException(sb.toString());
    }

    public <T> e<T, b0> j(Type type, Annotation[] annotationArr, Annotation[] annotationArr2) {
        return h(null, type, annotationArr, annotationArr2);
    }

    public <T> e<d0, T> k(Type type, Annotation[] annotationArr) {
        return i(null, type, annotationArr);
    }

    public <T> e<T, String> l(Type type, Annotation[] annotationArr) {
        o.b(type, "type == null");
        o.b(annotationArr, "annotations == null");
        int size = this.f36118d.size();
        for (int i10 = 0; i10 < size; i10++) {
            e<T, String> eVar = (e<T, String>) this.f36118d.get(i10).c(type, annotationArr, this);
            if (eVar != null) {
                return eVar;
            }
        }
        return a.d.f36042a;
    }

    /* JADX INFO: compiled from: Retrofit.java */
    public static final class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final j f36125a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        @Nullable
        private e.a f36126b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private t f36127c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final List<e.a> f36128d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private final List<c.a> f36129e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        @Nullable
        private Executor f36130f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private boolean f36131g;

        b(j jVar) {
            this.f36128d = new ArrayList();
            this.f36129e = new ArrayList();
            this.f36125a = jVar;
        }

        public b a(e.a aVar) {
            this.f36128d.add((e.a) o.b(aVar, "factory == null"));
            return this;
        }

        public b b(t tVar) {
            o.b(tVar, "baseUrl == null");
            if (BuildConfig.FLAVOR.equals(tVar.s().get(r0.size() - 1))) {
                this.f36127c = tVar;
                return this;
            }
            throw new IllegalArgumentException("baseUrl must end in /: " + tVar);
        }

        public b c(String str) {
            o.b(str, "baseUrl == null");
            t tVarR = t.r(str);
            if (tVarR != null) {
                return b(tVarR);
            }
            throw new IllegalArgumentException("Illegal URL: " + str);
        }

        public m d() {
            if (this.f36127c == null) {
                throw new IllegalStateException("Base URL required.");
            }
            e.a xVar = this.f36126b;
            if (xVar == null) {
                xVar = new x();
            }
            e.a aVar = xVar;
            Executor executorB = this.f36130f;
            if (executorB == null) {
                executorB = this.f36125a.b();
            }
            Executor executor = executorB;
            ArrayList arrayList = new ArrayList(this.f36129e);
            arrayList.add(this.f36125a.a(executor));
            ArrayList arrayList2 = new ArrayList(this.f36128d.size() + 1);
            arrayList2.add(new wa.a());
            arrayList2.addAll(this.f36128d);
            return new m(aVar, this.f36127c, Collections.unmodifiableList(arrayList2), Collections.unmodifiableList(arrayList), executor, this.f36131g);
        }

        public b e(e.a aVar) {
            this.f36126b = (e.a) o.b(aVar, "factory == null");
            return this;
        }

        public b f(x xVar) {
            return e((e.a) o.b(xVar, "client == null"));
        }

        public b() {
            this(j.d());
        }
    }
}
