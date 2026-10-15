package s1;

import java.util.concurrent.Executor;
import r1.g;

/* JADX INFO: compiled from: TaskExecutor.java */
/* JADX INFO: loaded from: classes.dex */
public interface a {
    Executor a();

    void b(Runnable runnable);

    g getBackgroundExecutor();
}
