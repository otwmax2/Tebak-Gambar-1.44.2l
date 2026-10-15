package com.google.android.gms.drive.query;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import com.google.android.gms.drive.query.internal.zzf;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public final class zzc implements Parcelable.Creator<SortOrder> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ SortOrder createFromParcel(Parcel parcel) {
        int iK = SafeParcelReader.K(parcel);
        ArrayList arrayListT = null;
        boolean zW = false;
        while (parcel.dataPosition() < iK) {
            int iC = SafeParcelReader.C(parcel);
            int iV = SafeParcelReader.v(iC);
            if (iV == 1) {
                arrayListT = SafeParcelReader.t(parcel, iC, zzf.CREATOR);
            } else if (iV != 2) {
                SafeParcelReader.J(parcel, iC);
            } else {
                zW = SafeParcelReader.w(parcel, iC);
            }
        }
        SafeParcelReader.u(parcel, iK);
        return new SortOrder(arrayListT, zW);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ SortOrder[] newArray(int i10) {
        return new SortOrder[i10];
    }
}
