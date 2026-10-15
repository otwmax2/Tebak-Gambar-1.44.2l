package com.google.android.gms.drive.query.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public final class zzs implements Parcelable.Creator<zzr> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzr createFromParcel(Parcel parcel) {
        int iK = SafeParcelReader.K(parcel);
        zzx zzxVar = null;
        ArrayList arrayListT = null;
        while (parcel.dataPosition() < iK) {
            int iC = SafeParcelReader.C(parcel);
            int iV = SafeParcelReader.v(iC);
            if (iV == 1) {
                zzxVar = (zzx) SafeParcelReader.o(parcel, iC, zzx.CREATOR);
            } else if (iV != 2) {
                SafeParcelReader.J(parcel, iC);
            } else {
                arrayListT = SafeParcelReader.t(parcel, iC, FilterHolder.CREATOR);
            }
        }
        SafeParcelReader.u(parcel, iK);
        return new zzr(zzxVar, arrayListT);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzr[] newArray(int i10) {
        return new zzr[i10];
    }
}
