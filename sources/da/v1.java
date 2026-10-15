package da;

import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;

/* JADX INFO: compiled from: JobSupport.kt */
/* JADX INFO: loaded from: classes2.dex */
final class v1 extends z1 {

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private static final /* synthetic */ AtomicIntegerFieldUpdater f28869t = AtomicIntegerFieldUpdater.newUpdater(v1.class, "_invoked");
    private volatile /* synthetic */ int _invoked = 0;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private final s9.l<Throwable, h9.t> f28870s;

    /* JADX WARN: Multi-variable type inference failed */
    public v1(s9.l<? super Throwable, h9.t> lVar) {
        this.f28870s = lVar;
    }

    @Override // da.c0
    public void C(Throwable th) {
        if (f28869t.compareAndSet(this, 0, 1)) {
            this.f28870s.invoke(th);
        }
    }

    @Override // s9.l
    public /* bridge */ /* synthetic */ h9.t invoke(Throwable th) {
        C(th);
        return h9.t.f30301a;
    }
}
