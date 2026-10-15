package y4;

import android.os.Handler;
import android.os.Looper;
import java.util.concurrent.Executor;

/* JADX INFO: compiled from: com.google.android.play:core@@1.10.2 */
/* JADX INFO: loaded from: classes2.dex */
final class s implements Executor {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final Handler f36981o = new Handler(Looper.getMainLooper());

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        this.f36981o.post(runnable);
    }
}
