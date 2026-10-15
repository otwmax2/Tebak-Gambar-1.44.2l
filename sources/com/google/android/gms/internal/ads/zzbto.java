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
public final class zzbto implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
        int iK = SafeParcelReader.K(parcel);
        Bundle bundleF = null;
        zzbzg zzbzgVar = null;
        ApplicationInfo applicationInfo = null;
        String strP = null;
        ArrayList<String> arrayListR = null;
        PackageInfo packageInfo = null;
        String strP2 = null;
        String strP3 = null;
        zzfaq zzfaqVar = null;
        String strP4 = null;
        boolean zW = false;
        boolean zW2 = false;
        while (parcel.dataPosition() < iK) {
            int iC = SafeParcelReader.C(parcel);
            switch (SafeParcelReader.v(iC)) {
                case 1:
                    bundleF = SafeParcelReader.f(parcel, iC);
                    break;
                case 2:
                    zzbzgVar = (zzbzg) SafeParcelReader.o(parcel, iC, zzbzg.CREATOR);
                    break;
                case 3:
                    applicationInfo = (ApplicationInfo) SafeParcelReader.o(parcel, iC, ApplicationInfo.CREATOR);
                    break;
                case 4:
                    strP = SafeParcelReader.p(parcel, iC);
                    break;
                case 5:
                    arrayListR = SafeParcelReader.r(parcel, iC);
                    break;
                case 6:
                    packageInfo = (PackageInfo) SafeParcelReader.o(parcel, iC, PackageInfo.CREATOR);
                    break;
                case 7:
                    strP2 = SafeParcelReader.p(parcel, iC);
                    break;
                case 8:
                default:
                    SafeParcelReader.J(parcel, iC);
                    break;
                case 9:
                    strP3 = SafeParcelReader.p(parcel, iC);
                    break;
                case 10:
                    zzfaqVar = (zzfaq) SafeParcelReader.o(parcel, iC, zzfaq.CREATOR);
                    break;
                case 11:
                    strP4 = SafeParcelReader.p(parcel, iC);
                    break;
                case 12:
                    zW = SafeParcelReader.w(parcel, iC);
                    break;
                case 13:
                    zW2 = SafeParcelReader.w(parcel, iC);
                    break;
            }
        }
        SafeParcelReader.u(parcel, iK);
        return new zzbtn(bundleF, zzbzgVar, applicationInfo, strP, arrayListR, packageInfo, strP2, strP3, zzfaqVar, strP4, zW, zW2);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i10) {
        return new zzbtn[i10];
    }
}
