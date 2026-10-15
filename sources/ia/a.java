package ia;

import java.util.concurrent.Executor;

/* JADX INFO: compiled from: Tasks.kt */
/* JADX INFO: loaded from: classes2.dex */
final class a implements Executor {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public static final a f30551o = new a();

    private a() {
    }

    @Override // java.util.concurrent.Executor
    public void execute(Runnable runnable) {
        runnable.run();
    }
}
