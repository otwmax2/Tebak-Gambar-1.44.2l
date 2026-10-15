package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
import java.util.List;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public abstract class zzbel extends zzasw implements zzbem {
    public zzbel() {
        super("com.google.android.gms.ads.internal.formats.client.INativeAppInstallAd");
    }

    @Override // com.google.android.gms.internal.ads.zzasw
    protected final boolean Ra(int i10, Parcel parcel, Parcel parcel2, int i11) throws RemoteException {
        switch (i10) {
            case 2:
                IObjectWrapper iObjectWrapperF = f();
                parcel2.writeNoException();
                zzasx.g(parcel2, iObjectWrapperF);
                return true;
            case 3:
                String strI = i();
                parcel2.writeNoException();
                parcel2.writeString(strI);
                return true;
            case 4:
                List listM = m();
                parcel2.writeNoException();
                parcel2.writeList(listM);
                return true;
            case 5:
                String strG = g();
                parcel2.writeNoException();
                parcel2.writeString(strG);
                return true;
            case 6:
                zzbdx zzbdxVarC = c();
                parcel2.writeNoException();
                zzasx.g(parcel2, zzbdxVarC);
                return true;
            case 7:
                String strH = h();
                parcel2.writeNoException();
                parcel2.writeString(strH);
                return true;
            case 8:
                double dZzb = zzb();
                parcel2.writeNoException();
                parcel2.writeDouble(dZzb);
                return true;
            case 9:
                String strK = k();
                parcel2.writeNoException();
                parcel2.writeString(strK);
                return true;
            case 10:
                String strL = l();
                parcel2.writeNoException();
                parcel2.writeString(strL);
                return true;
            case 11:
                Bundle bundleA = a();
                parcel2.writeNoException();
                zzasx.f(parcel2, bundleA);
                return true;
            case 12:
                n();
                parcel2.writeNoException();
                return true;
            case 13:
                com.google.android.gms.ads.internal.client.zzdq zzdqVarD = d();
                parcel2.writeNoException();
                zzasx.g(parcel2, zzdqVarD);
                return true;
            case 14:
                Bundle bundle = (Bundle) zzasx.a(parcel, Bundle.CREATOR);
                zzasx.c(parcel);
                i0(bundle);
                parcel2.writeNoException();
                return true;
            case 15:
                Bundle bundle2 = (Bundle) zzasx.a(parcel, Bundle.CREATOR);
                zzasx.c(parcel);
                boolean zS7 = s7(bundle2);
                parcel2.writeNoException();
                zzasx.d(parcel2, zS7);
                return true;
            case 16:
                Bundle bundle3 = (Bundle) zzasx.a(parcel, Bundle.CREATOR);
                zzasx.c(parcel);
                h1(bundle3);
                parcel2.writeNoException();
                return true;
            case 17:
                zzbdp zzbdpVarB = b();
                parcel2.writeNoException();
                zzasx.g(parcel2, zzbdpVarB);
                return true;
            case 18:
                IObjectWrapper iObjectWrapperE = e();
                parcel2.writeNoException();
                zzasx.g(parcel2, iObjectWrapperE);
                return true;
            case 19:
                String strJ = j();
                parcel2.writeNoException();
                parcel2.writeString(strJ);
                return true;
            default:
                return false;
        }
    }
}
