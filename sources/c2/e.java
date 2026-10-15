package c2;

import c2.h;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: compiled from: GroupedLinkedMap.java */
/* JADX INFO: loaded from: classes.dex */
class e<K extends h, V> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final a<K, V> f4819a = new a<>();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Map<K, a<K, V>> f4820b = new HashMap();

    /* JADX INFO: compiled from: GroupedLinkedMap.java */
    private static class a<K, V> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final K f4821a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private List<V> f4822b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        a<K, V> f4823c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        a<K, V> f4824d;

        public a() {
            this(null);
        }

        public void b(V v10) {
            if (this.f4822b == null) {
                this.f4822b = new ArrayList();
            }
            this.f4822b.add(v10);
        }

        public V c() {
            int iD = d();
            if (iD > 0) {
                return this.f4822b.remove(iD - 1);
            }
            return null;
        }

        public int d() {
            List<V> list = this.f4822b;
            if (list != null) {
                return list.size();
            }
            return 0;
        }

        public a(K k10) {
            this.f4824d = this;
            this.f4823c = this;
            this.f4821a = k10;
        }
    }

    e() {
    }

    private void b(a<K, V> aVar) {
        e(aVar);
        a<K, V> aVar2 = this.f4819a;
        aVar.f4824d = aVar2;
        aVar.f4823c = aVar2.f4823c;
        g(aVar);
    }

    private void c(a<K, V> aVar) {
        e(aVar);
        a<K, V> aVar2 = this.f4819a;
        aVar.f4824d = aVar2.f4824d;
        aVar.f4823c = aVar2;
        g(aVar);
    }

    private static <K, V> void e(a<K, V> aVar) {
        a<K, V> aVar2 = aVar.f4824d;
        aVar2.f4823c = aVar.f4823c;
        aVar.f4823c.f4824d = aVar2;
    }

    private static <K, V> void g(a<K, V> aVar) {
        aVar.f4823c.f4824d = aVar;
        aVar.f4824d.f4823c = aVar;
    }

    public V a(K k10) {
        a<K, V> aVar = this.f4820b.get(k10);
        if (aVar == null) {
            aVar = new a<>(k10);
            this.f4820b.put(k10, aVar);
        } else {
            k10.a();
        }
        b(aVar);
        return aVar.c();
    }

    public void d(K k10, V v10) {
        a<K, V> aVar = this.f4820b.get(k10);
        if (aVar == null) {
            aVar = new a<>(k10);
            c(aVar);
            this.f4820b.put(k10, aVar);
        } else {
            k10.a();
        }
        aVar.b(v10);
    }

    public V f() {
        for (a aVar = this.f4819a.f4824d; !aVar.equals(this.f4819a); aVar = aVar.f4824d) {
            V v10 = (V) aVar.c();
            if (v10 != null) {
                return v10;
            }
            e(aVar);
            this.f4820b.remove(aVar.f4821a);
            ((h) aVar.f4821a).a();
        }
        return null;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("GroupedLinkedMap( ");
        boolean z10 = false;
        for (a aVar = this.f4819a.f4823c; !aVar.equals(this.f4819a); aVar = aVar.f4823c) {
            z10 = true;
            sb.append('{');
            sb.append(aVar.f4821a);
            sb.append(':');
            sb.append(aVar.d());
            sb.append("}, ");
        }
        if (z10) {
            sb.delete(sb.length() - 2, sb.length());
        }
        sb.append(" )");
        return sb.toString();
    }
}
