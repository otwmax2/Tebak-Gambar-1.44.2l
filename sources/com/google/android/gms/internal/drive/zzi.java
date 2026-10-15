package com.google.android.gms.internal.drive;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import com.google.android.gms.drive.DriveId;

/* JADX INFO: loaded from: classes2.dex */
public final class zzi implements Parcelable.Creator<zzh> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzh createFromParcel(Parcel parcel) {
        int iK = SafeParcelReader.K(parcel);
        long jG = 0;
        long jG2 = 0;
        DriveId driveId = null;
        int iE = 0;
        int iE2 = 0;
        while (parcel.dataPosition() < iK) {
            int iC = SafeParcelReader.C(parcel);
            int iV = SafeParcelReader.v(iC);
            if (iV == 2) {
                iE = SafeParcelReader.E(parcel, iC);
            } else if (iV == 3) {
                driveId = (DriveId) SafeParcelReader.o(parcel, iC, DriveId.CREATOR);
            } else if (iV == 4) {
                iE2 = SafeParcelReader.E(parcel, iC);
            } else if (iV == 5) {
                jG = SafeParcelReader.G(parcel, iC);
            } else if (iV != 6) {
                SafeParcelReader.J(parcel, iC);
            } else {
                jG2 = SafeParcelReader.G(parcel, iC);
            }
        }
        SafeParcelReader.u(parcel, iK);
        return new zzh(iE, driveId, iE2, jG, jG2);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzh[] newArray(int i10) {
        return new zzh[i10];
    }
}
