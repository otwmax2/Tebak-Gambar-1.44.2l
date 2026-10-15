package l5;

import android.annotation.SuppressLint;
import android.os.Handler;
import android.os.Looper;
import java.util.concurrent.Executor;

/* JADX INFO: compiled from: UiExecutor.java */
/* JADX INFO: loaded from: classes2.dex */
public enum k implements Executor {
    INSTANCE;


    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @SuppressLint({"ThreadPoolCreation"})
    private static final Handler f32017p = new Handler(Looper.getMainLooper());

    @Override // java.util.concurrent.Executor
    public void execute(Runnable runnable) {
        f32017p.post(runnable);
    }
}
