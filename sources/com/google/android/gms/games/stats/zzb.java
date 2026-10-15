package com.google.android.gms.games.stats;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;

/* JADX INFO: compiled from: com.google.android.gms:play-services-games@@21.0.0 */
/* JADX INFO: loaded from: classes.dex */
public final class zzb implements Parcelable.Creator<PlayerStatsEntity> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ PlayerStatsEntity createFromParcel(Parcel parcel) {
        int iK = SafeParcelReader.K(parcel);
        Bundle bundleF = null;
        float fA = 0.0f;
        float fA2 = 0.0f;
        int iE = 0;
        int iE2 = 0;
        int iE3 = 0;
        float fA3 = 0.0f;
        float fA4 = 0.0f;
        float fA5 = 0.0f;
        float fA6 = 0.0f;
        float fA7 = 0.0f;
        while (parcel.dataPosition() < iK) {
            int iC = SafeParcelReader.C(parcel);
            switch (SafeParcelReader.v(iC)) {
                case 1:
                    fA = SafeParcelReader.A(parcel, iC);
                    break;
                case 2:
                    fA2 = SafeParcelReader.A(parcel, iC);
                    break;
                case 3:
                    iE = SafeParcelReader.E(parcel, iC);
                    break;
                case 4:
                    iE2 = SafeParcelReader.E(parcel, iC);
                    break;
                case 5:
                    iE3 = SafeParcelReader.E(parcel, iC);
                    break;
                case 6:
                    fA3 = SafeParcelReader.A(parcel, iC);
                    break;
                case 7:
                    fA4 = SafeParcelReader.A(parcel, iC);
                    break;
                case 8:
                    bundleF = SafeParcelReader.f(parcel, iC);
                    break;
                case 9:
                    fA5 = SafeParcelReader.A(parcel, iC);
                    break;
                case 10:
                    fA6 = SafeParcelReader.A(parcel, iC);
                    break;
                case 11:
                    fA7 = SafeParcelReader.A(parcel, iC);
                    break;
                default:
                    SafeParcelReader.J(parcel, iC);
                    break;
            }
        }
        SafeParcelReader.u(parcel, iK);
        return new PlayerStatsEntity(fA, fA2, iE, iE2, iE3, fA3, fA4, bundleF, fA5, fA6, fA7);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ PlayerStatsEntity[] newArray(int i10) {
        return new PlayerStatsEntity[i10];
    }
}
