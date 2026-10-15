package com.google.android.gms.internal.drive;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes2.dex */
public final class zzha implements Parcelable.Creator<zzgz> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzgz createFromParcel(Parcel parcel) {
        int iK = SafeParcelReader.K(parcel);
        ArrayList<String> arrayListR = null;
        while (parcel.dataPosition() < iK) {
            int iC = SafeParcelReader.C(parcel);
            if (SafeParcelReader.v(iC) != 2) {
                SafeParcelReader.J(parcel, iC);
            } else {
                arrayListR = SafeParcelReader.r(parcel, iC);
            }
        }
        SafeParcelReader.u(parcel, iK);
        return new zzgz(arrayListR);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzgz[] newArray(int i10) {
        return new zzgz[i10];
    }
}
