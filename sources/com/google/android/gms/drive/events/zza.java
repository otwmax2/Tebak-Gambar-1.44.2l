package com.google.android.gms.drive.events;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import com.google.android.gms.drive.DriveId;

/* JADX INFO: loaded from: classes.dex */
public final class zza implements Parcelable.Creator<ChangeEvent> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ ChangeEvent createFromParcel(Parcel parcel) {
        int iK = SafeParcelReader.K(parcel);
        DriveId driveId = null;
        int iE = 0;
        while (parcel.dataPosition() < iK) {
            int iC = SafeParcelReader.C(parcel);
            int iV = SafeParcelReader.v(iC);
            if (iV == 2) {
                driveId = (DriveId) SafeParcelReader.o(parcel, iC, DriveId.CREATOR);
            } else if (iV != 3) {
                SafeParcelReader.J(parcel, iC);
            } else {
                iE = SafeParcelReader.E(parcel, iC);
            }
        }
        SafeParcelReader.u(parcel, iK);
        return new ChangeEvent(driveId, iE);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ ChangeEvent[] newArray(int i10) {
        return new ChangeEvent[i10];
    }
}
