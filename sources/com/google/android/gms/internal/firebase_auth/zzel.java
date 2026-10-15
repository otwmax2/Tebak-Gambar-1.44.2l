package com.google.android.gms.internal.firebase_auth;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import g5.o0;
import java.util.ArrayList;

/* JADX INFO: compiled from: com.google.firebase:firebase-auth@@19.3.1 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzel implements Parcelable.Creator<zzej> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzej createFromParcel(Parcel parcel) {
        int iK = SafeParcelReader.K(parcel);
        String strP = null;
        ArrayList arrayListT = null;
        o0 o0Var = null;
        while (parcel.dataPosition() < iK) {
            int iC = SafeParcelReader.C(parcel);
            int iV = SafeParcelReader.v(iC);
            if (iV == 1) {
                strP = SafeParcelReader.p(parcel, iC);
            } else if (iV == 2) {
                arrayListT = SafeParcelReader.t(parcel, iC, zzfh.CREATOR);
            } else if (iV != 3) {
                SafeParcelReader.J(parcel, iC);
            } else {
                o0Var = (o0) SafeParcelReader.o(parcel, iC, o0.CREATOR);
            }
        }
        SafeParcelReader.u(parcel, iK);
        return new zzej(strP, arrayListT, o0Var);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzej[] newArray(int i10) {
        return new zzej[i10];
    }
}
