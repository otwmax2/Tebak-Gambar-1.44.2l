package com.google.android.gms.internal.auth;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;

/* JADX INFO: compiled from: com.google.android.gms:play-services-auth-base@@17.1.4 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzay implements Parcelable.Creator<zzax> {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ zzax createFromParcel(Parcel parcel) {
        int iK = SafeParcelReader.K(parcel);
        int iE = 0;
        String strP = null;
        while (parcel.dataPosition() < iK) {
            int iC = SafeParcelReader.C(parcel);
            int iV = SafeParcelReader.v(iC);
            if (iV == 1) {
                iE = SafeParcelReader.E(parcel, iC);
            } else if (iV != 2) {
                SafeParcelReader.J(parcel, iC);
            } else {
                strP = SafeParcelReader.p(parcel, iC);
            }
        }
        SafeParcelReader.u(parcel, iK);
        return new zzax(iE, strP);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ zzax[] newArray(int i10) {
        return new zzax[i10];
    }
}
