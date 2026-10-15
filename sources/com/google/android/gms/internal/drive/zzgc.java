package com.google.android.gms.internal.drive;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;

/* JADX INFO: loaded from: classes2.dex */
public final class zzgc implements Parcelable.Creator<zzfx> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzfx createFromParcel(Parcel parcel) {
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
        return new zzfx(zW);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzfx[] newArray(int i10) {
        return new zzfx[i10];
    }
}
