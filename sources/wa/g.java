package wa;

import java.io.IOException;
import java.lang.annotation.Annotation;
import java.lang.reflect.Type;
import java.util.concurrent.Executor;
import wa.c;

/* JADX INFO: compiled from: ExecutorCallAdapterFactory.java */
/* JADX INFO: loaded from: classes2.dex */
final class g extends c.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final Executor f36047a;

    /* JADX INFO: compiled from: ExecutorCallAdapterFactory.java */
    class a implements c<Object, wa.b<?>> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Type f36048a;

        a(Type type) {
            this.f36048a = type;
        }

        @Override // wa.c
        public Type a() {
            return this.f36048a;
        }

        @Override // wa.c
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public wa.b<Object> b(wa.b<Object> bVar) {
            return new b(g.this.f36047a, bVar);
        }
    }

    /* JADX INFO: compiled from: ExecutorCallAdapterFactory.java */
    static final class b<T> implements wa.b<T> {

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        final Executor f36050o;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        final wa.b<T> f36051p;

        /* JADX INFO: compiled from: ExecutorCallAdapterFactory.java */
        class a implements d<T> {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            final /* synthetic */ d f36052a;

            /* JADX INFO: renamed from: wa.g$b$a$a, reason: collision with other inner class name */
            /* JADX INFO: compiled from: ExecutorCallAdapterFactory.java */
            class RunnableC0289a implements Runnable {

                /* JADX INFO: renamed from: o, reason: collision with root package name */
                final /* synthetic */ l f36054o;

                RunnableC0289a(l lVar) {
                    this.f36054o = lVar;
                }

                @Override // java.lang.Runnable
                public void run() {
                    if (b.this.f36051p.L()) {
                        a aVar = a.this;
                        aVar.f36052a.b(b.this, new IOException("Canceled"));
                    } else {
                        a aVar2 = a.this;
                        aVar2.f36052a.a(b.this, this.f36054o);
                    }
                }
            }

            /* JADX INFO: renamed from: wa.g$b$a$b, reason: collision with other inner class name */
            /* JADX INFO: compiled from: ExecutorCallAdapterFactory.java */
            class RunnableC0290b implements Runnable {

                /* JADX INFO: renamed from: o, reason: collision with root package name */
                final /* synthetic */ Throwable f36056o;

                RunnableC0290b(Throwable th) {
                    this.f36056o = th;
                }

                @Override // java.lang.Runnable
                public void run() {
                    a aVar = a.this;
                    aVar.f36052a.b(b.this, this.f36056o);
                }
            }

            a(d dVar) {
                this.f36052a = dVar;
            }

            @Override // wa.d
            public void a(wa.b<T> bVar, l<T> lVar) {
                b.this.f36050o.execute(new RunnableC0289a(lVar));
            }

            @Override // wa.d
            public void b(wa.b<T> bVar, Throwable th) {
                b.this.f36050o.execute(new RunnableC0290b(th));
            }
        }

        b(Executor executor, wa.b<T> bVar) {
            this.f36050o = executor;
            this.f36051p = bVar;
        }

        @Override // wa.b
        public boolean L() {
            return this.f36051p.L();
        }

        @Override // wa.b
        /* JADX INFO: renamed from: c2, reason: merged with bridge method [inline-methods] */
        public wa.b<T> clone() {
            return new b(this.f36050o, this.f36051p.clone());
        }

        @Override // wa.b
        public l<T> execute() throws IOException {
            return this.f36051p.execute();
        }

        @Override // wa.b
        public void v3(d<T> dVar) {
            o.b(dVar, "callback == null");
            this.f36051p.v3(new a(dVar));
        }
    }

    g(Executor executor) {
        this.f36047a = executor;
    }

    @Override // wa.c.a
    public c<?, ?> a(Type type, Annotation[] annotationArr, m mVar) {
        if (c.a.b(type) != wa.b.class) {
            return null;
        }
        return new a(o.f(type));
    }
}
