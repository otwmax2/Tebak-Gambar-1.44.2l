package s1;

import android.os.Handler;
import android.os.Looper;
import java.util.concurrent.Executor;
import r1.g;

/* JADX INFO: compiled from: WorkManagerTaskExecutor.java */
/* JADX INFO: loaded from: classes.dex */
public class b implements s1.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final g f34464a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Handler f34465b = new Handler(Looper.getMainLooper());

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Executor f34466c = new a();

    /* JADX INFO: compiled from: WorkManagerTaskExecutor.java */
    class a implements Executor {
        a() {
        }

        @Override // java.util.concurrent.Executor
        public void execute(Runnable runnable) {
            b.this.c(runnable);
        }
    }

    public b(Executor executor) {
        this.f34464a = new g(executor);
    }

    @Override // s1.a
    public Executor a() {
        return this.f34466c;
    }

    @Override // s1.a
    public void b(Runnable runnable) {
        this.f34464a.execute(runnable);
    }

    public void c(Runnable runnable) {
        this.f34465b.post(runnable);
    }

    @Override // s1.a
    public g getBackgroundExecutor() {
        return this.f34464a;
    }
}
