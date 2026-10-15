package com.google.android.gms.internal.drive;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import com.google.android.gms.drive.DriveId;
import com.google.android.gms.drive.query.internal.FilterHolder;

/* JADX INFO: loaded from: classes2.dex */
public final class zzgn implements Parcelable.Creator<zzgm> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzgm createFromParcel(Parcel parcel) {
        int iK = SafeParcelReader.K(parcel);
        String strP = null;
        String[] strArrQ = null;
        DriveId driveId = null;
        FilterHolder filterHolder = null;
        while (parcel.dataPosition() < iK) {
            int iC = SafeParcelReader.C(parcel);
            int iV = SafeParcelReader.v(iC);
            if (iV == 2) {
                strP = SafeParcelReader.p(parcel, iC);
            } else if (iV == 3) {
                strArrQ = SafeParcelReader.q(parcel, iC);
            } else if (iV == 4) {
                driveId = (DriveId) SafeParcelReader.o(parcel, iC, DriveId.CREATOR);
            } else if (iV != 5) {
                SafeParcelReader.J(parcel, iC);
            } else {
                filterHolder = (FilterHolder) SafeParcelReader.o(parcel, iC, FilterHolder.CREATOR);
            }
        }
        SafeParcelReader.u(parcel, iK);
        return new zzgm(strP, strArrQ, driveId, filterHolder);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzgm[] newArray(int i10) {
        return new zzgm[i10];
    }
}
