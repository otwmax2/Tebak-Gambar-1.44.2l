package com.google.android.gms.internal.ads;

import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import java.util.ArrayList;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzbsp implements Parcelable.Creator {
    public static final zzbso a(Parcel parcel) {
        int iK = SafeParcelReader.K(parcel);
        long jG = 0;
        long jG2 = 0;
        Bundle bundleF = null;
        com.google.android.gms.ads.internal.client.zzl zzlVar = null;
        com.google.android.gms.ads.internal.client.zzq zzqVar = null;
        String strP = null;
        ApplicationInfo applicationInfo = null;
        PackageInfo packageInfo = null;
        String strP2 = null;
        String strP3 = null;
        String strP4 = null;
        zzbzg zzbzgVar = null;
        Bundle bundleF2 = null;
        ArrayList<String> arrayListR = null;
        Bundle bundleF3 = null;
        String strP5 = null;
        String strP6 = null;
        ArrayList<String> arrayListR2 = null;
        String strP7 = null;
        zzbdl zzbdlVar = null;
        ArrayList<String> arrayListR3 = null;
        String strP8 = null;
        String strP9 = null;
        String strP10 = null;
        Bundle bundleF4 = null;
        String strP11 = null;
        com.google.android.gms.ads.internal.client.zzdu zzduVar = null;
        Bundle bundleF5 = null;
        String strP12 = null;
        String strP13 = null;
        String strP14 = null;
        ArrayList<Integer> arrayListK = null;
        String strP15 = null;
        ArrayList<String> arrayListR4 = null;
        ArrayList<String> arrayListR5 = null;
        String strP16 = null;
        zzbjx zzbjxVar = null;
        String strP17 = null;
        Bundle bundleF6 = null;
        int iE = 0;
        int iE2 = 0;
        boolean zW = false;
        int iE3 = 0;
        int iE4 = 0;
        float fA = 0.0f;
        float fA2 = 0.0f;
        boolean zW2 = false;
        int iE5 = 0;
        int iE6 = 0;
        boolean zW3 = false;
        boolean zW4 = false;
        int iE7 = 0;
        boolean zW5 = false;
        boolean zW6 = false;
        int iE8 = 0;
        boolean zW7 = false;
        boolean zW8 = false;
        boolean zW9 = false;
        while (parcel.dataPosition() < iK) {
            int iC = SafeParcelReader.C(parcel);
            switch (SafeParcelReader.v(iC)) {
                case 1:
                    iE = SafeParcelReader.E(parcel, iC);
                    break;
                case 2:
                    bundleF = SafeParcelReader.f(parcel, iC);
                    break;
                case 3:
                    zzlVar = (com.google.android.gms.ads.internal.client.zzl) SafeParcelReader.o(parcel, iC, com.google.android.gms.ads.internal.client.zzl.CREATOR);
                    break;
                case 4:
                    zzqVar = (com.google.android.gms.ads.internal.client.zzq) SafeParcelReader.o(parcel, iC, com.google.android.gms.ads.internal.client.zzq.CREATOR);
                    break;
                case 5:
                    strP = SafeParcelReader.p(parcel, iC);
                    break;
                case 6:
                    applicationInfo = (ApplicationInfo) SafeParcelReader.o(parcel, iC, ApplicationInfo.CREATOR);
                    break;
                case 7:
                    packageInfo = (PackageInfo) SafeParcelReader.o(parcel, iC, PackageInfo.CREATOR);
                    break;
                case 8:
                    strP2 = SafeParcelReader.p(parcel, iC);
                    break;
                case 9:
                    strP3 = SafeParcelReader.p(parcel, iC);
                    break;
                case 10:
                    strP4 = SafeParcelReader.p(parcel, iC);
                    break;
                case 11:
                    zzbzgVar = (zzbzg) SafeParcelReader.o(parcel, iC, zzbzg.CREATOR);
                    break;
                case 12:
                    bundleF2 = SafeParcelReader.f(parcel, iC);
                    break;
                case 13:
                    iE2 = SafeParcelReader.E(parcel, iC);
                    break;
                case 14:
                    arrayListR = SafeParcelReader.r(parcel, iC);
                    break;
                case 15:
                    bundleF3 = SafeParcelReader.f(parcel, iC);
                    break;
                case 16:
                    zW = SafeParcelReader.w(parcel, iC);
                    break;
                case 17:
                case 22:
                case 23:
                case 24:
                case 32:
                case 38:
                case 62:
                default:
                    SafeParcelReader.J(parcel, iC);
                    break;
                case 18:
                    iE3 = SafeParcelReader.E(parcel, iC);
                    break;
                case 19:
                    iE4 = SafeParcelReader.E(parcel, iC);
                    break;
                case 20:
                    fA = SafeParcelReader.A(parcel, iC);
                    break;
                case 21:
                    strP5 = SafeParcelReader.p(parcel, iC);
                    break;
                case 25:
                    jG = SafeParcelReader.G(parcel, iC);
                    break;
                case 26:
                    strP6 = SafeParcelReader.p(parcel, iC);
                    break;
                case 27:
                    arrayListR2 = SafeParcelReader.r(parcel, iC);
                    break;
                case 28:
                    strP7 = SafeParcelReader.p(parcel, iC);
                    break;
                case 29:
                    zzbdlVar = (zzbdl) SafeParcelReader.o(parcel, iC, zzbdl.CREATOR);
                    break;
                case 30:
                    arrayListR3 = SafeParcelReader.r(parcel, iC);
                    break;
                case 31:
                    jG2 = SafeParcelReader.G(parcel, iC);
                    break;
                case 33:
                    strP8 = SafeParcelReader.p(parcel, iC);
                    break;
                case 34:
                    fA2 = SafeParcelReader.A(parcel, iC);
                    break;
                case 35:
                    iE5 = SafeParcelReader.E(parcel, iC);
                    break;
                case 36:
                    iE6 = SafeParcelReader.E(parcel, iC);
                    break;
                case 37:
                    zW3 = SafeParcelReader.w(parcel, iC);
                    break;
                case 39:
                    strP9 = SafeParcelReader.p(parcel, iC);
                    break;
                case 40:
                    zW2 = SafeParcelReader.w(parcel, iC);
                    break;
                case 41:
                    strP10 = SafeParcelReader.p(parcel, iC);
                    break;
                case 42:
                    zW4 = SafeParcelReader.w(parcel, iC);
                    break;
                case 43:
                    iE7 = SafeParcelReader.E(parcel, iC);
                    break;
                case 44:
                    bundleF4 = SafeParcelReader.f(parcel, iC);
                    break;
                case 45:
                    strP11 = SafeParcelReader.p(parcel, iC);
                    break;
                case 46:
                    zzduVar = (com.google.android.gms.ads.internal.client.zzdu) SafeParcelReader.o(parcel, iC, com.google.android.gms.ads.internal.client.zzdu.CREATOR);
                    break;
                case 47:
                    zW5 = SafeParcelReader.w(parcel, iC);
                    break;
                case 48:
                    bundleF5 = SafeParcelReader.f(parcel, iC);
                    break;
                case 49:
                    strP12 = SafeParcelReader.p(parcel, iC);
                    break;
                case 50:
                    strP13 = SafeParcelReader.p(parcel, iC);
                    break;
                case 51:
                    strP14 = SafeParcelReader.p(parcel, iC);
                    break;
                case 52:
                    zW6 = SafeParcelReader.w(parcel, iC);
                    break;
                case 53:
                    arrayListK = SafeParcelReader.k(parcel, iC);
                    break;
                case 54:
                    strP15 = SafeParcelReader.p(parcel, iC);
                    break;
                case 55:
                    arrayListR4 = SafeParcelReader.r(parcel, iC);
                    break;
                case 56:
                    iE8 = SafeParcelReader.E(parcel, iC);
                    break;
                case 57:
                    zW7 = SafeParcelReader.w(parcel, iC);
                    break;
                case 58:
                    zW8 = SafeParcelReader.w(parcel, iC);
                    break;
                case 59:
                    zW9 = SafeParcelReader.w(parcel, iC);
                    break;
                case 60:
                    arrayListR5 = SafeParcelReader.r(parcel, iC);
                    break;
                case 61:
                    strP16 = SafeParcelReader.p(parcel, iC);
                    break;
                case 63:
                    zzbjxVar = (zzbjx) SafeParcelReader.o(parcel, iC, zzbjx.CREATOR);
                    break;
                case 64:
                    strP17 = SafeParcelReader.p(parcel, iC);
                    break;
                case 65:
                    bundleF6 = SafeParcelReader.f(parcel, iC);
                    break;
            }
        }
        SafeParcelReader.u(parcel, iK);
        return new zzbso(iE, bundleF, zzlVar, zzqVar, strP, applicationInfo, packageInfo, strP2, strP3, strP4, zzbzgVar, bundleF2, iE2, arrayListR, bundleF3, zW, iE3, iE4, fA, strP5, jG, strP6, arrayListR2, strP7, zzbdlVar, arrayListR3, jG2, strP8, fA2, zW2, iE5, iE6, zW3, strP9, strP10, zW4, iE7, bundleF4, strP11, zzduVar, zW5, bundleF5, strP12, strP13, strP14, zW6, arrayListK, strP15, arrayListR4, iE8, zW7, zW8, zW9, arrayListR5, strP16, zzbjxVar, strP17, bundleF6);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
        return a(parcel);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i10) {
        return new zzbso[i10];
    }
}
