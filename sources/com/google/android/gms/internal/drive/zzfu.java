package com.google.android.gms.internal.drive;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;

/* JADX INFO: loaded from: classes2.dex */
public final class zzfu implements Parcelable.Creator<zzft> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzft createFromParcel(Parcel parcel) {
        int iK = SafeParcelReader.K(parcel);
        DataHolder dataHolder = null;
        boolean zW = false;
        while (parcel.dataPosition() < iK) {
            int iC = SafeParcelReader.C(parcel);
            int iV = SafeParcelReader.v(iC);
            if (iV == 2) {
                dataHolder = (DataHolder) SafeParcelReader.o(parcel, iC, DataHolder.CREATOR);
            } else if (iV != 3) {
                SafeParcelReader.J(parcel, iC);
            } else {
                zW = SafeParcelReader.w(parcel, iC);
            }
        }
        SafeParcelReader.u(parcel, iK);
        return new zzft(dataHolder, zW);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzft[] newArray(int i10) {
        return new zzft[i10];
    }
}
