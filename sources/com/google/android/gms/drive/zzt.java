package com.google.android.gms.drive;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;

/* JADX INFO: loaded from: classes.dex */
public final class zzt implements Parcelable.Creator<UserMetadata> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ UserMetadata createFromParcel(Parcel parcel) {
        int iK = SafeParcelReader.K(parcel);
        String strP = null;
        String strP2 = null;
        String strP3 = null;
        String strP4 = null;
        boolean zW = false;
        while (parcel.dataPosition() < iK) {
            int iC = SafeParcelReader.C(parcel);
            int iV = SafeParcelReader.v(iC);
            if (iV == 2) {
                strP = SafeParcelReader.p(parcel, iC);
            } else if (iV == 3) {
                strP2 = SafeParcelReader.p(parcel, iC);
            } else if (iV == 4) {
                strP3 = SafeParcelReader.p(parcel, iC);
            } else if (iV == 5) {
                zW = SafeParcelReader.w(parcel, iC);
            } else if (iV != 6) {
                SafeParcelReader.J(parcel, iC);
            } else {
                strP4 = SafeParcelReader.p(parcel, iC);
            }
        }
        SafeParcelReader.u(parcel, iK);
        return new UserMetadata(strP, strP2, strP3, zW, strP4);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ UserMetadata[] newArray(int i10) {
        return new UserMetadata[i10];
    }
}
