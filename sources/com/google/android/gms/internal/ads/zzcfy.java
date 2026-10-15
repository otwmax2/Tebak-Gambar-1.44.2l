package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
import java.util.List;
import java.util.Map;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public abstract class zzcfy extends zzasw implements zzcfz {
    public zzcfy() {
        super("com.google.android.gms.ads.measurement.IAppMeasurementProxy");
    }

    @Override // com.google.android.gms.internal.ads.zzasw
    protected final boolean Ra(int i10, Parcel parcel, Parcel parcel2, int i11) throws RemoteException {
        switch (i10) {
            case 1:
                Bundle bundle = (Bundle) zzasx.a(parcel, Bundle.CREATOR);
                zzasx.c(parcel);
                n0(bundle);
                parcel2.writeNoException();
                return true;
            case 2:
                Bundle bundle2 = (Bundle) zzasx.a(parcel, Bundle.CREATOR);
                zzasx.c(parcel);
                Bundle bundleX = X(bundle2);
                parcel2.writeNoException();
                zzasx.f(parcel2, bundleX);
                return true;
            case 3:
                String string = parcel.readString();
                String string2 = parcel.readString();
                Bundle bundle3 = (Bundle) zzasx.a(parcel, Bundle.CREATOR);
                zzasx.c(parcel);
                L7(string, string2, bundle3);
                parcel2.writeNoException();
                return true;
            case 4:
                String string3 = parcel.readString();
                String string4 = parcel.readString();
                IObjectWrapper iObjectWrapperX0 = IObjectWrapper.Stub.X0(parcel.readStrongBinder());
                zzasx.c(parcel);
                N1(string3, string4, iObjectWrapperX0);
                parcel2.writeNoException();
                return true;
            case 5:
                String string5 = parcel.readString();
                String string6 = parcel.readString();
                boolean zH = zzasx.h(parcel);
                zzasx.c(parcel);
                Map mapN9 = n9(string5, string6, zH);
                parcel2.writeNoException();
                parcel2.writeMap(mapN9);
                return true;
            case 6:
                String string7 = parcel.readString();
                zzasx.c(parcel);
                int iU = u(string7);
                parcel2.writeNoException();
                parcel2.writeInt(iU);
                return true;
            case 7:
                Bundle bundle4 = (Bundle) zzasx.a(parcel, Bundle.CREATOR);
                zzasx.c(parcel);
                i0(bundle4);
                parcel2.writeNoException();
                return true;
            case 8:
                String string8 = parcel.readString();
                String string9 = parcel.readString();
                Bundle bundle5 = (Bundle) zzasx.a(parcel, Bundle.CREATOR);
                zzasx.c(parcel);
                U9(string8, string9, bundle5);
                parcel2.writeNoException();
                return true;
            case 9:
                String string10 = parcel.readString();
                String string11 = parcel.readString();
                zzasx.c(parcel);
                List listE7 = e7(string10, string11);
                parcel2.writeNoException();
                parcel2.writeList(listE7);
                return true;
            case 10:
                String strC = c();
                parcel2.writeNoException();
                parcel2.writeString(strC);
                return true;
            case 11:
                String strG = g();
                parcel2.writeNoException();
                parcel2.writeString(strG);
                return true;
            case 12:
                long jA = a();
                parcel2.writeNoException();
                parcel2.writeLong(jA);
                return true;
            case 13:
                String string12 = parcel.readString();
                zzasx.c(parcel);
                m0(string12);
                parcel2.writeNoException();
                return true;
            case 14:
                String string13 = parcel.readString();
                zzasx.c(parcel);
                s0(string13);
                parcel2.writeNoException();
                return true;
            case 15:
                IObjectWrapper iObjectWrapperX02 = IObjectWrapper.Stub.X0(parcel.readStrongBinder());
                String string14 = parcel.readString();
                String string15 = parcel.readString();
                zzasx.c(parcel);
                g7(iObjectWrapperX02, string14, string15);
                parcel2.writeNoException();
                return true;
            case 16:
                String strF = f();
                parcel2.writeNoException();
                parcel2.writeString(strF);
                return true;
            case 17:
                String strE = e();
                parcel2.writeNoException();
                parcel2.writeString(strE);
                return true;
            case 18:
                String strB = b();
                parcel2.writeNoException();
                parcel2.writeString(strB);
                return true;
            case 19:
                Bundle bundle6 = (Bundle) zzasx.a(parcel, Bundle.CREATOR);
                zzasx.c(parcel);
                h1(bundle6);
                parcel2.writeNoException();
                return true;
            default:
                return false;
        }
    }
}
