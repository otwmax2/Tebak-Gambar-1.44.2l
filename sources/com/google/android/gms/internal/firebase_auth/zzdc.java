package com.google.android.gms.internal.firebase_auth;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import g5.a;

/* JADX INFO: compiled from: com.google.firebase:firebase-auth@@19.3.1 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzdc implements Parcelable.Creator<zzcz> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzcz createFromParcel(Parcel parcel) {
        int iK = SafeParcelReader.K(parcel);
        String strP = null;
        a aVar = null;
        while (parcel.dataPosition() < iK) {
            int iC = SafeParcelReader.C(parcel);
            int iV = SafeParcelReader.v(iC);
            if (iV == 1) {
                strP = SafeParcelReader.p(parcel, iC);
            } else if (iV != 2) {
                SafeParcelReader.J(parcel, iC);
            } else {
                aVar = (a) SafeParcelReader.o(parcel, iC, a.CREATOR);
            }
        }
        SafeParcelReader.u(parcel, iK);
        return new zzcz(strP, aVar);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzcz[] newArray(int i10) {
        return new zzcz[i10];
    }
}
