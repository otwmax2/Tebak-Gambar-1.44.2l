package k5;

import android.util.Log;
import com.google.firebase.components.ComponentRegistrar;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicReference;
import k5.o;

/* JADX INFO: compiled from: ComponentRuntime.java */
/* JADX INFO: loaded from: classes2.dex */
public class o implements e, c6.a {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static final k6.b<Set<Object>> f31559i = new k6.b() { // from class: k5.n
        @Override // k6.b
        public final Object get() {
            return Collections.emptySet();
        }
    };

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Map<c<?>, k6.b<?>> f31560a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Map<f0<?>, k6.b<?>> f31561b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Map<f0<?>, y<?>> f31562c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final List<k6.b<ComponentRegistrar>> f31563d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private Set<String> f31564e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final v f31565f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final AtomicReference<Boolean> f31566g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final j f31567h;

    /* JADX INFO: compiled from: ComponentRuntime.java */
    public static final class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Executor f31568a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final List<k6.b<ComponentRegistrar>> f31569b = new ArrayList();

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final List<c<?>> f31570c = new ArrayList();

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private j f31571d = j.f31551a;

        b(Executor executor) {
            this.f31568a = executor;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ ComponentRegistrar f(ComponentRegistrar componentRegistrar) {
            return componentRegistrar;
        }

        public b b(c<?> cVar) {
            this.f31570c.add(cVar);
            return this;
        }

        public b c(final ComponentRegistrar componentRegistrar) {
            this.f31569b.add(new k6.b() { // from class: k5.p
                @Override // k6.b
                public final Object get() {
                    return o.b.f(componentRegistrar);
                }
            });
            return this;
        }

        public b d(Collection<k6.b<ComponentRegistrar>> collection) {
            this.f31569b.addAll(collection);
            return this;
        }

        public o e() {
            return new o(this.f31568a, this.f31569b, this.f31570c, this.f31571d);
        }

        public b g(j jVar) {
            this.f31571d = jVar;
            return this;
        }
    }

    public static b m(Executor executor) {
        return new b(executor);
    }

    private void n(List<c<?>> list) {
        ArrayList arrayList = new ArrayList();
        synchronized (this) {
            Iterator<k6.b<ComponentRegistrar>> it = this.f31563d.iterator();
            while (it.hasNext()) {
                try {
                    ComponentRegistrar componentRegistrar = it.next().get();
                    if (componentRegistrar != null) {
                        list.addAll(this.f31567h.a(componentRegistrar));
                        it.remove();
                    }
                } catch (w e10) {
                    it.remove();
                    Log.w("ComponentDiscovery", "Invalid component registrar.", e10);
                }
            }
            Iterator<c<?>> it2 = list.iterator();
            while (it2.hasNext()) {
                Object[] array = it2.next().j().toArray();
                int length = array.length;
                int i10 = 0;
                while (true) {
                    if (i10 < length) {
                        Object obj = array[i10];
                        if (obj.toString().contains("kotlinx.coroutines.CoroutineDispatcher")) {
                            if (this.f31564e.contains(obj.toString())) {
                                it2.remove();
                                break;
                            }
                            this.f31564e.add(obj.toString());
                        }
                        i10++;
                    }
                }
            }
            if (this.f31560a.isEmpty()) {
                q.a(list);
            } else {
                ArrayList arrayList2 = new ArrayList(this.f31560a.keySet());
                arrayList2.addAll(list);
                q.a(arrayList2);
            }
            for (final c<?> cVar : list) {
                this.f31560a.put(cVar, new x(new k6.b() { // from class: k5.m
                    @Override // k6.b
                    public final Object get() {
                        return this.f31556a.r(cVar);
                    }
                }));
            }
            arrayList.addAll(w(list));
            arrayList.addAll(x());
            v();
        }
        Iterator it3 = arrayList.iterator();
        while (it3.hasNext()) {
            ((Runnable) it3.next()).run();
        }
        u();
    }

    private void o(Map<c<?>, k6.b<?>> map, boolean z10) {
        for (Map.Entry<c<?>, k6.b<?>> entry : map.entrySet()) {
            c<?> key = entry.getKey();
            k6.b<?> value = entry.getValue();
            if (key.n() || (key.o() && z10)) {
                value.get();
            }
        }
        this.f31565f.d();
    }

    private static <T> List<T> q(Iterable<T> iterable) {
        ArrayList arrayList = new ArrayList();
        Iterator<T> it = iterable.iterator();
        while (it.hasNext()) {
            arrayList.add(it.next());
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object r(c cVar) {
        return cVar.h().a(new g0(cVar, this));
    }

    private void u() {
        Boolean bool = this.f31566g.get();
        if (bool != null) {
            o(this.f31560a, bool.booleanValue());
        }
    }

    private void v() {
        for (c<?> cVar : this.f31560a.keySet()) {
            for (r rVar : cVar.g()) {
                if (rVar.g() && !this.f31562c.containsKey(rVar.c())) {
                    this.f31562c.put(rVar.c(), y.b(Collections.emptySet()));
                } else if (this.f31561b.containsKey(rVar.c())) {
                    continue;
                } else {
                    if (rVar.f()) {
                        throw new z(String.format("Unsatisfied dependency for component %s: %s", cVar, rVar.c()));
                    }
                    if (!rVar.g()) {
                        this.f31561b.put(rVar.c(), d0.e());
                    }
                }
            }
        }
    }

    private List<Runnable> w(List<c<?>> list) {
        ArrayList arrayList = new ArrayList();
        for (c<?> cVar : list) {
            if (cVar.p()) {
                final k6.b<?> bVar = this.f31560a.get(cVar);
                for (f0<? super Object> f0Var : cVar.j()) {
                    if (this.f31561b.containsKey(f0Var)) {
                        final d0 d0Var = (d0) this.f31561b.get(f0Var);
                        arrayList.add(new Runnable() { // from class: k5.l
                            @Override // java.lang.Runnable
                            public final void run() {
                                d0Var.j(bVar);
                            }
                        });
                    } else {
                        this.f31561b.put(f0Var, bVar);
                    }
                }
            }
        }
        return arrayList;
    }

    private List<Runnable> x() {
        ArrayList arrayList = new ArrayList();
        HashMap map = new HashMap();
        for (Map.Entry<c<?>, k6.b<?>> entry : this.f31560a.entrySet()) {
            c<?> key = entry.getKey();
            if (!key.p()) {
                k6.b<?> value = entry.getValue();
                for (f0<? super Object> f0Var : key.j()) {
                    if (!map.containsKey(f0Var)) {
                        map.put(f0Var, new HashSet());
                    }
                    ((Set) map.get(f0Var)).add(value);
                }
            }
        }
        for (Map.Entry entry2 : map.entrySet()) {
            if (this.f31562c.containsKey(entry2.getKey())) {
                final y<?> yVar = this.f31562c.get(entry2.getKey());
                for (final k6.b bVar : (Set) entry2.getValue()) {
                    arrayList.add(new Runnable() { // from class: k5.k
                        @Override // java.lang.Runnable
                        public final void run() {
                            yVar.a(bVar);
                        }
                    });
                }
            } else {
                this.f31562c.put((f0) entry2.getKey(), y.b((Collection) entry2.getValue()));
            }
        }
        return arrayList;
    }

    @Override // k5.e
    public /* synthetic */ Object a(Class cls) {
        return d.a(this, cls);
    }

    @Override // k5.e
    public synchronized <T> k6.b<T> b(f0<T> f0Var) {
        e0.c(f0Var, "Null interface requested.");
        return (k6.b) this.f31561b.get(f0Var);
    }

    @Override // k5.e
    public /* synthetic */ k6.b c(Class cls) {
        return d.d(this, cls);
    }

    @Override // k5.e
    public /* synthetic */ Set d(f0 f0Var) {
        return d.f(this, f0Var);
    }

    @Override // k5.e
    public /* synthetic */ Object e(f0 f0Var) {
        return d.b(this, f0Var);
    }

    @Override // k5.e
    public <T> k6.a<T> f(f0<T> f0Var) {
        k6.b<T> bVarB = b(f0Var);
        return bVarB == null ? d0.e() : bVarB instanceof d0 ? (d0) bVarB : d0.i(bVarB);
    }

    @Override // k5.e
    public /* synthetic */ Set g(Class cls) {
        return d.e(this, cls);
    }

    @Override // k5.e
    public synchronized <T> k6.b<Set<T>> h(f0<T> f0Var) {
        y<?> yVar = this.f31562c.get(f0Var);
        if (yVar != null) {
            return yVar;
        }
        return (k6.b<Set<T>>) f31559i;
    }

    @Override // k5.e
    public /* synthetic */ k6.a i(Class cls) {
        return d.c(this, cls);
    }

    public void p(boolean z10) {
        HashMap map;
        if (this.f31566g.compareAndSet(null, Boolean.valueOf(z10))) {
            synchronized (this) {
                map = new HashMap(this.f31560a);
            }
            o(map, z10);
        }
    }

    private o(Executor executor, Iterable<k6.b<ComponentRegistrar>> iterable, Collection<c<?>> collection, j jVar) {
        this.f31560a = new HashMap();
        this.f31561b = new HashMap();
        this.f31562c = new HashMap();
        this.f31564e = new HashSet();
        this.f31566g = new AtomicReference<>();
        v vVar = new v(executor);
        this.f31565f = vVar;
        this.f31567h = jVar;
        ArrayList arrayList = new ArrayList();
        arrayList.add(c.s(vVar, v.class, h6.d.class, h6.c.class));
        arrayList.add(c.s(this, c6.a.class, new Class[0]));
        for (c<?> cVar : collection) {
            if (cVar != null) {
                arrayList.add(cVar);
            }
        }
        this.f31563d = q(iterable);
        n(arrayList);
    }
}
