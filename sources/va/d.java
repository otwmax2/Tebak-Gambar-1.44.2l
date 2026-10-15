package va;

import android.os.Parcel;
import java.util.Collection;
import java.util.Iterator;

/* JADX INFO: compiled from: CollectionParcelConverter.java */
/* JADX INFO: loaded from: classes2.dex */
public abstract class d<T, C extends Collection<T>> implements ua.h<Collection<T>, C> {
    public abstract C c();

    @Override // ua.h
    /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
    public C a(Parcel parcel) {
        int i10 = parcel.readInt();
        if (i10 == -1) {
            return null;
        }
        C c10 = (C) c();
        for (int i11 = 0; i11 < i10; i11++) {
            c10.add(e(parcel));
        }
        return c10;
    }

    public abstract T e(Parcel parcel);

    public abstract void f(T t10, Parcel parcel);

    @Override // ua.h
    /* JADX INFO: renamed from: g, reason: merged with bridge method [inline-methods] */
    public void b(Collection<T> collection, Parcel parcel) {
        if (collection == null) {
            parcel.writeInt(-1);
            return;
        }
        parcel.writeInt(collection.size());
        Iterator<T> it = collection.iterator();
        while (it.hasNext()) {
            f(it.next(), parcel);
        }
    }
}
