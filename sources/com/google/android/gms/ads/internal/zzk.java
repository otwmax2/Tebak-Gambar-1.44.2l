package com.google.android.gms.ads.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes.dex */
public final class zzk implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
        int iK = SafeParcelReader.K(parcel);
        String strP = null;
        boolean zW = false;
        boolean zW2 = false;
        boolean zW3 = false;
        float fA = 0.0f;
        int iE = 0;
        boolean zW4 = false;
        boolean zW5 = false;
        boolean zW6 = false;
        while (parcel.dataPosition() < iK) {
            int iC = SafeParcelReader.C(parcel);
            switch (SafeParcelReader.v(iC)) {
                case 2:
                    zW = SafeParcelReader.w(parcel, iC);
                    break;
                case 3:
                    zW2 = SafeParcelReader.w(parcel, iC);
                    break;
                case 4:
                    strP = SafeParcelReader.p(parcel, iC);
                    break;
                case 5:
                    zW3 = SafeParcelReader.w(parcel, iC);
                    break;
                case 6:
                    fA = SafeParcelReader.A(parcel, iC);
                    break;
                case 7:
                    iE = SafeParcelReader.E(parcel, iC);
                    break;
                case 8:
                    zW4 = SafeParcelReader.w(parcel, iC);
                    break;
                case 9:
                    zW5 = SafeParcelReader.w(parcel, iC);
                    break;
                case 10:
                    zW6 = SafeParcelReader.w(parcel, iC);
                    break;
                default:
                    SafeParcelReader.J(parcel, iC);
                    break;
            }
        }
        SafeParcelReader.u(parcel, iK);
        return new zzj(zW, zW2, strP, zW3, fA, iE, zW4, zW5, zW6);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i10) {
        return new zzj[i10];
    }
}
