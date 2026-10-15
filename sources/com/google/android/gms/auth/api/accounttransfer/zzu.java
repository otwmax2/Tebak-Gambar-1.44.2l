package com.google.android.gms.auth.api.accounttransfer;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import java.util.HashSet;

/* JADX INFO: compiled from: com.google.android.gms:play-services-auth-base@@17.1.4 */
/* JADX INFO: loaded from: classes.dex */
public final class zzu implements Parcelable.Creator<zzt> {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ zzt createFromParcel(Parcel parcel) {
        int iK = SafeParcelReader.K(parcel);
        HashSet hashSet = new HashSet();
        int iE = 0;
        zzv zzvVar = null;
        String strP = null;
        String strP2 = null;
        String strP3 = null;
        while (parcel.dataPosition() < iK) {
            int iC = SafeParcelReader.C(parcel);
            int iV = SafeParcelReader.v(iC);
            if (iV == 1) {
                iE = SafeParcelReader.E(parcel, iC);
                hashSet.add(1);
            } else if (iV == 2) {
                zzvVar = (zzv) SafeParcelReader.o(parcel, iC, zzv.CREATOR);
                hashSet.add(2);
            } else if (iV == 3) {
                strP = SafeParcelReader.p(parcel, iC);
                hashSet.add(3);
            } else if (iV == 4) {
                strP2 = SafeParcelReader.p(parcel, iC);
                hashSet.add(4);
            } else if (iV != 5) {
                SafeParcelReader.J(parcel, iC);
            } else {
                strP3 = SafeParcelReader.p(parcel, iC);
                hashSet.add(5);
            }
        }
        if (parcel.dataPosition() == iK) {
            return new zzt(hashSet, iE, zzvVar, strP, strP2, strP3);
        }
        StringBuilder sb = new StringBuilder(37);
        sb.append("Overread allowed size end=");
        sb.append(iK);
        throw new SafeParcelReader.ParseException(sb.toString(), parcel);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ zzt[] newArray(int i10) {
        return new zzt[i10];
    }
}
