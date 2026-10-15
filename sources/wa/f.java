package wa;

import java.lang.annotation.Annotation;
import java.lang.reflect.Type;
import wa.c;

/* JADX INFO: compiled from: DefaultCallAdapterFactory.java */
/* JADX INFO: loaded from: classes2.dex */
final class f extends c.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static final c.a f36044a = new f();

    /* JADX INFO: compiled from: DefaultCallAdapterFactory.java */
    class a implements c<Object, b<?>> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Type f36045a;

        a(Type type) {
            this.f36045a = type;
        }

        @Override // wa.c
        public Type a() {
            return this.f36045a;
        }

        @Override // wa.c
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public b<Object> b(b<Object> bVar) {
            return bVar;
        }
    }

    f() {
    }

    @Override // wa.c.a
    public c<?, ?> a(Type type, Annotation[] annotationArr, m mVar) {
        if (c.a.b(type) != b.class) {
            return null;
        }
        return new a(o.f(type));
    }
}
