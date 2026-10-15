package com.google.android.gms.auth.api.credentials;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;

/* JADX INFO: compiled from: com.google.android.gms:play-services-auth@@20.2.0 */
/* JADX INFO: loaded from: classes.dex */
public final class zbe implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
        int iK = SafeParcelReader.K(parcel);
        CredentialPickerConfig credentialPickerConfig = null;
        String[] strArrQ = null;
        String strP = null;
        String strP2 = null;
        int iE = 0;
        boolean zW = false;
        boolean zW2 = false;
        boolean zW3 = false;
        while (parcel.dataPosition() < iK) {
            int iC = SafeParcelReader.C(parcel);
            int iV = SafeParcelReader.v(iC);
            if (iV != 1000) {
                switch (iV) {
                    case 1:
                        credentialPickerConfig = (CredentialPickerConfig) SafeParcelReader.o(parcel, iC, CredentialPickerConfig.CREATOR);
                        break;
                    case 2:
                        zW = SafeParcelReader.w(parcel, iC);
                        break;
                    case 3:
                        zW2 = SafeParcelReader.w(parcel, iC);
                        break;
                    case 4:
                        strArrQ = SafeParcelReader.q(parcel, iC);
                        break;
                    case 5:
                        zW3 = SafeParcelReader.w(parcel, iC);
                        break;
                    case 6:
                        strP = SafeParcelReader.p(parcel, iC);
                        break;
                    case 7:
                        strP2 = SafeParcelReader.p(parcel, iC);
                        break;
                    default:
                        SafeParcelReader.J(parcel, iC);
                        break;
                }
            } else {
                iE = SafeParcelReader.E(parcel, iC);
            }
        }
        SafeParcelReader.u(parcel, iK);
        return new HintRequest(iE, credentialPickerConfig, zW, zW2, strArrQ, zW3, strP, strP2);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i10) {
        return new HintRequest[i10];
    }
}
