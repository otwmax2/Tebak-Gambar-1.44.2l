package com.google.android.gms.internal.drive;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;

/* JADX INFO: loaded from: classes2.dex */
public final class zzgb implements Parcelable.Creator<zzga> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzga createFromParcel(Parcel parcel) {
        int iK = SafeParcelReader.K(parcel);
        zzgo zzgoVar = null;
        while (parcel.dataPosition() < iK) {
            int iC = SafeParcelReader.C(parcel);
            if (SafeParcelReader.v(iC) != 2) {
                SafeParcelReader.J(parcel, iC);
            } else {
                zzgoVar = (zzgo) SafeParcelReader.o(parcel, iC, zzgo.CREATOR);
            }
        }
        SafeParcelReader.u(parcel, iK);
        return new zzga(zzgoVar);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzga[] newArray(int i10) {
        return new zzga[i10];
    }
}
