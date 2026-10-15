package com.google.android.gms.ads.internal.client;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.ads.formats.AdManagerAdViewOptions;
import com.google.android.gms.ads.formats.PublisherAdViewOptions;
import com.google.android.gms.internal.ads.zzasw;
import com.google.android.gms.internal.ads.zzasx;
import com.google.android.gms.internal.ads.zzbdl;
import com.google.android.gms.internal.ads.zzbeu;
import com.google.android.gms.internal.ads.zzbev;
import com.google.android.gms.internal.ads.zzbex;
import com.google.android.gms.internal.ads.zzbey;
import com.google.android.gms.internal.ads.zzbfa;
import com.google.android.gms.internal.ads.zzbfb;
import com.google.android.gms.internal.ads.zzbfd;
import com.google.android.gms.internal.ads.zzbfe;
import com.google.android.gms.internal.ads.zzbfh;
import com.google.android.gms.internal.ads.zzbfi;
import com.google.android.gms.internal.ads.zzbfk;
import com.google.android.gms.internal.ads.zzbfl;
import com.google.android.gms.internal.ads.zzbjx;
import com.google.android.gms.internal.ads.zzbkf;
import com.google.android.gms.internal.ads.zzbkg;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.0.0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class zzbp extends zzasw implements zzbq {
    public zzbp() {
        super("com.google.android.gms.ads.internal.client.IAdLoaderBuilder");
    }

    @Override // com.google.android.gms.internal.ads.zzasw
    protected final boolean Ra(int i10, Parcel parcel, Parcel parcel2, int i11) throws RemoteException {
        zzbh zzbfVar = null;
        zzcf zzcfVar = null;
        switch (i10) {
            case 1:
                zzbn zzbnVarB = b();
                parcel2.writeNoException();
                zzasx.g(parcel2, zzbnVarB);
                return true;
            case 2:
                IBinder strongBinder = parcel.readStrongBinder();
                if (strongBinder != null) {
                    IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdListener");
                    zzbfVar = iInterfaceQueryLocalInterface instanceof zzbh ? (zzbh) iInterfaceQueryLocalInterface : new zzbf(strongBinder);
                }
                zzasx.c(parcel);
                Y8(zzbfVar);
                parcel2.writeNoException();
                return true;
            case 3:
                zzbev zzbevVarSa = zzbeu.Sa(parcel.readStrongBinder());
                zzasx.c(parcel);
                x3(zzbevVarSa);
                parcel2.writeNoException();
                return true;
            case 4:
                zzbey zzbeyVarSa = zzbex.Sa(parcel.readStrongBinder());
                zzasx.c(parcel);
                G7(zzbeyVarSa);
                parcel2.writeNoException();
                return true;
            case 5:
                String string = parcel.readString();
                zzbfe zzbfeVarSa = zzbfd.Sa(parcel.readStrongBinder());
                zzbfb zzbfbVarSa = zzbfa.Sa(parcel.readStrongBinder());
                zzasx.c(parcel);
                X5(string, zzbfeVarSa, zzbfbVarSa);
                parcel2.writeNoException();
                return true;
            case 6:
                zzbdl zzbdlVar = (zzbdl) zzasx.a(parcel, zzbdl.CREATOR);
                zzasx.c(parcel);
                wa(zzbdlVar);
                parcel2.writeNoException();
                return true;
            case 7:
                IBinder strongBinder2 = parcel.readStrongBinder();
                if (strongBinder2 != null) {
                    IInterface iInterfaceQueryLocalInterface2 = strongBinder2.queryLocalInterface("com.google.android.gms.ads.internal.client.ICorrelationIdProvider");
                    zzcfVar = iInterfaceQueryLocalInterface2 instanceof zzcf ? (zzcf) iInterfaceQueryLocalInterface2 : new zzcf(strongBinder2);
                }
                zzasx.c(parcel);
                x9(zzcfVar);
                parcel2.writeNoException();
                return true;
            case 8:
                zzbfi zzbfiVarSa = zzbfh.Sa(parcel.readStrongBinder());
                zzq zzqVar = (zzq) zzasx.a(parcel, zzq.CREATOR);
                zzasx.c(parcel);
                n6(zzbfiVarSa, zzqVar);
                parcel2.writeNoException();
                return true;
            case 9:
                PublisherAdViewOptions publisherAdViewOptions = (PublisherAdViewOptions) zzasx.a(parcel, PublisherAdViewOptions.CREATOR);
                zzasx.c(parcel);
                pa(publisherAdViewOptions);
                parcel2.writeNoException();
                return true;
            case 10:
                zzbfl zzbflVarSa = zzbfk.Sa(parcel.readStrongBinder());
                zzasx.c(parcel);
                F1(zzbflVarSa);
                parcel2.writeNoException();
                return true;
            case 11:
            case 12:
            default:
                return false;
            case 13:
                zzbjx zzbjxVar = (zzbjx) zzasx.a(parcel, zzbjx.CREATOR);
                zzasx.c(parcel);
                H8(zzbjxVar);
                parcel2.writeNoException();
                return true;
            case 14:
                zzbkg zzbkgVarSa = zzbkf.Sa(parcel.readStrongBinder());
                zzasx.c(parcel);
                e9(zzbkgVarSa);
                parcel2.writeNoException();
                return true;
            case 15:
                AdManagerAdViewOptions adManagerAdViewOptions = (AdManagerAdViewOptions) zzasx.a(parcel, AdManagerAdViewOptions.CREATOR);
                zzasx.c(parcel);
                ya(adManagerAdViewOptions);
                parcel2.writeNoException();
                return true;
        }
    }
}
