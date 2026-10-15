package com.google.android.gms.drive;

import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;

/* JADX INFO: loaded from: classes.dex */
public final class zzc implements Parcelable.Creator<Contents> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Contents createFromParcel(Parcel parcel) {
        int iK = SafeParcelReader.K(parcel);
        ParcelFileDescriptor parcelFileDescriptor = null;
        DriveId driveId = null;
        String strP = null;
        int iE = 0;
        int iE2 = 0;
        boolean zW = false;
        while (parcel.dataPosition() < iK) {
            int iC = SafeParcelReader.C(parcel);
            int iV = SafeParcelReader.v(iC);
            if (iV == 2) {
                parcelFileDescriptor = (ParcelFileDescriptor) SafeParcelReader.o(parcel, iC, ParcelFileDescriptor.CREATOR);
            } else if (iV == 3) {
                iE = SafeParcelReader.E(parcel, iC);
            } else if (iV == 4) {
                iE2 = SafeParcelReader.E(parcel, iC);
            } else if (iV == 5) {
                driveId = (DriveId) SafeParcelReader.o(parcel, iC, DriveId.CREATOR);
            } else if (iV == 7) {
                zW = SafeParcelReader.w(parcel, iC);
            } else if (iV != 8) {
                SafeParcelReader.J(parcel, iC);
            } else {
                strP = SafeParcelReader.p(parcel, iC);
            }
        }
        SafeParcelReader.u(parcel, iK);
        return new Contents(parcelFileDescriptor, iE, iE2, driveId, zW, strP);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Contents[] newArray(int i10) {
        return new Contents[i10];
    }
}
