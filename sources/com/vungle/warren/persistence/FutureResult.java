package com.vungle.warren.persistence;

import android.util.Log;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

/* JADX INFO: loaded from: classes2.dex */
public class FutureResult<T> implements Future<T> {
    public static final String TAG = FutureResult.class.getSimpleName();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final Future<T> f28255o;

    public FutureResult(Future<T> future) {
        this.f28255o = future;
    }

    @Override // java.util.concurrent.Future
    public boolean cancel(boolean z10) {
        return this.f28255o.cancel(z10);
    }

    @Override // java.util.concurrent.Future
    public T get() {
        try {
            return this.f28255o.get();
        } catch (InterruptedException unused) {
            Log.w(TAG, "future.get() Interrupted on Thread " + Thread.currentThread().getName());
            Thread.currentThread().interrupt();
            return null;
        } catch (ExecutionException e10) {
            Log.e(TAG, "error on execution", e10);
            return null;
        }
    }

    @Override // java.util.concurrent.Future
    public boolean isCancelled() {
        return this.f28255o.isCancelled();
    }

    @Override // java.util.concurrent.Future
    public boolean isDone() {
        return this.f28255o.isDone();
    }

    @Override // java.util.concurrent.Future
    public T get(long j10, TimeUnit timeUnit) {
        try {
            return this.f28255o.get(j10, timeUnit);
        } catch (InterruptedException unused) {
            Log.w(TAG, "future.get() Interrupted on Thread " + Thread.currentThread().getName());
            Thread.currentThread().interrupt();
            return null;
        } catch (ExecutionException e10) {
            Log.e(TAG, "error on execution", e10);
            return null;
        } catch (TimeoutException unused2) {
            Log.w(TAG, "future.get() Timeout on Thread " + Thread.currentThread().getName());
            return null;
        }
    }
}
