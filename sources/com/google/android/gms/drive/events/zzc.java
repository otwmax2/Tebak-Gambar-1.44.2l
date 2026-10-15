package com.google.android.gms.drive.events;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;

/* JADX INFO: loaded from: classes.dex */
public final class zzc implements Parcelable.Creator<zzb> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzb createFromParcel(Parcel parcel) {
        int iK = SafeParcelReader.K(parcel);
        zze zzeVar = null;
        while (parcel.dataPosition() < iK) {
            int iC = SafeParcelReader.C(parcel);
            if (SafeParcelReader.v(iC) != 3) {
                SafeParcelReader.J(parcel, iC);
            } else {
                zzeVar = (zze) SafeParcelReader.o(parcel, iC, zze.CREATOR);
            }
        }
        SafeParcelReader.u(parcel, iK);
        return new zzb(zzeVar);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzb[] newArray(int i10) {
        return new zzb[i10];
    }
}
