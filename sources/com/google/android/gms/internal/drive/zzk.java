package com.google.android.gms.internal.drive;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import com.google.android.gms.drive.DriveId;

/* JADX INFO: loaded from: classes2.dex */
public final class zzk implements Parcelable.Creator<zzj> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzj createFromParcel(Parcel parcel) {
        int iK = SafeParcelReader.K(parcel);
        DriveId driveId = null;
        com.google.android.gms.drive.events.zze zzeVar = null;
        com.google.android.gms.drive.events.zzx zzxVar = null;
        com.google.android.gms.drive.events.zzt zztVar = null;
        int iE = 0;
        while (parcel.dataPosition() < iK) {
            int iC = SafeParcelReader.C(parcel);
            int iV = SafeParcelReader.v(iC);
            if (iV == 2) {
                driveId = (DriveId) SafeParcelReader.o(parcel, iC, DriveId.CREATOR);
            } else if (iV == 3) {
                iE = SafeParcelReader.E(parcel, iC);
            } else if (iV == 4) {
                zzeVar = (com.google.android.gms.drive.events.zze) SafeParcelReader.o(parcel, iC, com.google.android.gms.drive.events.zze.CREATOR);
            } else if (iV == 5) {
                zzxVar = (com.google.android.gms.drive.events.zzx) SafeParcelReader.o(parcel, iC, com.google.android.gms.drive.events.zzx.CREATOR);
            } else if (iV != 6) {
                SafeParcelReader.J(parcel, iC);
            } else {
                zztVar = (com.google.android.gms.drive.events.zzt) SafeParcelReader.o(parcel, iC, com.google.android.gms.drive.events.zzt.CREATOR);
            }
        }
        SafeParcelReader.u(parcel, iK);
        return new zzj(driveId, iE, zzeVar, zzxVar, zztVar);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzj[] newArray(int i10) {
        return new zzj[i10];
    }
}
