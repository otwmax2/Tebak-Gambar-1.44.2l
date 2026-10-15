package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzbjb implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
        int iK = SafeParcelReader.K(parcel);
        String strP = null;
        byte[] bArrG = null;
        String[] strArrQ = null;
        String[] strArrQ2 = null;
        long jG = 0;
        boolean zW = false;
        int iE = 0;
        boolean zW2 = false;
        while (parcel.dataPosition() < iK) {
            int iC = SafeParcelReader.C(parcel);
            switch (SafeParcelReader.v(iC)) {
                case 1:
                    zW = SafeParcelReader.w(parcel, iC);
                    break;
                case 2:
                    strP = SafeParcelReader.p(parcel, iC);
                    break;
                case 3:
                    iE = SafeParcelReader.E(parcel, iC);
                    break;
                case 4:
                    bArrG = SafeParcelReader.g(parcel, iC);
                    break;
                case 5:
                    strArrQ = SafeParcelReader.q(parcel, iC);
                    break;
                case 6:
                    strArrQ2 = SafeParcelReader.q(parcel, iC);
                    break;
                case 7:
                    zW2 = SafeParcelReader.w(parcel, iC);
                    break;
                case 8:
                    jG = SafeParcelReader.G(parcel, iC);
                    break;
                default:
                    SafeParcelReader.J(parcel, iC);
                    break;
            }
        }
        SafeParcelReader.u(parcel, iK);
        return new zzbja(zW, strP, iE, bArrG, strArrQ, strArrQ2, zW2, jG);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i10) {
        return new zzbja[i10];
    }
}
