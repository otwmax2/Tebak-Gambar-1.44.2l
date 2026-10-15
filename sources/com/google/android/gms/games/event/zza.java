package com.google.android.gms.games.event;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import com.google.android.gms.games.PlayerEntity;

/* JADX INFO: compiled from: com.google.android.gms:play-services-games@@21.0.0 */
/* JADX INFO: loaded from: classes.dex */
public final class zza implements Parcelable.Creator<EventEntity> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ EventEntity createFromParcel(Parcel parcel) {
        int iK = SafeParcelReader.K(parcel);
        String strP = null;
        String strP2 = null;
        String strP3 = null;
        Uri uri = null;
        String strP4 = null;
        PlayerEntity playerEntity = null;
        String strP5 = null;
        long jG = 0;
        boolean zW = false;
        while (parcel.dataPosition() < iK) {
            int iC = SafeParcelReader.C(parcel);
            switch (SafeParcelReader.v(iC)) {
                case 1:
                    strP = SafeParcelReader.p(parcel, iC);
                    break;
                case 2:
                    strP2 = SafeParcelReader.p(parcel, iC);
                    break;
                case 3:
                    strP3 = SafeParcelReader.p(parcel, iC);
                    break;
                case 4:
                    uri = (Uri) SafeParcelReader.o(parcel, iC, Uri.CREATOR);
                    break;
                case 5:
                    strP4 = SafeParcelReader.p(parcel, iC);
                    break;
                case 6:
                    playerEntity = (PlayerEntity) SafeParcelReader.o(parcel, iC, PlayerEntity.CREATOR);
                    break;
                case 7:
                    jG = SafeParcelReader.G(parcel, iC);
                    break;
                case 8:
                    strP5 = SafeParcelReader.p(parcel, iC);
                    break;
                case 9:
                    zW = SafeParcelReader.w(parcel, iC);
                    break;
                default:
                    SafeParcelReader.J(parcel, iC);
                    break;
            }
        }
        SafeParcelReader.u(parcel, iK);
        return new EventEntity(strP, strP2, strP3, uri, strP4, playerEntity, jG, strP5, zW);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ EventEntity[] newArray(int i10) {
        return new EventEntity[i10];
    }
}
