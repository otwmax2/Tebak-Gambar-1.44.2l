package q5;

import android.annotation.SuppressLint;
import android.os.Looper;
import com.google.android.gms.tasks.Continuation;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
import java.util.concurrent.Callable;
import java.util.concurrent.CancellationException;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

/* JADX INFO: compiled from: Utils.java */
/* JADX INFO: loaded from: classes2.dex */
public final class q0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final ExecutorService f33997a = z.c("awaitEvenIfOnMainThread task continuation executor");

    public static <T> T f(Task<T> task) throws InterruptedException, TimeoutException {
        final CountDownLatch countDownLatch = new CountDownLatch(1);
        task.l(f33997a, new Continuation() { // from class: q5.o0
            @Override // com.google.android.gms.tasks.Continuation
            public final Object a(Task task2) {
                return q0.i(countDownLatch, task2);
            }
        });
        if (Looper.getMainLooper() == Looper.myLooper()) {
            countDownLatch.await(3L, TimeUnit.SECONDS);
        } else {
            countDownLatch.await(4L, TimeUnit.SECONDS);
        }
        if (task.t()) {
            return task.p();
        }
        if (task.r()) {
            throw new CancellationException("Task is already canceled");
        }
        if (task.s()) {
            throw new IllegalStateException(task.o());
        }
        throw new TimeoutException();
    }

    public static boolean g(CountDownLatch countDownLatch, long j10, TimeUnit timeUnit) {
        boolean z10 = false;
        try {
            long nanos = timeUnit.toNanos(j10);
            while (true) {
                try {
                    break;
                } catch (InterruptedException unused) {
                    z10 = true;
                    nanos = (System.nanoTime() + nanos) - System.nanoTime();
                }
            }
            return countDownLatch.await(nanos, TimeUnit.NANOSECONDS);
        } finally {
            if (z10) {
                Thread.currentThread().interrupt();
            }
        }
    }

    public static <T> Task<T> h(final Executor executor, final Callable<Task<T>> callable) {
        final TaskCompletionSource taskCompletionSource = new TaskCompletionSource();
        executor.execute(new Runnable() { // from class: q5.p0
            @Override // java.lang.Runnable
            public final void run() {
                q0.k(callable, executor, taskCompletionSource);
            }
        });
        return taskCompletionSource.a();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Object i(CountDownLatch countDownLatch, Task task) throws Exception {
        countDownLatch.countDown();
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Object j(TaskCompletionSource taskCompletionSource, Task task) throws Exception {
        if (task.t()) {
            taskCompletionSource.c(task.p());
            return null;
        }
        if (task.o() == null) {
            return null;
        }
        taskCompletionSource.b(task.o());
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void k(Callable callable, Executor executor, final TaskCompletionSource taskCompletionSource) {
        try {
            ((Task) callable.call()).l(executor, new Continuation() { // from class: q5.n0
                @Override // com.google.android.gms.tasks.Continuation
                public final Object a(Task task) {
                    return q0.j(taskCompletionSource, task);
                }
            });
        } catch (Exception e10) {
            taskCompletionSource.b(e10);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Void l(TaskCompletionSource taskCompletionSource, Task task) throws Exception {
        if (task.t()) {
            taskCompletionSource.e(task.p());
            return null;
        }
        if (task.o() == null) {
            return null;
        }
        taskCompletionSource.d(task.o());
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Void m(TaskCompletionSource taskCompletionSource, Task task) throws Exception {
        if (task.t()) {
            taskCompletionSource.e(task.p());
            return null;
        }
        if (task.o() == null) {
            return null;
        }
        taskCompletionSource.d(task.o());
        return null;
    }

    @SuppressLint({"TaskMainThread"})
    public static <T> Task<T> n(Task<T> task, Task<T> task2) {
        final TaskCompletionSource taskCompletionSource = new TaskCompletionSource();
        Continuation<T, TContinuationResult> continuation = new Continuation() { // from class: q5.m0
            @Override // com.google.android.gms.tasks.Continuation
            public final Object a(Task task3) {
                return q0.l(taskCompletionSource, task3);
            }
        };
        task.k(continuation);
        task2.k(continuation);
        return taskCompletionSource.a();
    }

    public static <T> Task<T> o(Executor executor, Task<T> task, Task<T> task2) {
        final TaskCompletionSource taskCompletionSource = new TaskCompletionSource();
        Continuation<T, TContinuationResult> continuation = new Continuation() { // from class: q5.l0
            @Override // com.google.android.gms.tasks.Continuation
            public final Object a(Task task3) {
                return q0.m(taskCompletionSource, task3);
            }
        };
        task.l(executor, continuation);
        task2.l(executor, continuation);
        return taskCompletionSource.a();
    }
}
