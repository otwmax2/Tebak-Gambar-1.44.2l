package com.google.android.gms.internal.ads;

import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import java.util.ArrayList;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzbss implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
        int iK = SafeParcelReader.K(parcel);
        ApplicationInfo applicationInfo = null;
        String strP = null;
        PackageInfo packageInfo = null;
        String strP2 = null;
        String strP3 = null;
        ArrayList<String> arrayListR = null;
        int iE = 0;
        boolean zW = false;
        boolean zW2 = false;
        while (parcel.dataPosition() < iK) {
            int iC = SafeParcelReader.C(parcel);
            switch (SafeParcelReader.v(iC)) {
                case 1:
                    applicationInfo = (ApplicationInfo) SafeParcelReader.o(parcel, iC, ApplicationInfo.CREATOR);
                    break;
                case 2:
                    strP = SafeParcelReader.p(parcel, iC);
                    break;
                case 3:
                    packageInfo = (PackageInfo) SafeParcelReader.o(parcel, iC, PackageInfo.CREATOR);
                    break;
                case 4:
                    strP2 = SafeParcelReader.p(parcel, iC);
                    break;
                case 5:
                    iE = SafeParcelReader.E(parcel, iC);
                    break;
                case 6:
                    strP3 = SafeParcelReader.p(parcel, iC);
                    break;
                case 7:
                    arrayListR = SafeParcelReader.r(parcel, iC);
                    break;
                case 8:
                    zW = SafeParcelReader.w(parcel, iC);
                    break;
                case 9:
                    zW2 = SafeParcelReader.w(parcel, iC);
                    break;
                default:
                    SafeParcelReader.J(parcel, iC);
                    break;
            }
        }
        SafeParcelReader.u(parcel, iK);
        return new zzbsr(applicationInfo, strP, packageInfo, strP2, iE, strP3, arrayListR, zW, zW2);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i10) {
        return new zzbsr[i10];
    }
}
