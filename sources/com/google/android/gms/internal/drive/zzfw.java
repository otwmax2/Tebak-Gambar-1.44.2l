package com.google.android.gms.internal.drive;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;

/* JADX INFO: loaded from: classes2.dex */
public final class zzfw implements Parcelable.Creator<zzfv> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzfv createFromParcel(Parcel parcel) {
        int iK = SafeParcelReader.K(parcel);
        DataHolder dataHolder = null;
        while (parcel.dataPosition() < iK) {
            int iC = SafeParcelReader.C(parcel);
            if (SafeParcelReader.v(iC) != 2) {
                SafeParcelReader.J(parcel, iC);
            } else {
                dataHolder = (DataHolder) SafeParcelReader.o(parcel, iC, DataHolder.CREATOR);
            }
        }
        SafeParcelReader.u(parcel, iK);
        return new zzfv(dataHolder);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzfv[] newArray(int i10) {
        return new zzfv[i10];
    }
}
