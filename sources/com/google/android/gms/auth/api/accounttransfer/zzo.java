package com.google.android.gms.auth.api.accounttransfer;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import java.util.ArrayList;
import java.util.HashSet;

/* JADX INFO: compiled from: com.google.android.gms:play-services-auth-base@@17.1.4 */
/* JADX INFO: loaded from: classes.dex */
public final class zzo implements Parcelable.Creator<zzn> {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ zzn createFromParcel(Parcel parcel) {
        int iK = SafeParcelReader.K(parcel);
        HashSet hashSet = new HashSet();
        int iE = 0;
        ArrayList arrayListT = null;
        zzr zzrVar = null;
        int iE2 = 0;
        while (parcel.dataPosition() < iK) {
            int iC = SafeParcelReader.C(parcel);
            int iV = SafeParcelReader.v(iC);
            if (iV == 1) {
                iE = SafeParcelReader.E(parcel, iC);
                hashSet.add(1);
            } else if (iV == 2) {
                arrayListT = SafeParcelReader.t(parcel, iC, zzt.CREATOR);
                hashSet.add(2);
            } else if (iV == 3) {
                iE2 = SafeParcelReader.E(parcel, iC);
                hashSet.add(3);
            } else if (iV != 4) {
                SafeParcelReader.J(parcel, iC);
            } else {
                zzrVar = (zzr) SafeParcelReader.o(parcel, iC, zzr.CREATOR);
                hashSet.add(4);
            }
        }
        if (parcel.dataPosition() == iK) {
            return new zzn(hashSet, iE, arrayListT, iE2, zzrVar);
        }
        StringBuilder sb = new StringBuilder(37);
        sb.append("Overread allowed size end=");
        sb.append(iK);
        throw new SafeParcelReader.ParseException(sb.toString(), parcel);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ zzn[] newArray(int i10) {
        return new zzn[i10];
    }
}
