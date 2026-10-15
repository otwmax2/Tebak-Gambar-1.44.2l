package com.google.android.gms.internal.firebase_auth;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;

/* JADX INFO: compiled from: com.google.firebase:firebase-auth@@19.3.1 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzdm implements Parcelable.Creator<zzdj> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzdj createFromParcel(Parcel parcel) {
        int iK = SafeParcelReader.K(parcel);
        zzfy zzfyVar = null;
        while (parcel.dataPosition() < iK) {
            int iC = SafeParcelReader.C(parcel);
            if (SafeParcelReader.v(iC) != 1) {
                SafeParcelReader.J(parcel, iC);
            } else {
                zzfyVar = (zzfy) SafeParcelReader.o(parcel, iC, zzfy.CREATOR);
            }
        }
        SafeParcelReader.u(parcel, iK);
        return new zzdj(zzfyVar);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzdj[] newArray(int i10) {
        return new zzdj[i10];
    }
}
