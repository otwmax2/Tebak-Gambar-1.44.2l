package com.google.android.gms.ads.internal.client;

import android.location.Location;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import java.util.ArrayList;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.0.0 */
/* JADX INFO: loaded from: classes.dex */
public final class zzn implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
        int iK = SafeParcelReader.K(parcel);
        Bundle bundleF = null;
        ArrayList<String> arrayListR = null;
        String strP = null;
        zzfh zzfhVar = null;
        Location location = null;
        String strP2 = null;
        Bundle bundleF2 = null;
        Bundle bundleF3 = null;
        ArrayList<String> arrayListR2 = null;
        String strP3 = null;
        String strP4 = null;
        zzc zzcVar = null;
        String strP5 = null;
        ArrayList<String> arrayListR3 = null;
        String strP6 = null;
        long jG = 0;
        int iE = 0;
        int iE2 = 0;
        boolean zW = false;
        int iE3 = 0;
        boolean zW2 = false;
        boolean zW3 = false;
        int iE4 = 0;
        int iE5 = 0;
        while (parcel.dataPosition() < iK) {
            int iC = SafeParcelReader.C(parcel);
            switch (SafeParcelReader.v(iC)) {
                case 1:
                    iE = SafeParcelReader.E(parcel, iC);
                    break;
                case 2:
                    jG = SafeParcelReader.G(parcel, iC);
                    break;
                case 3:
                    bundleF = SafeParcelReader.f(parcel, iC);
                    break;
                case 4:
                    iE2 = SafeParcelReader.E(parcel, iC);
                    break;
                case 5:
                    arrayListR = SafeParcelReader.r(parcel, iC);
                    break;
                case 6:
                    zW = SafeParcelReader.w(parcel, iC);
                    break;
                case 7:
                    iE3 = SafeParcelReader.E(parcel, iC);
                    break;
                case 8:
                    zW2 = SafeParcelReader.w(parcel, iC);
                    break;
                case 9:
                    strP = SafeParcelReader.p(parcel, iC);
                    break;
                case 10:
                    zzfhVar = (zzfh) SafeParcelReader.o(parcel, iC, zzfh.CREATOR);
                    break;
                case 11:
                    location = (Location) SafeParcelReader.o(parcel, iC, Location.CREATOR);
                    break;
                case 12:
                    strP2 = SafeParcelReader.p(parcel, iC);
                    break;
                case 13:
                    bundleF2 = SafeParcelReader.f(parcel, iC);
                    break;
                case 14:
                    bundleF3 = SafeParcelReader.f(parcel, iC);
                    break;
                case 15:
                    arrayListR2 = SafeParcelReader.r(parcel, iC);
                    break;
                case 16:
                    strP3 = SafeParcelReader.p(parcel, iC);
                    break;
                case 17:
                    strP4 = SafeParcelReader.p(parcel, iC);
                    break;
                case 18:
                    zW3 = SafeParcelReader.w(parcel, iC);
                    break;
                case 19:
                    zzcVar = (zzc) SafeParcelReader.o(parcel, iC, zzc.CREATOR);
                    break;
                case 20:
                    iE4 = SafeParcelReader.E(parcel, iC);
                    break;
                case 21:
                    strP5 = SafeParcelReader.p(parcel, iC);
                    break;
                case 22:
                    arrayListR3 = SafeParcelReader.r(parcel, iC);
                    break;
                case 23:
                    iE5 = SafeParcelReader.E(parcel, iC);
                    break;
                case 24:
                    strP6 = SafeParcelReader.p(parcel, iC);
                    break;
                default:
                    SafeParcelReader.J(parcel, iC);
                    break;
            }
        }
        SafeParcelReader.u(parcel, iK);
        return new zzl(iE, jG, bundleF, iE2, arrayListR, zW, iE3, zW2, strP, zzfhVar, location, strP2, bundleF2, bundleF3, arrayListR2, strP3, strP4, zW3, zzcVar, iE4, strP5, arrayListR3, iE5, strP6);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i10) {
        return new zzl[i10];
    }
}
