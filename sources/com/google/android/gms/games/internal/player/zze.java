package com.google.android.gms.games.internal.player;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;

/* JADX INFO: compiled from: com.google.android.gms:play-services-games@@21.0.0 */
/* JADX INFO: loaded from: classes.dex */
public final class zze implements Parcelable.Creator<ProfileSettingsEntity> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ ProfileSettingsEntity createFromParcel(Parcel parcel) {
        int iK = SafeParcelReader.K(parcel);
        Status status = null;
        String strP = null;
        StockProfileImageEntity stockProfileImageEntity = null;
        boolean zW = false;
        boolean zW2 = false;
        boolean zW3 = false;
        boolean zW4 = false;
        boolean zW5 = false;
        int iE = 0;
        boolean zW6 = false;
        boolean zW7 = false;
        int iE2 = 0;
        int iE3 = 0;
        while (parcel.dataPosition() < iK) {
            int iC = SafeParcelReader.C(parcel);
            switch (SafeParcelReader.v(iC)) {
                case 1:
                    status = (Status) SafeParcelReader.o(parcel, iC, Status.CREATOR);
                    break;
                case 2:
                    strP = SafeParcelReader.p(parcel, iC);
                    break;
                case 3:
                    zW = SafeParcelReader.w(parcel, iC);
                    break;
                case 4:
                    zW2 = SafeParcelReader.w(parcel, iC);
                    break;
                case 5:
                    zW3 = SafeParcelReader.w(parcel, iC);
                    break;
                case 6:
                    stockProfileImageEntity = (StockProfileImageEntity) SafeParcelReader.o(parcel, iC, StockProfileImageEntity.CREATOR);
                    break;
                case 7:
                    zW4 = SafeParcelReader.w(parcel, iC);
                    break;
                case 8:
                    zW5 = SafeParcelReader.w(parcel, iC);
                    break;
                case 9:
                    iE = SafeParcelReader.E(parcel, iC);
                    break;
                case 10:
                    zW6 = SafeParcelReader.w(parcel, iC);
                    break;
                case 11:
                    zW7 = SafeParcelReader.w(parcel, iC);
                    break;
                case 12:
                    iE2 = SafeParcelReader.E(parcel, iC);
                    break;
                case 13:
                    iE3 = SafeParcelReader.E(parcel, iC);
                    break;
                default:
                    SafeParcelReader.J(parcel, iC);
                    break;
            }
        }
        SafeParcelReader.u(parcel, iK);
        return new ProfileSettingsEntity(status, strP, zW, zW2, zW3, stockProfileImageEntity, zW4, zW5, iE, zW6, zW7, iE2, iE3);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ ProfileSettingsEntity[] newArray(int i10) {
        return new ProfileSettingsEntity[i10];
    }
}
