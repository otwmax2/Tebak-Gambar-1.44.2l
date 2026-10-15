package com.facebook.internal;

import com.facebook.FacebookSdk;
import java.util.concurrent.Callable;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.FutureTask;

/* JADX INFO: compiled from: LockOnGetVariable.kt */
/* JADX INFO: loaded from: classes.dex */
public final class LockOnGetVariable<T> {
    private CountDownLatch initLatch;
    private T storedValue;

    public LockOnGetVariable(T t10) {
        this.storedValue = t10;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: _init_$lambda-0, reason: not valid java name */
    public static final Void m113_init_$lambda0(LockOnGetVariable lockOnGetVariable, Callable callable) {
        t9.m.e(lockOnGetVariable, "this$0");
        t9.m.e(callable, "$callable");
        try {
            lockOnGetVariable.storedValue = (T) callable.call();
        } finally {
            CountDownLatch countDownLatch = lockOnGetVariable.initLatch;
            if (countDownLatch != null) {
                countDownLatch.countDown();
            }
        }
    }

    private final void waitOnInit() {
        CountDownLatch countDownLatch = this.initLatch;
        if (countDownLatch == null) {
            return;
        }
        try {
            countDownLatch.await();
        } catch (InterruptedException unused) {
        }
    }

    public final T getValue() {
        waitOnInit();
        return this.storedValue;
    }

    public LockOnGetVariable(final Callable<T> callable) {
        t9.m.e(callable, "callable");
        this.initLatch = new CountDownLatch(1);
        FacebookSdk facebookSdk = FacebookSdk.INSTANCE;
        FacebookSdk.getExecutor().execute(new FutureTask(new Callable() { // from class: com.facebook.internal.o
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return LockOnGetVariable.m113_init_$lambda0(this.f5405a, callable);
            }
        }));
    }
}
