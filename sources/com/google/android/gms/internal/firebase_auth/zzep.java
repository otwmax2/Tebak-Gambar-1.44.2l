package com.google.android.gms.internal.firebase_auth;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import java.util.ArrayList;

/* JADX INFO: compiled from: com.google.firebase:firebase-auth@@19.3.1 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzep implements Parcelable.Creator<zzem> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzem createFromParcel(Parcel parcel) {
        int iK = SafeParcelReader.K(parcel);
        String strP = null;
        String strP2 = null;
        zzfw zzfwVar = null;
        ArrayList<String> arrayListR = null;
        boolean zW = false;
        boolean zW2 = false;
        while (parcel.dataPosition() < iK) {
            int iC = SafeParcelReader.C(parcel);
            switch (SafeParcelReader.v(iC)) {
                case 2:
                    strP = SafeParcelReader.p(parcel, iC);
                    break;
                case 3:
                    zW = SafeParcelReader.w(parcel, iC);
                    break;
                case 4:
                    strP2 = SafeParcelReader.p(parcel, iC);
                    break;
                case 5:
                    zW2 = SafeParcelReader.w(parcel, iC);
                    break;
                case 6:
                    zzfwVar = (zzfw) SafeParcelReader.o(parcel, iC, zzfw.CREATOR);
                    break;
                case 7:
                    arrayListR = SafeParcelReader.r(parcel, iC);
                    break;
                default:
                    SafeParcelReader.J(parcel, iC);
                    break;
            }
        }
        SafeParcelReader.u(parcel, iK);
        return new zzem(strP, zW, strP2, zW2, zzfwVar, arrayListR);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzem[] newArray(int i10) {
        return new zzem[i10];
    }
}
