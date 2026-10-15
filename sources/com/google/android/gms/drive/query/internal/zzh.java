package com.google.android.gms.drive.query.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;

/* JADX INFO: loaded from: classes.dex */
public final class zzh implements Parcelable.Creator<FilterHolder> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ FilterHolder createFromParcel(Parcel parcel) {
        int iK = SafeParcelReader.K(parcel);
        zzb zzbVar = null;
        zzd zzdVar = null;
        zzr zzrVar = null;
        zzv zzvVar = null;
        zzp zzpVar = null;
        zzt zztVar = null;
        zzn zznVar = null;
        zzl zzlVar = null;
        zzz zzzVar = null;
        while (parcel.dataPosition() < iK) {
            int iC = SafeParcelReader.C(parcel);
            switch (SafeParcelReader.v(iC)) {
                case 1:
                    zzbVar = (zzb) SafeParcelReader.o(parcel, iC, zzb.CREATOR);
                    break;
                case 2:
                    zzdVar = (zzd) SafeParcelReader.o(parcel, iC, zzd.CREATOR);
                    break;
                case 3:
                    zzrVar = (zzr) SafeParcelReader.o(parcel, iC, zzr.CREATOR);
                    break;
                case 4:
                    zzvVar = (zzv) SafeParcelReader.o(parcel, iC, zzv.CREATOR);
                    break;
                case 5:
                    zzpVar = (zzp) SafeParcelReader.o(parcel, iC, zzp.CREATOR);
                    break;
                case 6:
                    zztVar = (zzt) SafeParcelReader.o(parcel, iC, zzt.CREATOR);
                    break;
                case 7:
                    zznVar = (zzn) SafeParcelReader.o(parcel, iC, zzn.CREATOR);
                    break;
                case 8:
                    zzlVar = (zzl) SafeParcelReader.o(parcel, iC, zzl.CREATOR);
                    break;
                case 9:
                    zzzVar = (zzz) SafeParcelReader.o(parcel, iC, zzz.CREATOR);
                    break;
                default:
                    SafeParcelReader.J(parcel, iC);
                    break;
            }
        }
        SafeParcelReader.u(parcel, iK);
        return new FilterHolder(zzbVar, zzdVar, zzrVar, zzvVar, zzpVar, zztVar, zznVar, zzlVar, zzzVar);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ FilterHolder[] newArray(int i10) {
        return new FilterHolder[i10];
    }
}
