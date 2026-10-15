package com.google.android.gms.games.snapshot;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import com.google.android.gms.games.GameEntity;
import com.google.android.gms.games.PlayerEntity;

/* JADX INFO: compiled from: com.google.android.gms:play-services-games@@21.0.0 */
/* JADX INFO: loaded from: classes.dex */
public final class zzd implements Parcelable.Creator<SnapshotMetadataEntity> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ SnapshotMetadataEntity createFromParcel(Parcel parcel) {
        int iK = SafeParcelReader.K(parcel);
        long jG = 0;
        long jG2 = 0;
        long jG3 = 0;
        GameEntity gameEntity = null;
        PlayerEntity playerEntity = null;
        String strP = null;
        Uri uri = null;
        String strP2 = null;
        String strP3 = null;
        String strP4 = null;
        String strP5 = null;
        String strP6 = null;
        float fA = 0.0f;
        boolean zW = false;
        while (parcel.dataPosition() < iK) {
            int iC = SafeParcelReader.C(parcel);
            switch (SafeParcelReader.v(iC)) {
                case 1:
                    gameEntity = (GameEntity) SafeParcelReader.o(parcel, iC, GameEntity.CREATOR);
                    break;
                case 2:
                    playerEntity = (PlayerEntity) SafeParcelReader.o(parcel, iC, PlayerEntity.CREATOR);
                    break;
                case 3:
                    strP = SafeParcelReader.p(parcel, iC);
                    break;
                case 4:
                default:
                    SafeParcelReader.J(parcel, iC);
                    break;
                case 5:
                    uri = (Uri) SafeParcelReader.o(parcel, iC, Uri.CREATOR);
                    break;
                case 6:
                    strP2 = SafeParcelReader.p(parcel, iC);
                    break;
                case 7:
                    strP3 = SafeParcelReader.p(parcel, iC);
                    break;
                case 8:
                    strP4 = SafeParcelReader.p(parcel, iC);
                    break;
                case 9:
                    jG = SafeParcelReader.G(parcel, iC);
                    break;
                case 10:
                    jG2 = SafeParcelReader.G(parcel, iC);
                    break;
                case 11:
                    fA = SafeParcelReader.A(parcel, iC);
                    break;
                case 12:
                    strP5 = SafeParcelReader.p(parcel, iC);
                    break;
                case 13:
                    zW = SafeParcelReader.w(parcel, iC);
                    break;
                case 14:
                    jG3 = SafeParcelReader.G(parcel, iC);
                    break;
                case 15:
                    strP6 = SafeParcelReader.p(parcel, iC);
                    break;
            }
        }
        SafeParcelReader.u(parcel, iK);
        return new SnapshotMetadataEntity(gameEntity, playerEntity, strP, uri, strP2, strP3, strP4, jG, jG2, fA, strP5, zW, jG3, strP6);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ SnapshotMetadataEntity[] newArray(int i10) {
        return new SnapshotMetadataEntity[i10];
    }
}
