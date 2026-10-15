package com.google.android.gms.tasks;

import com.facebook.login.LoginLogger;

/* JADX INFO: compiled from: com.google.android.gms:play-services-tasks@@18.0.2 */
/* JADX INFO: loaded from: classes2.dex */
public final class DuplicateTaskCompletionException extends IllegalStateException {
    private DuplicateTaskCompletionException(String str, Throwable th) {
        super(str, th);
    }

    public static IllegalStateException a(Task<?> task) {
        if (!task.s()) {
            return new IllegalStateException("DuplicateTaskCompletionException can only be created from completed Task.");
        }
        Exception excO = task.o();
        return new DuplicateTaskCompletionException("Complete with: ".concat(excO != null ? LoginLogger.EVENT_EXTRAS_FAILURE : task.t() ? "result ".concat(String.valueOf(task.p())) : task.r() ? "cancellation" : "unknown issue"), excO);
    }
}
