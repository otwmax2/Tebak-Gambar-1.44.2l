package com.google.android.gms.internal.firebase_auth;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import g5.g0;

/* JADX INFO: compiled from: com.google.firebase:firebase-auth@@19.3.1 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzdy implements Parcelable.Creator<zzdv> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzdv createFromParcel(Parcel parcel) {
        int iK = SafeParcelReader.K(parcel);
        g0 g0Var = null;
        String strP = null;
        String strP2 = null;
        long jG = 0;
        boolean zW = false;
        boolean zW2 = false;
        while (parcel.dataPosition() < iK) {
            int iC = SafeParcelReader.C(parcel);
            switch (SafeParcelReader.v(iC)) {
                case 1:
                    g0Var = (g0) SafeParcelReader.o(parcel, iC, g0.CREATOR);
                    break;
                case 2:
                    strP = SafeParcelReader.p(parcel, iC);
                    break;
                case 3:
                    strP2 = SafeParcelReader.p(parcel, iC);
                    break;
                case 4:
                    jG = SafeParcelReader.G(parcel, iC);
                    break;
                case 5:
                    zW = SafeParcelReader.w(parcel, iC);
                    break;
                case 6:
                    zW2 = SafeParcelReader.w(parcel, iC);
                    break;
                default:
                    SafeParcelReader.J(parcel, iC);
                    break;
            }
        }
        SafeParcelReader.u(parcel, iK);
        return new zzdv(g0Var, strP, strP2, jG, zW, zW2);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzdv[] newArray(int i10) {
        return new zzdv[i10];
    }
}
