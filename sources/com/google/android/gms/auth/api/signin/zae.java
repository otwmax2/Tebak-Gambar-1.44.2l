package com.google.android.gms.auth.api.signin;

import android.accounts.Account;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.auth.api.signin.internal.GoogleSignInOptionsExtensionParcelable;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import java.util.ArrayList;

/* JADX INFO: compiled from: com.google.android.gms:play-services-base@@18.0.1 */
/* JADX INFO: loaded from: classes.dex */
public final class zae implements Parcelable.Creator<GoogleSignInOptions> {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ GoogleSignInOptions createFromParcel(Parcel parcel) {
        int iK = SafeParcelReader.K(parcel);
        ArrayList arrayListT = null;
        Account account = null;
        String strP = null;
        String strP2 = null;
        ArrayList arrayListT2 = null;
        String strP3 = null;
        int iE = 0;
        boolean zW = false;
        boolean zW2 = false;
        boolean zW3 = false;
        while (parcel.dataPosition() < iK) {
            int iC = SafeParcelReader.C(parcel);
            switch (SafeParcelReader.v(iC)) {
                case 1:
                    iE = SafeParcelReader.E(parcel, iC);
                    break;
                case 2:
                    arrayListT = SafeParcelReader.t(parcel, iC, Scope.CREATOR);
                    break;
                case 3:
                    account = (Account) SafeParcelReader.o(parcel, iC, Account.CREATOR);
                    break;
                case 4:
                    zW = SafeParcelReader.w(parcel, iC);
                    break;
                case 5:
                    zW2 = SafeParcelReader.w(parcel, iC);
                    break;
                case 6:
                    zW3 = SafeParcelReader.w(parcel, iC);
                    break;
                case 7:
                    strP = SafeParcelReader.p(parcel, iC);
                    break;
                case 8:
                    strP2 = SafeParcelReader.p(parcel, iC);
                    break;
                case 9:
                    arrayListT2 = SafeParcelReader.t(parcel, iC, GoogleSignInOptionsExtensionParcelable.CREATOR);
                    break;
                case 10:
                    strP3 = SafeParcelReader.p(parcel, iC);
                    break;
                default:
                    SafeParcelReader.J(parcel, iC);
                    break;
            }
        }
        SafeParcelReader.u(parcel, iK);
        return new GoogleSignInOptions(iE, (ArrayList<Scope>) arrayListT, account, zW, zW2, zW3, strP, strP2, (ArrayList<GoogleSignInOptionsExtensionParcelable>) arrayListT2, strP3);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ GoogleSignInOptions[] newArray(int i10) {
        return new GoogleSignInOptions[i10];
    }
}
