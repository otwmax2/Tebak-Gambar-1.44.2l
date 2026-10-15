package l3;

import android.content.Context;
import java.util.Collections;
import java.util.Set;
import javax.inject.Inject;
import javax.inject.Singleton;

/* JADX INFO: compiled from: TransportRuntime.java */
/* JADX INFO: loaded from: classes.dex */
@Singleton
public class u implements t {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static volatile v f31957e;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final v3.a f31958a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final v3.a f31959b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final r3.e f31960c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final s3.s f31961d;

    @Inject
    u(v3.a aVar, v3.a aVar2, r3.e eVar, s3.s sVar, s3.w wVar) {
        this.f31958a = aVar;
        this.f31959b = aVar2;
        this.f31960c = eVar;
        this.f31961d = sVar;
        wVar.c();
    }

    private i b(o oVar) {
        return i.a().i(this.f31958a.a()).k(this.f31959b.a()).j(oVar.g()).h(new h(oVar.b(), oVar.d())).g(oVar.c().a()).d();
    }

    public static u c() {
        v vVar = f31957e;
        if (vVar != null) {
            return vVar.c();
        }
        throw new IllegalStateException("Not initialized!");
    }

    private static Set<j3.b> d(f fVar) {
        return fVar instanceof g ? Collections.unmodifiableSet(((g) fVar).a()) : Collections.singleton(j3.b.b("proto"));
    }

    public static void f(Context context) {
        if (f31957e == null) {
            synchronized (u.class) {
                if (f31957e == null) {
                    f31957e = e.d().a(context).build();
                }
            }
        }
    }

    @Override // l3.t
    public void a(o oVar, j3.h hVar) {
        this.f31960c.a(oVar.f().f(oVar.c().c()), b(oVar), hVar);
    }

    public s3.s e() {
        return this.f31961d;
    }

    public j3.g g(f fVar) {
        return new q(d(fVar), p.a().b(fVar.getName()).c(fVar.getExtras()).a(), this);
    }
}
