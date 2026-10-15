package a5;

import java.util.concurrent.Executor;
import java.util.concurrent.Future;

/* JADX INFO: compiled from: ListenableFuture.java */
/* JADX INFO: loaded from: classes2.dex */
public interface a<V> extends Future<V> {
    void e(Runnable runnable, Executor executor);
}
