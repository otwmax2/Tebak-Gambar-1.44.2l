package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzavo implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
        int iK = SafeParcelReader.K(parcel);
        long jG = 0;
        ParcelFileDescriptor parcelFileDescriptor = null;
        boolean zW = false;
        boolean zW2 = false;
        boolean zW3 = false;
        while (parcel.dataPosition() < iK) {
            int iC = SafeParcelReader.C(parcel);
            int iV = SafeParcelReader.v(iC);
            if (iV == 2) {
                parcelFileDescriptor = (ParcelFileDescriptor) SafeParcelReader.o(parcel, iC, ParcelFileDescriptor.CREATOR);
            } else if (iV == 3) {
                zW = SafeParcelReader.w(parcel, iC);
            } else if (iV == 4) {
                zW2 = SafeParcelReader.w(parcel, iC);
            } else if (iV == 5) {
                jG = SafeParcelReader.G(parcel, iC);
            } else if (iV != 6) {
                SafeParcelReader.J(parcel, iC);
            } else {
                zW3 = SafeParcelReader.w(parcel, iC);
            }
        }
        SafeParcelReader.u(parcel, iK);
        return new zzavn(parcelFileDescriptor, zW, zW2, jG, zW3);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i10) {
        return new zzavn[i10];
    }
}
