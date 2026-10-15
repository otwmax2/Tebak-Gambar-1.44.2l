package com.google.android.gms.internal.drive;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;

/* JADX INFO: loaded from: classes2.dex */
public final class zzej implements Parcelable.Creator<zzei> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzei createFromParcel(Parcel parcel) {
        int iK = SafeParcelReader.K(parcel);
        int iE = 0;
        int iE2 = 0;
        boolean zW = false;
        while (parcel.dataPosition() < iK) {
            int iC = SafeParcelReader.C(parcel);
            int iV = SafeParcelReader.v(iC);
            if (iV == 2) {
                iE = SafeParcelReader.E(parcel, iC);
            } else if (iV == 3) {
                iE2 = SafeParcelReader.E(parcel, iC);
            } else if (iV != 4) {
                SafeParcelReader.J(parcel, iC);
            } else {
                zW = SafeParcelReader.w(parcel, iC);
            }
        }
        SafeParcelReader.u(parcel, iK);
        return new zzei(iE, iE2, zW);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzei[] newArray(int i10) {
        return new zzei[i10];
    }
}
