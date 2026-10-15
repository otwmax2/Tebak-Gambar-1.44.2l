package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzbxw implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
        int iK = SafeParcelReader.K(parcel);
        String strP = null;
        String strP2 = null;
        com.google.android.gms.ads.internal.client.zzq zzqVar = null;
        com.google.android.gms.ads.internal.client.zzl zzlVar = null;
        while (parcel.dataPosition() < iK) {
            int iC = SafeParcelReader.C(parcel);
            int iV = SafeParcelReader.v(iC);
            if (iV == 1) {
                strP = SafeParcelReader.p(parcel, iC);
            } else if (iV == 2) {
                strP2 = SafeParcelReader.p(parcel, iC);
            } else if (iV == 3) {
                zzqVar = (com.google.android.gms.ads.internal.client.zzq) SafeParcelReader.o(parcel, iC, com.google.android.gms.ads.internal.client.zzq.CREATOR);
            } else if (iV != 4) {
                SafeParcelReader.J(parcel, iC);
            } else {
                zzlVar = (com.google.android.gms.ads.internal.client.zzl) SafeParcelReader.o(parcel, iC, com.google.android.gms.ads.internal.client.zzl.CREATOR);
            }
        }
        SafeParcelReader.u(parcel, iK);
        return new zzbxv(strP, strP2, zzqVar, zzlVar);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i10) {
        return new zzbxv[i10];
    }
}
