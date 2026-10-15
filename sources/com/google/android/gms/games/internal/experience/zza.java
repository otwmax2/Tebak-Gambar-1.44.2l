package com.google.android.gms.games.internal.experience;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import com.google.android.gms.games.GameEntity;

/* JADX INFO: compiled from: com.google.android.gms:play-services-games@@21.0.0 */
/* JADX INFO: loaded from: classes.dex */
public final class zza implements Parcelable.Creator<ExperienceEventEntity> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ ExperienceEventEntity createFromParcel(Parcel parcel) {
        int iK = SafeParcelReader.K(parcel);
        long jG = 0;
        long jG2 = 0;
        long jG3 = 0;
        String strP = null;
        GameEntity gameEntity = null;
        String strP2 = null;
        String strP3 = null;
        String strP4 = null;
        Uri uri = null;
        int iE = 0;
        int iE2 = 0;
        while (parcel.dataPosition() < iK) {
            int iC = SafeParcelReader.C(parcel);
            switch (SafeParcelReader.v(iC)) {
                case 1:
                    strP = SafeParcelReader.p(parcel, iC);
                    break;
                case 2:
                    gameEntity = (GameEntity) SafeParcelReader.o(parcel, iC, GameEntity.CREATOR);
                    break;
                case 3:
                    strP2 = SafeParcelReader.p(parcel, iC);
                    break;
                case 4:
                    strP3 = SafeParcelReader.p(parcel, iC);
                    break;
                case 5:
                    strP4 = SafeParcelReader.p(parcel, iC);
                    break;
                case 6:
                    uri = (Uri) SafeParcelReader.o(parcel, iC, Uri.CREATOR);
                    break;
                case 7:
                    jG = SafeParcelReader.G(parcel, iC);
                    break;
                case 8:
                    jG2 = SafeParcelReader.G(parcel, iC);
                    break;
                case 9:
                    jG3 = SafeParcelReader.G(parcel, iC);
                    break;
                case 10:
                    iE = SafeParcelReader.E(parcel, iC);
                    break;
                case 11:
                    iE2 = SafeParcelReader.E(parcel, iC);
                    break;
                default:
                    SafeParcelReader.J(parcel, iC);
                    break;
            }
        }
        SafeParcelReader.u(parcel, iK);
        return new ExperienceEventEntity(strP, gameEntity, strP2, strP3, strP4, uri, jG, jG2, jG3, iE, iE2);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ ExperienceEventEntity[] newArray(int i10) {
        return new ExperienceEventEntity[i10];
    }
}
