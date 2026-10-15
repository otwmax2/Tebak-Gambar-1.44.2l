package va;

import android.os.Parcel;

/* JADX INFO: compiled from: BooleanArrayParcelConverter.java */
/* JADX INFO: loaded from: classes2.dex */
public class b implements ua.h {
    @Override // ua.h
    /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
    public boolean[] a(Parcel parcel) {
        int i10 = parcel.readInt();
        if (i10 == -1) {
            return null;
        }
        boolean[] zArr = new boolean[i10];
        parcel.readBooleanArray(zArr);
        return zArr;
    }

    @Override // ua.h
    /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
    public void b(boolean[] zArr, Parcel parcel) {
        if (zArr == null) {
            parcel.writeInt(-1);
        } else {
            parcel.writeInt(zArr.length);
            parcel.writeBooleanArray(zArr);
        }
    }
}
