package com.google.android.gms.drive;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;

/* JADX INFO: loaded from: classes.dex */
public final class zzm implements Parcelable.Creator<DriveSpace> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ DriveSpace createFromParcel(Parcel parcel) {
        int iK = SafeParcelReader.K(parcel);
        String strP = null;
        while (parcel.dataPosition() < iK) {
            int iC = SafeParcelReader.C(parcel);
            if (SafeParcelReader.v(iC) != 2) {
                SafeParcelReader.J(parcel, iC);
            } else {
                strP = SafeParcelReader.p(parcel, iC);
            }
        }
        SafeParcelReader.u(parcel, iK);
        return new DriveSpace(strP);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ DriveSpace[] newArray(int i10) {
        return new DriveSpace[i10];
    }
}
