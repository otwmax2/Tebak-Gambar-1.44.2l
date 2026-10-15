package com.google.android.gms.games;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;

/* JADX INFO: compiled from: com.google.android.gms:play-services-games@@21.0.0 */
/* JADX INFO: loaded from: classes.dex */
public final class zzk implements Parcelable.Creator<PlayerLevelInfo> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ PlayerLevelInfo createFromParcel(Parcel parcel) {
        int iK = SafeParcelReader.K(parcel);
        PlayerLevel playerLevel = null;
        PlayerLevel playerLevel2 = null;
        long jG = 0;
        long jG2 = 0;
        while (parcel.dataPosition() < iK) {
            int iC = SafeParcelReader.C(parcel);
            int iV = SafeParcelReader.v(iC);
            if (iV == 1) {
                jG = SafeParcelReader.G(parcel, iC);
            } else if (iV == 2) {
                jG2 = SafeParcelReader.G(parcel, iC);
            } else if (iV == 3) {
                playerLevel = (PlayerLevel) SafeParcelReader.o(parcel, iC, PlayerLevel.CREATOR);
            } else if (iV != 4) {
                SafeParcelReader.J(parcel, iC);
            } else {
                playerLevel2 = (PlayerLevel) SafeParcelReader.o(parcel, iC, PlayerLevel.CREATOR);
            }
        }
        SafeParcelReader.u(parcel, iK);
        return new PlayerLevelInfo(jG, jG2, playerLevel, playerLevel2);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ PlayerLevelInfo[] newArray(int i10) {
        return new PlayerLevelInfo[i10];
    }
}
