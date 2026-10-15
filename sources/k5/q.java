package k5;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

/* JADX INFO: compiled from: CycleDetector.java */
/* JADX INFO: loaded from: classes2.dex */
class q {

    /* JADX INFO: compiled from: CycleDetector.java */
    private static class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final k5.c<?> f31573a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final Set<b> f31574b = new HashSet();

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final Set<b> f31575c = new HashSet();

        b(k5.c<?> cVar) {
            this.f31573a = cVar;
        }

        void a(b bVar) {
            this.f31574b.add(bVar);
        }

        void b(b bVar) {
            this.f31575c.add(bVar);
        }

        k5.c<?> c() {
            return this.f31573a;
        }

        Set<b> d() {
            return this.f31574b;
        }

        boolean e() {
            return this.f31574b.isEmpty();
        }

        boolean f() {
            return this.f31575c.isEmpty();
        }

        void g(b bVar) {
            this.f31575c.remove(bVar);
        }
    }

    /* JADX INFO: compiled from: CycleDetector.java */
    private static class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final f0<?> f31576a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final boolean f31577b;

        public boolean equals(Object obj) {
            if (!(obj instanceof c)) {
                return false;
            }
            c cVar = (c) obj;
            return cVar.f31576a.equals(this.f31576a) && cVar.f31577b == this.f31577b;
        }

        public int hashCode() {
            return ((this.f31576a.hashCode() ^ 1000003) * 1000003) ^ Boolean.valueOf(this.f31577b).hashCode();
        }

        private c(f0<?> f0Var, boolean z10) {
            this.f31576a = f0Var;
            this.f31577b = z10;
        }
    }

    static void a(List<k5.c<?>> list) {
        Set<b> setC = c(list);
        Set<b> setB = b(setC);
        int i10 = 0;
        while (!setB.isEmpty()) {
            b next = setB.iterator().next();
            setB.remove(next);
            i10++;
            for (b bVar : next.d()) {
                bVar.g(next);
                if (bVar.f()) {
                    setB.add(bVar);
                }
            }
        }
        if (i10 == list.size()) {
            return;
        }
        ArrayList arrayList = new ArrayList();
        for (b bVar2 : setC) {
            if (!bVar2.f() && !bVar2.e()) {
                arrayList.add(bVar2.c());
            }
        }
        throw new s(arrayList);
    }

    private static Set<b> b(Set<b> set) {
        HashSet hashSet = new HashSet();
        for (b bVar : set) {
            if (bVar.f()) {
                hashSet.add(bVar);
            }
        }
        return hashSet;
    }

    private static Set<b> c(List<k5.c<?>> list) {
        Set<b> set;
        HashMap map = new HashMap(list.size());
        Iterator<k5.c<?>> it = list.iterator();
        while (true) {
            if (!it.hasNext()) {
                Iterator it2 = map.values().iterator();
                while (it2.hasNext()) {
                    for (b bVar : (Set) it2.next()) {
                        for (r rVar : bVar.c().g()) {
                            if (rVar.e() && (set = (Set) map.get(new c(rVar.c(), rVar.g()))) != null) {
                                for (b bVar2 : set) {
                                    bVar.a(bVar2);
                                    bVar2.b(bVar);
                                }
                            }
                        }
                    }
                }
                HashSet hashSet = new HashSet();
                Iterator it3 = map.values().iterator();
                while (it3.hasNext()) {
                    hashSet.addAll((Set) it3.next());
                }
                return hashSet;
            }
            k5.c<?> next = it.next();
            b bVar3 = new b(next);
            for (f0<? super Object> f0Var : next.j()) {
                c cVar = new c(f0Var, !next.p());
                if (!map.containsKey(cVar)) {
                    map.put(cVar, new HashSet());
                }
                Set set2 = (Set) map.get(cVar);
                if (!set2.isEmpty() && !cVar.f31577b) {
                    throw new IllegalArgumentException(String.format("Multiple components provide %s.", f0Var));
                }
                set2.add(bVar3);
            }
        }
    }
}
