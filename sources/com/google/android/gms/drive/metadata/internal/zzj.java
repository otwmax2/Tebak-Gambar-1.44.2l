package com.google.android.gms.drive.metadata.internal;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;

/* JADX INFO: loaded from: classes.dex */
public final class zzj implements Parcelable.Creator<MetadataBundle> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ MetadataBundle createFromParcel(Parcel parcel) {
        int iK = SafeParcelReader.K(parcel);
        Bundle bundleF = null;
        while (parcel.dataPosition() < iK) {
            int iC = SafeParcelReader.C(parcel);
            if (SafeParcelReader.v(iC) != 2) {
                SafeParcelReader.J(parcel, iC);
            } else {
                bundleF = SafeParcelReader.f(parcel, iC);
            }
        }
        SafeParcelReader.u(parcel, iK);
        return new MetadataBundle(bundleF);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ MetadataBundle[] newArray(int i10) {
        return new MetadataBundle[i10];
    }
}
