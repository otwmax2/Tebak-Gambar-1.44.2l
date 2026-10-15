package com.google.android.gms.internal.firebase_auth;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;

/* JADX INFO: compiled from: com.google.firebase:firebase-auth@@19.3.1 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzfo implements Parcelable.Creator<zzfm> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzfm createFromParcel(Parcel parcel) {
        int iK = SafeParcelReader.K(parcel);
        String strP = null;
        String strP2 = null;
        String strP3 = null;
        zzfh zzfhVar = null;
        while (parcel.dataPosition() < iK) {
            int iC = SafeParcelReader.C(parcel);
            int iV = SafeParcelReader.v(iC);
            if (iV == 2) {
                strP = SafeParcelReader.p(parcel, iC);
            } else if (iV == 3) {
                strP2 = SafeParcelReader.p(parcel, iC);
            } else if (iV == 4) {
                strP3 = SafeParcelReader.p(parcel, iC);
            } else if (iV != 5) {
                SafeParcelReader.J(parcel, iC);
            } else {
                zzfhVar = (zzfh) SafeParcelReader.o(parcel, iC, zzfh.CREATOR);
            }
        }
        SafeParcelReader.u(parcel, iK);
        return new zzfm(strP, strP2, strP3, zzfhVar);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzfm[] newArray(int i10) {
        return new zzfm[i10];
    }
}
