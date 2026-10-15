package z1;

import b2.l;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;

/* JADX INFO: compiled from: MultiTransformation.java */
/* JADX INFO: loaded from: classes.dex */
public class d<T> implements g<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Collection<? extends g<T>> f37196a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f37197b;

    @SafeVarargs
    public d(g<T>... gVarArr) {
        if (gVarArr.length < 1) {
            throw new IllegalArgumentException("MultiTransformation must contain at least one Transformation");
        }
        this.f37196a = Arrays.asList(gVarArr);
    }

    @Override // z1.g
    public String a() {
        if (this.f37197b == null) {
            StringBuilder sb = new StringBuilder();
            Iterator<? extends g<T>> it = this.f37196a.iterator();
            while (it.hasNext()) {
                sb.append(it.next().a());
            }
            this.f37197b = sb.toString();
        }
        return this.f37197b;
    }

    @Override // z1.g
    public l<T> b(l<T> lVar, int i10, int i11) {
        Iterator<? extends g<T>> it = this.f37196a.iterator();
        l<T> lVar2 = lVar;
        while (it.hasNext()) {
            l<T> lVarB = it.next().b(lVar2, i10, i11);
            if (lVar2 != null && !lVar2.equals(lVar) && !lVar2.equals(lVarB)) {
                lVar2.b();
            }
            lVar2 = lVarB;
        }
        return lVar2;
    }
}
