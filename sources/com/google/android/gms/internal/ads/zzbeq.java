package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
import java.util.List;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public abstract class zzbeq extends zzasw implements zzber {
    public zzbeq() {
        super("com.google.android.gms.ads.internal.formats.client.INativeCustomTemplateAd");
    }

    public static zzber Sa(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.INativeCustomTemplateAd");
        return iInterfaceQueryLocalInterface instanceof zzber ? (zzber) iInterfaceQueryLocalInterface : new zzbep(iBinder);
    }

    @Override // com.google.android.gms.internal.ads.zzasw
    protected final boolean Ra(int i10, Parcel parcel, Parcel parcel2, int i11) throws RemoteException {
        switch (i10) {
            case 1:
                String string = parcel.readString();
                zzasx.c(parcel);
                String strC9 = c9(string);
                parcel2.writeNoException();
                parcel2.writeString(strC9);
                return true;
            case 2:
                String string2 = parcel.readString();
                zzasx.c(parcel);
                zzbdx zzbdxVarD0 = d0(string2);
                parcel2.writeNoException();
                zzasx.g(parcel2, zzbdxVarD0);
                return true;
            case 3:
                List<String> listI = i();
                parcel2.writeNoException();
                parcel2.writeStringList(listI);
                return true;
            case 4:
                String strG = g();
                parcel2.writeNoException();
                parcel2.writeString(strG);
                return true;
            case 5:
                String string3 = parcel.readString();
                zzasx.c(parcel);
                s0(string3);
                parcel2.writeNoException();
                return true;
            case 6:
                m();
                parcel2.writeNoException();
                return true;
            case 7:
                com.google.android.gms.ads.internal.client.zzdq zzdqVarB = b();
                parcel2.writeNoException();
                zzasx.g(parcel2, zzdqVarB);
                return true;
            case 8:
                j();
                parcel2.writeNoException();
                return true;
            case 9:
                IObjectWrapper iObjectWrapperF = f();
                parcel2.writeNoException();
                zzasx.g(parcel2, iObjectWrapperF);
                return true;
            case 10:
                IObjectWrapper iObjectWrapperX0 = IObjectWrapper.Stub.X0(parcel.readStrongBinder());
                zzasx.c(parcel);
                boolean zC0 = c0(iObjectWrapperX0);
                parcel2.writeNoException();
                zzasx.d(parcel2, zC0);
                return true;
            case 11:
                parcel2.writeNoException();
                zzasx.g(parcel2, null);
                return true;
            case 12:
                boolean zR = r();
                parcel2.writeNoException();
                zzasx.d(parcel2, zR);
                return true;
            case 13:
                boolean zQ = q();
                parcel2.writeNoException();
                zzasx.d(parcel2, zQ);
                return true;
            case 14:
                IObjectWrapper iObjectWrapperX02 = IObjectWrapper.Stub.X0(parcel.readStrongBinder());
                zzasx.c(parcel);
                c6(iObjectWrapperX02);
                parcel2.writeNoException();
                return true;
            case 15:
                l();
                parcel2.writeNoException();
                return true;
            case 16:
                zzbdu zzbduVarC = c();
                parcel2.writeNoException();
                zzasx.g(parcel2, zzbduVarC);
                return true;
            default:
                return false;
        }
    }
}
