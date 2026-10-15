package va;

import android.os.Parcel;
import android.util.SparseArray;

/* JADX INFO: compiled from: SparseArrayParcelConverter.java */
/* JADX INFO: loaded from: classes2.dex */
public abstract class l<T> implements ua.h {
    @Override // ua.h
    /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
    public SparseArray<T> a(Parcel parcel) {
        int i10 = parcel.readInt();
        if (i10 < 0) {
            return null;
        }
        SparseArray<T> sparseArray = new SparseArray<>(i10);
        for (int i11 = 0; i11 < i10; i11++) {
            sparseArray.append(parcel.readInt(), d(parcel));
        }
        return sparseArray;
    }

    public abstract T d(Parcel parcel);

    public abstract void e(T t10, Parcel parcel);

    @Override // ua.h
    /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
    public void b(SparseArray<T> sparseArray, Parcel parcel) {
        if (sparseArray == null) {
            parcel.writeInt(-1);
            return;
        }
        parcel.writeInt(sparseArray.size());
        for (int i10 = 0; i10 < sparseArray.size(); i10++) {
            parcel.writeInt(sparseArray.keyAt(i10));
            e(sparseArray.valueAt(i10), parcel);
        }
    }
}
