package com.google.android.gms.auth;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import java.util.ArrayList;

/* JADX INFO: compiled from: com.google.android.gms:play-services-auth-base@@17.1.4 */
/* JADX INFO: loaded from: classes.dex */
public final class zzc implements Parcelable.Creator<AccountChangeEventsResponse> {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ AccountChangeEventsResponse createFromParcel(Parcel parcel) {
        int iK = SafeParcelReader.K(parcel);
        int iE = 0;
        ArrayList arrayListT = null;
        while (parcel.dataPosition() < iK) {
            int iC = SafeParcelReader.C(parcel);
            int iV = SafeParcelReader.v(iC);
            if (iV == 1) {
                iE = SafeParcelReader.E(parcel, iC);
            } else if (iV != 2) {
                SafeParcelReader.J(parcel, iC);
            } else {
                arrayListT = SafeParcelReader.t(parcel, iC, AccountChangeEvent.CREATOR);
            }
        }
        SafeParcelReader.u(parcel, iK);
        return new AccountChangeEventsResponse(iE, arrayListT);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ AccountChangeEventsResponse[] newArray(int i10) {
        return new AccountChangeEventsResponse[i10];
    }
}
