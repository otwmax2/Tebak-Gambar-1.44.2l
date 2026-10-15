package com.google.android.gms.internal.firebase_auth;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import g5.o0;
import java.util.ArrayList;

/* JADX INFO: compiled from: com.google.firebase:firebase-auth@@19.3.1 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzez implements Parcelable.Creator<zzew> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzew createFromParcel(Parcel parcel) {
        int iK = SafeParcelReader.K(parcel);
        long jG = 0;
        long jG2 = 0;
        String strP = null;
        String strP2 = null;
        String strP3 = null;
        String strP4 = null;
        zzfl zzflVar = null;
        String strP5 = null;
        String strP6 = null;
        o0 o0Var = null;
        ArrayList arrayListT = null;
        boolean zW = false;
        boolean zW2 = false;
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
                    zW = SafeParcelReader.w(parcel, iC);
                    break;
                case 5:
                    strP3 = SafeParcelReader.p(parcel, iC);
                    break;
                case 6:
                    strP4 = SafeParcelReader.p(parcel, iC);
                    break;
                case 7:
                    zzflVar = (zzfl) SafeParcelReader.o(parcel, iC, zzfl.CREATOR);
                    break;
                case 8:
                    strP5 = SafeParcelReader.p(parcel, iC);
                    break;
                case 9:
                    strP6 = SafeParcelReader.p(parcel, iC);
                    break;
                case 10:
                    jG = SafeParcelReader.G(parcel, iC);
                    break;
                case 11:
                    jG2 = SafeParcelReader.G(parcel, iC);
                    break;
                case 12:
                    zW2 = SafeParcelReader.w(parcel, iC);
                    break;
                case 13:
                    o0Var = (o0) SafeParcelReader.o(parcel, iC, o0.CREATOR);
                    break;
                case 14:
                    arrayListT = SafeParcelReader.t(parcel, iC, zzfh.CREATOR);
                    break;
                default:
                    SafeParcelReader.J(parcel, iC);
                    break;
            }
        }
        SafeParcelReader.u(parcel, iK);
        return new zzew(strP, strP2, zW, strP3, strP4, zzflVar, strP5, strP6, jG, jG2, zW2, o0Var, arrayListT);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzew[] newArray(int i10) {
        return new zzew[i10];
    }
}
