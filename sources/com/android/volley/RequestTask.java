package com.android.volley;

/* JADX INFO: loaded from: classes.dex */
public abstract class RequestTask<T> implements Runnable {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    final Request<T> f5128o;

    public RequestTask(Request<T> request) {
        this.f5128o = request;
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    public int a(RequestTask<?> requestTask) {
        return this.f5128o.compareTo(requestTask.f5128o);
    }
}
