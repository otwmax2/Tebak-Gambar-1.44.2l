package j5;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;

/* JADX INFO: compiled from: com.google.firebase:firebase-auth@@19.3.1 */
/* JADX INFO: loaded from: classes2.dex */
public final class d0 implements Parcelable.Creator<a0> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ a0 createFromParcel(Parcel parcel) {
        int iK = SafeParcelReader.K(parcel);
        String strP = null;
        String strP2 = null;
        String strP3 = null;
        String strP4 = null;
        String strP5 = null;
        String strP6 = null;
        String strP7 = null;
        boolean zW = false;
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
                    strP5 = SafeParcelReader.p(parcel, iC);
                    break;
                case 4:
                    strP4 = SafeParcelReader.p(parcel, iC);
                    break;
                case 5:
                    strP3 = SafeParcelReader.p(parcel, iC);
                    break;
                case 6:
                    strP6 = SafeParcelReader.p(parcel, iC);
                    break;
                case 7:
                    zW = SafeParcelReader.w(parcel, iC);
                    break;
                case 8:
                    strP7 = SafeParcelReader.p(parcel, iC);
                    break;
                default:
                    SafeParcelReader.J(parcel, iC);
                    break;
            }
        }
        SafeParcelReader.u(parcel, iK);
        return new a0(strP, strP2, strP3, strP4, strP5, strP6, zW, strP7);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ a0[] newArray(int i10) {
        return new a0[i10];
    }
}
