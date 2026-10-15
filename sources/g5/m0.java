package g5;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;

/* JADX INFO: compiled from: com.google.firebase:firebase-auth@@19.3.1 */
/* JADX INFO: loaded from: classes2.dex */
public final class m0 implements Parcelable.Creator<k0> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ k0 createFromParcel(Parcel parcel) {
        int iK = SafeParcelReader.K(parcel);
        boolean zW = false;
        String strP = null;
        String strP2 = null;
        boolean zW2 = false;
        while (parcel.dataPosition() < iK) {
            int iC = SafeParcelReader.C(parcel);
            int iV = SafeParcelReader.v(iC);
            if (iV == 2) {
                strP = SafeParcelReader.p(parcel, iC);
            } else if (iV == 3) {
                strP2 = SafeParcelReader.p(parcel, iC);
            } else if (iV == 4) {
                zW = SafeParcelReader.w(parcel, iC);
            } else if (iV != 5) {
                SafeParcelReader.J(parcel, iC);
            } else {
                zW2 = SafeParcelReader.w(parcel, iC);
            }
        }
        SafeParcelReader.u(parcel, iK);
        return new k0(strP, strP2, zW, zW2);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ k0[] newArray(int i10) {
        return new k0[i10];
    }
}
