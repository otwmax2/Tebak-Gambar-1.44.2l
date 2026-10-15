package com.google.gson;

import java.io.EOFException;
import java.io.IOException;
import java.io.Reader;
import java.io.StringReader;
import java.io.StringWriter;
import java.io.Writer;
import java.lang.reflect.Type;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicLongArray;

/* JADX INFO: compiled from: Gson.java */
/* JADX INFO: loaded from: classes2.dex */
public final class f {

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private static final g7.a<?> f26690v = g7.a.get(Object.class);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ThreadLocal<Map<g7.a<?>, C0128f<?>>> f26691a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Map<g7.a<?>, w<?>> f26692b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final c7.c f26693c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final d7.d f26694d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    final List<x> f26695e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    final c7.d f26696f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    final com.google.gson.e f26697g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    final Map<Type, h<?>> f26698h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    final boolean f26699i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    final boolean f26700j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    final boolean f26701k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    final boolean f26702l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    final boolean f26703m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    final boolean f26704n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    final boolean f26705o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    final String f26706p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    final int f26707q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    final int f26708r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    final v f26709s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    final List<x> f26710t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    final List<x> f26711u;

    /* JADX INFO: compiled from: Gson.java */
    class a extends w<Number> {
        a() {
        }

        @Override // com.google.gson.w
        /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
        public Double b(h7.a aVar) throws IOException {
            if (aVar.x() != h7.b.NULL) {
                return Double.valueOf(aVar.o());
            }
            aVar.t();
            return null;
        }

        @Override // com.google.gson.w
        /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
        public void d(h7.c cVar, Number number) throws IOException {
            if (number == null) {
                cVar.n();
            } else {
                f.d(number.doubleValue());
                cVar.z(number);
            }
        }
    }

    /* JADX INFO: compiled from: Gson.java */
    class b extends w<Number> {
        b() {
        }

        @Override // com.google.gson.w
        /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
        public Float b(h7.a aVar) throws IOException {
            if (aVar.x() != h7.b.NULL) {
                return Float.valueOf((float) aVar.o());
            }
            aVar.t();
            return null;
        }

        @Override // com.google.gson.w
        /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
        public void d(h7.c cVar, Number number) throws IOException {
            if (number == null) {
                cVar.n();
            } else {
                f.d(number.floatValue());
                cVar.z(number);
            }
        }
    }

    /* JADX INFO: compiled from: Gson.java */
    class c extends w<Number> {
        c() {
        }

        @Override // com.google.gson.w
        /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
        public Number b(h7.a aVar) throws IOException {
            if (aVar.x() != h7.b.NULL) {
                return Long.valueOf(aVar.q());
            }
            aVar.t();
            return null;
        }

        @Override // com.google.gson.w
        /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
        public void d(h7.c cVar, Number number) throws IOException {
            if (number == null) {
                cVar.n();
            } else {
                cVar.A(number.toString());
            }
        }
    }

    /* JADX INFO: compiled from: Gson.java */
    class d extends w<AtomicLong> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ w f26714a;

        d(w wVar) {
            this.f26714a = wVar;
        }

        @Override // com.google.gson.w
        /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
        public AtomicLong b(h7.a aVar) throws IOException {
            return new AtomicLong(((Number) this.f26714a.b(aVar)).longValue());
        }

        @Override // com.google.gson.w
        /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
        public void d(h7.c cVar, AtomicLong atomicLong) throws IOException {
            this.f26714a.d(cVar, Long.valueOf(atomicLong.get()));
        }
    }

    /* JADX INFO: compiled from: Gson.java */
    class e extends w<AtomicLongArray> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ w f26715a;

        e(w wVar) {
            this.f26715a = wVar;
        }

        @Override // com.google.gson.w
        /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
        public AtomicLongArray b(h7.a aVar) throws IOException {
            ArrayList arrayList = new ArrayList();
            aVar.b();
            while (aVar.j()) {
                arrayList.add(Long.valueOf(((Number) this.f26715a.b(aVar)).longValue()));
            }
            aVar.g();
            int size = arrayList.size();
            AtomicLongArray atomicLongArray = new AtomicLongArray(size);
            for (int i10 = 0; i10 < size; i10++) {
                atomicLongArray.set(i10, ((Long) arrayList.get(i10)).longValue());
            }
            return atomicLongArray;
        }

        @Override // com.google.gson.w
        /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
        public void d(h7.c cVar, AtomicLongArray atomicLongArray) throws IOException {
            cVar.d();
            int length = atomicLongArray.length();
            for (int i10 = 0; i10 < length; i10++) {
                this.f26715a.d(cVar, Long.valueOf(atomicLongArray.get(i10)));
            }
            cVar.g();
        }
    }

    /* JADX INFO: renamed from: com.google.gson.f$f, reason: collision with other inner class name */
    /* JADX INFO: compiled from: Gson.java */
    static class C0128f<T> extends w<T> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private w<T> f26716a;

        C0128f() {
        }

        @Override // com.google.gson.w
        public T b(h7.a aVar) throws IOException {
            w<T> wVar = this.f26716a;
            if (wVar != null) {
                return wVar.b(aVar);
            }
            throw new IllegalStateException();
        }

        @Override // com.google.gson.w
        public void d(h7.c cVar, T t10) throws IOException {
            w<T> wVar = this.f26716a;
            if (wVar == null) {
                throw new IllegalStateException();
            }
            wVar.d(cVar, t10);
        }

        public void e(w<T> wVar) {
            if (this.f26716a != null) {
                throw new AssertionError();
            }
            this.f26716a = wVar;
        }
    }

    public f() {
        this(c7.d.f4907u, com.google.gson.d.f26683o, Collections.emptyMap(), false, false, false, true, false, false, false, v.f26737o, null, 2, 2, Collections.emptyList(), Collections.emptyList(), Collections.emptyList());
    }

    private static void a(Object obj, h7.a aVar) {
        if (obj != null) {
            try {
                if (aVar.x() == h7.b.END_DOCUMENT) {
                } else {
                    throw new m("JSON document was not fully consumed.");
                }
            } catch (h7.d e10) {
                throw new u(e10);
            } catch (IOException e11) {
                throw new m(e11);
            }
        }
    }

    private static w<AtomicLong> b(w<Number> wVar) {
        return new d(wVar).a();
    }

    private static w<AtomicLongArray> c(w<Number> wVar) {
        return new e(wVar).a();
    }

    static void d(double d10) {
        if (Double.isNaN(d10) || Double.isInfinite(d10)) {
            throw new IllegalArgumentException(d10 + " is not a valid double value as per JSON specification. To override this behavior, use GsonBuilder.serializeSpecialFloatingPointValues() method.");
        }
    }

    private w<Number> e(boolean z10) {
        return z10 ? d7.n.f28714v : new a();
    }

    private w<Number> f(boolean z10) {
        return z10 ? d7.n.f28713u : new b();
    }

    private static w<Number> p(v vVar) {
        return vVar == v.f26737o ? d7.n.f28712t : new c();
    }

    public l A(Object obj, Type type) {
        d7.f fVar = new d7.f();
        x(obj, type, fVar);
        return fVar.F();
    }

    public <T> T g(l lVar, Class<T> cls) throws u {
        return (T) c7.k.b(cls).cast(h(lVar, cls));
    }

    public <T> T h(l lVar, Type type) throws u {
        if (lVar == null) {
            return null;
        }
        return (T) i(new d7.e(lVar), type);
    }

    public <T> T i(h7.a aVar, Type type) throws u, m {
        boolean zK = aVar.k();
        boolean z10 = true;
        aVar.E(true);
        try {
            try {
                try {
                    aVar.x();
                    z10 = false;
                    T tB = m(g7.a.get(type)).b(aVar);
                    aVar.E(zK);
                    return tB;
                } catch (AssertionError e10) {
                    AssertionError assertionError = new AssertionError("AssertionError (GSON 2.8.8): " + e10.getMessage());
                    assertionError.initCause(e10);
                    throw assertionError;
                } catch (IllegalStateException e11) {
                    throw new u(e11);
                }
            } catch (EOFException e12) {
                if (!z10) {
                    throw new u(e12);
                }
                aVar.E(zK);
                return null;
            } catch (IOException e13) {
                throw new u(e13);
            }
        } catch (Throwable th) {
            aVar.E(zK);
            throw th;
        }
    }

    public <T> T j(Reader reader, Type type) throws u, m {
        h7.a aVarQ = q(reader);
        T t10 = (T) i(aVarQ, type);
        a(t10, aVarQ);
        return t10;
    }

    public <T> T k(String str, Class<T> cls) throws u {
        return (T) c7.k.b(cls).cast(l(str, cls));
    }

    public <T> T l(String str, Type type) throws u {
        if (str == null) {
            return null;
        }
        return (T) j(new StringReader(str), type);
    }

    public <T> w<T> m(g7.a<T> aVar) {
        w<T> wVar = (w) this.f26692b.get(aVar == null ? f26690v : aVar);
        if (wVar != null) {
            return wVar;
        }
        Map<g7.a<?>, C0128f<?>> map = this.f26691a.get();
        boolean z10 = false;
        if (map == null) {
            map = new HashMap<>();
            this.f26691a.set(map);
            z10 = true;
        }
        C0128f<?> c0128f = map.get(aVar);
        if (c0128f != null) {
            return c0128f;
        }
        try {
            C0128f<?> c0128f2 = new C0128f<>();
            map.put(aVar, c0128f2);
            Iterator<x> it = this.f26695e.iterator();
            while (it.hasNext()) {
                w<T> wVarA = it.next().a(this, aVar);
                if (wVarA != null) {
                    c0128f2.e(wVarA);
                    this.f26692b.put(aVar, wVarA);
                    return wVarA;
                }
            }
            throw new IllegalArgumentException("GSON (2.8.8) cannot handle " + aVar);
        } finally {
            map.remove(aVar);
            if (z10) {
                this.f26691a.remove();
            }
        }
    }

    public <T> w<T> n(Class<T> cls) {
        return m(g7.a.get((Class) cls));
    }

    public <T> w<T> o(x xVar, g7.a<T> aVar) {
        if (!this.f26695e.contains(xVar)) {
            xVar = this.f26694d;
        }
        boolean z10 = false;
        for (x xVar2 : this.f26695e) {
            if (z10) {
                w<T> wVarA = xVar2.a(this, aVar);
                if (wVarA != null) {
                    return wVarA;
                }
            } else if (xVar2 == xVar) {
                z10 = true;
            }
        }
        throw new IllegalArgumentException("GSON cannot serialize " + aVar);
    }

    public h7.a q(Reader reader) {
        h7.a aVar = new h7.a(reader);
        aVar.E(this.f26704n);
        return aVar;
    }

    public h7.c r(Writer writer) throws IOException {
        if (this.f26701k) {
            writer.write(")]}'\n");
        }
        h7.c cVar = new h7.c(writer);
        if (this.f26703m) {
            cVar.t("  ");
        }
        cVar.v(this.f26699i);
        return cVar;
    }

    public String s(l lVar) {
        StringWriter stringWriter = new StringWriter();
        w(lVar, stringWriter);
        return stringWriter.toString();
    }

    public String t(Object obj) {
        return obj == null ? s(n.f26734a) : u(obj, obj.getClass());
    }

    public String toString() {
        return "{serializeNulls:" + this.f26699i + ",factories:" + this.f26695e + ",instanceCreators:" + this.f26693c + "}";
    }

    public String u(Object obj, Type type) {
        StringWriter stringWriter = new StringWriter();
        y(obj, type, stringWriter);
        return stringWriter.toString();
    }

    public void v(l lVar, h7.c cVar) throws m {
        boolean zK = cVar.k();
        cVar.u(true);
        boolean zJ = cVar.j();
        cVar.s(this.f26702l);
        boolean zI = cVar.i();
        cVar.v(this.f26699i);
        try {
            try {
                c7.l.b(lVar, cVar);
            } catch (IOException e10) {
                throw new m(e10);
            } catch (AssertionError e11) {
                AssertionError assertionError = new AssertionError("AssertionError (GSON 2.8.8): " + e11.getMessage());
                assertionError.initCause(e11);
                throw assertionError;
            }
        } finally {
            cVar.u(zK);
            cVar.s(zJ);
            cVar.v(zI);
        }
    }

    public void w(l lVar, Appendable appendable) throws m {
        try {
            v(lVar, r(c7.l.c(appendable)));
        } catch (IOException e10) {
            throw new m(e10);
        }
    }

    public void x(Object obj, Type type, h7.c cVar) throws m {
        w wVarM = m(g7.a.get(type));
        boolean zK = cVar.k();
        cVar.u(true);
        boolean zJ = cVar.j();
        cVar.s(this.f26702l);
        boolean zI = cVar.i();
        cVar.v(this.f26699i);
        try {
            try {
                wVarM.d(cVar, obj);
            } catch (IOException e10) {
                throw new m(e10);
            } catch (AssertionError e11) {
                AssertionError assertionError = new AssertionError("AssertionError (GSON 2.8.8): " + e11.getMessage());
                assertionError.initCause(e11);
                throw assertionError;
            }
        } finally {
            cVar.u(zK);
            cVar.s(zJ);
            cVar.v(zI);
        }
    }

    public void y(Object obj, Type type, Appendable appendable) throws m {
        try {
            x(obj, type, r(c7.l.c(appendable)));
        } catch (IOException e10) {
            throw new m(e10);
        }
    }

    public l z(Object obj) {
        return obj == null ? n.f26734a : A(obj, obj.getClass());
    }

    f(c7.d dVar, com.google.gson.e eVar, Map<Type, h<?>> map, boolean z10, boolean z11, boolean z12, boolean z13, boolean z14, boolean z15, boolean z16, v vVar, String str, int i10, int i11, List<x> list, List<x> list2, List<x> list3) {
        this.f26691a = new ThreadLocal<>();
        this.f26692b = new ConcurrentHashMap();
        this.f26696f = dVar;
        this.f26697g = eVar;
        this.f26698h = map;
        c7.c cVar = new c7.c(map);
        this.f26693c = cVar;
        this.f26699i = z10;
        this.f26700j = z11;
        this.f26701k = z12;
        this.f26702l = z13;
        this.f26703m = z14;
        this.f26704n = z15;
        this.f26705o = z16;
        this.f26709s = vVar;
        this.f26706p = str;
        this.f26707q = i10;
        this.f26708r = i11;
        this.f26710t = list;
        this.f26711u = list2;
        ArrayList arrayList = new ArrayList();
        arrayList.add(d7.n.Y);
        arrayList.add(d7.h.f28653b);
        arrayList.add(dVar);
        arrayList.addAll(list3);
        arrayList.add(d7.n.D);
        arrayList.add(d7.n.f28705m);
        arrayList.add(d7.n.f28699g);
        arrayList.add(d7.n.f28701i);
        arrayList.add(d7.n.f28703k);
        w<Number> wVarP = p(vVar);
        arrayList.add(d7.n.c(Long.TYPE, Long.class, wVarP));
        arrayList.add(d7.n.c(Double.TYPE, Double.class, e(z16)));
        arrayList.add(d7.n.c(Float.TYPE, Float.class, f(z16)));
        arrayList.add(d7.n.f28716x);
        arrayList.add(d7.n.f28707o);
        arrayList.add(d7.n.f28709q);
        arrayList.add(d7.n.b(AtomicLong.class, b(wVarP)));
        arrayList.add(d7.n.b(AtomicLongArray.class, c(wVarP)));
        arrayList.add(d7.n.f28711s);
        arrayList.add(d7.n.f28718z);
        arrayList.add(d7.n.F);
        arrayList.add(d7.n.H);
        arrayList.add(d7.n.b(BigDecimal.class, d7.n.B));
        arrayList.add(d7.n.b(BigInteger.class, d7.n.C));
        arrayList.add(d7.n.J);
        arrayList.add(d7.n.L);
        arrayList.add(d7.n.P);
        arrayList.add(d7.n.R);
        arrayList.add(d7.n.W);
        arrayList.add(d7.n.N);
        arrayList.add(d7.n.f28696d);
        arrayList.add(d7.c.f28643b);
        arrayList.add(d7.n.U);
        arrayList.add(d7.k.f28675b);
        arrayList.add(d7.j.f28673b);
        arrayList.add(d7.n.S);
        arrayList.add(d7.a.f28637c);
        arrayList.add(d7.n.f28694b);
        arrayList.add(new d7.b(cVar));
        arrayList.add(new d7.g(cVar, z11));
        d7.d dVar2 = new d7.d(cVar);
        this.f26694d = dVar2;
        arrayList.add(dVar2);
        arrayList.add(d7.n.Z);
        arrayList.add(new d7.i(cVar, eVar, dVar, dVar2));
        this.f26695e = Collections.unmodifiableList(arrayList);
    }
}
