package com.google.android.gms.drive.query.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import com.google.android.gms.drive.metadata.internal.MetadataBundle;

/* JADX INFO: loaded from: classes.dex */
public final class zzc implements Parcelable.Creator<zzb> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzb createFromParcel(Parcel parcel) {
        int iK = SafeParcelReader.K(parcel);
        zzx zzxVar = null;
        MetadataBundle metadataBundle = null;
        while (parcel.dataPosition() < iK) {
            int iC = SafeParcelReader.C(parcel);
            int iV = SafeParcelReader.v(iC);
            if (iV == 1) {
                zzxVar = (zzx) SafeParcelReader.o(parcel, iC, zzx.CREATOR);
            } else if (iV != 2) {
                SafeParcelReader.J(parcel, iC);
            } else {
                metadataBundle = (MetadataBundle) SafeParcelReader.o(parcel, iC, MetadataBundle.CREATOR);
            }
        }
        SafeParcelReader.u(parcel, iK);
        return new zzb(zzxVar, metadataBundle);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzb[] newArray(int i10) {
        return new zzb[i10];
    }
}
