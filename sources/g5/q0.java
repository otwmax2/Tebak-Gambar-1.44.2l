package g5;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import com.google.android.gms.internal.firebase_auth.zzfy;

/* JADX INFO: compiled from: com.google.firebase:firebase-auth@@19.3.1 */
/* JADX INFO: loaded from: classes2.dex */
public final class q0 implements Parcelable.Creator<o0> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ o0 createFromParcel(Parcel parcel) {
        int iK = SafeParcelReader.K(parcel);
        String strP = null;
        String strP2 = null;
        String strP3 = null;
        zzfy zzfyVar = null;
        String strP4 = null;
        String strP5 = null;
        String strP6 = null;
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
                    strP3 = SafeParcelReader.p(parcel, iC);
                    break;
                case 4:
                    zzfyVar = (zzfy) SafeParcelReader.o(parcel, iC, zzfy.CREATOR);
                    break;
                case 5:
                    strP4 = SafeParcelReader.p(parcel, iC);
                    break;
                case 6:
                    strP5 = SafeParcelReader.p(parcel, iC);
                    break;
                case 7:
                    strP6 = SafeParcelReader.p(parcel, iC);
                    break;
                default:
                    SafeParcelReader.J(parcel, iC);
                    break;
            }
        }
        SafeParcelReader.u(parcel, iK);
        return new o0(strP, strP2, strP3, zzfyVar, strP4, strP5, strP6);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ o0[] newArray(int i10) {
        return new o0[i10];
    }
}
