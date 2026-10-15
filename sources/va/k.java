package va;

import android.os.Parcel;

/* JADX INFO: compiled from: NullableParcelConverter.java */
/* JADX INFO: loaded from: classes2.dex */
public abstract class k<T> implements ua.h {
    @Override // ua.h
    public T a(Parcel parcel) {
        if (parcel.readInt() == -1) {
            return null;
        }
        return c(parcel);
    }

    @Override // ua.h
    public void b(T t10, Parcel parcel) {
        if (t10 == null) {
            parcel.writeInt(-1);
        } else {
            parcel.writeInt(1);
            d(t10, parcel);
        }
    }

    public abstract T c(Parcel parcel);

    public abstract void d(T t10, Parcel parcel);
}
