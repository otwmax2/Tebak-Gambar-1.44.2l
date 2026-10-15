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
public abstract class zzbft extends zzasw implements zzbfu {
    public zzbft() {
        super("com.google.android.gms.ads.internal.formats.client.IUnifiedNativeAd");
    }

    @Override // com.google.android.gms.internal.ads.zzasw
    protected final boolean Ra(int i10, Parcel parcel, Parcel parcel2, int i11) throws RemoteException {
        zzbfr zzbfpVar;
        switch (i10) {
            case 2:
                String strR = r();
                parcel2.writeNoException();
                parcel2.writeString(strR);
                return true;
            case 3:
                List listV = v();
                parcel2.writeNoException();
                parcel2.writeList(listV);
                return true;
            case 4:
                String strM = m();
                parcel2.writeNoException();
                parcel2.writeString(strM);
                return true;
            case 5:
                zzbdx zzbdxVarI = i();
                parcel2.writeNoException();
                zzasx.g(parcel2, zzbdxVarI);
                return true;
            case 6:
                String strN = n();
                parcel2.writeNoException();
                parcel2.writeString(strN);
                return true;
            case 7:
                String strK = k();
                parcel2.writeNoException();
                parcel2.writeString(strK);
                return true;
            case 8:
                double dB = b();
                parcel2.writeNoException();
                parcel2.writeDouble(dB);
                return true;
            case 9:
                String strX = x();
                parcel2.writeNoException();
                parcel2.writeString(strX);
                return true;
            case 10:
                String strQ = q();
                parcel2.writeNoException();
                parcel2.writeString(strQ);
                return true;
            case 11:
                com.google.android.gms.ads.internal.client.zzdq zzdqVarF = f();
                parcel2.writeNoException();
                zzasx.g(parcel2, zzdqVarF);
                return true;
            case 12:
                String strP = p();
                parcel2.writeNoException();
                parcel2.writeString(strP);
                return true;
            case 13:
                y();
                parcel2.writeNoException();
                return true;
            case 14:
                zzbdp zzbdpVarG = g();
                parcel2.writeNoException();
                zzasx.g(parcel2, zzbdpVarG);
                return true;
            case 15:
                Bundle bundle = (Bundle) zzasx.a(parcel, Bundle.CREATOR);
                zzasx.c(parcel);
                sa(bundle);
                parcel2.writeNoException();
                return true;
            case 16:
                Bundle bundle2 = (Bundle) zzasx.a(parcel, Bundle.CREATOR);
                zzasx.c(parcel);
                boolean zC8 = c8(bundle2);
                parcel2.writeNoException();
                zzasx.d(parcel2, zC8);
                return true;
            case 17:
                Bundle bundle3 = (Bundle) zzasx.a(parcel, Bundle.CREATOR);
                zzasx.c(parcel);
                k5(bundle3);
                parcel2.writeNoException();
                return true;
            case 18:
                IObjectWrapper iObjectWrapperL = l();
                parcel2.writeNoException();
                zzasx.g(parcel2, iObjectWrapperL);
                return true;
            case 19:
                IObjectWrapper iObjectWrapperJ = j();
                parcel2.writeNoException();
                zzasx.g(parcel2, iObjectWrapperJ);
                return true;
            case 20:
                Bundle bundleC = c();
                parcel2.writeNoException();
                zzasx.f(parcel2, bundleC);
                return true;
            case 21:
                IBinder strongBinder = parcel.readStrongBinder();
                if (strongBinder == null) {
                    zzbfpVar = null;
                } else {
                    IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.IUnconfirmedClickListener");
                    zzbfpVar = iInterfaceQueryLocalInterface instanceof zzbfr ? (zzbfr) iInterfaceQueryLocalInterface : new zzbfp(strongBinder);
                }
                zzasx.c(parcel);
                p9(zzbfpVar);
                parcel2.writeNoException();
                return true;
            case 22:
                C();
                parcel2.writeNoException();
                return true;
            case 23:
                List listT = t();
                parcel2.writeNoException();
                parcel2.writeList(listT);
                return true;
            case 24:
                boolean zH0 = h0();
                parcel2.writeNoException();
                zzasx.d(parcel2, zH0);
                return true;
            case 25:
                com.google.android.gms.ads.internal.client.zzcw zzcwVarSa = com.google.android.gms.ads.internal.client.zzcv.Sa(parcel.readStrongBinder());
                zzasx.c(parcel);
                h3(zzcwVarSa);
                parcel2.writeNoException();
                return true;
            case 26:
                com.google.android.gms.ads.internal.client.zzcs zzcsVarSa = com.google.android.gms.ads.internal.client.zzcr.Sa(parcel.readStrongBinder());
                zzasx.c(parcel);
                m7(zzcsVarSa);
                parcel2.writeNoException();
                return true;
            case 27:
                f0();
                parcel2.writeNoException();
                return true;
            case 28:
                B();
                parcel2.writeNoException();
                return true;
            case 29:
                zzbdu zzbduVarH = h();
                parcel2.writeNoException();
                zzasx.g(parcel2, zzbduVarH);
                return true;
            case 30:
                boolean zV = V();
                parcel2.writeNoException();
                zzasx.d(parcel2, zV);
                return true;
            case 31:
                com.google.android.gms.ads.internal.client.zzdn zzdnVarE = e();
                parcel2.writeNoException();
                zzasx.g(parcel2, zzdnVarE);
                return true;
            case 32:
                com.google.android.gms.ads.internal.client.zzdg zzdgVarSa = com.google.android.gms.ads.internal.client.zzdf.Sa(parcel.readStrongBinder());
                zzasx.c(parcel);
                o4(zzdgVarSa);
                parcel2.writeNoException();
                return true;
            default:
                return false;
        }
    }
}
