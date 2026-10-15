package com.google.android.gms.internal.firebase_auth;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;

/* JADX INFO: compiled from: com.google.firebase:firebase-auth@@19.3.1 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzgb implements Parcelable.Creator<zzfy> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzfy createFromParcel(Parcel parcel) {
        int iK = SafeParcelReader.K(parcel);
        String strP = null;
        String strP2 = null;
        String strP3 = null;
        String strP4 = null;
        String strP5 = null;
        String strP6 = null;
        String strP7 = null;
        String strP8 = null;
        String strP9 = null;
        String strP10 = null;
        String strP11 = null;
        String strP12 = null;
        String strP13 = null;
        boolean zW = false;
        boolean zW2 = false;
        boolean zW3 = false;
        while (parcel.dataPosition() < iK) {
            int iC = SafeParcelReader.C(parcel);
            switch (SafeParcelReader.v(iC)) {
                case 2:
                    strP = SafeParcelReader.p(parcel, iC);
                    break;
                case 3:
                    strP2 = SafeParcelReader.p(parcel, iC);
                    break;
                case 4:
                    strP3 = SafeParcelReader.p(parcel, iC);
                    break;
                case 5:
                    strP4 = SafeParcelReader.p(parcel, iC);
                    break;
                case 6:
                    strP5 = SafeParcelReader.p(parcel, iC);
                    break;
                case 7:
                    strP6 = SafeParcelReader.p(parcel, iC);
                    break;
                case 8:
                    strP7 = SafeParcelReader.p(parcel, iC);
                    break;
                case 9:
                    strP8 = SafeParcelReader.p(parcel, iC);
                    break;
                case 10:
                    zW = SafeParcelReader.w(parcel, iC);
                    break;
                case 11:
                    zW2 = SafeParcelReader.w(parcel, iC);
                    break;
                case 12:
                    strP9 = SafeParcelReader.p(parcel, iC);
                    break;
                case 13:
                    strP10 = SafeParcelReader.p(parcel, iC);
                    break;
                case 14:
                    strP11 = SafeParcelReader.p(parcel, iC);
                    break;
                case 15:
                    strP12 = SafeParcelReader.p(parcel, iC);
                    break;
                case 16:
                    zW3 = SafeParcelReader.w(parcel, iC);
                    break;
                case 17:
                    strP13 = SafeParcelReader.p(parcel, iC);
                    break;
                default:
                    SafeParcelReader.J(parcel, iC);
                    break;
            }
        }
        SafeParcelReader.u(parcel, iK);
        return new zzfy(strP, strP2, strP3, strP4, strP5, strP6, strP7, strP8, zW, zW2, strP9, strP10, strP11, strP12, zW3, strP13);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzfy[] newArray(int i10) {
        return new zzfy[i10];
    }
}
