package com.google.android.gms.tasks;

/* JADX INFO: compiled from: com.google.android.gms:play-services-tasks@@18.0.2 */
/* JADX INFO: loaded from: classes2.dex */
public class TaskCompletionSource<TResult> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final z f24950a = new z();

    public Task<TResult> a() {
        return this.f24950a;
    }

    public void b(Exception exc) {
        this.f24950a.w(exc);
    }

    public void c(TResult tresult) {
        this.f24950a.x(tresult);
    }

    public boolean d(Exception exc) {
        return this.f24950a.z(exc);
    }

    public boolean e(TResult tresult) {
        return this.f24950a.A(tresult);
    }
}
