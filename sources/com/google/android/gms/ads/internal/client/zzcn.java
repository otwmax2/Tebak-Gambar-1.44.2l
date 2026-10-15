package com.google.android.gms.ads.internal.client;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.internal.ads.zzasw;
import com.google.android.gms.internal.ads.zzasx;
import com.google.android.gms.internal.ads.zzbjr;
import com.google.android.gms.internal.ads.zzbjs;
import com.google.android.gms.internal.ads.zzbne;
import com.google.android.gms.internal.ads.zzbnf;
import java.util.List;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.0.0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class zzcn extends zzasw implements zzco {
    public zzcn() {
        super("com.google.android.gms.ads.internal.client.IMobileAdsSettingManager");
    }

    @Override // com.google.android.gms.internal.ads.zzasw
    protected final boolean Ra(int i10, Parcel parcel, Parcel parcel2, int i11) throws RemoteException {
        zzda zzcyVar;
        switch (i10) {
            case 1:
                i();
                parcel2.writeNoException();
                return true;
            case 2:
                float f10 = parcel.readFloat();
                zzasx.c(parcel);
                C6(f10);
                parcel2.writeNoException();
                return true;
            case 3:
                String string = parcel.readString();
                zzasx.c(parcel);
                i1(string);
                parcel2.writeNoException();
                return true;
            case 4:
                boolean zH = zzasx.h(parcel);
                zzasx.c(parcel);
                Ia(zH);
                parcel2.writeNoException();
                return true;
            case 5:
                IObjectWrapper iObjectWrapperX0 = IObjectWrapper.Stub.X0(parcel.readStrongBinder());
                String string2 = parcel.readString();
                zzasx.c(parcel);
                q7(iObjectWrapperX0, string2);
                parcel2.writeNoException();
                return true;
            case 6:
                String string3 = parcel.readString();
                IObjectWrapper iObjectWrapperX02 = IObjectWrapper.Stub.X0(parcel.readStrongBinder());
                zzasx.c(parcel);
                x6(string3, iObjectWrapperX02);
                parcel2.writeNoException();
                return true;
            case 7:
                float fB = b();
                parcel2.writeNoException();
                parcel2.writeFloat(fB);
                return true;
            case 8:
                boolean zT = t();
                parcel2.writeNoException();
                zzasx.d(parcel2, zT);
                return true;
            case 9:
                String strC = c();
                parcel2.writeNoException();
                parcel2.writeString(strC);
                return true;
            case 10:
                String string4 = parcel.readString();
                zzasx.c(parcel);
                t0(string4);
                parcel2.writeNoException();
                return true;
            case 11:
                zzbnf zzbnfVarSa = zzbne.Sa(parcel.readStrongBinder());
                zzasx.c(parcel);
                M4(zzbnfVarSa);
                parcel2.writeNoException();
                return true;
            case 12:
                zzbjs zzbjsVarSa = zzbjr.Sa(parcel.readStrongBinder());
                zzasx.c(parcel);
                G8(zzbjsVarSa);
                parcel2.writeNoException();
                return true;
            case 13:
                List listE = e();
                parcel2.writeNoException();
                parcel2.writeTypedList(listE);
                return true;
            case 14:
                zzff zzffVar = (zzff) zzasx.a(parcel, zzff.CREATOR);
                zzasx.c(parcel);
                R7(zzffVar);
                parcel2.writeNoException();
                return true;
            case 15:
                g();
                parcel2.writeNoException();
                return true;
            case 16:
                IBinder strongBinder = parcel.readStrongBinder();
                if (strongBinder == null) {
                    zzcyVar = null;
                } else {
                    IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IOnAdInspectorClosedListener");
                    zzcyVar = iInterfaceQueryLocalInterface instanceof zzda ? (zzda) iInterfaceQueryLocalInterface : new zzcy(strongBinder);
                }
                zzasx.c(parcel);
                i4(zzcyVar);
                parcel2.writeNoException();
                return true;
            case 17:
                boolean zH2 = zzasx.h(parcel);
                zzasx.c(parcel);
                H0(zH2);
                parcel2.writeNoException();
                return true;
            case 18:
                String string5 = parcel.readString();
                zzasx.c(parcel);
                z0(string5);
                parcel2.writeNoException();
                return true;
            default:
                return false;
        }
    }
}
