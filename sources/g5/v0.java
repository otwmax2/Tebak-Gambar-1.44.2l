package g5;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;

/* JADX INFO: compiled from: com.google.firebase:firebase-auth@@19.3.1 */
/* JADX INFO: loaded from: classes2.dex */
public final class v0 implements Parcelable.Creator<d0> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ d0 createFromParcel(Parcel parcel) {
        int iK = SafeParcelReader.K(parcel);
        String strP = null;
        String strP2 = null;
        String strP3 = null;
        String strP4 = null;
        String strP5 = null;
        boolean zW = false;
        boolean zW2 = false;
        while (parcel.dataPosition() < iK) {
            int iC = SafeParcelReader.C(parcel);
            switch (SafeParcelReader.v(iC)) {
                case 1:
                    strP = SafeParcelReader.p(parcel, iC);
                    break;
                case 2:
                    strP2 = SafeParcelReader.p(parcel, iC);
                    break;
                case 3:
                    zW = SafeParcelReader.w(parcel, iC);
                    break;
                case 4:
                    strP3 = SafeParcelReader.p(parcel, iC);
                    break;
                case 5:
                    zW2 = SafeParcelReader.w(parcel, iC);
                    break;
                case 6:
                    strP4 = SafeParcelReader.p(parcel, iC);
                    break;
                case 7:
                    strP5 = SafeParcelReader.p(parcel, iC);
                    break;
                default:
                    SafeParcelReader.J(parcel, iC);
                    break;
            }
        }
        SafeParcelReader.u(parcel, iK);
        return new d0(strP, strP2, zW, strP3, zW2, strP4, strP5);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ d0[] newArray(int i10) {
        return new d0[i10];
    }
}
