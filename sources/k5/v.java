package k5;

import java.util.ArrayDeque;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Queue;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.Executor;

/* JADX INFO: compiled from: EventBus.java */
/* JADX INFO: loaded from: classes2.dex */
class v implements h6.d, h6.c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Map<Class<?>, ConcurrentHashMap<h6.b<Object>, Executor>> f31584a = new HashMap();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Queue<h6.a<?>> f31585b = new ArrayDeque();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Executor f31586c;

    v(Executor executor) {
        this.f31586c = executor;
    }

    private synchronized Set<Map.Entry<h6.b<Object>, Executor>> e(h6.a<?> aVar) {
        ConcurrentHashMap<h6.b<Object>, Executor> concurrentHashMap;
        concurrentHashMap = this.f31584a.get(aVar.b());
        return concurrentHashMap == null ? Collections.emptySet() : concurrentHashMap.entrySet();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void f(Map.Entry entry, h6.a aVar) {
        ((h6.b) entry.getKey()).a(aVar);
    }

    @Override // h6.d
    public synchronized <T> void a(Class<T> cls, Executor executor, h6.b<? super T> bVar) {
        e0.b(cls);
        e0.b(bVar);
        e0.b(executor);
        if (!this.f31584a.containsKey(cls)) {
            this.f31584a.put(cls, new ConcurrentHashMap<>());
        }
        this.f31584a.get(cls).put(bVar, executor);
    }

    @Override // h6.d
    public <T> void b(Class<T> cls, h6.b<? super T> bVar) {
        a(cls, this.f31586c, bVar);
    }

    void d() {
        Queue<h6.a<?>> queue;
        synchronized (this) {
            queue = this.f31585b;
            if (queue != null) {
                this.f31585b = null;
            } else {
                queue = null;
            }
        }
        if (queue != null) {
            Iterator<h6.a<?>> it = queue.iterator();
            while (it.hasNext()) {
                g(it.next());
            }
        }
    }

    public void g(final h6.a<?> aVar) {
        e0.b(aVar);
        synchronized (this) {
            Queue<h6.a<?>> queue = this.f31585b;
            if (queue != null) {
                queue.add(aVar);
                return;
            }
            for (final Map.Entry<h6.b<Object>, Executor> entry : e(aVar)) {
                entry.getValue().execute(new Runnable() { // from class: k5.u
                    @Override // java.lang.Runnable
                    public final void run() {
                        v.f(entry, aVar);
                    }
                });
            }
        }
    }
}
