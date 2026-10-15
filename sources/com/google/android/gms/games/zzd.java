package com.google.android.gms.games;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;

/* JADX INFO: compiled from: com.google.android.gms:play-services-games@@21.0.0 */
/* JADX INFO: loaded from: classes.dex */
public class zzd implements Parcelable.Creator<GameEntity> {
    @Override // android.os.Parcelable.Creator
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public GameEntity createFromParcel(Parcel parcel) {
        int iK = SafeParcelReader.K(parcel);
        String strP = null;
        String strP2 = null;
        String strP3 = null;
        String strP4 = null;
        String strP5 = null;
        String strP6 = null;
        Uri uri = null;
        Uri uri2 = null;
        Uri uri3 = null;
        String strP7 = null;
        String strP8 = null;
        String strP9 = null;
        String strP10 = null;
        String strP11 = null;
        boolean zW = false;
        boolean zW2 = false;
        int iE = 0;
        int iE2 = 0;
        int iE3 = 0;
        boolean zW3 = false;
        boolean zW4 = false;
        boolean zW5 = false;
        boolean zW6 = false;
        boolean zW7 = false;
        boolean zW8 = false;
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
                    strP4 = SafeParcelReader.p(parcel, iC);
                    break;
                case 5:
                    strP5 = SafeParcelReader.p(parcel, iC);
                    break;
                case 6:
                    strP6 = SafeParcelReader.p(parcel, iC);
                    break;
                case 7:
                    uri = (Uri) SafeParcelReader.o(parcel, iC, Uri.CREATOR);
                    break;
                case 8:
                    uri2 = (Uri) SafeParcelReader.o(parcel, iC, Uri.CREATOR);
                    break;
                case 9:
                    uri3 = (Uri) SafeParcelReader.o(parcel, iC, Uri.CREATOR);
                    break;
                case 10:
                    zW = SafeParcelReader.w(parcel, iC);
                    break;
                case 11:
                    zW2 = SafeParcelReader.w(parcel, iC);
                    break;
                case 12:
                    strP7 = SafeParcelReader.p(parcel, iC);
                    break;
                case 13:
                    iE = SafeParcelReader.E(parcel, iC);
                    break;
                case 14:
                    iE2 = SafeParcelReader.E(parcel, iC);
                    break;
                case 15:
                    iE3 = SafeParcelReader.E(parcel, iC);
                    break;
                case 16:
                    zW3 = SafeParcelReader.w(parcel, iC);
                    break;
                case 17:
                    zW4 = SafeParcelReader.w(parcel, iC);
                    break;
                case 18:
                    strP8 = SafeParcelReader.p(parcel, iC);
                    break;
                case 19:
                    strP9 = SafeParcelReader.p(parcel, iC);
                    break;
                case 20:
                    strP10 = SafeParcelReader.p(parcel, iC);
                    break;
                case 21:
                    zW5 = SafeParcelReader.w(parcel, iC);
                    break;
                case 22:
                    zW6 = SafeParcelReader.w(parcel, iC);
                    break;
                case 23:
                    zW7 = SafeParcelReader.w(parcel, iC);
                    break;
                case 24:
                    strP11 = SafeParcelReader.p(parcel, iC);
                    break;
                case 25:
                    zW8 = SafeParcelReader.w(parcel, iC);
                    break;
                default:
                    SafeParcelReader.J(parcel, iC);
                    break;
            }
        }
        SafeParcelReader.u(parcel, iK);
        return new GameEntity(strP, strP2, strP3, strP4, strP5, strP6, uri, uri2, uri3, zW, zW2, strP7, iE, iE2, iE3, zW3, zW4, strP8, strP9, strP10, zW5, zW6, zW7, strP11, zW8);
    }

    @Override // android.os.Parcelable.Creator
    public /* synthetic */ GameEntity[] newArray(int i10) {
        return new GameEntity[i10];
    }
}
