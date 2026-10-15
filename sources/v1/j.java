package v1;

import android.content.Context;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import java.util.UUID;
import q2.c;
import q2.l;
import q2.m;

/* JADX INFO: compiled from: RequestManager.java */
/* JADX INFO: loaded from: classes.dex */
public class j implements q2.h {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final Context f35758o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final q2.g f35759p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final l f35760q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private final m f35761r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private final g f35762s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private final d f35763t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private b f35764u;

    /* JADX INFO: compiled from: RequestManager.java */
    class a implements Runnable {

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        final /* synthetic */ q2.g f35765o;

        a(q2.g gVar) {
            this.f35765o = gVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f35765o.a(j.this);
        }
    }

    /* JADX INFO: compiled from: RequestManager.java */
    public interface b {
        <T> void a(v1.e<T, ?, ?, ?> eVar);
    }

    /* JADX INFO: compiled from: RequestManager.java */
    public final class c<A, T> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final g2.l<A, T> f35767a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final Class<T> f35768b;

        /* JADX INFO: compiled from: RequestManager.java */
        public final class a {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            private final A f35770a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            private final Class<A> f35771b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            private final boolean f35772c = true;

            a(A a10) {
                this.f35770a = a10;
                this.f35771b = j.u(a10);
            }

            public <Z> f<A, T, Z> a(Class<Z> cls) {
                f<A, T, Z> fVar = (f) j.this.f35763t.a(new f(j.this.f35758o, j.this.f35762s, this.f35771b, c.this.f35767a, c.this.f35768b, cls, j.this.f35761r, j.this.f35759p, j.this.f35763t));
                if (this.f35772c) {
                    fVar.s(this.f35770a);
                }
                return fVar;
            }
        }

        c(g2.l<A, T> lVar, Class<T> cls) {
            this.f35767a = lVar;
            this.f35768b = cls;
        }

        public c<A, T>.a c(A a10) {
            return new a(a10);
        }
    }

    /* JADX INFO: compiled from: RequestManager.java */
    class d {
        d() {
        }

        public <A, X extends v1.e<A, ?, ?, ?>> X a(X x10) {
            if (j.this.f35764u != null) {
                j.this.f35764u.a(x10);
            }
            return x10;
        }
    }

    /* JADX INFO: compiled from: RequestManager.java */
    private static class e implements c.a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final m f35775a;

        public e(m mVar) {
            this.f35775a = mVar;
        }

        @Override // q2.c.a
        public void a(boolean z10) {
            if (z10) {
                this.f35775a.d();
            }
        }
    }

    public j(Context context, q2.g gVar, l lVar) {
        this(context, gVar, lVar, new m(), new q2.d());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static <T> Class<T> u(T t10) {
        if (t10 != null) {
            return (Class<T>) t10.getClass();
        }
        return null;
    }

    private <T> v1.d<T> z(Class<T> cls) {
        g2.l lVarE = g.e(cls, this.f35758o);
        g2.l lVarB = g.b(cls, this.f35758o);
        if (cls == null || lVarE != null || lVarB != null) {
            d dVar = this.f35763t;
            return (v1.d) dVar.a(new v1.d(cls, lVarE, lVarB, this.f35758o, this.f35762s, this.f35761r, this.f35759p, dVar));
        }
        throw new IllegalArgumentException("Unknown type " + cls + ". You must provide a Model of a type for which there is a registered ModelLoader, if you are using a custom model, you must first call Glide#register with a ModelLoaderFactory for your custom model class");
    }

    public void A() {
        this.f35762s.h();
    }

    public void B(int i10) {
        this.f35762s.u(i10);
    }

    public void C() {
        x2.h.b();
        this.f35761r.b();
    }

    public void D() {
        x2.h.b();
        this.f35761r.e();
    }

    public <A, T> c<A, T> E(g2.l<A, T> lVar, Class<T> cls) {
        return new c<>(lVar, cls);
    }

    @Override // q2.h
    public void b() {
        D();
    }

    @Override // q2.h
    public void h() {
        C();
    }

    @Override // q2.h
    public void onDestroy() {
        this.f35761r.a();
    }

    public v1.d<byte[]> q() {
        return (v1.d) z(byte[].class).y(new w2.c(UUID.randomUUID().toString())).j(b2.b.NONE).z(true);
    }

    public v1.d<Integer> r() {
        return (v1.d) z(Integer.class).y(w2.a.a(this.f35758o));
    }

    public v1.d<String> s() {
        return z(String.class);
    }

    public v1.d<Uri> t() {
        return z(Uri.class);
    }

    public v1.d<Uri> v(Uri uri) {
        return (v1.d) t().O(uri);
    }

    public v1.d<Integer> w(Integer num) {
        return (v1.d) r().O(num);
    }

    public v1.d<String> x(String str) {
        return (v1.d) s().O(str);
    }

    public v1.d<byte[]> y(byte[] bArr) {
        return (v1.d) q().O(bArr);
    }

    j(Context context, q2.g gVar, l lVar, m mVar, q2.d dVar) {
        this.f35758o = context.getApplicationContext();
        this.f35759p = gVar;
        this.f35760q = lVar;
        this.f35761r = mVar;
        this.f35762s = g.i(context);
        this.f35763t = new d();
        q2.c cVarA = dVar.a(context, new e(mVar));
        if (x2.h.i()) {
            new Handler(Looper.getMainLooper()).post(new a(gVar));
        } else {
            gVar.a(this);
        }
        gVar.a(cVarA);
    }
}
