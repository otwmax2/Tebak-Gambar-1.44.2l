package com.google.android.gms.internal.firebase_auth;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;

/* JADX INFO: compiled from: com.google.firebase:firebase-auth@@19.3.1 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzdg implements Parcelable.Creator<zzdd> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzdd createFromParcel(Parcel parcel) {
        int iK = SafeParcelReader.K(parcel);
        zzfr zzfrVar = null;
        while (parcel.dataPosition() < iK) {
            int iC = SafeParcelReader.C(parcel);
            if (SafeParcelReader.v(iC) != 1) {
                SafeParcelReader.J(parcel, iC);
            } else {
                zzfrVar = (zzfr) SafeParcelReader.o(parcel, iC, zzfr.CREATOR);
            }
        }
        SafeParcelReader.u(parcel, iK);
        return new zzdd(zzfrVar);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzdd[] newArray(int i10) {
        return new zzdd[i10];
    }
}
