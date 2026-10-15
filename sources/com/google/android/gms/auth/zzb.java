package com.google.android.gms.auth;

import android.accounts.Account;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;

/* JADX INFO: compiled from: com.google.android.gms:play-services-auth-base@@17.1.4 */
/* JADX INFO: loaded from: classes.dex */
public final class zzb implements Parcelable.Creator<AccountChangeEventsRequest> {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ AccountChangeEventsRequest createFromParcel(Parcel parcel) {
        int iK = SafeParcelReader.K(parcel);
        String strP = null;
        Account account = null;
        int iE = 0;
        int iE2 = 0;
        while (parcel.dataPosition() < iK) {
            int iC = SafeParcelReader.C(parcel);
            int iV = SafeParcelReader.v(iC);
            if (iV == 1) {
                iE = SafeParcelReader.E(parcel, iC);
            } else if (iV == 2) {
                iE2 = SafeParcelReader.E(parcel, iC);
            } else if (iV == 3) {
                strP = SafeParcelReader.p(parcel, iC);
            } else if (iV != 4) {
                SafeParcelReader.J(parcel, iC);
            } else {
                account = (Account) SafeParcelReader.o(parcel, iC, Account.CREATOR);
            }
        }
        SafeParcelReader.u(parcel, iK);
        return new AccountChangeEventsRequest(iE, iE2, strP, account);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ AccountChangeEventsRequest[] newArray(int i10) {
        return new AccountChangeEventsRequest[i10];
    }
}
