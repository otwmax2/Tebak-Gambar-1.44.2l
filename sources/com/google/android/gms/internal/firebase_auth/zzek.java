package com.google.android.gms.internal.firebase_auth;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import g5.o0;

/* JADX INFO: compiled from: com.google.firebase:firebase-auth@@19.3.1 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzek implements Parcelable.Creator<zzeh> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzeh createFromParcel(Parcel parcel) {
        int iK = SafeParcelReader.K(parcel);
        Status status = null;
        o0 o0Var = null;
        String strP = null;
        String strP2 = null;
        while (parcel.dataPosition() < iK) {
            int iC = SafeParcelReader.C(parcel);
            int iV = SafeParcelReader.v(iC);
            if (iV == 1) {
                status = (Status) SafeParcelReader.o(parcel, iC, Status.CREATOR);
            } else if (iV == 2) {
                o0Var = (o0) SafeParcelReader.o(parcel, iC, o0.CREATOR);
            } else if (iV == 3) {
                strP = SafeParcelReader.p(parcel, iC);
            } else if (iV != 4) {
                SafeParcelReader.J(parcel, iC);
            } else {
                strP2 = SafeParcelReader.p(parcel, iC);
            }
        }
        SafeParcelReader.u(parcel, iK);
        return new zzeh(status, o0Var, strP, strP2);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzeh[] newArray(int i10) {
        return new zzeh[i10];
    }
}
