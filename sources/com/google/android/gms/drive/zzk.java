package com.google.android.gms.drive;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;

/* JADX INFO: loaded from: classes.dex */
public final class zzk implements Parcelable.Creator<DriveId> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ DriveId createFromParcel(Parcel parcel) {
        int iK = SafeParcelReader.K(parcel);
        long jG = 0;
        long jG2 = 0;
        String strP = null;
        int iE = -1;
        while (parcel.dataPosition() < iK) {
            int iC = SafeParcelReader.C(parcel);
            int iV = SafeParcelReader.v(iC);
            if (iV == 2) {
                strP = SafeParcelReader.p(parcel, iC);
            } else if (iV == 3) {
                jG = SafeParcelReader.G(parcel, iC);
            } else if (iV == 4) {
                jG2 = SafeParcelReader.G(parcel, iC);
            } else if (iV != 5) {
                SafeParcelReader.J(parcel, iC);
            } else {
                iE = SafeParcelReader.E(parcel, iC);
            }
        }
        SafeParcelReader.u(parcel, iK);
        return new DriveId(strP, jG, jG2, iE);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ DriveId[] newArray(int i10) {
        return new DriveId[i10];
    }
}
