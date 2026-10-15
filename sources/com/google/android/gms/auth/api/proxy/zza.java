package com.google.android.gms.auth.api.proxy;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;

/* JADX INFO: compiled from: com.google.android.gms:play-services-auth-base@@17.1.4 */
/* JADX INFO: loaded from: classes.dex */
public final class zza implements Parcelable.Creator<ProxyRequest> {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ ProxyRequest createFromParcel(Parcel parcel) {
        int iK = SafeParcelReader.K(parcel);
        String strP = null;
        byte[] bArrG = null;
        Bundle bundleF = null;
        long jG = 0;
        int iE = 0;
        int iE2 = 0;
        while (parcel.dataPosition() < iK) {
            int iC = SafeParcelReader.C(parcel);
            int iV = SafeParcelReader.v(iC);
            if (iV == 1) {
                strP = SafeParcelReader.p(parcel, iC);
            } else if (iV == 2) {
                iE2 = SafeParcelReader.E(parcel, iC);
            } else if (iV == 3) {
                jG = SafeParcelReader.G(parcel, iC);
            } else if (iV == 4) {
                bArrG = SafeParcelReader.g(parcel, iC);
            } else if (iV == 5) {
                bundleF = SafeParcelReader.f(parcel, iC);
            } else if (iV != 1000) {
                SafeParcelReader.J(parcel, iC);
            } else {
                iE = SafeParcelReader.E(parcel, iC);
            }
        }
        SafeParcelReader.u(parcel, iK);
        return new ProxyRequest(iE, strP, iE2, jG, bArrG, bundleF);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ ProxyRequest[] newArray(int i10) {
        return new ProxyRequest[i10];
    }
}
