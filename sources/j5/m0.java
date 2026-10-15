package j5;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import java.util.ArrayList;

/* JADX INFO: compiled from: com.google.firebase:firebase-auth@@19.3.1 */
/* JADX INFO: loaded from: classes2.dex */
public final class m0 implements Parcelable.Creator<n0> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ n0 createFromParcel(Parcel parcel) {
        int iK = SafeParcelReader.K(parcel);
        String strP = null;
        String strP2 = null;
        ArrayList arrayListT = null;
        while (parcel.dataPosition() < iK) {
            int iC = SafeParcelReader.C(parcel);
            int iV = SafeParcelReader.v(iC);
            if (iV == 1) {
                strP = SafeParcelReader.p(parcel, iC);
            } else if (iV == 2) {
                strP2 = SafeParcelReader.p(parcel, iC);
            } else if (iV != 3) {
                SafeParcelReader.J(parcel, iC);
            } else {
                arrayListT = SafeParcelReader.t(parcel, iC, g5.g0.CREATOR);
            }
        }
        SafeParcelReader.u(parcel, iK);
        return new n0(strP, strP2, arrayListT);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ n0[] newArray(int i10) {
        return new n0[i10];
    }
}
