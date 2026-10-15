package com.google.android.gms.internal.drive;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;

/* JADX INFO: loaded from: classes2.dex */
public final class zzgv implements Parcelable.Creator<zzgu> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzgu createFromParcel(Parcel parcel) {
        int iK = SafeParcelReader.K(parcel);
        zzei zzeiVar = null;
        while (parcel.dataPosition() < iK) {
            int iC = SafeParcelReader.C(parcel);
            if (SafeParcelReader.v(iC) != 2) {
                SafeParcelReader.J(parcel, iC);
            } else {
                zzeiVar = (zzei) SafeParcelReader.o(parcel, iC, zzei.CREATOR);
            }
        }
        SafeParcelReader.u(parcel, iK);
        return new zzgu(zzeiVar);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzgu[] newArray(int i10) {
        return new zzgu[i10];
    }
}
