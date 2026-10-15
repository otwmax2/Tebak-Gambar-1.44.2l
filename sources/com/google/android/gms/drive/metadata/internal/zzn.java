package com.google.android.gms.drive.metadata.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public final class zzn implements Parcelable.Creator<ParentDriveIdSet> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ ParentDriveIdSet createFromParcel(Parcel parcel) {
        int iK = SafeParcelReader.K(parcel);
        ArrayList arrayListT = null;
        while (parcel.dataPosition() < iK) {
            int iC = SafeParcelReader.C(parcel);
            if (SafeParcelReader.v(iC) != 2) {
                SafeParcelReader.J(parcel, iC);
            } else {
                arrayListT = SafeParcelReader.t(parcel, iC, zzq.CREATOR);
            }
        }
        SafeParcelReader.u(parcel, iK);
        return new ParentDriveIdSet(arrayListT);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ ParentDriveIdSet[] newArray(int i10) {
        return new ParentDriveIdSet[i10];
    }
}
