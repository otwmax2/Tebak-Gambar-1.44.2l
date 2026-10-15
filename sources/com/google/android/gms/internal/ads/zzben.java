package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
import java.util.List;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public abstract class zzben extends zzasw implements zzbeo {
    public zzben() {
        super("com.google.android.gms.ads.internal.formats.client.INativeContentAd");
    }

    @Override // com.google.android.gms.internal.ads.zzasw
    protected final boolean Ra(int i10, Parcel parcel, Parcel parcel2, int i11) throws RemoteException {
        switch (i10) {
            case 2:
                IObjectWrapper iObjectWrapperE = e();
                parcel2.writeNoException();
                zzasx.g(parcel2, iObjectWrapperE);
                return true;
            case 3:
                String strI = i();
                parcel2.writeNoException();
                parcel2.writeString(strI);
                return true;
            case 4:
                List listL = l();
                parcel2.writeNoException();
                parcel2.writeList(listL);
                return true;
            case 5:
                String strG = g();
                parcel2.writeNoException();
                parcel2.writeString(strG);
                return true;
            case 6:
                zzbdx zzbdxVarB = b();
                parcel2.writeNoException();
                zzasx.g(parcel2, zzbdxVarB);
                return true;
            case 7:
                String strH = h();
                parcel2.writeNoException();
                parcel2.writeString(strH);
                return true;
            case 8:
                String strF = f();
                parcel2.writeNoException();
                parcel2.writeString(strF);
                return true;
            case 9:
                Bundle bundleZzb = zzb();
                parcel2.writeNoException();
                zzasx.f(parcel2, bundleZzb);
                return true;
            case 10:
                k();
                parcel2.writeNoException();
                return true;
            case 11:
                com.google.android.gms.ads.internal.client.zzdq zzdqVarA = a();
                parcel2.writeNoException();
                zzasx.g(parcel2, zzdqVarA);
                return true;
            case 12:
                Bundle bundle = (Bundle) zzasx.a(parcel, Bundle.CREATOR);
                zzasx.c(parcel);
                N3(bundle);
                parcel2.writeNoException();
                return true;
            case 13:
                Bundle bundle2 = (Bundle) zzasx.a(parcel, Bundle.CREATOR);
                zzasx.c(parcel);
                boolean zI0 = i0(bundle2);
                parcel2.writeNoException();
                zzasx.d(parcel2, zI0);
                return true;
            case 14:
                Bundle bundle3 = (Bundle) zzasx.a(parcel, Bundle.CREATOR);
                zzasx.c(parcel);
                n0(bundle3);
                parcel2.writeNoException();
                return true;
            case 15:
                zzbdp zzbdpVarD = d();
                parcel2.writeNoException();
                zzasx.g(parcel2, zzbdpVarD);
                return true;
            case 16:
                IObjectWrapper iObjectWrapperC = c();
                parcel2.writeNoException();
                zzasx.g(parcel2, iObjectWrapperC);
                return true;
            case 17:
                String strJ = j();
                parcel2.writeNoException();
                parcel2.writeString(strJ);
                return true;
            default:
                return false;
        }
    }
}
