package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzbsw implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
        int iK = SafeParcelReader.K(parcel);
        String strP = null;
        Bundle bundleF = null;
        byte[] bArrG = null;
        String strP2 = null;
        String strP3 = null;
        int iE = 0;
        boolean zW = false;
        while (parcel.dataPosition() < iK) {
            int iC = SafeParcelReader.C(parcel);
            switch (SafeParcelReader.v(iC)) {
                case 1:
                    strP = SafeParcelReader.p(parcel, iC);
                    break;
                case 2:
                    iE = SafeParcelReader.E(parcel, iC);
                    break;
                case 3:
                    bundleF = SafeParcelReader.f(parcel, iC);
                    break;
                case 4:
                    bArrG = SafeParcelReader.g(parcel, iC);
                    break;
                case 5:
                    zW = SafeParcelReader.w(parcel, iC);
                    break;
                case 6:
                    strP2 = SafeParcelReader.p(parcel, iC);
                    break;
                case 7:
                    strP3 = SafeParcelReader.p(parcel, iC);
                    break;
                default:
                    SafeParcelReader.J(parcel, iC);
                    break;
            }
        }
        SafeParcelReader.u(parcel, iK);
        return new zzbsv(strP, iE, bundleF, bArrG, zW, strP2, strP3);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i10) {
        return new zzbsv[i10];
    }
}
