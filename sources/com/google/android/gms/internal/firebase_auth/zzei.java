package com.google.android.gms.internal.firebase_auth;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import g5.a;

/* JADX INFO: compiled from: com.google.firebase:firebase-auth@@19.3.1 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzei implements Parcelable.Creator<zzef> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzef createFromParcel(Parcel parcel) {
        int iK = SafeParcelReader.K(parcel);
        String strP = null;
        String strP2 = null;
        a aVar = null;
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
                aVar = (a) SafeParcelReader.o(parcel, iC, a.CREATOR);
            }
        }
        SafeParcelReader.u(parcel, iK);
        return new zzef(strP, strP2, aVar);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzef[] newArray(int i10) {
        return new zzef[i10];
    }
}
