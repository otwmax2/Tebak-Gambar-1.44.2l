package com.google.android.gms.games.internal.player;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;

/* JADX INFO: compiled from: com.google.android.gms:play-services-games@@21.0.0 */
/* JADX INFO: loaded from: classes.dex */
public final class zzf implements Parcelable.Creator<StockProfileImageEntity> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ StockProfileImageEntity createFromParcel(Parcel parcel) {
        int iK = SafeParcelReader.K(parcel);
        String strP = null;
        Uri uri = null;
        while (parcel.dataPosition() < iK) {
            int iC = SafeParcelReader.C(parcel);
            int iV = SafeParcelReader.v(iC);
            if (iV == 1) {
                strP = SafeParcelReader.p(parcel, iC);
            } else if (iV != 2) {
                SafeParcelReader.J(parcel, iC);
            } else {
                uri = (Uri) SafeParcelReader.o(parcel, iC, Uri.CREATOR);
            }
        }
        SafeParcelReader.u(parcel, iK);
        return new StockProfileImageEntity(strP, uri);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ StockProfileImageEntity[] newArray(int i10) {
        return new StockProfileImageEntity[i10];
    }
}
