package com.google.android.gms.internal.drive;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes2.dex */
public final class zzfm implements Parcelable.Creator<zzfl> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzfl createFromParcel(Parcel parcel) {
        int iK = SafeParcelReader.K(parcel);
        long jG = 0;
        long jG2 = 0;
        ArrayList arrayListT = null;
        int iE = 0;
        while (parcel.dataPosition() < iK) {
            int iC = SafeParcelReader.C(parcel);
            int iV = SafeParcelReader.v(iC);
            if (iV == 2) {
                jG = SafeParcelReader.G(parcel, iC);
            } else if (iV == 3) {
                jG2 = SafeParcelReader.G(parcel, iC);
            } else if (iV == 4) {
                iE = SafeParcelReader.E(parcel, iC);
            } else if (iV != 5) {
                SafeParcelReader.J(parcel, iC);
            } else {
                arrayListT = SafeParcelReader.t(parcel, iC, com.google.android.gms.drive.zzh.CREATOR);
            }
        }
        SafeParcelReader.u(parcel, iK);
        return new zzfl(jG, jG2, iE, arrayListT);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzfl[] newArray(int i10) {
        return new zzfl[i10];
    }
}
