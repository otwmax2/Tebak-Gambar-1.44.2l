package com.google.android.gms.games.video;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;

/* JADX INFO: compiled from: com.google.android.gms:play-services-games@@21.0.0 */
/* JADX INFO: loaded from: classes.dex */
public final class zzb implements Parcelable.Creator<VideoConfiguration> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ VideoConfiguration createFromParcel(Parcel parcel) {
        int iK = SafeParcelReader.K(parcel);
        int iE = 0;
        int iE2 = 0;
        boolean zW = false;
        boolean zW2 = false;
        boolean zW3 = false;
        while (parcel.dataPosition() < iK) {
            int iC = SafeParcelReader.C(parcel);
            int iV = SafeParcelReader.v(iC);
            if (iV == 1) {
                iE = SafeParcelReader.E(parcel, iC);
            } else if (iV == 2) {
                iE2 = SafeParcelReader.E(parcel, iC);
            } else if (iV == 7) {
                zW = SafeParcelReader.w(parcel, iC);
            } else if (iV == 8) {
                zW2 = SafeParcelReader.w(parcel, iC);
            } else if (iV != 9) {
                SafeParcelReader.J(parcel, iC);
            } else {
                zW3 = SafeParcelReader.w(parcel, iC);
            }
        }
        SafeParcelReader.u(parcel, iK);
        return new VideoConfiguration(iE, iE2, zW, zW2, zW3);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ VideoConfiguration[] newArray(int i10) {
        return new VideoConfiguration[i10];
    }
}
