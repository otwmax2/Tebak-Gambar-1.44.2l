package com.google.android.gms.internal.drive;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import com.google.android.gms.drive.Contents;
import com.google.android.gms.drive.DriveId;
import com.google.android.gms.drive.metadata.internal.MetadataBundle;

/* JADX INFO: loaded from: classes2.dex */
public final class zzx implements Parcelable.Creator<zzw> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzw createFromParcel(Parcel parcel) {
        int iK = SafeParcelReader.K(parcel);
        Integer numF = null;
        DriveId driveId = null;
        MetadataBundle metadataBundle = null;
        Contents contents = null;
        String strP = null;
        boolean zW = false;
        int iE = 0;
        int iE2 = 0;
        while (parcel.dataPosition() < iK) {
            int iC = SafeParcelReader.C(parcel);
            switch (SafeParcelReader.v(iC)) {
                case 2:
                    driveId = (DriveId) SafeParcelReader.o(parcel, iC, DriveId.CREATOR);
                    break;
                case 3:
                    metadataBundle = (MetadataBundle) SafeParcelReader.o(parcel, iC, MetadataBundle.CREATOR);
                    break;
                case 4:
                    contents = (Contents) SafeParcelReader.o(parcel, iC, Contents.CREATOR);
                    break;
                case 5:
                    numF = SafeParcelReader.F(parcel, iC);
                    break;
                case 6:
                    zW = SafeParcelReader.w(parcel, iC);
                    break;
                case 7:
                    strP = SafeParcelReader.p(parcel, iC);
                    break;
                case 8:
                    iE = SafeParcelReader.E(parcel, iC);
                    break;
                case 9:
                    iE2 = SafeParcelReader.E(parcel, iC);
                    break;
                default:
                    SafeParcelReader.J(parcel, iC);
                    break;
            }
        }
        SafeParcelReader.u(parcel, iK);
        return new zzw(driveId, metadataBundle, contents, numF.intValue(), zW, strP, iE, iE2);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzw[] newArray(int i10) {
        return new zzw[i10];
    }
}
