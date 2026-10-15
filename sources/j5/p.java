package j5;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import java.util.ArrayList;

/* JADX INFO: compiled from: com.google.firebase:firebase-auth@@19.3.1 */
/* JADX INFO: loaded from: classes2.dex */
public final class p implements Parcelable.Creator<m> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ m createFromParcel(Parcel parcel) {
        int iK = SafeParcelReader.K(parcel);
        ArrayList arrayListT = null;
        while (parcel.dataPosition() < iK) {
            int iC = SafeParcelReader.C(parcel);
            if (SafeParcelReader.v(iC) != 1) {
                SafeParcelReader.J(parcel, iC);
            } else {
                arrayListT = SafeParcelReader.t(parcel, iC, g5.g0.CREATOR);
            }
        }
        SafeParcelReader.u(parcel, iK);
        return new m(arrayListT);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ m[] newArray(int i10) {
        return new m[i10];
    }
}
