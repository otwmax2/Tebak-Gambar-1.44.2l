package n5;

import k6.a;
import r5.m;

/* JADX INFO: compiled from: RemoteConfigDeferredProxy.java */
/* JADX INFO: loaded from: classes2.dex */
public class k {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final k6.a<v6.a> f32466a;

    public k(k6.a<v6.a> aVar) {
        this.f32466a = aVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void b(e eVar, k6.b bVar) {
        ((v6.a) bVar.get()).a("firebase", eVar);
        g.f().b("Registering RemoteConfig Rollouts subscriber");
    }

    public void c(m mVar) {
        if (mVar == null) {
            g.f().k("Didn't successfully register with UserMetadata for rollouts listener");
        } else {
            final e eVar = new e(mVar);
            this.f32466a.a(new a.InterfaceC0188a() { // from class: n5.j
                @Override // k6.a.InterfaceC0188a
                public final void a(k6.b bVar) {
                    k.b(eVar, bVar);
                }
            });
        }
    }
}
