package com.google.android.gms.internal.drive;

import android.os.IBinder;
import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;

/* JADX INFO: loaded from: classes2.dex */
public final class zzgg implements Parcelable.Creator<zzgf> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzgf createFromParcel(Parcel parcel) {
        int iK = SafeParcelReader.K(parcel);
        ParcelFileDescriptor parcelFileDescriptor = null;
        IBinder iBinderD = null;
        String strP = null;
        while (parcel.dataPosition() < iK) {
            int iC = SafeParcelReader.C(parcel);
            int iV = SafeParcelReader.v(iC);
            if (iV == 2) {
                parcelFileDescriptor = (ParcelFileDescriptor) SafeParcelReader.o(parcel, iC, ParcelFileDescriptor.CREATOR);
            } else if (iV == 3) {
                iBinderD = SafeParcelReader.D(parcel, iC);
            } else if (iV != 4) {
                SafeParcelReader.J(parcel, iC);
            } else {
                strP = SafeParcelReader.p(parcel, iC);
            }
        }
        SafeParcelReader.u(parcel, iK);
        return new zzgf(parcelFileDescriptor, iBinderD, strP);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzgf[] newArray(int i10) {
        return new zzgf[i10];
    }
}
