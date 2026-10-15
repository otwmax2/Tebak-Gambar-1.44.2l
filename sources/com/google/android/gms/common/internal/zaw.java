package com.google.android.gms.common.internal;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;

/* JADX INFO: compiled from: com.google.android.gms:play-services-base@@18.0.1 */
/* JADX INFO: loaded from: classes.dex */
public final class zaw implements Parcelable.Creator<zav> {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ zav createFromParcel(Parcel parcel) {
        int iK = SafeParcelReader.K(parcel);
        IBinder iBinderD = null;
        ConnectionResult connectionResult = null;
        int iE = 0;
        boolean zW = false;
        boolean zW2 = false;
        while (parcel.dataPosition() < iK) {
            int iC = SafeParcelReader.C(parcel);
            int iV = SafeParcelReader.v(iC);
            if (iV == 1) {
                iE = SafeParcelReader.E(parcel, iC);
            } else if (iV == 2) {
                iBinderD = SafeParcelReader.D(parcel, iC);
            } else if (iV == 3) {
                connectionResult = (ConnectionResult) SafeParcelReader.o(parcel, iC, ConnectionResult.CREATOR);
            } else if (iV == 4) {
                zW = SafeParcelReader.w(parcel, iC);
            } else if (iV != 5) {
                SafeParcelReader.J(parcel, iC);
            } else {
                zW2 = SafeParcelReader.w(parcel, iC);
            }
        }
        SafeParcelReader.u(parcel, iK);
        return new zav(iE, iBinderD, connectionResult, zW, zW2);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zav[] newArray(int i10) {
        return new zav[i10];
    }
}
