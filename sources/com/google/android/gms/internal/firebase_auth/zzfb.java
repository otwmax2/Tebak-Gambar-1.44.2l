package com.google.android.gms.internal.firebase_auth;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import java.util.ArrayList;

/* JADX INFO: compiled from: com.google.firebase:firebase-auth@@19.3.1 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzfb implements Parcelable.Creator<zzey> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzey createFromParcel(Parcel parcel) {
        int iK = SafeParcelReader.K(parcel);
        ArrayList arrayListT = null;
        while (parcel.dataPosition() < iK) {
            int iC = SafeParcelReader.C(parcel);
            if (SafeParcelReader.v(iC) != 2) {
                SafeParcelReader.J(parcel, iC);
            } else {
                arrayListT = SafeParcelReader.t(parcel, iC, zzew.CREATOR);
            }
        }
        SafeParcelReader.u(parcel, iK);
        return new zzey(arrayListT);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzey[] newArray(int i10) {
        return new zzey[i10];
    }
}
