package com.google.firebase.crashlytics;

import android.content.Context;
import android.content.pm.PackageManager;
import com.google.android.gms.tasks.Continuation;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.Tasks;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;
import l6.e;
import n5.d;
import n5.g;
import n5.k;
import q5.b0;
import q5.i;
import q5.m;
import q5.r;
import q5.x;
import q5.z;
import x5.f;

/* JADX INFO: compiled from: FirebaseCrashlytics.java */
/* JADX INFO: loaded from: classes2.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final r f26332a;

    /* JADX INFO: renamed from: com.google.firebase.crashlytics.a$a, reason: collision with other inner class name */
    /* JADX INFO: compiled from: FirebaseCrashlytics.java */
    class C0124a implements Continuation<Void, Object> {
        C0124a() {
        }

        @Override // com.google.android.gms.tasks.Continuation
        public Object a(Task<Void> task) throws Exception {
            if (task.t()) {
                return null;
            }
            g.f().e("Error fetching settings.", task.o());
            return null;
        }
    }

    /* JADX INFO: compiled from: FirebaseCrashlytics.java */
    class b implements Callable<Void> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ boolean f26333a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ r f26334b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ f f26335c;

        b(boolean z10, r rVar, f fVar) {
            this.f26333a = z10;
            this.f26334b = rVar;
            this.f26335c = fVar;
        }

        @Override // java.util.concurrent.Callable
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Void call() throws Exception {
            if (!this.f26333a) {
                return null;
            }
            this.f26334b.g(this.f26335c);
            return null;
        }
    }

    private a(r rVar) {
        this.f26332a = rVar;
    }

    public static a a() {
        a aVar = (a) b5.g.m().j(a.class);
        Objects.requireNonNull(aVar, "FirebaseCrashlytics component is not present.");
        return aVar;
    }

    static a b(b5.g gVar, e eVar, k6.a<n5.a> aVar, k6.a<e5.a> aVar2, k6.a<v6.a> aVar3) {
        Context contextL = gVar.l();
        String packageName = contextL.getPackageName();
        g.f().g("Initializing Firebase Crashlytics " + r.i() + " for " + packageName);
        v5.f fVar = new v5.f(contextL);
        x xVar = new x(gVar);
        b0 b0Var = new b0(contextL, packageName, eVar, xVar);
        d dVar = new d(aVar);
        m5.d dVar2 = new m5.d(aVar2);
        ExecutorService executorServiceC = z.c("Crashlytics Exception Handler");
        m mVar = new m(xVar, fVar);
        y6.a.e(mVar);
        r rVar = new r(gVar, b0Var, dVar, xVar, dVar2.e(), dVar2.d(), fVar, executorServiceC, mVar, new k(aVar3));
        String strC = gVar.p().c();
        String strM = i.m(contextL);
        List<q5.f> listJ = i.j(contextL);
        g.f().b("Mapping file ID is: " + strM);
        for (q5.f fVar2 : listJ) {
            g.f().b(String.format("Build id for %s on %s: %s", fVar2.c(), fVar2.a(), fVar2.b()));
        }
        try {
            q5.a aVarA = q5.a.a(contextL, b0Var, strC, strM, listJ, new n5.f(contextL));
            g.f().i("Installer package name is: " + aVarA.f33866d);
            ExecutorService executorServiceC2 = z.c("com.google.firebase.crashlytics.startup");
            f fVarL = f.l(contextL, strC, b0Var, new u5.b(), aVarA.f33868f, aVarA.f33869g, fVar, xVar);
            fVarL.o(executorServiceC2).l(executorServiceC2, new C0124a());
            Tasks.c(executorServiceC2, new b(rVar.o(aVarA, fVarL), rVar, fVarL));
            return new a(rVar);
        } catch (PackageManager.NameNotFoundException e10) {
            g.f().e("Error retrieving app package info.", e10);
            return null;
        }
    }

    public void c(String str) {
        this.f26332a.k(str);
    }

    public void d(Throwable th) {
        if (th == null) {
            g.f().k("A null value was passed to recordException. Ignoring.");
        } else {
            this.f26332a.l(th);
        }
    }

    public void e(String str, int i10) {
        this.f26332a.p(str, Integer.toString(i10));
    }

    public void f(String str, String str2) {
        this.f26332a.p(str, str2);
    }

    public void g(String str) {
        this.f26332a.q(str);
    }
}
