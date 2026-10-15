package r5;

import com.facebook.internal.Utility;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Callable;
import java.util.concurrent.atomic.AtomicMarkableReference;
import java.util.concurrent.atomic.AtomicReference;
import q5.n;
import s5.f0;

/* JADX INFO: compiled from: UserMetadata.java */
/* JADX INFO: loaded from: classes2.dex */
public class m {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final f f34296a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final n f34297b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String f34298c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final a f34299d = new a(false);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final a f34300e = new a(true);

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final j f34301f = new j(128);

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final AtomicMarkableReference<String> f34302g = new AtomicMarkableReference<>(null, false);

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: compiled from: UserMetadata.java */
    class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final AtomicMarkableReference<d> f34303a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final AtomicReference<Callable<Void>> f34304b = new AtomicReference<>(null);

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final boolean f34305c;

        public a(boolean z10) {
            this.f34305c = z10;
            this.f34303a = new AtomicMarkableReference<>(new d(64, z10 ? Utility.DEFAULT_STREAM_BUFFER_SIZE : 1024), false);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ Void c() throws Exception {
            this.f34304b.set(null);
            e();
            return null;
        }

        private void d() {
            Callable<Void> callable = new Callable() { // from class: r5.l
                @Override // java.util.concurrent.Callable
                public final Object call() {
                    return this.f34295a.c();
                }
            };
            if (this.f34304b.compareAndSet(null, callable)) {
                m.this.f34297b.h(callable);
            }
        }

        private void e() throws Throwable {
            Map<String, String> mapA;
            synchronized (this) {
                if (this.f34303a.isMarked()) {
                    mapA = this.f34303a.getReference().a();
                    AtomicMarkableReference<d> atomicMarkableReference = this.f34303a;
                    atomicMarkableReference.set(atomicMarkableReference.getReference(), false);
                } else {
                    mapA = null;
                }
            }
            if (mapA != null) {
                m.this.f34296a.q(m.this.f34298c, mapA, this.f34305c);
            }
        }

        public Map<String, String> b() {
            return this.f34303a.getReference().a();
        }

        public boolean f(String str, String str2) {
            synchronized (this) {
                if (!this.f34303a.getReference().d(str, str2)) {
                    return false;
                }
                AtomicMarkableReference<d> atomicMarkableReference = this.f34303a;
                atomicMarkableReference.set(atomicMarkableReference.getReference(), true);
                d();
                return true;
            }
        }
    }

    public m(String str, v5.f fVar, n nVar) {
        this.f34298c = str;
        this.f34296a = new f(fVar);
        this.f34297b = nVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object i() throws Exception {
        l();
        return null;
    }

    public static m j(String str, v5.f fVar, n nVar) {
        f fVar2 = new f(fVar);
        m mVar = new m(str, fVar, nVar);
        mVar.f34299d.f34303a.getReference().e(fVar2.i(str, false));
        mVar.f34300e.f34303a.getReference().e(fVar2.i(str, true));
        mVar.f34302g.set(fVar2.k(str), false);
        mVar.f34301f.c(fVar2.j(str));
        return mVar;
    }

    public static String k(String str, v5.f fVar) {
        return new f(fVar).k(str);
    }

    private void l() throws Throwable {
        boolean z10;
        String strH;
        synchronized (this.f34302g) {
            z10 = false;
            if (this.f34302g.isMarked()) {
                strH = h();
                this.f34302g.set(strH, false);
                z10 = true;
            } else {
                strH = null;
            }
        }
        if (z10) {
            this.f34296a.s(this.f34298c, strH);
        }
    }

    public Map<String, String> e() {
        return this.f34299d.b();
    }

    public Map<String, String> f() {
        return this.f34300e.b();
    }

    public List<f0.e.d.AbstractC0246e> g() {
        return this.f34301f.a();
    }

    public String h() {
        return this.f34302g.getReference();
    }

    public boolean m(String str, String str2) {
        return this.f34299d.f(str, str2);
    }

    public boolean n(String str, String str2) {
        return this.f34300e.f(str, str2);
    }

    public void o(String str) {
        synchronized (this.f34298c) {
            this.f34298c = str;
            Map<String, String> mapB = this.f34299d.b();
            List<i> listB = this.f34301f.b();
            if (h() != null) {
                this.f34296a.s(str, h());
            }
            if (!mapB.isEmpty()) {
                this.f34296a.p(str, mapB);
            }
            if (!listB.isEmpty()) {
                this.f34296a.r(str, listB);
            }
        }
    }

    public void p(String str) {
        String strC = d.c(str, 1024);
        synchronized (this.f34302g) {
            if (q5.i.y(strC, this.f34302g.getReference())) {
                return;
            }
            this.f34302g.set(strC, true);
            this.f34297b.h(new Callable() { // from class: r5.k
                @Override // java.util.concurrent.Callable
                public final Object call() {
                    return this.f34294a.i();
                }
            });
        }
    }
}
