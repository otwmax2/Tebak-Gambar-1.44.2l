package com.google.android.gms.internal.drive;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import com.google.android.gms.drive.DriveId;

/* JADX INFO: loaded from: classes2.dex */
public final class zzey implements Parcelable.Creator<zzex> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzex createFromParcel(Parcel parcel) {
        int iK = SafeParcelReader.K(parcel);
        DriveId driveId = null;
        while (parcel.dataPosition() < iK) {
            int iC = SafeParcelReader.C(parcel);
            if (SafeParcelReader.v(iC) != 2) {
                SafeParcelReader.J(parcel, iC);
            } else {
                driveId = (DriveId) SafeParcelReader.o(parcel, iC, DriveId.CREATOR);
            }
        }
        SafeParcelReader.u(parcel, iK);
        return new zzex(driveId);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzex[] newArray(int i10) {
        return new zzex[i10];
    }
}
