package s3;

import java.util.Iterator;
import java.util.concurrent.Executor;
import javax.inject.Inject;
import u3.b;

/* JADX INFO: compiled from: WorkInitializer.java */
/* JADX INFO: loaded from: classes.dex */
public class w {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Executor f34550a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final t3.d f34551b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final y f34552c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final u3.b f34553d;

    @Inject
    w(Executor executor, t3.d dVar, y yVar, u3.b bVar) {
        this.f34550a = executor;
        this.f34551b = dVar;
        this.f34552c = yVar;
        this.f34553d = bVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object d() {
        Iterator<l3.p> it = this.f34551b.Y0().iterator();
        while (it.hasNext()) {
            this.f34552c.b(it.next(), 1);
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void e() {
        this.f34553d.b(new b.a() { // from class: s3.v
            @Override // u3.b.a
            public final Object execute() {
                return this.f34549a.d();
            }
        });
    }

    public void c() {
        this.f34550a.execute(new Runnable() { // from class: s3.u
            @Override // java.lang.Runnable
            public final void run() {
                this.f34548o.e();
            }
        });
    }
}
