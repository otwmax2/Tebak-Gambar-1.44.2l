package j5;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import g5.o0;

/* JADX INFO: compiled from: com.google.firebase:firebase-auth@@19.3.1 */
/* JADX INFO: loaded from: classes2.dex */
public final class b0 implements Parcelable.Creator<y> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ y createFromParcel(Parcel parcel) {
        int iK = SafeParcelReader.K(parcel);
        e0 e0Var = null;
        x xVar = null;
        o0 o0Var = null;
        while (parcel.dataPosition() < iK) {
            int iC = SafeParcelReader.C(parcel);
            int iV = SafeParcelReader.v(iC);
            if (iV == 1) {
                e0Var = (e0) SafeParcelReader.o(parcel, iC, e0.CREATOR);
            } else if (iV == 2) {
                xVar = (x) SafeParcelReader.o(parcel, iC, x.CREATOR);
            } else if (iV != 3) {
                SafeParcelReader.J(parcel, iC);
            } else {
                o0Var = (o0) SafeParcelReader.o(parcel, iC, o0.CREATOR);
            }
        }
        SafeParcelReader.u(parcel, iK);
        return new y(e0Var, xVar, o0Var);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ y[] newArray(int i10) {
        return new y[i10];
    }
}
