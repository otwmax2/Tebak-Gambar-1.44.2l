package com.google.android.gms.games.achievement;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import com.google.android.gms.games.PlayerEntity;

/* JADX INFO: compiled from: com.google.android.gms:play-services-games@@21.0.0 */
/* JADX INFO: loaded from: classes.dex */
public final class zza implements Parcelable.Creator<AchievementEntity> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ AchievementEntity createFromParcel(Parcel parcel) {
        int iK = SafeParcelReader.K(parcel);
        long jG = 0;
        long jG2 = 0;
        String strP = null;
        String strP2 = null;
        String strP3 = null;
        Uri uri = null;
        String strP4 = null;
        Uri uri2 = null;
        String strP5 = null;
        String strP6 = null;
        PlayerEntity playerEntity = null;
        String strP7 = null;
        String strP8 = null;
        int iE = 0;
        int iE2 = 0;
        int iE3 = 0;
        int iE4 = 0;
        float fA = -1.0f;
        while (parcel.dataPosition() < iK) {
            int iC = SafeParcelReader.C(parcel);
            switch (SafeParcelReader.v(iC)) {
                case 1:
                    strP = SafeParcelReader.p(parcel, iC);
                    break;
                case 2:
                    iE = SafeParcelReader.E(parcel, iC);
                    break;
                case 3:
                    strP2 = SafeParcelReader.p(parcel, iC);
                    break;
                case 4:
                    strP3 = SafeParcelReader.p(parcel, iC);
                    break;
                case 5:
                    uri = (Uri) SafeParcelReader.o(parcel, iC, Uri.CREATOR);
                    break;
                case 6:
                    strP4 = SafeParcelReader.p(parcel, iC);
                    break;
                case 7:
                    uri2 = (Uri) SafeParcelReader.o(parcel, iC, Uri.CREATOR);
                    break;
                case 8:
                    strP5 = SafeParcelReader.p(parcel, iC);
                    break;
                case 9:
                    iE2 = SafeParcelReader.E(parcel, iC);
                    break;
                case 10:
                    strP6 = SafeParcelReader.p(parcel, iC);
                    break;
                case 11:
                    playerEntity = (PlayerEntity) SafeParcelReader.o(parcel, iC, PlayerEntity.CREATOR);
                    break;
                case 12:
                    iE3 = SafeParcelReader.E(parcel, iC);
                    break;
                case 13:
                    iE4 = SafeParcelReader.E(parcel, iC);
                    break;
                case 14:
                    strP7 = SafeParcelReader.p(parcel, iC);
                    break;
                case 15:
                    jG = SafeParcelReader.G(parcel, iC);
                    break;
                case 16:
                    jG2 = SafeParcelReader.G(parcel, iC);
                    break;
                case 17:
                    fA = SafeParcelReader.A(parcel, iC);
                    break;
                case 18:
                    strP8 = SafeParcelReader.p(parcel, iC);
                    break;
                default:
                    SafeParcelReader.J(parcel, iC);
                    break;
            }
        }
        SafeParcelReader.u(parcel, iK);
        return new AchievementEntity(strP, iE, strP2, strP3, uri, strP4, uri2, strP5, iE2, strP6, playerEntity, iE3, iE4, strP7, jG, jG2, fA, strP8);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ AchievementEntity[] newArray(int i10) {
        return new AchievementEntity[i10];
    }
}
