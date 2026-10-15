package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import android.os.Parcel;
import android.os.RemoteException;
import java.util.List;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-impl@@20.1.2 */
/* JADX INFO: loaded from: classes2.dex */
public abstract class zzen extends com.google.android.gms.internal.measurement.zzbn implements zzeo {
    public zzen() {
        super("com.google.android.gms.measurement.internal.IMeasurementService");
    }

    @Override // com.google.android.gms.internal.measurement.zzbn
    protected final boolean P0(int i10, Parcel parcel, Parcel parcel2, int i11) throws RemoteException {
        switch (i10) {
            case 1:
                zzav zzavVar = (zzav) com.google.android.gms.internal.measurement.zzbo.a(parcel, zzav.CREATOR);
                zzp zzpVar = (zzp) com.google.android.gms.internal.measurement.zzbo.a(parcel, zzp.CREATOR);
                com.google.android.gms.internal.measurement.zzbo.c(parcel);
                T7(zzavVar, zzpVar);
                parcel2.writeNoException();
                return true;
            case 2:
                zzll zzllVar = (zzll) com.google.android.gms.internal.measurement.zzbo.a(parcel, zzll.CREATOR);
                zzp zzpVar2 = (zzp) com.google.android.gms.internal.measurement.zzbo.a(parcel, zzp.CREATOR);
                com.google.android.gms.internal.measurement.zzbo.c(parcel);
                K5(zzllVar, zzpVar2);
                parcel2.writeNoException();
                return true;
            case 3:
            case 8:
            default:
                return false;
            case 4:
                zzp zzpVar3 = (zzp) com.google.android.gms.internal.measurement.zzbo.a(parcel, zzp.CREATOR);
                com.google.android.gms.internal.measurement.zzbo.c(parcel);
                W4(zzpVar3);
                parcel2.writeNoException();
                return true;
            case 5:
                zzav zzavVar2 = (zzav) com.google.android.gms.internal.measurement.zzbo.a(parcel, zzav.CREATOR);
                String string = parcel.readString();
                String string2 = parcel.readString();
                com.google.android.gms.internal.measurement.zzbo.c(parcel);
                z4(zzavVar2, string, string2);
                parcel2.writeNoException();
                return true;
            case 6:
                zzp zzpVar4 = (zzp) com.google.android.gms.internal.measurement.zzbo.a(parcel, zzp.CREATOR);
                com.google.android.gms.internal.measurement.zzbo.c(parcel);
                C5(zzpVar4);
                parcel2.writeNoException();
                return true;
            case 7:
                zzp zzpVar5 = (zzp) com.google.android.gms.internal.measurement.zzbo.a(parcel, zzp.CREATOR);
                boolean zG = com.google.android.gms.internal.measurement.zzbo.g(parcel);
                com.google.android.gms.internal.measurement.zzbo.c(parcel);
                List listC8 = C8(zzpVar5, zG);
                parcel2.writeNoException();
                parcel2.writeTypedList(listC8);
                return true;
            case 9:
                zzav zzavVar3 = (zzav) com.google.android.gms.internal.measurement.zzbo.a(parcel, zzav.CREATOR);
                String string3 = parcel.readString();
                com.google.android.gms.internal.measurement.zzbo.c(parcel);
                byte[] bArrQ6 = q6(zzavVar3, string3);
                parcel2.writeNoException();
                parcel2.writeByteArray(bArrQ6);
                return true;
            case 10:
                long j10 = parcel.readLong();
                String string4 = parcel.readString();
                String string5 = parcel.readString();
                String string6 = parcel.readString();
                com.google.android.gms.internal.measurement.zzbo.c(parcel);
                E6(j10, string4, string5, string6);
                parcel2.writeNoException();
                return true;
            case 11:
                zzp zzpVar6 = (zzp) com.google.android.gms.internal.measurement.zzbo.a(parcel, zzp.CREATOR);
                com.google.android.gms.internal.measurement.zzbo.c(parcel);
                String strI3 = i3(zzpVar6);
                parcel2.writeNoException();
                parcel2.writeString(strI3);
                return true;
            case 12:
                zzab zzabVar = (zzab) com.google.android.gms.internal.measurement.zzbo.a(parcel, zzab.CREATOR);
                zzp zzpVar7 = (zzp) com.google.android.gms.internal.measurement.zzbo.a(parcel, zzp.CREATOR);
                com.google.android.gms.internal.measurement.zzbo.c(parcel);
                i2(zzabVar, zzpVar7);
                parcel2.writeNoException();
                return true;
            case 13:
                zzab zzabVar2 = (zzab) com.google.android.gms.internal.measurement.zzbo.a(parcel, zzab.CREATOR);
                com.google.android.gms.internal.measurement.zzbo.c(parcel);
                T3(zzabVar2);
                parcel2.writeNoException();
                return true;
            case 14:
                String string7 = parcel.readString();
                String string8 = parcel.readString();
                boolean zG2 = com.google.android.gms.internal.measurement.zzbo.g(parcel);
                zzp zzpVar8 = (zzp) com.google.android.gms.internal.measurement.zzbo.a(parcel, zzp.CREATOR);
                com.google.android.gms.internal.measurement.zzbo.c(parcel);
                List listP6 = P6(string7, string8, zG2, zzpVar8);
                parcel2.writeNoException();
                parcel2.writeTypedList(listP6);
                return true;
            case 15:
                String string9 = parcel.readString();
                String string10 = parcel.readString();
                String string11 = parcel.readString();
                boolean zG3 = com.google.android.gms.internal.measurement.zzbo.g(parcel);
                com.google.android.gms.internal.measurement.zzbo.c(parcel);
                List listX2 = x2(string9, string10, string11, zG3);
                parcel2.writeNoException();
                parcel2.writeTypedList(listX2);
                return true;
            case 16:
                String string12 = parcel.readString();
                String string13 = parcel.readString();
                zzp zzpVar9 = (zzp) com.google.android.gms.internal.measurement.zzbo.a(parcel, zzp.CREATOR);
                com.google.android.gms.internal.measurement.zzbo.c(parcel);
                List listB5 = b5(string12, string13, zzpVar9);
                parcel2.writeNoException();
                parcel2.writeTypedList(listB5);
                return true;
            case 17:
                String string14 = parcel.readString();
                String string15 = parcel.readString();
                String string16 = parcel.readString();
                com.google.android.gms.internal.measurement.zzbo.c(parcel);
                List listC4 = c4(string14, string15, string16);
                parcel2.writeNoException();
                parcel2.writeTypedList(listC4);
                return true;
            case 18:
                zzp zzpVar10 = (zzp) com.google.android.gms.internal.measurement.zzbo.a(parcel, zzp.CREATOR);
                com.google.android.gms.internal.measurement.zzbo.c(parcel);
                M2(zzpVar10);
                parcel2.writeNoException();
                return true;
            case 19:
                Bundle bundle = (Bundle) com.google.android.gms.internal.measurement.zzbo.a(parcel, Bundle.CREATOR);
                zzp zzpVar11 = (zzp) com.google.android.gms.internal.measurement.zzbo.a(parcel, zzp.CREATOR);
                com.google.android.gms.internal.measurement.zzbo.c(parcel);
                Q1(bundle, zzpVar11);
                parcel2.writeNoException();
                return true;
            case 20:
                zzp zzpVar12 = (zzp) com.google.android.gms.internal.measurement.zzbo.a(parcel, zzp.CREATOR);
                com.google.android.gms.internal.measurement.zzbo.c(parcel);
                z6(zzpVar12);
                parcel2.writeNoException();
                return true;
        }
    }
}
