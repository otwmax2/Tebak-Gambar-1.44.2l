package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzbdm implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
        int iK = SafeParcelReader.K(parcel);
        com.google.android.gms.ads.internal.client.zzfl zzflVar = null;
        int iE = 0;
        boolean zW = false;
        int iE2 = 0;
        boolean zW2 = false;
        int iE3 = 0;
        boolean zW3 = false;
        int iE4 = 0;
        int iE5 = 0;
        boolean zW4 = false;
        while (parcel.dataPosition() < iK) {
            int iC = SafeParcelReader.C(parcel);
            switch (SafeParcelReader.v(iC)) {
                case 1:
                    iE = SafeParcelReader.E(parcel, iC);
                    break;
                case 2:
                    zW = SafeParcelReader.w(parcel, iC);
                    break;
                case 3:
                    iE2 = SafeParcelReader.E(parcel, iC);
                    break;
                case 4:
                    zW2 = SafeParcelReader.w(parcel, iC);
                    break;
                case 5:
                    iE3 = SafeParcelReader.E(parcel, iC);
                    break;
                case 6:
                    zzflVar = (com.google.android.gms.ads.internal.client.zzfl) SafeParcelReader.o(parcel, iC, com.google.android.gms.ads.internal.client.zzfl.CREATOR);
                    break;
                case 7:
                    zW3 = SafeParcelReader.w(parcel, iC);
                    break;
                case 8:
                    iE4 = SafeParcelReader.E(parcel, iC);
                    break;
                case 9:
                    iE5 = SafeParcelReader.E(parcel, iC);
                    break;
                case 10:
                    zW4 = SafeParcelReader.w(parcel, iC);
                    break;
                default:
                    SafeParcelReader.J(parcel, iC);
                    break;
            }
        }
        SafeParcelReader.u(parcel, iK);
        return new zzbdl(iE, zW, iE2, zW2, iE3, zzflVar, zW3, iE4, iE5, zW4);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i10) {
        return new zzbdl[i10];
    }
}
