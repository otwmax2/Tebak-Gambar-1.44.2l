package kotlinx.coroutines.scheduling;

/* JADX INFO: compiled from: Tasks.kt */
/* JADX INFO: loaded from: classes2.dex */
public abstract class h implements Runnable {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public long f31829o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public i f31830p;

    public h(long j10, i iVar) {
        this.f31829o = j10;
        this.f31830p = iVar;
    }

    public h() {
        this(0L, l.f31838f);
    }
}
