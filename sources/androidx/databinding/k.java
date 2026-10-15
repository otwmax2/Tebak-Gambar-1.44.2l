package androidx.databinding;

import androidx.databinding.o;
import java.util.ArrayList;
import java.util.Collection;

/* JADX INFO: compiled from: ObservableArrayList.java */
/* JADX INFO: loaded from: classes.dex */
public class k<T> extends ArrayList<T> implements o<T> {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private transient i f2637o = new i();

    private void g(int i10, int i11) {
        i iVar = this.f2637o;
        if (iVar != null) {
            iVar.q(this, i10, i11);
        }
    }

    private void i(int i10, int i11) {
        i iVar = this.f2637o;
        if (iVar != null) {
            iVar.r(this, i10, i11);
        }
    }

    @Override // androidx.databinding.o
    public void K2(o.a aVar) {
        if (this.f2637o == null) {
            this.f2637o = new i();
        }
        this.f2637o.a(aVar);
    }

    @Override // java.util.ArrayList, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean add(T t10) {
        super.add(t10);
        g(size() - 1, 1);
        return true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.ArrayList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean addAll(Collection<? extends T> collection) {
        int size = size();
        boolean zAddAll = super.addAll(collection);
        if (zAddAll) {
            g(size, size() - size);
        }
        return zAddAll;
    }

    @Override // java.util.ArrayList, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public void clear() {
        int size = size();
        super.clear();
        if (size != 0) {
            i(0, size);
        }
    }

    @Override // androidx.databinding.o
    public void e0(o.a aVar) {
        i iVar = this.f2637o;
        if (iVar != null) {
            iVar.k(aVar);
        }
    }

    @Override // java.util.ArrayList, java.util.AbstractList, java.util.List
    public T remove(int i10) {
        T t10 = (T) super.remove(i10);
        i(i10, 1);
        return t10;
    }

    @Override // java.util.ArrayList, java.util.AbstractList
    protected void removeRange(int i10, int i11) {
        super.removeRange(i10, i11);
        i(i10, i11 - i10);
    }

    @Override // java.util.ArrayList, java.util.AbstractList, java.util.List
    public T set(int i10, T t10) {
        T t11 = (T) super.set(i10, t10);
        i iVar = this.f2637o;
        if (iVar != null) {
            iVar.p(this, i10, 1);
        }
        return t11;
    }

    @Override // java.util.ArrayList, java.util.AbstractList, java.util.List
    public void add(int i10, T t10) {
        super.add(i10, t10);
        g(i10, 1);
    }

    @Override // java.util.ArrayList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean remove(Object obj) {
        int iIndexOf = indexOf(obj);
        if (iIndexOf < 0) {
            return false;
        }
        remove(iIndexOf);
        return true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.ArrayList, java.util.AbstractList, java.util.List
    public boolean addAll(int i10, Collection<? extends T> collection) {
        boolean zAddAll = super.addAll(i10, collection);
        if (zAddAll) {
            g(i10, collection.size());
        }
        return zAddAll;
    }
}
