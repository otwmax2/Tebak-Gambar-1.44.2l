package com.google.android.gms.auth.api.credentials;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;

/* JADX INFO: compiled from: com.google.android.gms:play-services-auth@@20.2.0 */
/* JADX INFO: loaded from: classes.dex */
public final class zbc implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
        int iK = SafeParcelReader.K(parcel);
        String[] strArrQ = null;
        CredentialPickerConfig credentialPickerConfig = null;
        CredentialPickerConfig credentialPickerConfig2 = null;
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
                        zW = SafeParcelReader.w(parcel, iC);
                        break;
                    case 2:
                        strArrQ = SafeParcelReader.q(parcel, iC);
                        break;
                    case 3:
                        credentialPickerConfig = (CredentialPickerConfig) SafeParcelReader.o(parcel, iC, CredentialPickerConfig.CREATOR);
                        break;
                    case 4:
                        credentialPickerConfig2 = (CredentialPickerConfig) SafeParcelReader.o(parcel, iC, CredentialPickerConfig.CREATOR);
                        break;
                    case 5:
                        zW2 = SafeParcelReader.w(parcel, iC);
                        break;
                    case 6:
                        strP = SafeParcelReader.p(parcel, iC);
                        break;
                    case 7:
                        strP2 = SafeParcelReader.p(parcel, iC);
                        break;
                    case 8:
                        zW3 = SafeParcelReader.w(parcel, iC);
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
        return new CredentialRequest(iE, zW, strArrQ, credentialPickerConfig, credentialPickerConfig2, zW2, strP, strP2, zW3);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i10) {
        return new CredentialRequest[i10];
    }
}
