package com.google.android.gms.internal.firebase_auth;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import g5.d0;

/* JADX INFO: compiled from: com.google.firebase:firebase-auth@@19.3.1 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzcy implements Parcelable.Creator<zzcv> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzcv createFromParcel(Parcel parcel) {
        int iK = SafeParcelReader.K(parcel);
        String strP = null;
        d0 d0Var = null;
        while (parcel.dataPosition() < iK) {
            int iC = SafeParcelReader.C(parcel);
            int iV = SafeParcelReader.v(iC);
            if (iV == 1) {
                strP = SafeParcelReader.p(parcel, iC);
            } else if (iV != 2) {
                SafeParcelReader.J(parcel, iC);
            } else {
                d0Var = (d0) SafeParcelReader.o(parcel, iC, d0.CREATOR);
            }
        }
        SafeParcelReader.u(parcel, iK);
        return new zzcv(strP, d0Var);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzcv[] newArray(int i10) {
        return new zzcv[i10];
    }
}
