package da;

import java.io.Closeable;
import k9.g;

/* JADX INFO: compiled from: Executors.kt */
/* JADX INFO: loaded from: classes2.dex */
public abstract class n1 extends i0 implements Closeable {

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public static final a f28839q = new a(null);

    /* JADX INFO: compiled from: Executors.kt */
    public static final class a extends k9.b<i0, n1> {

        /* JADX INFO: renamed from: da.n1$a$a, reason: collision with other inner class name */
        /* JADX INFO: compiled from: Executors.kt */
        static final class C0148a extends t9.n implements s9.l<g.b, n1> {

            /* JADX INFO: renamed from: o, reason: collision with root package name */
            public static final C0148a f28840o = new C0148a();

            C0148a() {
                super(1);
            }

            @Override // s9.l
            /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
            public final n1 invoke(g.b bVar) {
                if (bVar instanceof n1) {
                    return (n1) bVar;
                }
                return null;
            }
        }

        private a() {
            super(i0.f28816p, C0148a.f28840o);
        }

        public /* synthetic */ a(t9.g gVar) {
            this();
        }
    }
}
