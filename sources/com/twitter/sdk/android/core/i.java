package com.twitter.sdk.android.core;

import com.twitter.sdk.android.core.m;
import java.util.Collections;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: compiled from: PersistedSessionManager.java */
/* JADX INFO: loaded from: classes2.dex */
public class i<T extends m> implements n<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final e9.a f27429a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final e9.d<T> f27430b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final ConcurrentHashMap<Long, T> f27431c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final ConcurrentHashMap<Long, e9.c<T>> f27432d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final e9.c<T> f27433e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final AtomicReference<T> f27434f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final String f27435g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private volatile boolean f27436h;

    public i(e9.a aVar, e9.d<T> dVar, String str, String str2) {
        this(aVar, dVar, new ConcurrentHashMap(1), new ConcurrentHashMap(1), new e9.c(aVar, dVar, str), str2);
    }

    private void f(long j10, T t10, boolean z10) {
        this.f27431c.put(Long.valueOf(j10), t10);
        e9.c<T> cVar = this.f27432d.get(Long.valueOf(j10));
        if (cVar == null) {
            cVar = new e9.c<>(this.f27429a, this.f27430b, e(j10));
            this.f27432d.putIfAbsent(Long.valueOf(j10), cVar);
        }
        cVar.c(t10);
        T t11 = this.f27434f.get();
        if (t11 == null || t11.b() == j10 || z10) {
            synchronized (this) {
                this.f27434f.compareAndSet(t11, t10);
                this.f27433e.c(t10);
            }
        }
    }

    private void h() {
        T tB = this.f27433e.b();
        if (tB != null) {
            f(tB.b(), tB, false);
        }
    }

    private synchronized void i() {
        if (this.f27436h) {
            h();
            k();
            this.f27436h = false;
        }
    }

    private void k() {
        T tA;
        for (Map.Entry<String, ?> entry : this.f27429a.get().getAll().entrySet()) {
            if (g(entry.getKey()) && (tA = this.f27430b.a((String) entry.getValue())) != null) {
                f(tA.b(), tA, false);
            }
        }
    }

    @Override // com.twitter.sdk.android.core.n
    public Map<Long, T> a() {
        j();
        return Collections.unmodifiableMap(this.f27431c);
    }

    @Override // com.twitter.sdk.android.core.n
    public void b(long j10) {
        j();
        if (this.f27434f.get() != null && this.f27434f.get().b() == j10) {
            synchronized (this) {
                this.f27434f.set(null);
                this.f27433e.a();
            }
        }
        this.f27431c.remove(Long.valueOf(j10));
        e9.c<T> cVarRemove = this.f27432d.remove(Long.valueOf(j10));
        if (cVarRemove != null) {
            cVarRemove.a();
        }
    }

    @Override // com.twitter.sdk.android.core.n
    public T c() {
        j();
        return this.f27434f.get();
    }

    @Override // com.twitter.sdk.android.core.n
    public void d(T t10) {
        if (t10 == null) {
            throw new IllegalArgumentException("Session must not be null!");
        }
        j();
        f(t10.b(), t10, true);
    }

    String e(long j10) {
        return this.f27435g + "_" + j10;
    }

    boolean g(String str) {
        return str.startsWith(this.f27435g);
    }

    void j() {
        if (this.f27436h) {
            i();
        }
    }

    i(e9.a aVar, e9.d<T> dVar, ConcurrentHashMap<Long, T> concurrentHashMap, ConcurrentHashMap<Long, e9.c<T>> concurrentHashMap2, e9.c<T> cVar, String str) {
        this.f27436h = true;
        this.f27429a = aVar;
        this.f27430b = dVar;
        this.f27431c = concurrentHashMap;
        this.f27432d = concurrentHashMap2;
        this.f27433e = cVar;
        this.f27434f = new AtomicReference<>();
        this.f27435g = str;
    }
}
