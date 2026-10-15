package va;

import android.os.Parcel;

/* JADX INFO: compiled from: CharArrayParcelConverter.java */
/* JADX INFO: loaded from: classes2.dex */
public class c implements ua.h {
    @Override // ua.h
    /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
    public char[] a(Parcel parcel) {
        int i10 = parcel.readInt();
        if (i10 == -1) {
            return null;
        }
        char[] cArr = new char[i10];
        parcel.readCharArray(cArr);
        return cArr;
    }

    @Override // ua.h
    /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
    public void b(char[] cArr, Parcel parcel) {
        if (cArr == null) {
            parcel.writeInt(-1);
        } else {
            parcel.writeInt(cArr.length);
            parcel.writeCharArray(cArr);
        }
    }
}
