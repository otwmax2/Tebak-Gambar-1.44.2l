package com.google.android.gms.internal.firebase_auth;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import g5.e;

/* JADX INFO: compiled from: com.google.firebase:firebase-auth@@19.3.1 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzds implements Parcelable.Creator<zzdp> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzdp createFromParcel(Parcel parcel) {
        int iK = SafeParcelReader.K(parcel);
        e eVar = null;
        while (parcel.dataPosition() < iK) {
            int iC = SafeParcelReader.C(parcel);
            if (SafeParcelReader.v(iC) != 1) {
                SafeParcelReader.J(parcel, iC);
            } else {
                eVar = (e) SafeParcelReader.o(parcel, iC, e.CREATOR);
            }
        }
        SafeParcelReader.u(parcel, iK);
        return new zzdp(eVar);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzdp[] newArray(int i10) {
        return new zzdp[i10];
    }
}
