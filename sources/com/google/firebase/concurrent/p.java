package com.google.firebase.concurrent;

import android.annotation.SuppressLint;
import java.util.concurrent.Delayed;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;

/* JADX INFO: compiled from: DelegatingScheduledFuture.java */
/* JADX INFO: loaded from: classes2.dex */
@SuppressLint({"RestrictedApi"})
class p<V> extends androidx.concurrent.futures.a<V> implements ScheduledFuture<V> {

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private final ScheduledFuture<?> f26330v;

    /* JADX INFO: compiled from: DelegatingScheduledFuture.java */
    class a implements b<V> {
        a() {
        }

        @Override // com.google.firebase.concurrent.p.b
        public void a(Throwable th) {
            p.this.J(th);
        }

        @Override // com.google.firebase.concurrent.p.b
        public void set(V v10) {
            p.this.I(v10);
        }
    }

    /* JADX INFO: compiled from: DelegatingScheduledFuture.java */
    interface b<T> {
        void a(Throwable th);

        void set(T t10);
    }

    /* JADX INFO: compiled from: DelegatingScheduledFuture.java */
    interface c<T> {
        ScheduledFuture<?> a(b<T> bVar);
    }

    p(c<V> cVar) {
        this.f26330v = cVar.a(new a());
    }

    @Override // java.lang.Comparable
    /* JADX INFO: renamed from: O, reason: merged with bridge method [inline-methods] */
    public int compareTo(Delayed delayed) {
        return this.f26330v.compareTo(delayed);
    }

    @Override // androidx.concurrent.futures.a
    protected void g() {
        this.f26330v.cancel(L());
    }

    @Override // java.util.concurrent.Delayed
    public long getDelay(TimeUnit timeUnit) {
        return this.f26330v.getDelay(timeUnit);
    }
}
