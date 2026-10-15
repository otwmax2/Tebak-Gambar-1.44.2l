package com.facebook.bolts;

import com.facebook.bolts.Task;

/* JADX INFO: compiled from: UnobservedErrorNotifier.kt */
/* JADX INFO: loaded from: classes.dex */
public final class UnobservedErrorNotifier {
    private Task<?> task;

    public UnobservedErrorNotifier(Task<?> task) {
        this.task = task;
    }

    public final void finalize() {
        Task.UnobservedExceptionHandler unobservedExceptionHandler;
        Task<?> task = this.task;
        if (task == null || (unobservedExceptionHandler = Task.Companion.getUnobservedExceptionHandler()) == null) {
            return;
        }
        unobservedExceptionHandler.unobservedException(task, new UnobservedTaskException(task.getError()));
    }

    public final void setObserved() {
        this.task = null;
    }
}
