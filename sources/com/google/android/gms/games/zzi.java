package com.google.android.gms.games;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import com.google.android.gms.games.internal.player.MostRecentGameInfoEntity;

/* JADX INFO: compiled from: com.google.android.gms:play-services-games@@21.0.0 */
/* JADX INFO: loaded from: classes.dex */
public class zzi implements Parcelable.Creator<PlayerEntity> {
    @Override // android.os.Parcelable.Creator
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public PlayerEntity createFromParcel(Parcel parcel) {
        int iK = SafeParcelReader.K(parcel);
        long jG = 0;
        long jG2 = 0;
        String strP = null;
        String strP2 = null;
        Uri uri = null;
        Uri uri2 = null;
        String strP3 = null;
        String strP4 = null;
        String strP5 = null;
        MostRecentGameInfoEntity mostRecentGameInfoEntity = null;
        PlayerLevelInfo playerLevelInfo = null;
        String strP6 = null;
        String strP7 = null;
        Uri uri3 = null;
        String strP8 = null;
        Uri uri4 = null;
        String strP9 = null;
        zzm zzmVar = null;
        zza zzaVar = null;
        long jG3 = -1;
        int iE = 0;
        boolean zW = false;
        boolean zW2 = false;
        while (parcel.dataPosition() < iK) {
            int iC = SafeParcelReader.C(parcel);
            int iV = SafeParcelReader.v(iC);
            if (iV == 29) {
                jG3 = SafeParcelReader.G(parcel, iC);
            } else if (iV == 33) {
                zzmVar = (zzm) SafeParcelReader.o(parcel, iC, zzm.CREATOR);
            } else if (iV != 35) {
                switch (iV) {
                    case 1:
                        strP = SafeParcelReader.p(parcel, iC);
                        break;
                    case 2:
                        strP2 = SafeParcelReader.p(parcel, iC);
                        break;
                    case 3:
                        uri = (Uri) SafeParcelReader.o(parcel, iC, Uri.CREATOR);
                        break;
                    case 4:
                        uri2 = (Uri) SafeParcelReader.o(parcel, iC, Uri.CREATOR);
                        break;
                    case 5:
                        jG = SafeParcelReader.G(parcel, iC);
                        break;
                    case 6:
                        iE = SafeParcelReader.E(parcel, iC);
                        break;
                    case 7:
                        jG2 = SafeParcelReader.G(parcel, iC);
                        break;
                    case 8:
                        strP3 = SafeParcelReader.p(parcel, iC);
                        break;
                    case 9:
                        strP4 = SafeParcelReader.p(parcel, iC);
                        break;
                    default:
                        switch (iV) {
                            case 14:
                                strP5 = SafeParcelReader.p(parcel, iC);
                                break;
                            case 15:
                                mostRecentGameInfoEntity = (MostRecentGameInfoEntity) SafeParcelReader.o(parcel, iC, MostRecentGameInfoEntity.CREATOR);
                                break;
                            case 16:
                                playerLevelInfo = (PlayerLevelInfo) SafeParcelReader.o(parcel, iC, PlayerLevelInfo.CREATOR);
                                break;
                            default:
                                switch (iV) {
                                    case 18:
                                        zW = SafeParcelReader.w(parcel, iC);
                                        break;
                                    case 19:
                                        zW2 = SafeParcelReader.w(parcel, iC);
                                        break;
                                    case 20:
                                        strP6 = SafeParcelReader.p(parcel, iC);
                                        break;
                                    case 21:
                                        strP7 = SafeParcelReader.p(parcel, iC);
                                        break;
                                    case 22:
                                        uri3 = (Uri) SafeParcelReader.o(parcel, iC, Uri.CREATOR);
                                        break;
                                    case 23:
                                        strP8 = SafeParcelReader.p(parcel, iC);
                                        break;
                                    case 24:
                                        uri4 = (Uri) SafeParcelReader.o(parcel, iC, Uri.CREATOR);
                                        break;
                                    case 25:
                                        strP9 = SafeParcelReader.p(parcel, iC);
                                        break;
                                    default:
                                        SafeParcelReader.J(parcel, iC);
                                        break;
                                }
                                break;
                        }
                        break;
                }
            } else {
                zzaVar = (zza) SafeParcelReader.o(parcel, iC, zza.CREATOR);
            }
        }
        SafeParcelReader.u(parcel, iK);
        return new PlayerEntity(strP, strP2, uri, uri2, jG, iE, jG2, strP3, strP4, strP5, mostRecentGameInfoEntity, playerLevelInfo, zW, zW2, strP6, strP7, uri3, strP8, uri4, strP9, jG3, zzmVar, zzaVar);
    }

    @Override // android.os.Parcelable.Creator
    public /* synthetic */ PlayerEntity[] newArray(int i10) {
        return new PlayerEntity[i10];
    }
}
