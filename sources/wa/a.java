package wa;

import ja.b0;
import ja.d0;
import java.io.IOException;
import java.lang.annotation.Annotation;
import java.lang.reflect.Type;
import wa.e;
import ya.w;

/* JADX INFO: compiled from: BuiltInConverters.java */
/* JADX INFO: loaded from: classes2.dex */
final class a extends e.a {

    /* JADX INFO: renamed from: wa.a$a, reason: collision with other inner class name */
    /* JADX INFO: compiled from: BuiltInConverters.java */
    static final class C0288a implements wa.e<d0, d0> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final C0288a f36039a = new C0288a();

        C0288a() {
        }

        @Override // wa.e
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public d0 convert(d0 d0Var) throws IOException {
            try {
                return o.a(d0Var);
            } finally {
                d0Var.close();
            }
        }
    }

    /* JADX INFO: compiled from: BuiltInConverters.java */
    static final class b implements wa.e<b0, b0> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final b f36040a = new b();

        b() {
        }

        @Override // wa.e
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public b0 convert(b0 b0Var) {
            return b0Var;
        }
    }

    /* JADX INFO: compiled from: BuiltInConverters.java */
    static final class c implements wa.e<d0, d0> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final c f36041a = new c();

        c() {
        }

        @Override // wa.e
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public d0 convert(d0 d0Var) {
            return d0Var;
        }
    }

    /* JADX INFO: compiled from: BuiltInConverters.java */
    static final class d implements wa.e<Object, String> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final d f36042a = new d();

        d() {
        }

        @Override // wa.e
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public String convert(Object obj) {
            return obj.toString();
        }
    }

    /* JADX INFO: compiled from: BuiltInConverters.java */
    static final class e implements wa.e<d0, Void> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final e f36043a = new e();

        e() {
        }

        @Override // wa.e
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Void convert(d0 d0Var) {
            d0Var.close();
            return null;
        }
    }

    a() {
    }

    @Override // wa.e.a
    public wa.e<?, b0> a(Type type, Annotation[] annotationArr, Annotation[] annotationArr2, m mVar) {
        if (b0.class.isAssignableFrom(o.i(type))) {
            return b.f36040a;
        }
        return null;
    }

    @Override // wa.e.a
    public wa.e<d0, ?> b(Type type, Annotation[] annotationArr, m mVar) {
        if (type == d0.class) {
            return o.m(annotationArr, w.class) ? c.f36041a : C0288a.f36039a;
        }
        if (type == Void.class) {
            return e.f36043a;
        }
        return null;
    }
}
