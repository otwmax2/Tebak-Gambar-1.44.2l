package com.google.android.gms.internal.firebase_auth;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import g5.d0;

/* JADX INFO: compiled from: com.google.firebase:firebase-auth@@19.3.1 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzcm implements Parcelable.Creator<zzcj> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzcj createFromParcel(Parcel parcel) {
        int iK = SafeParcelReader.K(parcel);
        d0 d0Var = null;
        String strP = null;
        String strP2 = null;
        while (parcel.dataPosition() < iK) {
            int iC = SafeParcelReader.C(parcel);
            int iV = SafeParcelReader.v(iC);
            if (iV == 1) {
                d0Var = (d0) SafeParcelReader.o(parcel, iC, d0.CREATOR);
            } else if (iV == 2) {
                strP = SafeParcelReader.p(parcel, iC);
            } else if (iV != 3) {
                SafeParcelReader.J(parcel, iC);
            } else {
                strP2 = SafeParcelReader.p(parcel, iC);
            }
        }
        SafeParcelReader.u(parcel, iK);
        return new zzcj(d0Var, strP, strP2);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzcj[] newArray(int i10) {
        return new zzcj[i10];
    }
}
