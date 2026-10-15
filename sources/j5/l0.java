package j5;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import g5.o0;
import java.util.ArrayList;

/* JADX INFO: compiled from: com.google.firebase:firebase-auth@@19.3.1 */
/* JADX INFO: loaded from: classes2.dex */
public final class l0 implements Parcelable.Creator<k0> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ k0 createFromParcel(Parcel parcel) {
        int iK = SafeParcelReader.K(parcel);
        ArrayList arrayListT = null;
        n0 n0Var = null;
        String strP = null;
        o0 o0Var = null;
        e0 e0Var = null;
        while (parcel.dataPosition() < iK) {
            int iC = SafeParcelReader.C(parcel);
            int iV = SafeParcelReader.v(iC);
            if (iV == 1) {
                arrayListT = SafeParcelReader.t(parcel, iC, g5.g0.CREATOR);
            } else if (iV == 2) {
                n0Var = (n0) SafeParcelReader.o(parcel, iC, n0.CREATOR);
            } else if (iV == 3) {
                strP = SafeParcelReader.p(parcel, iC);
            } else if (iV == 4) {
                o0Var = (o0) SafeParcelReader.o(parcel, iC, o0.CREATOR);
            } else if (iV != 5) {
                SafeParcelReader.J(parcel, iC);
            } else {
                e0Var = (e0) SafeParcelReader.o(parcel, iC, e0.CREATOR);
            }
        }
        SafeParcelReader.u(parcel, iK);
        return new k0(arrayListT, n0Var, strP, o0Var, e0Var);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ k0[] newArray(int i10) {
        return new k0[i10];
    }
}
