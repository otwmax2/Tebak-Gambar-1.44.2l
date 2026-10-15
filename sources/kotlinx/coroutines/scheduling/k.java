package kotlinx.coroutines.scheduling;

import da.t0;

/* JADX INFO: compiled from: Tasks.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class k extends h {

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public final Runnable f31832q;

    public k(Runnable runnable, long j10, i iVar) {
        super(j10, iVar);
        this.f31832q = runnable;
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            this.f31832q.run();
        } finally {
            this.f31830p.a();
        }
    }

    public String toString() {
        return "Task[" + t0.a(this.f31832q) + '@' + t0.b(this.f31832q) + ", " + this.f31829o + ", " + this.f31830p + ']';
    }
}
