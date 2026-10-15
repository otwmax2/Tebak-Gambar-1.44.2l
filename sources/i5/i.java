package i5;

import android.content.Context;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.internal.firebase_auth.zzew;
import com.google.android.gms.internal.firebase_auth.zzf;
import com.google.android.gms.internal.firebase_auth.zzfj;
import com.google.android.gms.internal.firebase_auth.zzk;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.Tasks;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Future;

/* JADX INFO: compiled from: com.google.firebase:firebase-auth@@19.3.1 */
/* JADX INFO: loaded from: classes2.dex */
public final class i extends b<v0> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Context f30421c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final v0 f30422d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Future<a<v0>> f30423e = c();

    i(Context context, v0 v0Var) {
        this.f30421c = context;
        this.f30422d = v0Var;
    }

    @VisibleForTesting
    private final <ResultT> Task<ResultT> m(Task<ResultT> task, e<n0, ResultT> eVar) {
        return (Task<ResultT>) task.m(new h(this, eVar));
    }

    @VisibleForTesting
    static j5.e0 n(b5.g gVar, zzew zzewVar) {
        Preconditions.k(gVar);
        Preconditions.k(zzewVar);
        ArrayList arrayList = new ArrayList();
        arrayList.add(new j5.a0(zzewVar, "firebase"));
        List<zzfj> listD4 = zzewVar.d4();
        if (listD4 != null && !listD4.isEmpty()) {
            for (int i10 = 0; i10 < listD4.size(); i10++) {
                arrayList.add(new j5.a0(listD4.get(i10)));
            }
        }
        j5.e0 e0Var = new j5.e0(gVar, arrayList);
        e0Var.q4(new j5.g0(zzewVar.b4(), zzewVar.a4()));
        e0Var.r4(zzewVar.c4());
        e0Var.p4(zzewVar.e4());
        e0Var.j4(j5.n.b(zzewVar.f4()));
        return e0Var;
    }

    @Override // i5.b
    final Future<a<v0>> c() {
        Future<a<v0>> future = this.f30423e;
        if (future != null) {
            return future;
        }
        return zzf.a().h(zzk.f22834a).submit(new l0(this.f30422d, this.f30421c));
    }

    public final Task<Object> g(b5.g gVar, g5.d dVar, String str, j5.c cVar) {
        e0 e0Var = (e0) new e0(dVar, str).b(gVar).f(cVar);
        return m(e(e0Var), e0Var);
    }

    public final Task<Object> h(b5.g gVar, g5.e eVar, j5.c cVar) {
        i0 i0Var = (i0) new i0(eVar).b(gVar).f(cVar);
        return m(e(i0Var), i0Var);
    }

    public final Task<Object> i(b5.g gVar, g5.s sVar, g5.d dVar, j5.t tVar) {
        Preconditions.k(gVar);
        Preconditions.k(dVar);
        Preconditions.k(sVar);
        Preconditions.k(tVar);
        List<String> listG4 = sVar.g4();
        if (listG4 != null && listG4.contains(dVar.V3())) {
            return Tasks.d(o0.a(new Status(17015)));
        }
        if (dVar instanceof g5.e) {
            g5.e eVar = (g5.e) dVar;
            if (eVar.e()) {
                s sVar2 = (s) new s(eVar).b(gVar).c(sVar).f(tVar).e(tVar);
                return m(e(sVar2), sVar2);
            }
            m mVar = (m) new m(eVar).b(gVar).c(sVar).f(tVar).e(tVar);
            return m(e(mVar), mVar);
        }
        if (dVar instanceof g5.d0) {
            q qVar = (q) new q((g5.d0) dVar).b(gVar).c(sVar).f(tVar).e(tVar);
            return m(e(qVar), qVar);
        }
        Preconditions.k(gVar);
        Preconditions.k(dVar);
        Preconditions.k(sVar);
        Preconditions.k(tVar);
        o oVar = (o) new o(dVar).b(gVar).c(sVar).f(tVar).e(tVar);
        return m(e(oVar), oVar);
    }

    public final Task<g5.u> j(b5.g gVar, g5.s sVar, String str, j5.t tVar) {
        k kVar = (k) new k(str).b(gVar).c(sVar).f(tVar).e(tVar);
        return m(b(kVar), kVar);
    }

    public final Task<Object> k(b5.g gVar, g5.d0 d0Var, String str, j5.c cVar) {
        k0 k0Var = (k0) new k0(d0Var, str).b(gVar).f(cVar);
        return m(e(k0Var), k0Var);
    }

    public final Task<Object> l(b5.g gVar, j5.c cVar, String str) {
        c0 c0Var = (c0) new c0(str).b(gVar).f(cVar);
        return m(e(c0Var), c0Var);
    }

    public final Task<Object> o(b5.g gVar, g5.s sVar, g5.d dVar, String str, j5.t tVar) {
        u uVar = (u) new u(dVar, str).b(gVar).c(sVar).f(tVar).e(tVar);
        return m(e(uVar), uVar);
    }

    public final Task<Object> p(b5.g gVar, g5.s sVar, g5.e eVar, j5.t tVar) {
        w wVar = (w) new w(eVar).b(gVar).c(sVar).f(tVar).e(tVar);
        return m(e(wVar), wVar);
    }

    public final Task<Object> q(b5.g gVar, g5.s sVar, g5.d0 d0Var, String str, j5.t tVar) {
        a0 a0Var = (a0) new a0(d0Var, str).b(gVar).c(sVar).f(tVar).e(tVar);
        return m(e(a0Var), a0Var);
    }

    public final Task<Object> r(b5.g gVar, g5.s sVar, String str, String str2, String str3, j5.t tVar) {
        y yVar = (y) new y(str, str2, str3).b(gVar).c(sVar).f(tVar).e(tVar);
        return m(e(yVar), yVar);
    }

    public final Task<Object> s(b5.g gVar, String str, String str2, String str3, j5.c cVar) {
        g0 g0Var = (g0) new g0(str, str2, str3).b(gVar).f(cVar);
        return m(e(g0Var), g0Var);
    }
}
