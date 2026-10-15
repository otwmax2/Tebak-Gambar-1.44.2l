package j5;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import com.google.android.gms.internal.firebase_auth.zzff;
import g5.o0;
import java.util.ArrayList;

/* JADX INFO: compiled from: com.google.firebase:firebase-auth@@19.3.1 */
/* JADX INFO: loaded from: classes2.dex */
public final class h0 implements Parcelable.Creator<e0> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ e0 createFromParcel(Parcel parcel) {
        int iK = SafeParcelReader.K(parcel);
        zzff zzffVar = null;
        a0 a0Var = null;
        String strP = null;
        String strP2 = null;
        ArrayList arrayListT = null;
        ArrayList<String> arrayListR = null;
        String strP3 = null;
        Boolean boolX = null;
        g0 g0Var = null;
        o0 o0Var = null;
        m mVar = null;
        boolean zW = false;
        while (parcel.dataPosition() < iK) {
            int iC = SafeParcelReader.C(parcel);
            switch (SafeParcelReader.v(iC)) {
                case 1:
                    zzffVar = (zzff) SafeParcelReader.o(parcel, iC, zzff.CREATOR);
                    break;
                case 2:
                    a0Var = (a0) SafeParcelReader.o(parcel, iC, a0.CREATOR);
                    break;
                case 3:
                    strP = SafeParcelReader.p(parcel, iC);
                    break;
                case 4:
                    strP2 = SafeParcelReader.p(parcel, iC);
                    break;
                case 5:
                    arrayListT = SafeParcelReader.t(parcel, iC, a0.CREATOR);
                    break;
                case 6:
                    arrayListR = SafeParcelReader.r(parcel, iC);
                    break;
                case 7:
                    strP3 = SafeParcelReader.p(parcel, iC);
                    break;
                case 8:
                    boolX = SafeParcelReader.x(parcel, iC);
                    break;
                case 9:
                    g0Var = (g0) SafeParcelReader.o(parcel, iC, g0.CREATOR);
                    break;
                case 10:
                    zW = SafeParcelReader.w(parcel, iC);
                    break;
                case 11:
                    o0Var = (o0) SafeParcelReader.o(parcel, iC, o0.CREATOR);
                    break;
                case 12:
                    mVar = (m) SafeParcelReader.o(parcel, iC, m.CREATOR);
                    break;
                default:
                    SafeParcelReader.J(parcel, iC);
                    break;
            }
        }
        SafeParcelReader.u(parcel, iK);
        return new e0(zzffVar, a0Var, strP, strP2, arrayListT, arrayListR, strP3, boolX, g0Var, zW, o0Var, mVar);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ e0[] newArray(int i10) {
        return new e0[i10];
    }
}
