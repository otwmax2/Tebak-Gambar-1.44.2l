package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
import java.util.List;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public abstract class zzbnt extends zzasw implements zzbnu {
    public zzbnt() {
        super("com.google.android.gms.ads.internal.mediation.client.IUnifiedNativeAdMapper");
    }

    public static zzbnu Sa(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.IUnifiedNativeAdMapper");
        return iInterfaceQueryLocalInterface instanceof zzbnu ? (zzbnu) iInterfaceQueryLocalInterface : new zzbns(iBinder);
    }

    @Override // com.google.android.gms.internal.ads.zzasw
    protected final boolean Ra(int i10, Parcel parcel, Parcel parcel2, int i11) throws RemoteException {
        switch (i10) {
            case 2:
                String strQ = q();
                parcel2.writeNoException();
                parcel2.writeString(strQ);
                return true;
            case 3:
                List listT = t();
                parcel2.writeNoException();
                parcel2.writeList(listT);
                return true;
            case 4:
                String strR = r();
                parcel2.writeNoException();
                parcel2.writeString(strR);
                return true;
            case 5:
                zzbdx zzbdxVarJ = j();
                parcel2.writeNoException();
                zzasx.g(parcel2, zzbdxVarJ);
                return true;
            case 6:
                String strP = p();
                parcel2.writeNoException();
                parcel2.writeString(strP);
                return true;
            case 7:
                String strN = n();
                parcel2.writeNoException();
                parcel2.writeString(strN);
                return true;
            case 8:
                double dB = b();
                parcel2.writeNoException();
                parcel2.writeDouble(dB);
                return true;
            case 9:
                String strV = v();
                parcel2.writeNoException();
                parcel2.writeString(strV);
                return true;
            case 10:
                String strX = x();
                parcel2.writeNoException();
                parcel2.writeString(strX);
                return true;
            case 11:
                com.google.android.gms.ads.internal.client.zzdq zzdqVarH = h();
                parcel2.writeNoException();
                zzasx.g(parcel2, zzdqVarH);
                return true;
            case 12:
                parcel2.writeNoException();
                zzasx.g(parcel2, null);
                return true;
            case 13:
                IObjectWrapper iObjectWrapperL = l();
                parcel2.writeNoException();
                zzasx.g(parcel2, iObjectWrapperL);
                return true;
            case 14:
                IObjectWrapper iObjectWrapperK = k();
                parcel2.writeNoException();
                zzasx.g(parcel2, iObjectWrapperK);
                return true;
            case 15:
                IObjectWrapper iObjectWrapperM = m();
                parcel2.writeNoException();
                zzasx.g(parcel2, iObjectWrapperM);
                return true;
            case 16:
                Bundle bundleG = g();
                parcel2.writeNoException();
                zzasx.f(parcel2, bundleG);
                return true;
            case 17:
                boolean zR = R();
                parcel2.writeNoException();
                zzasx.d(parcel2, zR);
                return true;
            case 18:
                boolean zB = B();
                parcel2.writeNoException();
                zzasx.d(parcel2, zB);
                return true;
            case 19:
                y();
                parcel2.writeNoException();
                return true;
            case 20:
                IObjectWrapper iObjectWrapperX0 = IObjectWrapper.Stub.X0(parcel.readStrongBinder());
                zzasx.c(parcel);
                X1(iObjectWrapperX0);
                parcel2.writeNoException();
                return true;
            case 21:
                IObjectWrapper iObjectWrapperX02 = IObjectWrapper.Stub.X0(parcel.readStrongBinder());
                IObjectWrapper iObjectWrapperX03 = IObjectWrapper.Stub.X0(parcel.readStrongBinder());
                IObjectWrapper iObjectWrapperX04 = IObjectWrapper.Stub.X0(parcel.readStrongBinder());
                zzasx.c(parcel);
                A8(iObjectWrapperX02, iObjectWrapperX03, iObjectWrapperX04);
                parcel2.writeNoException();
                return true;
            case 22:
                IObjectWrapper iObjectWrapperX05 = IObjectWrapper.Stub.X0(parcel.readStrongBinder());
                zzasx.c(parcel);
                P4(iObjectWrapperX05);
                parcel2.writeNoException();
                return true;
            case 23:
                float fC = c();
                parcel2.writeNoException();
                parcel2.writeFloat(fC);
                return true;
            case 24:
                float f10 = f();
                parcel2.writeNoException();
                parcel2.writeFloat(f10);
                return true;
            case 25:
                float fE = e();
                parcel2.writeNoException();
                parcel2.writeFloat(fE);
                return true;
            default:
                return false;
        }
    }
}
