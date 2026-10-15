package com.google.android.gms.internal.drive;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import com.google.android.gms.drive.DriveId;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes2.dex */
public final class zzfg implements Parcelable.Creator<zzff> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzff createFromParcel(Parcel parcel) {
        int iK = SafeParcelReader.K(parcel);
        DataHolder dataHolder = null;
        ArrayList arrayListT = null;
        com.google.android.gms.drive.zza zzaVar = null;
        boolean zW = false;
        while (parcel.dataPosition() < iK) {
            int iC = SafeParcelReader.C(parcel);
            int iV = SafeParcelReader.v(iC);
            if (iV == 2) {
                dataHolder = (DataHolder) SafeParcelReader.o(parcel, iC, DataHolder.CREATOR);
            } else if (iV == 3) {
                arrayListT = SafeParcelReader.t(parcel, iC, DriveId.CREATOR);
            } else if (iV == 4) {
                zzaVar = (com.google.android.gms.drive.zza) SafeParcelReader.o(parcel, iC, com.google.android.gms.drive.zza.CREATOR);
            } else if (iV != 5) {
                SafeParcelReader.J(parcel, iC);
            } else {
                zW = SafeParcelReader.w(parcel, iC);
            }
        }
        SafeParcelReader.u(parcel, iK);
        return new zzff(dataHolder, arrayListT, zzaVar, zW);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzff[] newArray(int i10) {
        return new zzff[i10];
    }
}
