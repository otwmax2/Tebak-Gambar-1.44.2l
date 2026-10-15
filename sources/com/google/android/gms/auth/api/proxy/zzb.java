package com.google.android.gms.auth.api.proxy;

import android.app.PendingIntent;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;

/* JADX INFO: compiled from: com.google.android.gms:play-services-auth-base@@17.1.4 */
/* JADX INFO: loaded from: classes.dex */
public final class zzb implements Parcelable.Creator<ProxyResponse> {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ ProxyResponse createFromParcel(Parcel parcel) {
        int iK = SafeParcelReader.K(parcel);
        PendingIntent pendingIntent = null;
        Bundle bundleF = null;
        byte[] bArrG = null;
        int iE = 0;
        int iE2 = 0;
        int iE3 = 0;
        while (parcel.dataPosition() < iK) {
            int iC = SafeParcelReader.C(parcel);
            int iV = SafeParcelReader.v(iC);
            if (iV == 1) {
                iE2 = SafeParcelReader.E(parcel, iC);
            } else if (iV == 2) {
                pendingIntent = (PendingIntent) SafeParcelReader.o(parcel, iC, PendingIntent.CREATOR);
            } else if (iV == 3) {
                iE3 = SafeParcelReader.E(parcel, iC);
            } else if (iV == 4) {
                bundleF = SafeParcelReader.f(parcel, iC);
            } else if (iV == 5) {
                bArrG = SafeParcelReader.g(parcel, iC);
            } else if (iV != 1000) {
                SafeParcelReader.J(parcel, iC);
            } else {
                iE = SafeParcelReader.E(parcel, iC);
            }
        }
        SafeParcelReader.u(parcel, iK);
        return new ProxyResponse(iE, iE2, pendingIntent, iE3, bundleF, bArrG);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ ProxyResponse[] newArray(int i10) {
        return new ProxyResponse[i10];
    }
}
