package com.google.android.gms.drive.query.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import com.google.android.gms.drive.metadata.internal.MetadataBundle;

/* JADX INFO: loaded from: classes.dex */
public final class zzo implements Parcelable.Creator<zzn> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzn createFromParcel(Parcel parcel) {
        int iK = SafeParcelReader.K(parcel);
        MetadataBundle metadataBundle = null;
        while (parcel.dataPosition() < iK) {
            int iC = SafeParcelReader.C(parcel);
            if (SafeParcelReader.v(iC) != 1) {
                SafeParcelReader.J(parcel, iC);
            } else {
                metadataBundle = (MetadataBundle) SafeParcelReader.o(parcel, iC, MetadataBundle.CREATOR);
            }
        }
        SafeParcelReader.u(parcel, iK);
        return new zzn(metadataBundle);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzn[] newArray(int i10) {
        return new zzn[i10];
    }
}
