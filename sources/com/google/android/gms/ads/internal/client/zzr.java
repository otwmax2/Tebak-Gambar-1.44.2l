package com.google.android.gms.ads.internal.client;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.0.0 */
/* JADX INFO: loaded from: classes.dex */
public final class zzr implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
        int iK = SafeParcelReader.K(parcel);
        String strP = null;
        zzq[] zzqVarArr = null;
        int iE = 0;
        int iE2 = 0;
        boolean zW = false;
        int iE3 = 0;
        int iE4 = 0;
        boolean zW2 = false;
        boolean zW3 = false;
        boolean zW4 = false;
        boolean zW5 = false;
        boolean zW6 = false;
        boolean zW7 = false;
        boolean zW8 = false;
        boolean zW9 = false;
        while (parcel.dataPosition() < iK) {
            int iC = SafeParcelReader.C(parcel);
            switch (SafeParcelReader.v(iC)) {
                case 2:
                    strP = SafeParcelReader.p(parcel, iC);
                    break;
                case 3:
                    iE = SafeParcelReader.E(parcel, iC);
                    break;
                case 4:
                    iE2 = SafeParcelReader.E(parcel, iC);
                    break;
                case 5:
                    zW = SafeParcelReader.w(parcel, iC);
                    break;
                case 6:
                    iE3 = SafeParcelReader.E(parcel, iC);
                    break;
                case 7:
                    iE4 = SafeParcelReader.E(parcel, iC);
                    break;
                case 8:
                    zzqVarArr = (zzq[]) SafeParcelReader.s(parcel, iC, zzq.CREATOR);
                    break;
                case 9:
                    zW2 = SafeParcelReader.w(parcel, iC);
                    break;
                case 10:
                    zW3 = SafeParcelReader.w(parcel, iC);
                    break;
                case 11:
                    zW4 = SafeParcelReader.w(parcel, iC);
                    break;
                case 12:
                    zW5 = SafeParcelReader.w(parcel, iC);
                    break;
                case 13:
                    zW6 = SafeParcelReader.w(parcel, iC);
                    break;
                case 14:
                    zW7 = SafeParcelReader.w(parcel, iC);
                    break;
                case 15:
                    zW8 = SafeParcelReader.w(parcel, iC);
                    break;
                case 16:
                    zW9 = SafeParcelReader.w(parcel, iC);
                    break;
                default:
                    SafeParcelReader.J(parcel, iC);
                    break;
            }
        }
        SafeParcelReader.u(parcel, iK);
        return new zzq(strP, iE, iE2, zW, iE3, iE4, zzqVarArr, zW2, zW3, zW4, zW5, zW6, zW7, zW8, zW9);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i10) {
        return new zzq[i10];
    }
}
