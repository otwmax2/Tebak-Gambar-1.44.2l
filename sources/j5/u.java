package j5;

import android.os.Handler;
import android.os.Looper;
import com.google.android.gms.internal.firebase_auth.zzj;
import java.util.concurrent.Executor;

/* JADX INFO: compiled from: com.google.firebase:firebase-auth@@19.3.1 */
/* JADX INFO: loaded from: classes2.dex */
public final class u implements Executor {

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private static u f30732p = new u();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private Handler f30733o = new zzj(Looper.getMainLooper());

    private u() {
    }

    public static u a() {
        return f30732p;
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        this.f30733o.post(runnable);
    }
}
