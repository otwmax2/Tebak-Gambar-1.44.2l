package com.google.android.gms.internal.firebase_auth;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;

/* JADX INFO: compiled from: com.google.firebase:firebase-auth@@19.3.1 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzex implements Parcelable.Creator<zzeu> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzeu createFromParcel(Parcel parcel) {
        int iK = SafeParcelReader.K(parcel);
        zzey zzeyVar = null;
        while (parcel.dataPosition() < iK) {
            int iC = SafeParcelReader.C(parcel);
            if (SafeParcelReader.v(iC) != 2) {
                SafeParcelReader.J(parcel, iC);
            } else {
                zzeyVar = (zzey) SafeParcelReader.o(parcel, iC, zzey.CREATOR);
            }
        }
        SafeParcelReader.u(parcel, iK);
        return new zzeu(zzeyVar);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzeu[] newArray(int i10) {
        return new zzeu[i10];
    }
}
