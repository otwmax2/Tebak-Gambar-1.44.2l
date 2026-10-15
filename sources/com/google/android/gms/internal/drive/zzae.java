package com.google.android.gms.internal.drive;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;

/* JADX INFO: loaded from: classes2.dex */
public final class zzae implements Parcelable.Creator<zzad> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzad createFromParcel(Parcel parcel) {
        int iK = SafeParcelReader.K(parcel);
        while (parcel.dataPosition() < iK) {
            int iC = SafeParcelReader.C(parcel);
            SafeParcelReader.v(iC);
            SafeParcelReader.J(parcel, iC);
        }
        SafeParcelReader.u(parcel, iK);
        return new zzad();
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzad[] newArray(int i10) {
        return new zzad[i10];
    }
}
