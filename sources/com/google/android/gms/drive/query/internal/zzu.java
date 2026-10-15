package com.google.android.gms.drive.query.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;

/* JADX INFO: loaded from: classes.dex */
public final class zzu implements Parcelable.Creator<zzt> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzt createFromParcel(Parcel parcel) {
        int iK = SafeParcelReader.K(parcel);
        while (parcel.dataPosition() < iK) {
            int iC = SafeParcelReader.C(parcel);
            SafeParcelReader.v(iC);
            SafeParcelReader.J(parcel, iC);
        }
        SafeParcelReader.u(parcel, iK);
        return new zzt();
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzt[] newArray(int i10) {
        return new zzt[i10];
    }
}
