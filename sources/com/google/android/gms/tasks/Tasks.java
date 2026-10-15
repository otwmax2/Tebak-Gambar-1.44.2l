package com.google.android.gms.tasks;

import com.google.android.gms.common.internal.Preconditions;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.Callable;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

/* JADX INFO: compiled from: com.google.android.gms:play-services-tasks@@18.0.2 */
/* JADX INFO: loaded from: classes2.dex */
public final class Tasks {
    private Tasks() {
    }

    public static <TResult> TResult a(Task<TResult> task) throws ExecutionException, InterruptedException {
        Preconditions.i();
        Preconditions.l(task, "Task must not be null");
        if (task.s()) {
            return (TResult) j(task);
        }
        b bVar = new b(null);
        k(task, bVar);
        bVar.a();
        return (TResult) j(task);
    }

    public static <TResult> TResult b(Task<TResult> task, long j10, TimeUnit timeUnit) throws ExecutionException, InterruptedException, TimeoutException {
        Preconditions.i();
        Preconditions.l(task, "Task must not be null");
        Preconditions.l(timeUnit, "TimeUnit must not be null");
        if (task.s()) {
            return (TResult) j(task);
        }
        b bVar = new b(null);
        k(task, bVar);
        if (bVar.c(j10, timeUnit)) {
            return (TResult) j(task);
        }
        throw new TimeoutException("Timed out waiting for Task");
    }

    @Deprecated
    public static <TResult> Task<TResult> c(Executor executor, Callable<TResult> callable) {
        Preconditions.l(executor, "Executor must not be null");
        Preconditions.l(callable, "Callback must not be null");
        z zVar = new z();
        executor.execute(new a0(zVar, callable));
        return zVar;
    }

    public static <TResult> Task<TResult> d(Exception exc) {
        z zVar = new z();
        zVar.w(exc);
        return zVar;
    }

    public static <TResult> Task<TResult> e(TResult tresult) {
        z zVar = new z();
        zVar.x(tresult);
        return zVar;
    }

    public static Task<Void> f(Collection<? extends Task<?>> collection) {
        if (collection == null || collection.isEmpty()) {
            return e(null);
        }
        Iterator<? extends Task<?>> it = collection.iterator();
        while (it.hasNext()) {
            Objects.requireNonNull(it.next(), "null tasks are not accepted");
        }
        z zVar = new z();
        d dVar = new d(collection.size(), zVar);
        Iterator<? extends Task<?>> it2 = collection.iterator();
        while (it2.hasNext()) {
            k(it2.next(), dVar);
        }
        return zVar;
    }

    public static Task<Void> g(Task<?>... taskArr) {
        return (taskArr == null || taskArr.length == 0) ? e(null) : f(Arrays.asList(taskArr));
    }

    public static Task<List<Task<?>>> h(Collection<? extends Task<?>> collection) {
        if (collection == null || collection.isEmpty()) {
            return e(Collections.emptyList());
        }
        return f(collection).n(TaskExecutors.f24951a, new a(collection));
    }

    public static Task<List<Task<?>>> i(Task<?>... taskArr) {
        return (taskArr == null || taskArr.length == 0) ? e(Collections.emptyList()) : h(Arrays.asList(taskArr));
    }

    private static Object j(Task task) throws ExecutionException {
        if (task.t()) {
            return task.p();
        }
        if (task.r()) {
            throw new CancellationException("Task is already canceled");
        }
        throw new ExecutionException(task.o());
    }

    private static void k(Task task, c cVar) {
        Executor executor = TaskExecutors.f24952b;
        task.j(executor, cVar);
        task.g(executor, cVar);
        task.a(executor, cVar);
    }
}
