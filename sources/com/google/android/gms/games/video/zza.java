package com.google.android.gms.games.video;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;

/* JADX INFO: compiled from: com.google.android.gms:play-services-games@@21.0.0 */
/* JADX INFO: loaded from: classes.dex */
public final class zza implements Parcelable.Creator<VideoCapabilities> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ VideoCapabilities createFromParcel(Parcel parcel) {
        int iK = SafeParcelReader.K(parcel);
        boolean[] zArrE = null;
        boolean[] zArrE2 = null;
        boolean zW = false;
        boolean zW2 = false;
        boolean zW3 = false;
        while (parcel.dataPosition() < iK) {
            int iC = SafeParcelReader.C(parcel);
            int iV = SafeParcelReader.v(iC);
            if (iV == 1) {
                zW = SafeParcelReader.w(parcel, iC);
            } else if (iV == 2) {
                zW2 = SafeParcelReader.w(parcel, iC);
            } else if (iV == 3) {
                zW3 = SafeParcelReader.w(parcel, iC);
            } else if (iV == 4) {
                zArrE = SafeParcelReader.e(parcel, iC);
            } else if (iV != 5) {
                SafeParcelReader.J(parcel, iC);
            } else {
                zArrE2 = SafeParcelReader.e(parcel, iC);
            }
        }
        SafeParcelReader.u(parcel, iK);
        return new VideoCapabilities(zW, zW2, zW3, zArrE, zArrE2);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ VideoCapabilities[] newArray(int i10) {
        return new VideoCapabilities[i10];
    }
}
