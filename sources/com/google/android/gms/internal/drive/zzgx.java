package com.google.android.gms.internal.drive;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import com.google.android.gms.drive.DriveId;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes2.dex */
public final class zzgx implements Parcelable.Creator<zzgw> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzgw createFromParcel(Parcel parcel) {
        int iK = SafeParcelReader.K(parcel);
        DriveId driveId = null;
        ArrayList arrayListT = null;
        while (parcel.dataPosition() < iK) {
            int iC = SafeParcelReader.C(parcel);
            int iV = SafeParcelReader.v(iC);
            if (iV == 2) {
                driveId = (DriveId) SafeParcelReader.o(parcel, iC, DriveId.CREATOR);
            } else if (iV != 3) {
                SafeParcelReader.J(parcel, iC);
            } else {
                arrayListT = SafeParcelReader.t(parcel, iC, DriveId.CREATOR);
            }
        }
        SafeParcelReader.u(parcel, iK);
        return new zzgw(driveId, arrayListT);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzgw[] newArray(int i10) {
        return new zzgw[i10];
    }
}
