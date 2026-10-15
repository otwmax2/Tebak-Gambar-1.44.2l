package androidx.work.impl;

import android.content.Context;
import androidx.room.g0;
import androidx.room.h0;
import androidx.work.impl.a;
import b1.g;
import b1.h;
import c1.c;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;
import q1.e;
import q1.k;
import q1.n;
import q1.q;
import q1.t;

/* JADX INFO: loaded from: classes.dex */
public abstract class WorkDatabase extends h0 {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private static final long f4388o = TimeUnit.DAYS.toMillis(1);

    class a implements h.c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Context f4389a;

        a(Context context) {
            this.f4389a = context;
        }

        @Override // b1.h.c
        public h a(h.b bVar) {
            h.b.a aVarA = h.b.a(this.f4389a);
            aVarA.c(bVar.f4541b).b(bVar.f4542c).d(true);
            return new c().a(aVarA.a());
        }
    }

    class b extends h0.b {
        b() {
        }

        @Override // androidx.room.h0.b
        public void c(g gVar) {
            super.c(gVar);
            gVar.V();
            try {
                gVar.execSQL(WorkDatabase.G());
                gVar.u1();
            } finally {
                gVar.X1();
            }
        }
    }

    public static WorkDatabase C(Context context, Executor executor, boolean z10) {
        h0.a aVarA;
        if (z10) {
            aVarA = g0.c(context, WorkDatabase.class).c();
        } else {
            aVarA = g0.a(context, WorkDatabase.class, j1.h.d());
            aVarA.f(new a(context));
        }
        return (WorkDatabase) aVarA.g(executor).a(E()).b(androidx.work.impl.a.f4398a).b(new a.h(context, 2, 3)).b(androidx.work.impl.a.f4399b).b(androidx.work.impl.a.f4400c).b(new a.h(context, 5, 6)).b(androidx.work.impl.a.f4401d).b(androidx.work.impl.a.f4402e).b(androidx.work.impl.a.f4403f).b(new a.i(context)).b(new a.h(context, 10, 11)).b(androidx.work.impl.a.f4404g).e().d();
    }

    static h0.b E() {
        return new b();
    }

    static long F() {
        return System.currentTimeMillis() - f4388o;
    }

    static String G() {
        return "DELETE FROM workspec WHERE state IN (2, 3, 5) AND (period_start_time + minimum_retention_duration) < " + F() + " AND (SELECT COUNT(*)=0 FROM dependency WHERE     prerequisite_id=id AND     work_spec_id NOT IN         (SELECT id FROM workspec WHERE state IN (2, 3, 5)))";
    }

    public abstract q1.b D();

    public abstract e H();

    public abstract q1.h I();

    public abstract k J();

    public abstract n K();

    public abstract q L();

    public abstract t M();
}
