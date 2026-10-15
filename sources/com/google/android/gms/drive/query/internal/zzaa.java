package com.google.android.gms.drive.query.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;

/* JADX INFO: loaded from: classes.dex */
public final class zzaa implements Parcelable.Creator<zzz> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzz createFromParcel(Parcel parcel) {
        int iK = SafeParcelReader.K(parcel);
        while (parcel.dataPosition() < iK) {
            int iC = SafeParcelReader.C(parcel);
            SafeParcelReader.v(iC);
            SafeParcelReader.J(parcel, iC);
        }
        SafeParcelReader.u(parcel, iK);
        return new zzz();
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzz[] newArray(int i10) {
        return new zzz[i10];
    }
}
