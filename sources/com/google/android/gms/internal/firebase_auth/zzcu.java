package com.google.android.gms.internal.firebase_auth;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;

/* JADX INFO: compiled from: com.google.firebase:firebase-auth@@19.3.1 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzcu implements Parcelable.Creator<zzcr> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzcr createFromParcel(Parcel parcel) {
        int iK = SafeParcelReader.K(parcel);
        String strP = null;
        String strP2 = null;
        String strP3 = null;
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
                strP3 = SafeParcelReader.p(parcel, iC);
            }
        }
        SafeParcelReader.u(parcel, iK);
        return new zzcr(strP, strP2, strP3);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzcr[] newArray(int i10) {
        return new zzcr[i10];
    }
}
