package com.google.android.gms.measurement.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-impl@@20.1.2 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzac implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
        int iK = SafeParcelReader.K(parcel);
        long jG = 0;
        long jG2 = 0;
        long jG3 = 0;
        String strP = null;
        String strP2 = null;
        zzll zzllVar = null;
        String strP3 = null;
        zzav zzavVar = null;
        zzav zzavVar2 = null;
        zzav zzavVar3 = null;
        boolean zW = false;
        while (parcel.dataPosition() < iK) {
            int iC = SafeParcelReader.C(parcel);
            switch (SafeParcelReader.v(iC)) {
                case 2:
                    strP = SafeParcelReader.p(parcel, iC);
                    break;
                case 3:
                    strP2 = SafeParcelReader.p(parcel, iC);
                    break;
                case 4:
                    zzllVar = (zzll) SafeParcelReader.o(parcel, iC, zzll.CREATOR);
                    break;
                case 5:
                    jG = SafeParcelReader.G(parcel, iC);
                    break;
                case 6:
                    zW = SafeParcelReader.w(parcel, iC);
                    break;
                case 7:
                    strP3 = SafeParcelReader.p(parcel, iC);
                    break;
                case 8:
                    zzavVar = (zzav) SafeParcelReader.o(parcel, iC, zzav.CREATOR);
                    break;
                case 9:
                    jG2 = SafeParcelReader.G(parcel, iC);
                    break;
                case 10:
                    zzavVar2 = (zzav) SafeParcelReader.o(parcel, iC, zzav.CREATOR);
                    break;
                case 11:
                    jG3 = SafeParcelReader.G(parcel, iC);
                    break;
                case 12:
                    zzavVar3 = (zzav) SafeParcelReader.o(parcel, iC, zzav.CREATOR);
                    break;
                default:
                    SafeParcelReader.J(parcel, iC);
                    break;
            }
        }
        SafeParcelReader.u(parcel, iK);
        return new zzab(strP, strP2, zzllVar, jG, zW, strP3, zzavVar, jG2, zzavVar2, jG3, zzavVar3);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i10) {
        return new zzab[i10];
    }
}
