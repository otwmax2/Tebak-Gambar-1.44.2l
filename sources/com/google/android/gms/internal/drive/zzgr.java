package com.google.android.gms.internal.drive;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import com.google.android.gms.drive.query.Query;

/* JADX INFO: loaded from: classes2.dex */
public final class zzgr implements Parcelable.Creator<zzgq> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzgq createFromParcel(Parcel parcel) {
        int iK = SafeParcelReader.K(parcel);
        Query query = null;
        while (parcel.dataPosition() < iK) {
            int iC = SafeParcelReader.C(parcel);
            if (SafeParcelReader.v(iC) != 2) {
                SafeParcelReader.J(parcel, iC);
            } else {
                query = (Query) SafeParcelReader.o(parcel, iC, Query.CREATOR);
            }
        }
        SafeParcelReader.u(parcel, iK);
        return new zzgq(query);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzgq[] newArray(int i10) {
        return new zzgq[i10];
    }
}
