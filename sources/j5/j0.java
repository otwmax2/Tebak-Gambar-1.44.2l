package j5;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;

/* JADX INFO: compiled from: com.google.firebase:firebase-auth@@19.3.1 */
/* JADX INFO: loaded from: classes2.dex */
public final class j0 implements Parcelable.Creator<g0> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ g0 createFromParcel(Parcel parcel) {
        int iK = SafeParcelReader.K(parcel);
        long jG = 0;
        long jG2 = 0;
        while (parcel.dataPosition() < iK) {
            int iC = SafeParcelReader.C(parcel);
            int iV = SafeParcelReader.v(iC);
            if (iV == 1) {
                jG = SafeParcelReader.G(parcel, iC);
            } else if (iV != 2) {
                SafeParcelReader.J(parcel, iC);
            } else {
                jG2 = SafeParcelReader.G(parcel, iC);
            }
        }
        SafeParcelReader.u(parcel, iK);
        return new g0(jG, jG2);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ g0[] newArray(int i10) {
        return new g0[i10];
    }
}
