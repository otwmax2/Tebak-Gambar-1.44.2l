package com.facebook.bolts;

import com.facebook.bolts.BoltsExecutors;
import com.facebook.bolts.Task;
import h9.t;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Callable;
import java.util.concurrent.CancellationException;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.ReentrantLock;
import t9.b0;

/* JADX INFO: compiled from: Task.kt */
/* JADX INFO: loaded from: classes.dex */
public final class Task<TResult> {
    public static final ExecutorService BACKGROUND_EXECUTOR;
    public static final Companion Companion = new Companion(null);
    private static final Executor IMMEDIATE_EXECUTOR;
    private static final Task<?> TASK_CANCELLED;
    private static final Task<Boolean> TASK_FALSE;
    private static final Task<?> TASK_NULL;
    private static final Task<Boolean> TASK_TRUE;
    public static final Executor UI_THREAD_EXECUTOR;
    private static volatile UnobservedExceptionHandler unobservedExceptionHandler;
    private boolean cancelledField;
    private boolean completeField;
    private final Condition condition;
    private List<Continuation<TResult, Void>> continuations;
    private Exception errorField;
    private boolean errorHasBeenObserved;
    private final ReentrantLock lock;
    private TResult resultField;
    private UnobservedErrorNotifier unobservedErrorNotifier;

    /* JADX INFO: compiled from: Task.kt */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(t9.g gVar) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX WARN: Multi-variable type inference failed */
        /* JADX INFO: renamed from: call$lambda-2, reason: not valid java name */
        public static final void m81call$lambda2(CancellationToken cancellationToken, com.facebook.bolts.TaskCompletionSource taskCompletionSource, Callable callable) {
            t9.m.e(taskCompletionSource, "$tcs");
            t9.m.e(callable, "$callable");
            if (cancellationToken != null && cancellationToken.isCancellationRequested()) {
                taskCompletionSource.setCancelled();
                return;
            }
            try {
                taskCompletionSource.setResult(callable.call());
            } catch (CancellationException unused) {
                taskCompletionSource.setCancelled();
            } catch (Exception e10) {
                taskCompletionSource.setError(e10);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final <TContinuationResult, TResult> void completeAfterTask(final com.facebook.bolts.TaskCompletionSource<TContinuationResult> taskCompletionSource, final Continuation<TResult, Task<TContinuationResult>> continuation, final Task<TResult> task, Executor executor, final CancellationToken cancellationToken) {
            try {
                executor.execute(new Runnable() { // from class: com.facebook.bolts.j
                    @Override // java.lang.Runnable
                    public final void run() {
                        Task.Companion.m82completeAfterTask$lambda7(cancellationToken, taskCompletionSource, continuation, task);
                    }
                });
            } catch (Exception e10) {
                taskCompletionSource.setError(new ExecutorException(e10));
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX INFO: renamed from: completeAfterTask$lambda-7, reason: not valid java name */
        public static final void m82completeAfterTask$lambda7(final CancellationToken cancellationToken, final com.facebook.bolts.TaskCompletionSource taskCompletionSource, Continuation continuation, Task task) {
            t9.m.e(taskCompletionSource, "$tcs");
            t9.m.e(continuation, "$continuation");
            t9.m.e(task, "$task");
            if (cancellationToken != null && cancellationToken.isCancellationRequested()) {
                taskCompletionSource.setCancelled();
                return;
            }
            try {
                Task task2 = (Task) continuation.then(task);
                if (task2 == null) {
                    taskCompletionSource.setResult(null);
                } else {
                    task2.continueWith(new Continuation() { // from class: com.facebook.bolts.g
                        @Override // com.facebook.bolts.Continuation
                        public final Object then(Task task3) {
                            return Task.Companion.m83completeAfterTask$lambda7$lambda6(cancellationToken, taskCompletionSource, task3);
                        }
                    });
                }
            } catch (CancellationException unused) {
                taskCompletionSource.setCancelled();
            } catch (Exception e10) {
                taskCompletionSource.setError(e10);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX WARN: Multi-variable type inference failed */
        /* JADX INFO: renamed from: completeAfterTask$lambda-7$lambda-6, reason: not valid java name */
        public static final Void m83completeAfterTask$lambda7$lambda6(CancellationToken cancellationToken, com.facebook.bolts.TaskCompletionSource taskCompletionSource, Task task) {
            t9.m.e(taskCompletionSource, "$tcs");
            t9.m.e(task, "task");
            if (cancellationToken != null && cancellationToken.isCancellationRequested()) {
                taskCompletionSource.setCancelled();
                return null;
            }
            if (task.isCancelled()) {
                taskCompletionSource.setCancelled();
            } else if (task.isFaulted()) {
                taskCompletionSource.setError(task.getError());
            } else {
                taskCompletionSource.setResult(task.getResult());
            }
            return null;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final <TContinuationResult, TResult> void completeImmediately(final com.facebook.bolts.TaskCompletionSource<TContinuationResult> taskCompletionSource, final Continuation<TResult, TContinuationResult> continuation, final Task<TResult> task, Executor executor, final CancellationToken cancellationToken) {
            try {
                executor.execute(new Runnable() { // from class: com.facebook.bolts.k
                    @Override // java.lang.Runnable
                    public final void run() {
                        Task.Companion.m84completeImmediately$lambda5(cancellationToken, taskCompletionSource, continuation, task);
                    }
                });
            } catch (Exception e10) {
                taskCompletionSource.setError(new ExecutorException(e10));
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX WARN: Multi-variable type inference failed */
        /* JADX INFO: renamed from: completeImmediately$lambda-5, reason: not valid java name */
        public static final void m84completeImmediately$lambda5(CancellationToken cancellationToken, com.facebook.bolts.TaskCompletionSource taskCompletionSource, Continuation continuation, Task task) {
            t9.m.e(taskCompletionSource, "$tcs");
            t9.m.e(continuation, "$continuation");
            t9.m.e(task, "$task");
            if (cancellationToken != null && cancellationToken.isCancellationRequested()) {
                taskCompletionSource.setCancelled();
                return;
            }
            try {
                taskCompletionSource.setResult(continuation.then(task));
            } catch (CancellationException unused) {
                taskCompletionSource.setCancelled();
            } catch (Exception e10) {
                taskCompletionSource.setError(e10);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX INFO: renamed from: delay$lambda-0, reason: not valid java name */
        public static final void m85delay$lambda0(com.facebook.bolts.TaskCompletionSource taskCompletionSource) {
            t9.m.e(taskCompletionSource, "$tcs");
            taskCompletionSource.trySetResult(null);
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX INFO: renamed from: delay$lambda-1, reason: not valid java name */
        public static final void m86delay$lambda1(ScheduledFuture scheduledFuture, com.facebook.bolts.TaskCompletionSource taskCompletionSource) {
            t9.m.e(taskCompletionSource, "$tcs");
            scheduledFuture.cancel(true);
            taskCompletionSource.trySetCancelled();
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX INFO: renamed from: whenAny$lambda-4, reason: not valid java name */
        public static final Void m87whenAny$lambda4(AtomicBoolean atomicBoolean, com.facebook.bolts.TaskCompletionSource taskCompletionSource, Task task) {
            t9.m.e(atomicBoolean, "$isAnyTaskComplete");
            t9.m.e(taskCompletionSource, "$firstCompleted");
            t9.m.e(task, "it");
            if (atomicBoolean.compareAndSet(false, true)) {
                taskCompletionSource.setResult(task);
                return null;
            }
            task.getError();
            return null;
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX INFO: renamed from: whenAnyResult$lambda-3, reason: not valid java name */
        public static final Void m88whenAnyResult$lambda3(AtomicBoolean atomicBoolean, com.facebook.bolts.TaskCompletionSource taskCompletionSource, Task task) {
            t9.m.e(atomicBoolean, "$isAnyTaskComplete");
            t9.m.e(taskCompletionSource, "$firstCompleted");
            t9.m.e(task, "it");
            if (atomicBoolean.compareAndSet(false, true)) {
                taskCompletionSource.setResult(task);
                return null;
            }
            task.getError();
            return null;
        }

        public final <TResult> Task<TResult> call(Callable<TResult> callable, Executor executor) {
            t9.m.e(callable, "callable");
            t9.m.e(executor, "executor");
            return call(callable, executor, null);
        }

        public final <TResult> Task<TResult> callInBackground(Callable<TResult> callable) {
            t9.m.e(callable, "callable");
            return call(callable, Task.BACKGROUND_EXECUTOR, null);
        }

        public final <TResult> Task<TResult> cancelled() {
            return Task.TASK_CANCELLED;
        }

        public final Task<Void> delay(long j10) {
            return delay$facebook_bolts_release(j10, BoltsExecutors.Companion.scheduled$facebook_bolts_release(), null);
        }

        public final Task<Void> delay$facebook_bolts_release(long j10, ScheduledExecutorService scheduledExecutorService, CancellationToken cancellationToken) {
            t9.m.e(scheduledExecutorService, "executor");
            if (cancellationToken != null && cancellationToken.isCancellationRequested()) {
                return cancelled();
            }
            if (j10 <= 0) {
                return forResult(null);
            }
            final com.facebook.bolts.TaskCompletionSource taskCompletionSource = new com.facebook.bolts.TaskCompletionSource();
            final ScheduledFuture<?> scheduledFutureSchedule = scheduledExecutorService.schedule(new Runnable() { // from class: com.facebook.bolts.m
                @Override // java.lang.Runnable
                public final void run() {
                    Task.Companion.m85delay$lambda0(taskCompletionSource);
                }
            }, j10, TimeUnit.MILLISECONDS);
            if (cancellationToken != null) {
                cancellationToken.register(new Runnable() { // from class: com.facebook.bolts.n
                    @Override // java.lang.Runnable
                    public final void run() {
                        Task.Companion.m86delay$lambda1(scheduledFutureSchedule, taskCompletionSource);
                    }
                });
            }
            return taskCompletionSource.getTask();
        }

        public final <TResult> Task<TResult> forError(Exception exc) {
            com.facebook.bolts.TaskCompletionSource taskCompletionSource = new com.facebook.bolts.TaskCompletionSource();
            taskCompletionSource.setError(exc);
            return taskCompletionSource.getTask();
        }

        /* JADX WARN: Multi-variable type inference failed */
        public final <TResult> Task<TResult> forResult(TResult tresult) {
            if (tresult == 0) {
                return Task.TASK_NULL;
            }
            if (tresult instanceof Boolean) {
                return ((Boolean) tresult).booleanValue() ? Task.TASK_TRUE : Task.TASK_FALSE;
            }
            com.facebook.bolts.TaskCompletionSource taskCompletionSource = new com.facebook.bolts.TaskCompletionSource();
            taskCompletionSource.setResult(tresult);
            return taskCompletionSource.getTask();
        }

        public final UnobservedExceptionHandler getUnobservedExceptionHandler() {
            return Task.unobservedExceptionHandler;
        }

        public final void setUnobservedExceptionHandler(UnobservedExceptionHandler unobservedExceptionHandler) {
            Task.unobservedExceptionHandler = unobservedExceptionHandler;
        }

        public final Task<Void> whenAll(Collection<? extends Task<?>> collection) {
            t9.m.e(collection, "tasks");
            if (collection.isEmpty()) {
                return forResult(null);
            }
            final com.facebook.bolts.TaskCompletionSource taskCompletionSource = new com.facebook.bolts.TaskCompletionSource();
            final ArrayList arrayList = new ArrayList();
            final ReentrantLock reentrantLock = new ReentrantLock();
            final AtomicInteger atomicInteger = new AtomicInteger(collection.size());
            final AtomicBoolean atomicBoolean = new AtomicBoolean(false);
            Iterator<? extends Task<?>> it = collection.iterator();
            while (it.hasNext()) {
                it.next().continueWith(new Continuation() { // from class: com.facebook.bolts.Task$Companion$whenAll$1
                    @Override // com.facebook.bolts.Continuation
                    public /* bridge */ /* synthetic */ Object then(Task task) {
                        return then((Task<Object>) task);
                    }

                    @Override // com.facebook.bolts.Continuation
                    public final Void then(Task<Object> task) {
                        t9.m.e(task, "it");
                        if (task.isFaulted()) {
                            ReentrantLock reentrantLock2 = reentrantLock;
                            ArrayList<Exception> arrayList2 = arrayList;
                            reentrantLock2.lock();
                            try {
                                arrayList2.add(task.getError());
                            } finally {
                                reentrantLock2.unlock();
                            }
                        }
                        if (task.isCancelled()) {
                            atomicBoolean.set(true);
                        }
                        if (atomicInteger.decrementAndGet() == 0) {
                            if (arrayList.size() != 0) {
                                if (arrayList.size() == 1) {
                                    taskCompletionSource.setError(arrayList.get(0));
                                } else {
                                    b0 b0Var = b0.f35528a;
                                    String str = String.format("There were %d exceptions.", Arrays.copyOf(new Object[]{Integer.valueOf(arrayList.size())}, 1));
                                    t9.m.d(str, "java.lang.String.format(format, *args)");
                                    taskCompletionSource.setError(new AggregateException(str, arrayList));
                                }
                            } else if (atomicBoolean.get()) {
                                taskCompletionSource.setCancelled();
                            } else {
                                taskCompletionSource.setResult(null);
                            }
                        }
                        return null;
                    }
                });
            }
            return taskCompletionSource.getTask();
        }

        public final <TResult> Task<List<TResult>> whenAllResult(final Collection<Task<TResult>> collection) {
            t9.m.e(collection, "tasks");
            return (Task<List<TResult>>) whenAll(collection).onSuccess(new Continuation<Void, List<? extends TResult>>() { // from class: com.facebook.bolts.Task$Companion$whenAllResult$1
                @Override // com.facebook.bolts.Continuation
                public List<TResult> then(Task<Void> task) {
                    t9.m.e(task, "task");
                    if (collection.isEmpty()) {
                        return i9.l.e();
                    }
                    ArrayList arrayList = new ArrayList();
                    Iterator<Task<TResult>> it = collection.iterator();
                    while (it.hasNext()) {
                        arrayList.add(it.next().getResult());
                    }
                    return arrayList;
                }
            });
        }

        public final Task<Task<?>> whenAny(Collection<? extends Task<?>> collection) {
            t9.m.e(collection, "tasks");
            if (collection.isEmpty()) {
                return forResult(null);
            }
            final com.facebook.bolts.TaskCompletionSource taskCompletionSource = new com.facebook.bolts.TaskCompletionSource();
            final AtomicBoolean atomicBoolean = new AtomicBoolean(false);
            Iterator<? extends Task<?>> it = collection.iterator();
            while (it.hasNext()) {
                it.next().continueWith(new Continuation() { // from class: com.facebook.bolts.i
                    @Override // com.facebook.bolts.Continuation
                    public final Object then(Task task) {
                        return Task.Companion.m87whenAny$lambda4(atomicBoolean, taskCompletionSource, task);
                    }
                });
            }
            return taskCompletionSource.getTask();
        }

        public final <TResult> Task<Task<TResult>> whenAnyResult(Collection<Task<TResult>> collection) {
            t9.m.e(collection, "tasks");
            if (collection.isEmpty()) {
                return forResult(null);
            }
            final com.facebook.bolts.TaskCompletionSource taskCompletionSource = new com.facebook.bolts.TaskCompletionSource();
            final AtomicBoolean atomicBoolean = new AtomicBoolean(false);
            Iterator<Task<TResult>> it = collection.iterator();
            while (it.hasNext()) {
                it.next().continueWith(new Continuation() { // from class: com.facebook.bolts.h
                    @Override // com.facebook.bolts.Continuation
                    public final Object then(Task task) {
                        return Task.Companion.m88whenAnyResult$lambda3(atomicBoolean, taskCompletionSource, task);
                    }
                });
            }
            return taskCompletionSource.getTask();
        }

        public final <TResult> Task<TResult> call(final Callable<TResult> callable, Executor executor, final CancellationToken cancellationToken) {
            t9.m.e(callable, "callable");
            t9.m.e(executor, "executor");
            final com.facebook.bolts.TaskCompletionSource taskCompletionSource = new com.facebook.bolts.TaskCompletionSource();
            try {
                executor.execute(new Runnable() { // from class: com.facebook.bolts.l
                    @Override // java.lang.Runnable
                    public final void run() {
                        Task.Companion.m81call$lambda2(cancellationToken, taskCompletionSource, callable);
                    }
                });
            } catch (Exception e10) {
                taskCompletionSource.setError(new ExecutorException(e10));
            }
            return taskCompletionSource.getTask();
        }

        public final <TResult> Task<TResult> callInBackground(Callable<TResult> callable, CancellationToken cancellationToken) {
            t9.m.e(callable, "callable");
            return call(callable, Task.BACKGROUND_EXECUTOR, cancellationToken);
        }

        public final Task<Void> delay(long j10, CancellationToken cancellationToken) {
            return delay$facebook_bolts_release(j10, BoltsExecutors.Companion.scheduled$facebook_bolts_release(), cancellationToken);
        }

        public final <TResult> Task<TResult> call(Callable<TResult> callable) {
            t9.m.e(callable, "callable");
            return call(callable, Task.IMMEDIATE_EXECUTOR, null);
        }

        public final <TResult> Task<TResult> call(Callable<TResult> callable, CancellationToken cancellationToken) {
            t9.m.e(callable, "callable");
            return call(callable, Task.IMMEDIATE_EXECUTOR, cancellationToken);
        }
    }

    /* JADX INFO: compiled from: Task.kt */
    public final class TaskCompletionSource extends com.facebook.bolts.TaskCompletionSource<TResult> {
        final /* synthetic */ Task<TResult> this$0;

        public TaskCompletionSource(Task task) {
            t9.m.e(task, "this$0");
            this.this$0 = task;
        }
    }

    /* JADX INFO: compiled from: Task.kt */
    public interface UnobservedExceptionHandler {
        void unobservedException(Task<?> task, UnobservedTaskException unobservedTaskException);
    }

    static {
        BoltsExecutors.Companion companion = BoltsExecutors.Companion;
        BACKGROUND_EXECUTOR = companion.background();
        IMMEDIATE_EXECUTOR = companion.immediate$facebook_bolts_release();
        UI_THREAD_EXECUTOR = AndroidExecutors.Companion.uiThread();
        TASK_NULL = new Task<>((Object) null);
        TASK_TRUE = new Task<>(Boolean.TRUE);
        TASK_FALSE = new Task<>(Boolean.FALSE);
        TASK_CANCELLED = new Task<>(true);
    }

    public Task() {
        ReentrantLock reentrantLock = new ReentrantLock();
        this.lock = reentrantLock;
        this.condition = reentrantLock.newCondition();
        this.continuations = new ArrayList();
    }

    public static final <TResult> Task<TResult> call(Callable<TResult> callable) {
        return Companion.call(callable);
    }

    public static final <TResult> Task<TResult> call(Callable<TResult> callable, CancellationToken cancellationToken) {
        return Companion.call(callable, cancellationToken);
    }

    public static final <TResult> Task<TResult> call(Callable<TResult> callable, Executor executor) {
        return Companion.call(callable, executor);
    }

    public static final <TResult> Task<TResult> call(Callable<TResult> callable, Executor executor, CancellationToken cancellationToken) {
        return Companion.call(callable, executor, cancellationToken);
    }

    public static final <TResult> Task<TResult> callInBackground(Callable<TResult> callable) {
        return Companion.callInBackground(callable);
    }

    public static final <TResult> Task<TResult> callInBackground(Callable<TResult> callable, CancellationToken cancellationToken) {
        return Companion.callInBackground(callable, cancellationToken);
    }

    public static final <TResult> Task<TResult> cancelled() {
        return Companion.cancelled();
    }

    public static /* synthetic */ Task continueWhile$default(Task task, Callable callable, Continuation continuation, Executor executor, CancellationToken cancellationToken, int i10, Object obj) {
        if ((i10 & 4) != 0) {
            executor = IMMEDIATE_EXECUTOR;
        }
        if ((i10 & 8) != 0) {
            cancellationToken = null;
        }
        return task.continueWhile(callable, continuation, executor, cancellationToken);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: continueWith$lambda-10$lambda-9, reason: not valid java name */
    public static final Void m76continueWith$lambda10$lambda9(com.facebook.bolts.TaskCompletionSource taskCompletionSource, Continuation continuation, Executor executor, CancellationToken cancellationToken, Task task) {
        t9.m.e(taskCompletionSource, "$tcs");
        t9.m.e(continuation, "$continuation");
        t9.m.e(executor, "$executor");
        t9.m.e(task, "task");
        Companion.completeImmediately(taskCompletionSource, continuation, task, executor, cancellationToken);
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: continueWithTask$lambda-12$lambda-11, reason: not valid java name */
    public static final Void m77continueWithTask$lambda12$lambda11(com.facebook.bolts.TaskCompletionSource taskCompletionSource, Continuation continuation, Executor executor, CancellationToken cancellationToken, Task task) {
        t9.m.e(taskCompletionSource, "$tcs");
        t9.m.e(continuation, "$continuation");
        t9.m.e(executor, "$executor");
        t9.m.e(task, "task");
        Companion.completeAfterTask(taskCompletionSource, continuation, task, executor, cancellationToken);
        return null;
    }

    public static final Task<Void> delay(long j10) {
        return Companion.delay(j10);
    }

    public static final Task<Void> delay(long j10, CancellationToken cancellationToken) {
        return Companion.delay(j10, cancellationToken);
    }

    public static final <TResult> Task<TResult> forError(Exception exc) {
        return Companion.forError(exc);
    }

    public static final <TResult> Task<TResult> forResult(TResult tresult) {
        return Companion.forResult(tresult);
    }

    public static final UnobservedExceptionHandler getUnobservedExceptionHandler() {
        return Companion.getUnobservedExceptionHandler();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: makeVoid$lambda-8, reason: not valid java name */
    public static final Task m78makeVoid$lambda8(Task task) {
        t9.m.e(task, "task");
        return task.isCancelled() ? Companion.cancelled() : task.isFaulted() ? Companion.forError(task.getError()) : Companion.forResult(null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: onSuccess$lambda-13, reason: not valid java name */
    public static final Task m79onSuccess$lambda13(CancellationToken cancellationToken, Continuation continuation, Task task) {
        t9.m.e(continuation, "$continuation");
        t9.m.e(task, "task");
        return (cancellationToken == null || !cancellationToken.isCancellationRequested()) ? task.isFaulted() ? Companion.forError(task.getError()) : task.isCancelled() ? Companion.cancelled() : task.continueWith(continuation) : Companion.cancelled();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: onSuccessTask$lambda-14, reason: not valid java name */
    public static final Task m80onSuccessTask$lambda14(CancellationToken cancellationToken, Continuation continuation, Task task) {
        t9.m.e(continuation, "$continuation");
        t9.m.e(task, "task");
        return (cancellationToken == null || !cancellationToken.isCancellationRequested()) ? task.isFaulted() ? Companion.forError(task.getError()) : task.isCancelled() ? Companion.cancelled() : task.continueWithTask(continuation) : Companion.cancelled();
    }

    private final void runContinuations() {
        ReentrantLock reentrantLock = this.lock;
        reentrantLock.lock();
        try {
            List<Continuation<TResult, Void>> list = this.continuations;
            if (list != null) {
                Iterator<T> it = list.iterator();
                while (it.hasNext()) {
                    try {
                        try {
                            ((Continuation) it.next()).then(this);
                        } catch (RuntimeException e10) {
                            throw e10;
                        }
                    } catch (Throwable th) {
                        throw new RuntimeException(th);
                    }
                }
            }
            this.continuations = null;
            t tVar = t.f30301a;
        } finally {
            reentrantLock.unlock();
        }
    }

    public static final void setUnobservedExceptionHandler(UnobservedExceptionHandler unobservedExceptionHandler2) {
        Companion.setUnobservedExceptionHandler(unobservedExceptionHandler2);
    }

    public static final Task<Void> whenAll(Collection<? extends Task<?>> collection) {
        return Companion.whenAll(collection);
    }

    public static final <TResult> Task<List<TResult>> whenAllResult(Collection<Task<TResult>> collection) {
        return Companion.whenAllResult(collection);
    }

    public static final Task<Task<?>> whenAny(Collection<? extends Task<?>> collection) {
        return Companion.whenAny(collection);
    }

    public static final <TResult> Task<Task<TResult>> whenAnyResult(Collection<Task<TResult>> collection) {
        return Companion.whenAnyResult(collection);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final <TOut> Task<TOut> cast() {
        return this;
    }

    public final Task<Void> continueWhile(Callable<Boolean> callable, Continuation<Void, Task<Void>> continuation) {
        t9.m.e(callable, "predicate");
        t9.m.e(continuation, "continuation");
        return continueWhile(callable, continuation, IMMEDIATE_EXECUTOR, null);
    }

    public final <TContinuationResult> Task<TContinuationResult> continueWith(Continuation<TResult, TContinuationResult> continuation, Executor executor) {
        t9.m.e(continuation, "continuation");
        t9.m.e(executor, "executor");
        return continueWith(continuation, executor, null);
    }

    public final <TContinuationResult> Task<TContinuationResult> continueWithTask(Continuation<TResult, Task<TContinuationResult>> continuation, Executor executor) {
        t9.m.e(continuation, "continuation");
        t9.m.e(executor, "executor");
        return continueWithTask(continuation, executor, null);
    }

    public final Exception getError() {
        ReentrantLock reentrantLock = this.lock;
        reentrantLock.lock();
        try {
            if (this.errorField != null) {
                this.errorHasBeenObserved = true;
                UnobservedErrorNotifier unobservedErrorNotifier = this.unobservedErrorNotifier;
                if (unobservedErrorNotifier != null) {
                    unobservedErrorNotifier.setObserved();
                    this.unobservedErrorNotifier = null;
                }
            }
            return this.errorField;
        } finally {
            reentrantLock.unlock();
        }
    }

    public final TResult getResult() {
        ReentrantLock reentrantLock = this.lock;
        reentrantLock.lock();
        try {
            return this.resultField;
        } finally {
            reentrantLock.unlock();
        }
    }

    public final boolean isCancelled() {
        ReentrantLock reentrantLock = this.lock;
        reentrantLock.lock();
        try {
            return this.cancelledField;
        } finally {
            reentrantLock.unlock();
        }
    }

    public final boolean isCompleted() {
        ReentrantLock reentrantLock = this.lock;
        reentrantLock.lock();
        try {
            return this.completeField;
        } finally {
            reentrantLock.unlock();
        }
    }

    public final boolean isFaulted() {
        ReentrantLock reentrantLock = this.lock;
        reentrantLock.lock();
        try {
            return this.errorField != null;
        } finally {
            reentrantLock.unlock();
        }
    }

    public final Task<Void> makeVoid() {
        return continueWithTask(new Continuation() { // from class: com.facebook.bolts.f
            @Override // com.facebook.bolts.Continuation
            public final Object then(Task task) {
                return Task.m78makeVoid$lambda8(task);
            }
        });
    }

    public final <TContinuationResult> Task<TContinuationResult> onSuccess(Continuation<TResult, TContinuationResult> continuation, Executor executor) {
        t9.m.e(continuation, "continuation");
        t9.m.e(executor, "executor");
        return onSuccess(continuation, executor, null);
    }

    public final <TContinuationResult> Task<TContinuationResult> onSuccessTask(Continuation<TResult, Task<TContinuationResult>> continuation, Executor executor) {
        t9.m.e(continuation, "continuation");
        t9.m.e(executor, "executor");
        return onSuccessTask(continuation, executor, null);
    }

    public final boolean trySetCancelled() {
        ReentrantLock reentrantLock = this.lock;
        reentrantLock.lock();
        try {
            if (this.completeField) {
                return false;
            }
            this.completeField = true;
            this.cancelledField = true;
            this.condition.signalAll();
            runContinuations();
            return true;
        } finally {
            reentrantLock.unlock();
        }
    }

    public final boolean trySetError(Exception exc) {
        ReentrantLock reentrantLock = this.lock;
        reentrantLock.lock();
        try {
            if (this.completeField) {
                return false;
            }
            this.completeField = true;
            this.errorField = exc;
            this.errorHasBeenObserved = false;
            this.condition.signalAll();
            runContinuations();
            if (!this.errorHasBeenObserved && unobservedExceptionHandler != null) {
                this.unobservedErrorNotifier = new UnobservedErrorNotifier(this);
            }
            return true;
        } finally {
            reentrantLock.unlock();
        }
    }

    public final boolean trySetResult(TResult tresult) {
        ReentrantLock reentrantLock = this.lock;
        reentrantLock.lock();
        try {
            if (this.completeField) {
                return false;
            }
            this.completeField = true;
            this.resultField = tresult;
            this.condition.signalAll();
            runContinuations();
            return true;
        } finally {
            reentrantLock.unlock();
        }
    }

    public final void waitForCompletion() throws InterruptedException {
        ReentrantLock reentrantLock = this.lock;
        reentrantLock.lock();
        try {
            if (!isCompleted()) {
                this.condition.await();
            }
            t tVar = t.f30301a;
        } finally {
            reentrantLock.unlock();
        }
    }

    public final Task<Void> continueWhile(Callable<Boolean> callable, Continuation<Void, Task<Void>> continuation, CancellationToken cancellationToken) {
        t9.m.e(callable, "predicate");
        t9.m.e(continuation, "continuation");
        return continueWhile(callable, continuation, IMMEDIATE_EXECUTOR, cancellationToken);
    }

    public final <TContinuationResult> Task<TContinuationResult> continueWith(final Continuation<TResult, TContinuationResult> continuation, final Executor executor, final CancellationToken cancellationToken) {
        List<Continuation<TResult, Void>> list;
        t9.m.e(continuation, "continuation");
        t9.m.e(executor, "executor");
        final com.facebook.bolts.TaskCompletionSource taskCompletionSource = new com.facebook.bolts.TaskCompletionSource();
        ReentrantLock reentrantLock = this.lock;
        reentrantLock.lock();
        try {
            boolean zIsCompleted = isCompleted();
            if (!zIsCompleted && (list = this.continuations) != null) {
                list.add(new Continuation() { // from class: com.facebook.bolts.d
                    @Override // com.facebook.bolts.Continuation
                    public final Object then(Task task) {
                        return Task.m76continueWith$lambda10$lambda9(taskCompletionSource, continuation, executor, cancellationToken, task);
                    }
                });
            }
            t tVar = t.f30301a;
            if (zIsCompleted) {
                Companion.completeImmediately(taskCompletionSource, continuation, this, executor, cancellationToken);
            }
            return taskCompletionSource.getTask();
        } finally {
            reentrantLock.unlock();
        }
    }

    public final <TContinuationResult> Task<TContinuationResult> continueWithTask(final Continuation<TResult, Task<TContinuationResult>> continuation, final Executor executor, final CancellationToken cancellationToken) {
        List<Continuation<TResult, Void>> list;
        t9.m.e(continuation, "continuation");
        t9.m.e(executor, "executor");
        final com.facebook.bolts.TaskCompletionSource taskCompletionSource = new com.facebook.bolts.TaskCompletionSource();
        ReentrantLock reentrantLock = this.lock;
        reentrantLock.lock();
        try {
            boolean zIsCompleted = isCompleted();
            if (!zIsCompleted && (list = this.continuations) != null) {
                list.add(new Continuation() { // from class: com.facebook.bolts.e
                    @Override // com.facebook.bolts.Continuation
                    public final Object then(Task task) {
                        return Task.m77continueWithTask$lambda12$lambda11(taskCompletionSource, continuation, executor, cancellationToken, task);
                    }
                });
            }
            t tVar = t.f30301a;
            if (zIsCompleted) {
                Companion.completeAfterTask(taskCompletionSource, continuation, this, executor, cancellationToken);
            }
            return taskCompletionSource.getTask();
        } finally {
            reentrantLock.unlock();
        }
    }

    public final <TContinuationResult> Task<TContinuationResult> onSuccess(final Continuation<TResult, TContinuationResult> continuation, Executor executor, final CancellationToken cancellationToken) {
        t9.m.e(continuation, "continuation");
        t9.m.e(executor, "executor");
        return continueWithTask(new Continuation() { // from class: com.facebook.bolts.b
            @Override // com.facebook.bolts.Continuation
            public final Object then(Task task) {
                return Task.m79onSuccess$lambda13(cancellationToken, continuation, task);
            }
        }, executor);
    }

    public final <TContinuationResult> Task<TContinuationResult> onSuccessTask(final Continuation<TResult, Task<TContinuationResult>> continuation, Executor executor, final CancellationToken cancellationToken) {
        t9.m.e(continuation, "continuation");
        t9.m.e(executor, "executor");
        return continueWithTask(new Continuation() { // from class: com.facebook.bolts.c
            @Override // com.facebook.bolts.Continuation
            public final Object then(Task task) {
                return Task.m80onSuccessTask$lambda14(cancellationToken, continuation, task);
            }
        }, executor);
    }

    public final Task<Void> continueWhile(final Callable<Boolean> callable, final Continuation<Void, Task<Void>> continuation, final Executor executor, final CancellationToken cancellationToken) {
        t9.m.e(callable, "predicate");
        t9.m.e(continuation, "continuation");
        t9.m.e(executor, "executor");
        return makeVoid().continueWithTask((Continuation<Void, Task<TContinuationResult>>) new Continuation<Void, Task<Void>>() { // from class: com.facebook.bolts.Task$continueWhile$predicateContinuation$1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.facebook.bolts.Continuation
            public Task<Void> then(Task<Void> task) throws Exception {
                t9.m.e(task, "task");
                CancellationToken cancellationToken2 = cancellationToken;
                if (cancellationToken2 != null && cancellationToken2.isCancellationRequested()) {
                    return Task.Companion.cancelled();
                }
                Boolean boolCall = callable.call();
                t9.m.d(boolCall, "predicate.call()");
                return boolCall.booleanValue() ? Task.Companion.forResult(null).onSuccessTask(continuation, executor).onSuccessTask(this, executor) : Task.Companion.forResult(null);
            }
        }, executor);
    }

    public final <TContinuationResult> Task<TContinuationResult> onSuccess(Continuation<TResult, TContinuationResult> continuation) {
        t9.m.e(continuation, "continuation");
        return onSuccess(continuation, IMMEDIATE_EXECUTOR, null);
    }

    public final <TContinuationResult> Task<TContinuationResult> onSuccessTask(Continuation<TResult, Task<TContinuationResult>> continuation) {
        t9.m.e(continuation, "continuation");
        return onSuccessTask(continuation, IMMEDIATE_EXECUTOR);
    }

    private Task(TResult tresult) {
        ReentrantLock reentrantLock = new ReentrantLock();
        this.lock = reentrantLock;
        this.condition = reentrantLock.newCondition();
        this.continuations = new ArrayList();
        trySetResult(tresult);
    }

    public final <TContinuationResult> Task<TContinuationResult> onSuccess(Continuation<TResult, TContinuationResult> continuation, CancellationToken cancellationToken) {
        t9.m.e(continuation, "continuation");
        return onSuccess(continuation, IMMEDIATE_EXECUTOR, cancellationToken);
    }

    public final <TContinuationResult> Task<TContinuationResult> onSuccessTask(Continuation<TResult, Task<TContinuationResult>> continuation, CancellationToken cancellationToken) {
        t9.m.e(continuation, "continuation");
        return onSuccessTask(continuation, IMMEDIATE_EXECUTOR, cancellationToken);
    }

    public final boolean waitForCompletion(long j10, TimeUnit timeUnit) throws InterruptedException {
        t9.m.e(timeUnit, "timeUnit");
        ReentrantLock reentrantLock = this.lock;
        reentrantLock.lock();
        try {
            if (!isCompleted()) {
                this.condition.await(j10, timeUnit);
            }
            return isCompleted();
        } finally {
            reentrantLock.unlock();
        }
    }

    private Task(boolean z10) {
        ReentrantLock reentrantLock = new ReentrantLock();
        this.lock = reentrantLock;
        this.condition = reentrantLock.newCondition();
        this.continuations = new ArrayList();
        if (z10) {
            trySetCancelled();
        } else {
            trySetResult(null);
        }
    }

    public final <TContinuationResult> Task<TContinuationResult> continueWith(Continuation<TResult, TContinuationResult> continuation) {
        t9.m.e(continuation, "continuation");
        return continueWith(continuation, IMMEDIATE_EXECUTOR, null);
    }

    public final <TContinuationResult> Task<TContinuationResult> continueWithTask(Continuation<TResult, Task<TContinuationResult>> continuation) {
        t9.m.e(continuation, "continuation");
        return continueWithTask(continuation, IMMEDIATE_EXECUTOR, null);
    }

    public final <TContinuationResult> Task<TContinuationResult> continueWith(Continuation<TResult, TContinuationResult> continuation, CancellationToken cancellationToken) {
        t9.m.e(continuation, "continuation");
        return continueWith(continuation, IMMEDIATE_EXECUTOR, cancellationToken);
    }

    public final <TContinuationResult> Task<TContinuationResult> continueWithTask(Continuation<TResult, Task<TContinuationResult>> continuation, CancellationToken cancellationToken) {
        t9.m.e(continuation, "continuation");
        return continueWithTask(continuation, IMMEDIATE_EXECUTOR, cancellationToken);
    }
}
