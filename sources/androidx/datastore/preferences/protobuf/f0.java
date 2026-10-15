package androidx.datastore.preferences.protobuf;

import java.util.AbstractList;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.RandomAccess;

/* JADX INFO: compiled from: LazyStringArrayList.java */
/* JADX INFO: loaded from: classes.dex */
public class f0 extends c<String> implements g0, RandomAccess {

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private static final f0 f2701q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public static final g0 f2702r;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final List<Object> f2703p;

    static {
        f0 f0Var = new f0();
        f2701q = f0Var;
        f0Var.p0();
        f2702r = f0Var;
    }

    public f0() {
        this(10);
    }

    private static String i(Object obj) {
        return obj instanceof String ? (String) obj : obj instanceof h ? ((h) obj).C() : a0.j((byte[]) obj);
    }

    @Override // androidx.datastore.preferences.protobuf.g0
    public List<?> C1() {
        return Collections.unmodifiableList(this.f2703p);
    }

    @Override // androidx.datastore.preferences.protobuf.c, androidx.datastore.preferences.protobuf.a0.i
    public /* bridge */ /* synthetic */ boolean O3() {
        return super.O3();
    }

    @Override // androidx.datastore.preferences.protobuf.g0
    public g0 a3() {
        return O3() ? new q1(this) : this;
    }

    @Override // androidx.datastore.preferences.protobuf.c, java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean addAll(Collection<? extends String> collection) {
        return addAll(size(), collection);
    }

    @Override // androidx.datastore.preferences.protobuf.c, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public void clear() {
        c();
        this.f2703p.clear();
        ((AbstractList) this).modCount++;
    }

    @Override // androidx.datastore.preferences.protobuf.g0
    public void e1(h hVar) {
        c();
        this.f2703p.add(hVar);
        ((AbstractList) this).modCount++;
    }

    @Override // androidx.datastore.preferences.protobuf.c, java.util.AbstractList, java.util.Collection, java.util.List
    public /* bridge */ /* synthetic */ boolean equals(Object obj) {
        return super.equals(obj);
    }

    @Override // java.util.AbstractList, java.util.List
    /* JADX INFO: renamed from: g, reason: merged with bridge method [inline-methods] */
    public void add(int i10, String str) {
        c();
        this.f2703p.add(i10, str);
        ((AbstractList) this).modCount++;
    }

    @Override // androidx.datastore.preferences.protobuf.c, java.util.AbstractList, java.util.Collection, java.util.List
    public /* bridge */ /* synthetic */ int hashCode() {
        return super.hashCode();
    }

    @Override // java.util.AbstractList, java.util.List
    /* JADX INFO: renamed from: j, reason: merged with bridge method [inline-methods] */
    public String get(int i10) {
        Object obj = this.f2703p.get(i10);
        if (obj instanceof String) {
            return (String) obj;
        }
        if (obj instanceof h) {
            h hVar = (h) obj;
            String strC = hVar.C();
            if (hVar.p()) {
                this.f2703p.set(i10, strC);
            }
            return strC;
        }
        byte[] bArr = (byte[]) obj;
        String strJ = a0.j(bArr);
        if (a0.g(bArr)) {
            this.f2703p.set(i10, strJ);
        }
        return strJ;
    }

    @Override // androidx.datastore.preferences.protobuf.a0.i
    /* JADX INFO: renamed from: k, reason: merged with bridge method [inline-methods] */
    public f0 B0(int i10) {
        if (i10 < size()) {
            throw new IllegalArgumentException();
        }
        ArrayList arrayList = new ArrayList(i10);
        arrayList.addAll(this.f2703p);
        return new f0((ArrayList<Object>) arrayList);
    }

    @Override // java.util.AbstractList, java.util.List
    /* JADX INFO: renamed from: l, reason: merged with bridge method [inline-methods] */
    public String remove(int i10) {
        c();
        Object objRemove = this.f2703p.remove(i10);
        ((AbstractList) this).modCount++;
        return i(objRemove);
    }

    @Override // java.util.AbstractList, java.util.List
    /* JADX INFO: renamed from: m, reason: merged with bridge method [inline-methods] */
    public String set(int i10, String str) {
        c();
        return i(this.f2703p.set(i10, str));
    }

    @Override // androidx.datastore.preferences.protobuf.g0
    public Object o3(int i10) {
        return this.f2703p.get(i10);
    }

    @Override // androidx.datastore.preferences.protobuf.c, java.util.AbstractCollection, java.util.Collection, java.util.List
    public /* bridge */ /* synthetic */ boolean removeAll(Collection collection) {
        return super.removeAll(collection);
    }

    @Override // androidx.datastore.preferences.protobuf.c, java.util.AbstractCollection, java.util.Collection, java.util.List
    public /* bridge */ /* synthetic */ boolean retainAll(Collection collection) {
        return super.retainAll(collection);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public int size() {
        return this.f2703p.size();
    }

    public f0(int i10) {
        this((ArrayList<Object>) new ArrayList(i10));
    }

    @Override // androidx.datastore.preferences.protobuf.c, java.util.AbstractList, java.util.List
    public boolean addAll(int i10, Collection<? extends String> collection) {
        c();
        if (collection instanceof g0) {
            collection = ((g0) collection).C1();
        }
        boolean zAddAll = this.f2703p.addAll(i10, collection);
        ((AbstractList) this).modCount++;
        return zAddAll;
    }

    @Override // androidx.datastore.preferences.protobuf.c, java.util.AbstractCollection, java.util.Collection, java.util.List
    public /* bridge */ /* synthetic */ boolean remove(Object obj) {
        return super.remove(obj);
    }

    private f0(ArrayList<Object> arrayList) {
        this.f2703p = arrayList;
    }
}
