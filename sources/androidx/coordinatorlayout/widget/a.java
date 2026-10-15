package androidx.coordinatorlayout.widget;

import androidx.core.util.e;
import androidx.core.util.f;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import o.g;

/* JADX INFO: compiled from: DirectedAcyclicGraph.java */
/* JADX INFO: loaded from: classes.dex */
public final class a<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final e<ArrayList<T>> f1958a = new f(10);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final g<T, ArrayList<T>> f1959b = new g<>();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final ArrayList<T> f1960c = new ArrayList<>();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final HashSet<T> f1961d = new HashSet<>();

    private void e(T t10, ArrayList<T> arrayList, HashSet<T> hashSet) {
        if (arrayList.contains(t10)) {
            return;
        }
        if (hashSet.contains(t10)) {
            throw new RuntimeException("This graph contains cyclic dependencies");
        }
        hashSet.add(t10);
        ArrayList<T> arrayList2 = this.f1959b.get(t10);
        if (arrayList2 != null) {
            int size = arrayList2.size();
            for (int i10 = 0; i10 < size; i10++) {
                e(arrayList2.get(i10), arrayList, hashSet);
            }
        }
        hashSet.remove(t10);
        arrayList.add(t10);
    }

    private ArrayList<T> f() {
        ArrayList<T> arrayListB = this.f1958a.b();
        return arrayListB == null ? new ArrayList<>() : arrayListB;
    }

    private void k(ArrayList<T> arrayList) {
        arrayList.clear();
        this.f1958a.a(arrayList);
    }

    public void a(T t10, T t11) {
        if (!this.f1959b.containsKey(t10) || !this.f1959b.containsKey(t11)) {
            throw new IllegalArgumentException("All nodes must be present in the graph before being added as an edge");
        }
        ArrayList<T> arrayListF = this.f1959b.get(t10);
        if (arrayListF == null) {
            arrayListF = f();
            this.f1959b.put(t10, arrayListF);
        }
        arrayListF.add(t11);
    }

    public void b(T t10) {
        if (this.f1959b.containsKey(t10)) {
            return;
        }
        this.f1959b.put(t10, null);
    }

    public void c() {
        int size = this.f1959b.size();
        for (int i10 = 0; i10 < size; i10++) {
            ArrayList<T> arrayListO = this.f1959b.o(i10);
            if (arrayListO != null) {
                k(arrayListO);
            }
        }
        this.f1959b.clear();
    }

    public boolean d(T t10) {
        return this.f1959b.containsKey(t10);
    }

    public List g(T t10) {
        return this.f1959b.get(t10);
    }

    public List<T> h(T t10) {
        int size = this.f1959b.size();
        ArrayList arrayList = null;
        for (int i10 = 0; i10 < size; i10++) {
            ArrayList<T> arrayListO = this.f1959b.o(i10);
            if (arrayListO != null && arrayListO.contains(t10)) {
                if (arrayList == null) {
                    arrayList = new ArrayList();
                }
                arrayList.add(this.f1959b.k(i10));
            }
        }
        return arrayList;
    }

    public ArrayList<T> i() {
        this.f1960c.clear();
        this.f1961d.clear();
        int size = this.f1959b.size();
        for (int i10 = 0; i10 < size; i10++) {
            e(this.f1959b.k(i10), this.f1960c, this.f1961d);
        }
        return this.f1960c;
    }

    public boolean j(T t10) {
        int size = this.f1959b.size();
        for (int i10 = 0; i10 < size; i10++) {
            ArrayList<T> arrayListO = this.f1959b.o(i10);
            if (arrayListO != null && arrayListO.contains(t10)) {
                return true;
            }
        }
        return false;
    }
}
