package r3;

import java.util.concurrent.Executor;
import java.util.logging.Logger;
import javax.inject.Inject;
import l3.p;
import l3.u;
import m3.m;
import s3.y;
import u3.b;

/* JADX INFO: compiled from: DefaultScheduler.java */
/* JADX INFO: loaded from: classes.dex */
public class c implements e {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final Logger f34229f = Logger.getLogger(u.class.getName());

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final y f34230a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Executor f34231b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final m3.e f34232c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final t3.d f34233d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final u3.b f34234e;

    @Inject
    public c(Executor executor, m3.e eVar, y yVar, t3.d dVar, u3.b bVar) {
        this.f34231b = executor;
        this.f34232c = eVar;
        this.f34230a = yVar;
        this.f34233d = dVar;
        this.f34234e = bVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object d(p pVar, l3.i iVar) {
        this.f34233d.A3(pVar, iVar);
        this.f34230a.b(pVar, 1);
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void e(final p pVar, j3.h hVar, l3.i iVar) {
        try {
            m mVarA = this.f34232c.a(pVar.b());
            if (mVarA == null) {
                String str = String.format("Transport backend '%s' is not registered", pVar.b());
                f34229f.warning(str);
                hVar.a(new IllegalArgumentException(str));
            } else {
                final l3.i iVarA = mVarA.a(iVar);
                this.f34234e.b(new b.a() { // from class: r3.b
                    @Override // u3.b.a
                    public final Object execute() {
                        return this.f34226a.d(pVar, iVarA);
                    }
                });
                hVar.a(null);
            }
        } catch (Exception e10) {
            f34229f.warning("Error scheduling event " + e10.getMessage());
            hVar.a(e10);
        }
    }

    @Override // r3.e
    public void a(final p pVar, final l3.i iVar, final j3.h hVar) {
        this.f34231b.execute(new Runnable() { // from class: r3.a
            @Override // java.lang.Runnable
            public final void run() {
                this.f34222o.e(pVar, hVar, iVar);
            }
        });
    }
}
