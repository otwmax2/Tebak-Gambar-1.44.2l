package com.google.android.gms.internal.drive;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;

/* JADX INFO: loaded from: classes2.dex */
public final class zzgi implements Parcelable.Creator<zzgh> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzgh createFromParcel(Parcel parcel) {
        int iK = SafeParcelReader.K(parcel);
        boolean zW = false;
        while (parcel.dataPosition() < iK) {
            int iC = SafeParcelReader.C(parcel);
            if (SafeParcelReader.v(iC) != 2) {
                SafeParcelReader.J(parcel, iC);
            } else {
                zW = SafeParcelReader.w(parcel, iC);
            }
        }
        SafeParcelReader.u(parcel, iK);
        return new zzgh(zW);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzgh[] newArray(int i10) {
        return new zzgh[i10];
    }
}
