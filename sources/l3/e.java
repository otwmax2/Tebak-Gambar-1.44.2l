package l3;

import android.content.Context;
import java.util.concurrent.Executor;
import javax.inject.Provider;
import l3.v;
import s3.x;
import s3.y;
import t3.m0;
import t3.n0;
import t3.u0;

/* JADX INFO: compiled from: DaggerTransportRuntimeComponent.java */
/* JADX INFO: loaded from: classes.dex */
final class e extends v {
    private Provider<u> A;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private Provider<Executor> f31929o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private Provider<Context> f31930p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private Provider f31931q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private Provider f31932r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private Provider f31933s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private Provider<String> f31934t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private Provider<m0> f31935u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private Provider<s3.g> f31936v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private Provider<y> f31937w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private Provider<r3.c> f31938x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private Provider<s3.s> f31939y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private Provider<s3.w> f31940z;

    /* JADX INFO: compiled from: DaggerTransportRuntimeComponent.java */
    private static final class b implements v.a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private Context f31941a;

        private b() {
        }

        @Override // l3.v.a
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public b a(Context context) {
            this.f31941a = (Context) n3.d.b(context);
            return this;
        }

        @Override // l3.v.a
        public v build() {
            n3.d.a(this.f31941a, Context.class);
            return new e(this.f31941a);
        }
    }

    public static v.a d() {
        return new b();
    }

    private void e(Context context) {
        this.f31929o = n3.a.a(k.a());
        n3.b bVarA = n3.c.a(context);
        this.f31930p = bVarA;
        m3.j jVarA = m3.j.a(bVarA, v3.c.a(), v3.d.a());
        this.f31931q = jVarA;
        this.f31932r = n3.a.a(m3.l.a(this.f31930p, jVarA));
        this.f31933s = u0.a(this.f31930p, t3.g.a(), t3.i.a());
        this.f31934t = n3.a.a(t3.h.a(this.f31930p));
        this.f31935u = n3.a.a(n0.a(v3.c.a(), v3.d.a(), t3.j.a(), this.f31933s, this.f31934t));
        r3.g gVarB = r3.g.b(v3.c.a());
        this.f31936v = gVarB;
        r3.i iVarA = r3.i.a(this.f31930p, this.f31935u, gVarB, v3.d.a());
        this.f31937w = iVarA;
        Provider<Executor> provider = this.f31929o;
        Provider provider2 = this.f31932r;
        Provider<m0> provider3 = this.f31935u;
        this.f31938x = r3.d.a(provider, provider2, iVarA, provider3, provider3);
        Provider<Context> provider4 = this.f31930p;
        Provider provider5 = this.f31932r;
        Provider<m0> provider6 = this.f31935u;
        this.f31939y = s3.t.a(provider4, provider5, provider6, this.f31937w, this.f31929o, provider6, v3.c.a(), v3.d.a(), this.f31935u);
        Provider<Executor> provider7 = this.f31929o;
        Provider<m0> provider8 = this.f31935u;
        this.f31940z = x.a(provider7, provider8, this.f31937w, provider8);
        this.A = n3.a.a(w.a(v3.c.a(), v3.d.a(), this.f31938x, this.f31939y, this.f31940z));
    }

    @Override // l3.v
    t3.d b() {
        return this.f31935u.get();
    }

    @Override // l3.v
    u c() {
        return this.A.get();
    }

    private e(Context context) {
        e(context);
    }
}
