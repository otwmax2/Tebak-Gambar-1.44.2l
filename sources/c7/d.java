package c7;

import com.google.gson.w;
import com.google.gson.x;
import java.io.IOException;
import java.lang.reflect.Field;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: compiled from: Excluder.java */
/* JADX INFO: loaded from: classes2.dex */
public final class d implements x, Cloneable {

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public static final d f4907u = new d();

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private boolean f4911r;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private double f4908o = -1.0d;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private int f4909p = 136;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private boolean f4910q = true;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private List<com.google.gson.b> f4912s = Collections.emptyList();

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private List<com.google.gson.b> f4913t = Collections.emptyList();

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* JADX INFO: compiled from: Excluder.java */
    class a<T> extends w<T> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private w<T> f4914a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ boolean f4915b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ boolean f4916c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ com.google.gson.f f4917d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ g7.a f4918e;

        a(boolean z10, boolean z11, com.google.gson.f fVar, g7.a aVar) {
            this.f4915b = z10;
            this.f4916c = z11;
            this.f4917d = fVar;
            this.f4918e = aVar;
        }

        private w<T> e() {
            w<T> wVar = this.f4914a;
            if (wVar != null) {
                return wVar;
            }
            w<T> wVarO = this.f4917d.o(d.this, this.f4918e);
            this.f4914a = wVarO;
            return wVarO;
        }

        @Override // com.google.gson.w
        public T b(h7.a aVar) throws IOException {
            if (!this.f4915b) {
                return e().b(aVar);
            }
            aVar.J();
            return null;
        }

        @Override // com.google.gson.w
        public void d(h7.c cVar, T t10) throws IOException {
            if (this.f4916c) {
                cVar.n();
            } else {
                e().d(cVar, t10);
            }
        }
    }

    private boolean f(Class<?> cls) {
        if (this.f4908o == -1.0d || n((b7.d) cls.getAnnotation(b7.d.class), (b7.e) cls.getAnnotation(b7.e.class))) {
            return (!this.f4910q && j(cls)) || i(cls);
        }
        return true;
    }

    private boolean g(Class<?> cls, boolean z10) {
        Iterator<com.google.gson.b> it = (z10 ? this.f4912s : this.f4913t).iterator();
        while (it.hasNext()) {
            if (it.next().b(cls)) {
                return true;
            }
        }
        return false;
    }

    private boolean i(Class<?> cls) {
        return !Enum.class.isAssignableFrom(cls) && (cls.isAnonymousClass() || cls.isLocalClass());
    }

    private boolean j(Class<?> cls) {
        return cls.isMemberClass() && !k(cls);
    }

    private boolean k(Class<?> cls) {
        return (cls.getModifiers() & 8) != 0;
    }

    private boolean l(b7.d dVar) {
        return dVar == null || dVar.value() <= this.f4908o;
    }

    private boolean m(b7.e eVar) {
        return eVar == null || eVar.value() > this.f4908o;
    }

    private boolean n(b7.d dVar, b7.e eVar) {
        return l(dVar) && m(eVar);
    }

    @Override // com.google.gson.x
    public <T> w<T> a(com.google.gson.f fVar, g7.a<T> aVar) {
        Class<? super T> rawType = aVar.getRawType();
        boolean zF = f(rawType);
        boolean z10 = zF || g(rawType, true);
        boolean z11 = zF || g(rawType, false);
        if (z10 || z11) {
            return new a(z11, z10, fVar, aVar);
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public d clone() {
        try {
            return (d) super.clone();
        } catch (CloneNotSupportedException e10) {
            throw new AssertionError(e10);
        }
    }

    public boolean d(Class<?> cls, boolean z10) {
        return f(cls) || g(cls, z10);
    }

    public boolean h(Field field, boolean z10) {
        b7.a aVar;
        if ((this.f4909p & field.getModifiers()) != 0) {
            return true;
        }
        if ((this.f4908o != -1.0d && !n((b7.d) field.getAnnotation(b7.d.class), (b7.e) field.getAnnotation(b7.e.class))) || field.isSynthetic()) {
            return true;
        }
        if (this.f4911r && ((aVar = (b7.a) field.getAnnotation(b7.a.class)) == null || (!z10 ? aVar.deserialize() : aVar.serialize()))) {
            return true;
        }
        if ((!this.f4910q && j(field.getType())) || i(field.getType())) {
            return true;
        }
        List<com.google.gson.b> list = z10 ? this.f4912s : this.f4913t;
        if (list.isEmpty()) {
            return false;
        }
        com.google.gson.c cVar = new com.google.gson.c(field);
        Iterator<com.google.gson.b> it = list.iterator();
        while (it.hasNext()) {
            if (it.next().a(cVar)) {
                return true;
            }
        }
        return false;
    }
}
