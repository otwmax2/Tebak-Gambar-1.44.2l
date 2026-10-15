package com.google.android.gms.internal.drive;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import com.google.android.gms.drive.events.ChangeEvent;
import com.google.android.gms.drive.events.CompletionEvent;

/* JADX INFO: loaded from: classes2.dex */
public final class zzfq implements Parcelable.Creator<zzfp> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzfp createFromParcel(Parcel parcel) {
        int iK = SafeParcelReader.K(parcel);
        ChangeEvent changeEvent = null;
        CompletionEvent completionEvent = null;
        com.google.android.gms.drive.events.zzo zzoVar = null;
        com.google.android.gms.drive.events.zzb zzbVar = null;
        com.google.android.gms.drive.events.zzv zzvVar = null;
        com.google.android.gms.drive.events.zzr zzrVar = null;
        int iE = 0;
        while (parcel.dataPosition() < iK) {
            int iC = SafeParcelReader.C(parcel);
            int iV = SafeParcelReader.v(iC);
            if (iV == 2) {
                iE = SafeParcelReader.E(parcel, iC);
            } else if (iV == 3) {
                changeEvent = (ChangeEvent) SafeParcelReader.o(parcel, iC, ChangeEvent.CREATOR);
            } else if (iV == 5) {
                completionEvent = (CompletionEvent) SafeParcelReader.o(parcel, iC, CompletionEvent.CREATOR);
            } else if (iV == 6) {
                zzoVar = (com.google.android.gms.drive.events.zzo) SafeParcelReader.o(parcel, iC, com.google.android.gms.drive.events.zzo.CREATOR);
            } else if (iV == 7) {
                zzbVar = (com.google.android.gms.drive.events.zzb) SafeParcelReader.o(parcel, iC, com.google.android.gms.drive.events.zzb.CREATOR);
            } else if (iV == 9) {
                zzvVar = (com.google.android.gms.drive.events.zzv) SafeParcelReader.o(parcel, iC, com.google.android.gms.drive.events.zzv.CREATOR);
            } else if (iV != 10) {
                SafeParcelReader.J(parcel, iC);
            } else {
                zzrVar = (com.google.android.gms.drive.events.zzr) SafeParcelReader.o(parcel, iC, com.google.android.gms.drive.events.zzr.CREATOR);
            }
        }
        SafeParcelReader.u(parcel, iK);
        return new zzfp(iE, changeEvent, completionEvent, zzoVar, zzbVar, zzvVar, zzrVar);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzfp[] newArray(int i10) {
        return new zzfp[i10];
    }
}
