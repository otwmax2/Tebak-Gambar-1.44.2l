package r1;

import androidx.work.impl.WorkDatabase;
import i1.m;
import i1.s;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.UUID;
import q1.q;

/* JADX INFO: compiled from: CancelWorkRunnable.java */
/* JADX INFO: loaded from: classes.dex */
public abstract class a implements Runnable {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final j1.c f34154o = new j1.c();

    /* JADX INFO: renamed from: r1.a$a, reason: collision with other inner class name */
    /* JADX INFO: compiled from: CancelWorkRunnable.java */
    class C0225a extends a {

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        final /* synthetic */ j1.i f34155p;

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        final /* synthetic */ UUID f34156q;

        C0225a(j1.i iVar, UUID uuid) {
            this.f34155p = iVar;
            this.f34156q = uuid;
        }

        @Override // r1.a
        void h() {
            WorkDatabase workDatabaseP = this.f34155p.p();
            workDatabaseP.e();
            try {
                a(this.f34155p, this.f34156q.toString());
                workDatabaseP.A();
                workDatabaseP.i();
                g(this.f34155p);
            } catch (Throwable th) {
                workDatabaseP.i();
                throw th;
            }
        }
    }

    /* JADX INFO: compiled from: CancelWorkRunnable.java */
    class b extends a {

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        final /* synthetic */ j1.i f34157p;

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        final /* synthetic */ String f34158q;

        b(j1.i iVar, String str) {
            this.f34157p = iVar;
            this.f34158q = str;
        }

        @Override // r1.a
        void h() {
            WorkDatabase workDatabaseP = this.f34157p.p();
            workDatabaseP.e();
            try {
                Iterator<String> it = workDatabaseP.L().p(this.f34158q).iterator();
                while (it.hasNext()) {
                    a(this.f34157p, it.next());
                }
                workDatabaseP.A();
                workDatabaseP.i();
                g(this.f34157p);
            } catch (Throwable th) {
                workDatabaseP.i();
                throw th;
            }
        }
    }

    /* JADX INFO: compiled from: CancelWorkRunnable.java */
    class c extends a {

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        final /* synthetic */ j1.i f34159p;

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        final /* synthetic */ String f34160q;

        /* JADX INFO: renamed from: r, reason: collision with root package name */
        final /* synthetic */ boolean f34161r;

        c(j1.i iVar, String str, boolean z10) {
            this.f34159p = iVar;
            this.f34160q = str;
            this.f34161r = z10;
        }

        @Override // r1.a
        void h() {
            WorkDatabase workDatabaseP = this.f34159p.p();
            workDatabaseP.e();
            try {
                Iterator<String> it = workDatabaseP.L().l(this.f34160q).iterator();
                while (it.hasNext()) {
                    a(this.f34159p, it.next());
                }
                workDatabaseP.A();
                workDatabaseP.i();
                if (this.f34161r) {
                    g(this.f34159p);
                }
            } catch (Throwable th) {
                workDatabaseP.i();
                throw th;
            }
        }
    }

    public static a b(UUID uuid, j1.i iVar) {
        return new C0225a(iVar, uuid);
    }

    public static a c(String str, j1.i iVar, boolean z10) {
        return new c(iVar, str, z10);
    }

    public static a d(String str, j1.i iVar) {
        return new b(iVar, str);
    }

    private void f(WorkDatabase workDatabase, String str) {
        q qVarL = workDatabase.L();
        q1.b bVarD = workDatabase.D();
        LinkedList linkedList = new LinkedList();
        linkedList.add(str);
        while (!linkedList.isEmpty()) {
            String str2 = (String) linkedList.remove();
            s.a aVarM = qVarL.m(str2);
            if (aVarM != s.a.SUCCEEDED && aVarM != s.a.FAILED) {
                qVarL.g(s.a.CANCELLED, str2);
            }
            linkedList.addAll(bVarD.a(str2));
        }
    }

    void a(j1.i iVar, String str) {
        f(iVar.p(), str);
        iVar.n().l(str);
        Iterator<j1.e> it = iVar.o().iterator();
        while (it.hasNext()) {
            it.next().cancel(str);
        }
    }

    public i1.m e() {
        return this.f34154o;
    }

    void g(j1.i iVar) {
        j1.f.b(iVar.j(), iVar.p(), iVar.o());
    }

    abstract void h();

    @Override // java.lang.Runnable
    public void run() {
        try {
            h();
            this.f34154o.a(i1.m.f30362a);
        } catch (Throwable th) {
            this.f34154o.a(new m.b.a(th));
        }
    }
}
