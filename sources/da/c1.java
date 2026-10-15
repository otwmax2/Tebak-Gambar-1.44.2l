package da;

import java.util.concurrent.Executor;

/* JADX INFO: compiled from: Executors.kt */
/* JADX INFO: loaded from: classes2.dex */
final class c1 implements Executor {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final i0 f28780o;

    @Override // java.util.concurrent.Executor
    public void execute(Runnable runnable) {
        this.f28780o.m(k9.h.f31635o, runnable);
    }

    public String toString() {
        return this.f28780o.toString();
    }
}
