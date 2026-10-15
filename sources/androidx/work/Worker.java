package androidx.work;

import android.annotation.SuppressLint;
import android.content.Context;
import androidx.annotation.Keep;
import androidx.work.ListenableWorker;
import androidx.work.impl.utils.futures.c;

/* JADX INFO: loaded from: classes.dex */
public abstract class Worker extends ListenableWorker {

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    c<ListenableWorker.a> f4343t;

    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                Worker.this.f4343t.q(Worker.this.doWork());
            } catch (Throwable th) {
                Worker.this.f4343t.r(th);
            }
        }
    }

    @Keep
    @SuppressLint({"BanKeepAnnotation"})
    public Worker(Context context, WorkerParameters workerParameters) {
        super(context, workerParameters);
    }

    public abstract ListenableWorker.a doWork();

    @Override // androidx.work.ListenableWorker
    public final a5.a<ListenableWorker.a> startWork() {
        this.f4343t = c.u();
        getBackgroundExecutor().execute(new a());
        return this.f4343t;
    }
}
