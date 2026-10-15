package com.google.android.gms.games;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;

/* JADX INFO: compiled from: com.google.android.gms:play-services-games@@21.0.0 */
/* JADX INFO: loaded from: classes.dex */
public final class zzj implements Parcelable.Creator<PlayerLevel> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ PlayerLevel createFromParcel(Parcel parcel) {
        int iK = SafeParcelReader.K(parcel);
        long jG = 0;
        long jG2 = 0;
        int iE = 0;
        while (parcel.dataPosition() < iK) {
            int iC = SafeParcelReader.C(parcel);
            int iV = SafeParcelReader.v(iC);
            if (iV == 1) {
                iE = SafeParcelReader.E(parcel, iC);
            } else if (iV == 2) {
                jG = SafeParcelReader.G(parcel, iC);
            } else if (iV != 3) {
                SafeParcelReader.J(parcel, iC);
            } else {
                jG2 = SafeParcelReader.G(parcel, iC);
            }
        }
        SafeParcelReader.u(parcel, iK);
        return new PlayerLevel(iE, jG, jG2);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ PlayerLevel[] newArray(int i10) {
        return new PlayerLevel[i10];
    }
}
