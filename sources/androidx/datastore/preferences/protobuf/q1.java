package androidx.datastore.preferences.protobuf;

import java.util.AbstractList;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.RandomAccess;

/* JADX INFO: compiled from: UnmodifiableLazyStringList.java */
/* JADX INFO: loaded from: classes.dex */
public class q1 extends AbstractList<String> implements g0, RandomAccess {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final g0 f2828o;

    /* JADX INFO: compiled from: UnmodifiableLazyStringList.java */
    class a implements ListIterator<String> {

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        ListIterator<String> f2829o;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        final /* synthetic */ int f2830p;

        a(int i10) {
            this.f2830p = i10;
            this.f2829o = q1.this.f2828o.listIterator(i10);
        }

        @Override // java.util.ListIterator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public void add(String str) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.ListIterator, java.util.Iterator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public String next() {
            return this.f2829o.next();
        }

        @Override // java.util.ListIterator
        /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
        public String previous() {
            return this.f2829o.previous();
        }

        @Override // java.util.ListIterator
        /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
        public void set(String str) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.ListIterator, java.util.Iterator
        public boolean hasNext() {
            return this.f2829o.hasNext();
        }

        @Override // java.util.ListIterator
        public boolean hasPrevious() {
            return this.f2829o.hasPrevious();
        }

        @Override // java.util.ListIterator
        public int nextIndex() {
            return this.f2829o.nextIndex();
        }

        @Override // java.util.ListIterator
        public int previousIndex() {
            return this.f2829o.previousIndex();
        }

        @Override // java.util.ListIterator, java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException();
        }
    }

    /* JADX INFO: compiled from: UnmodifiableLazyStringList.java */
    class b implements Iterator<String> {

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        Iterator<String> f2832o;

        b() {
            this.f2832o = q1.this.f2828o.iterator();
        }

        @Override // java.util.Iterator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public String next() {
            return this.f2832o.next();
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f2832o.hasNext();
        }

        @Override // java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException();
        }
    }

    public q1(g0 g0Var) {
        this.f2828o = g0Var;
    }

    @Override // androidx.datastore.preferences.protobuf.g0
    public List<?> C1() {
        return this.f2828o.C1();
    }

    @Override // androidx.datastore.preferences.protobuf.g0
    public g0 a3() {
        return this;
    }

    @Override // androidx.datastore.preferences.protobuf.g0
    public void e1(h hVar) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.AbstractList, java.util.List
    /* JADX INFO: renamed from: g, reason: merged with bridge method [inline-methods] */
    public String get(int i10) {
        return (String) this.f2828o.get(i10);
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.List
    public Iterator<String> iterator() {
        return new b();
    }

    @Override // java.util.AbstractList, java.util.List
    public ListIterator<String> listIterator(int i10) {
        return new a(i10);
    }

    @Override // androidx.datastore.preferences.protobuf.g0
    public Object o3(int i10) {
        return this.f2828o.o3(i10);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public int size() {
        return this.f2828o.size();
    }
}
