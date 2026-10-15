package com.google.android.gms.drive.query.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;

/* JADX INFO: loaded from: classes.dex */
public final class zzw implements Parcelable.Creator<zzv> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzv createFromParcel(Parcel parcel) {
        int iK = SafeParcelReader.K(parcel);
        FilterHolder filterHolder = null;
        while (parcel.dataPosition() < iK) {
            int iC = SafeParcelReader.C(parcel);
            if (SafeParcelReader.v(iC) != 1) {
                SafeParcelReader.J(parcel, iC);
            } else {
                filterHolder = (FilterHolder) SafeParcelReader.o(parcel, iC, FilterHolder.CREATOR);
            }
        }
        SafeParcelReader.u(parcel, iK);
        return new zzv(filterHolder);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzv[] newArray(int i10) {
        return new zzv[i10];
    }
}
