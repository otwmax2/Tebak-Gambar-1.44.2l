package com.google.android.gms.internal.drive;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import com.google.android.gms.drive.DriveId;
import com.google.android.gms.drive.metadata.internal.MetadataBundle;

/* JADX INFO: loaded from: classes2.dex */
public final class zzv implements Parcelable.Creator<zzu> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzu createFromParcel(Parcel parcel) {
        int iK = SafeParcelReader.K(parcel);
        MetadataBundle metadataBundle = null;
        String strP = null;
        DriveId driveId = null;
        Integer numF = null;
        int iE = 0;
        while (parcel.dataPosition() < iK) {
            int iC = SafeParcelReader.C(parcel);
            int iV = SafeParcelReader.v(iC);
            if (iV == 2) {
                metadataBundle = (MetadataBundle) SafeParcelReader.o(parcel, iC, MetadataBundle.CREATOR);
            } else if (iV == 3) {
                iE = SafeParcelReader.E(parcel, iC);
            } else if (iV == 4) {
                strP = SafeParcelReader.p(parcel, iC);
            } else if (iV == 5) {
                driveId = (DriveId) SafeParcelReader.o(parcel, iC, DriveId.CREATOR);
            } else if (iV != 6) {
                SafeParcelReader.J(parcel, iC);
            } else {
                numF = SafeParcelReader.F(parcel, iC);
            }
        }
        SafeParcelReader.u(parcel, iK);
        return new zzu(metadataBundle, iE, strP, driveId, numF);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzu[] newArray(int i10) {
        return new zzu[i10];
    }
}
