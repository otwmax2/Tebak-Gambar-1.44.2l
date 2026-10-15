package com.google.android.gms.internal.firebase_auth;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;

/* JADX INFO: compiled from: com.google.firebase:firebase-auth@@19.3.1 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzcw implements Parcelable.Creator<zzct> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzct createFromParcel(Parcel parcel) {
        int iK = SafeParcelReader.K(parcel);
        String strP = null;
        zzfy zzfyVar = null;
        while (parcel.dataPosition() < iK) {
            int iC = SafeParcelReader.C(parcel);
            int iV = SafeParcelReader.v(iC);
            if (iV == 1) {
                strP = SafeParcelReader.p(parcel, iC);
            } else if (iV != 2) {
                SafeParcelReader.J(parcel, iC);
            } else {
                zzfyVar = (zzfy) SafeParcelReader.o(parcel, iC, zzfy.CREATOR);
            }
        }
        SafeParcelReader.u(parcel, iK);
        return new zzct(strP, zzfyVar);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzct[] newArray(int i10) {
        return new zzct[i10];
    }
}
