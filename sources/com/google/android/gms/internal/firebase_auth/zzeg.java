package com.google.android.gms.internal.firebase_auth;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import g5.k0;

/* JADX INFO: compiled from: com.google.firebase:firebase-auth@@19.3.1 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzeg implements Parcelable.Creator<zzed> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzed createFromParcel(Parcel parcel) {
        int iK = SafeParcelReader.K(parcel);
        k0 k0Var = null;
        String strP = null;
        while (parcel.dataPosition() < iK) {
            int iC = SafeParcelReader.C(parcel);
            int iV = SafeParcelReader.v(iC);
            if (iV == 1) {
                k0Var = (k0) SafeParcelReader.o(parcel, iC, k0.CREATOR);
            } else if (iV != 2) {
                SafeParcelReader.J(parcel, iC);
            } else {
                strP = SafeParcelReader.p(parcel, iC);
            }
        }
        SafeParcelReader.u(parcel, iK);
        return new zzed(k0Var, strP);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzed[] newArray(int i10) {
        return new zzed[i10];
    }
}
