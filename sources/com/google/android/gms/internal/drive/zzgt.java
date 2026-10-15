package com.google.android.gms.internal.drive;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import com.google.android.gms.drive.DriveId;

/* JADX INFO: loaded from: classes2.dex */
public final class zzgt implements Parcelable.Creator<zzgs> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzgs createFromParcel(Parcel parcel) {
        int iK = SafeParcelReader.K(parcel);
        DriveId driveId = null;
        com.google.android.gms.drive.events.zzt zztVar = null;
        int iE = 0;
        while (parcel.dataPosition() < iK) {
            int iC = SafeParcelReader.C(parcel);
            int iV = SafeParcelReader.v(iC);
            if (iV == 2) {
                driveId = (DriveId) SafeParcelReader.o(parcel, iC, DriveId.CREATOR);
            } else if (iV == 3) {
                iE = SafeParcelReader.E(parcel, iC);
            } else if (iV != 4) {
                SafeParcelReader.J(parcel, iC);
            } else {
                zztVar = (com.google.android.gms.drive.events.zzt) SafeParcelReader.o(parcel, iC, com.google.android.gms.drive.events.zzt.CREATOR);
            }
        }
        SafeParcelReader.u(parcel, iK);
        return new zzgs(driveId, iE, zztVar);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzgs[] newArray(int i10) {
        return new zzgs[i10];
    }
}
