package com.google.android.gms.games.internal.player;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;

/* JADX INFO: compiled from: com.google.android.gms:play-services-games@@21.0.0 */
/* JADX INFO: loaded from: classes.dex */
public final class zzc implements Parcelable.Creator<MostRecentGameInfoEntity> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ MostRecentGameInfoEntity createFromParcel(Parcel parcel) {
        int iK = SafeParcelReader.K(parcel);
        String strP = null;
        String strP2 = null;
        Uri uri = null;
        Uri uri2 = null;
        Uri uri3 = null;
        long jG = 0;
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
                    jG = SafeParcelReader.G(parcel, iC);
                    break;
                case 4:
                    uri = (Uri) SafeParcelReader.o(parcel, iC, Uri.CREATOR);
                    break;
                case 5:
                    uri2 = (Uri) SafeParcelReader.o(parcel, iC, Uri.CREATOR);
                    break;
                case 6:
                    uri3 = (Uri) SafeParcelReader.o(parcel, iC, Uri.CREATOR);
                    break;
                default:
                    SafeParcelReader.J(parcel, iC);
                    break;
            }
        }
        SafeParcelReader.u(parcel, iK);
        return new MostRecentGameInfoEntity(strP, strP2, jG, uri, uri2, uri3);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ MostRecentGameInfoEntity[] newArray(int i10) {
        return new MostRecentGameInfoEntity[i10];
    }
}
