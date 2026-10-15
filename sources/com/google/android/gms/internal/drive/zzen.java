package com.google.android.gms.internal.drive;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes2.dex */
public final class zzen implements Parcelable.Creator<zzem> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzem createFromParcel(Parcel parcel) {
        int iK = SafeParcelReader.K(parcel);
        ArrayList arrayListT = null;
        int iE = 0;
        while (parcel.dataPosition() < iK) {
            int iC = SafeParcelReader.C(parcel);
            int iV = SafeParcelReader.v(iC);
            if (iV == 2) {
                arrayListT = SafeParcelReader.t(parcel, iC, com.google.android.gms.drive.zzr.CREATOR);
            } else if (iV != 3) {
                SafeParcelReader.J(parcel, iC);
            } else {
                iE = SafeParcelReader.E(parcel, iC);
            }
        }
        SafeParcelReader.u(parcel, iK);
        return new zzem(arrayListT, iE);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzem[] newArray(int i10) {
        return new zzem[i10];
    }
}
