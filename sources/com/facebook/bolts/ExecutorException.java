package com.facebook.bolts;

/* JADX INFO: compiled from: ExecutorException.kt */
/* JADX INFO: loaded from: classes.dex */
public final class ExecutorException extends RuntimeException {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ExecutorException(Exception exc) {
        super("An exception was thrown by an Executor", exc);
        t9.m.e(exc, "e");
    }
}
