package com.google.android.gms.internal.firebase_auth;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;

/* JADX INFO: compiled from: com.google.firebase:firebase-auth@@19.3.1 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzfe implements Parcelable.Creator<zzff> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzff createFromParcel(Parcel parcel) {
        int iK = SafeParcelReader.K(parcel);
        String strP = null;
        String strP2 = null;
        Long lH = null;
        String strP3 = null;
        Long lH2 = null;
        while (parcel.dataPosition() < iK) {
            int iC = SafeParcelReader.C(parcel);
            int iV = SafeParcelReader.v(iC);
            if (iV == 2) {
                strP = SafeParcelReader.p(parcel, iC);
            } else if (iV == 3) {
                strP2 = SafeParcelReader.p(parcel, iC);
            } else if (iV == 4) {
                lH = SafeParcelReader.H(parcel, iC);
            } else if (iV == 5) {
                strP3 = SafeParcelReader.p(parcel, iC);
            } else if (iV != 6) {
                SafeParcelReader.J(parcel, iC);
            } else {
                lH2 = SafeParcelReader.H(parcel, iC);
            }
        }
        SafeParcelReader.u(parcel, iK);
        return new zzff(strP, strP2, lH, strP3, lH2);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzff[] newArray(int i10) {
        return new zzff[i10];
    }
}
