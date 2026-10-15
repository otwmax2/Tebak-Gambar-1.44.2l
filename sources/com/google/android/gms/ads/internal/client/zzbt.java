package com.google.android.gms.ads.internal.client;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.internal.ads.zzasw;
import com.google.android.gms.internal.ads.zzasx;
import com.google.android.gms.internal.ads.zzava;
import com.google.android.gms.internal.ads.zzavb;
import com.google.android.gms.internal.ads.zzbbo;
import com.google.android.gms.internal.ads.zzbbp;
import com.google.android.gms.internal.ads.zzbrk;
import com.google.android.gms.internal.ads.zzbrl;
import com.google.android.gms.internal.ads.zzbrn;
import com.google.android.gms.internal.ads.zzbro;
import com.google.android.gms.internal.ads.zzbui;
import com.google.android.gms.internal.ads.zzbuj;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.0.0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class zzbt extends zzasw implements zzbu {
    public zzbt() {
        super("com.google.android.gms.ads.internal.client.IAdManager");
    }

    public static zzbu Sa(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdManager");
        return iInterfaceQueryLocalInterface instanceof zzbu ? (zzbu) iInterfaceQueryLocalInterface : new zzbs(iBinder);
    }

    @Override // com.google.android.gms.internal.ads.zzasw
    protected final boolean Ra(int i10, Parcel parcel, Parcel parcel2, int i11) throws RemoteException {
        zzbh zzbfVar = null;
        zzci zzcgVar = null;
        zzbk zzbiVar = null;
        zzdg zzdeVar = null;
        zzby zzbwVar = null;
        zzcf zzcfVar = null;
        zzbe zzbcVar = null;
        zzcb zzbzVar = null;
        switch (i10) {
            case 1:
                IObjectWrapper iObjectWrapperK = k();
                parcel2.writeNoException();
                zzasx.g(parcel2, iObjectWrapperK);
                return true;
            case 2:
                y();
                parcel2.writeNoException();
                return true;
            case 3:
                boolean zZ9 = Z9();
                parcel2.writeNoException();
                zzasx.d(parcel2, zZ9);
                return true;
            case 4:
                zzl zzlVar = (zzl) zzasx.a(parcel, zzl.CREATOR);
                zzasx.c(parcel);
                boolean zP9 = P9(zzlVar);
                parcel2.writeNoException();
                zzasx.d(parcel2, zP9);
                return true;
            case 5:
                N();
                parcel2.writeNoException();
                return true;
            case 6:
                R();
                parcel2.writeNoException();
                return true;
            case 7:
                IBinder strongBinder = parcel.readStrongBinder();
                if (strongBinder != null) {
                    IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdListener");
                    zzbfVar = iInterfaceQueryLocalInterface instanceof zzbh ? (zzbh) iInterfaceQueryLocalInterface : new zzbf(strongBinder);
                }
                zzasx.c(parcel);
                o6(zzbfVar);
                parcel2.writeNoException();
                return true;
            case 8:
                IBinder strongBinder2 = parcel.readStrongBinder();
                if (strongBinder2 != null) {
                    IInterface iInterfaceQueryLocalInterface2 = strongBinder2.queryLocalInterface("com.google.android.gms.ads.internal.client.IAppEventListener");
                    zzbzVar = iInterfaceQueryLocalInterface2 instanceof zzcb ? (zzcb) iInterfaceQueryLocalInterface2 : new zzbz(strongBinder2);
                }
                zzasx.c(parcel);
                d6(zzbzVar);
                parcel2.writeNoException();
                return true;
            case 9:
                F0();
                parcel2.writeNoException();
                return true;
            case 10:
                parcel2.writeNoException();
                return true;
            case 11:
                B();
                parcel2.writeNoException();
                return true;
            case 12:
                zzq zzqVarE = e();
                parcel2.writeNoException();
                zzasx.f(parcel2, zzqVarE);
                return true;
            case 13:
                zzq zzqVar = (zzq) zzasx.a(parcel, zzq.CREATOR);
                zzasx.c(parcel);
                e8(zzqVar);
                parcel2.writeNoException();
                return true;
            case 14:
                zzbrl zzbrlVarSa = zzbrk.Sa(parcel.readStrongBinder());
                zzasx.c(parcel);
                v2(zzbrlVarSa);
                parcel2.writeNoException();
                return true;
            case 15:
                zzbro zzbroVarSa = zzbrn.Sa(parcel.readStrongBinder());
                String string = parcel.readString();
                zzasx.c(parcel);
                Ha(zzbroVarSa, string);
                parcel2.writeNoException();
                return true;
            case 16:
            case 17:
            case 27:
            case 28:
            default:
                return false;
            case 18:
                String strQ = q();
                parcel2.writeNoException();
                parcel2.writeString(strQ);
                return true;
            case 19:
                zzbbp zzbbpVarSa = zzbbo.Sa(parcel.readStrongBinder());
                zzasx.c(parcel);
                l5(zzbbpVarSa);
                parcel2.writeNoException();
                return true;
            case 20:
                IBinder strongBinder3 = parcel.readStrongBinder();
                if (strongBinder3 != null) {
                    IInterface iInterfaceQueryLocalInterface3 = strongBinder3.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdClickListener");
                    zzbcVar = iInterfaceQueryLocalInterface3 instanceof zzbe ? (zzbe) iInterfaceQueryLocalInterface3 : new zzbc(strongBinder3);
                }
                zzasx.c(parcel);
                M3(zzbcVar);
                parcel2.writeNoException();
                return true;
            case 21:
                IBinder strongBinder4 = parcel.readStrongBinder();
                if (strongBinder4 != null) {
                    IInterface iInterfaceQueryLocalInterface4 = strongBinder4.queryLocalInterface("com.google.android.gms.ads.internal.client.ICorrelationIdProvider");
                    zzcfVar = iInterfaceQueryLocalInterface4 instanceof zzcf ? (zzcf) iInterfaceQueryLocalInterface4 : new zzcf(strongBinder4);
                }
                zzasx.c(parcel);
                D7(zzcfVar);
                parcel2.writeNoException();
                return true;
            case 22:
                boolean zH = zzasx.h(parcel);
                zzasx.c(parcel);
                Da(zH);
                parcel2.writeNoException();
                return true;
            case 23:
                boolean zN1 = n1();
                parcel2.writeNoException();
                zzasx.d(parcel2, zN1);
                return true;
            case 24:
                zzbuj zzbujVarSa = zzbui.Sa(parcel.readStrongBinder());
                zzasx.c(parcel);
                G6(zzbujVarSa);
                parcel2.writeNoException();
                return true;
            case 25:
                String string2 = parcel.readString();
                zzasx.c(parcel);
                A4(string2);
                parcel2.writeNoException();
                return true;
            case 26:
                zzdq zzdqVarJ = j();
                parcel2.writeNoException();
                zzasx.g(parcel2, zzdqVarJ);
                return true;
            case 29:
                zzfl zzflVar = (zzfl) zzasx.a(parcel, zzfl.CREATOR);
                zzasx.c(parcel);
                t6(zzflVar);
                parcel2.writeNoException();
                return true;
            case 30:
                zzdu zzduVar = (zzdu) zzasx.a(parcel, zzdu.CREATOR);
                zzasx.c(parcel);
                m3(zzduVar);
                parcel2.writeNoException();
                return true;
            case 31:
                String strP = p();
                parcel2.writeNoException();
                parcel2.writeString(strP);
                return true;
            case 32:
                zzcb zzcbVarH = h();
                parcel2.writeNoException();
                zzasx.g(parcel2, zzcbVarH);
                return true;
            case 33:
                zzbh zzbhVarG = g();
                parcel2.writeNoException();
                zzasx.g(parcel2, zzbhVarG);
                return true;
            case 34:
                boolean zH2 = zzasx.h(parcel);
                zzasx.c(parcel);
                D8(zH2);
                parcel2.writeNoException();
                return true;
            case 35:
                String strX = x();
                parcel2.writeNoException();
                parcel2.writeString(strX);
                return true;
            case 36:
                IBinder strongBinder5 = parcel.readStrongBinder();
                if (strongBinder5 != null) {
                    IInterface iInterfaceQueryLocalInterface5 = strongBinder5.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdMetadataListener");
                    zzbwVar = iInterfaceQueryLocalInterface5 instanceof zzby ? (zzby) iInterfaceQueryLocalInterface5 : new zzbw(strongBinder5);
                }
                zzasx.c(parcel);
                K7(zzbwVar);
                parcel2.writeNoException();
                return true;
            case 37:
                Bundle bundleD = d();
                parcel2.writeNoException();
                zzasx.f(parcel2, bundleD);
                return true;
            case 38:
                String string3 = parcel.readString();
                zzasx.c(parcel);
                O1(string3);
                parcel2.writeNoException();
                return true;
            case 39:
                zzw zzwVar = (zzw) zzasx.a(parcel, zzw.CREATOR);
                zzasx.c(parcel);
                E7(zzwVar);
                parcel2.writeNoException();
                return true;
            case 40:
                zzavb zzavbVarSa = zzava.Sa(parcel.readStrongBinder());
                zzasx.c(parcel);
                aa(zzavbVarSa);
                parcel2.writeNoException();
                return true;
            case 41:
                zzdn zzdnVarI = i();
                parcel2.writeNoException();
                zzasx.g(parcel2, zzdnVarI);
                return true;
            case 42:
                IBinder strongBinder6 = parcel.readStrongBinder();
                if (strongBinder6 != null) {
                    IInterface iInterfaceQueryLocalInterface6 = strongBinder6.queryLocalInterface("com.google.android.gms.ads.internal.client.IOnPaidEventListener");
                    zzdeVar = iInterfaceQueryLocalInterface6 instanceof zzdg ? (zzdg) iInterfaceQueryLocalInterface6 : new zzde(strongBinder6);
                }
                zzasx.c(parcel);
                s3(zzdeVar);
                parcel2.writeNoException();
                return true;
            case 43:
                zzl zzlVar2 = (zzl) zzasx.a(parcel, zzl.CREATOR);
                IBinder strongBinder7 = parcel.readStrongBinder();
                if (strongBinder7 != null) {
                    IInterface iInterfaceQueryLocalInterface7 = strongBinder7.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdLoadCallback");
                    zzbiVar = iInterfaceQueryLocalInterface7 instanceof zzbk ? (zzbk) iInterfaceQueryLocalInterface7 : new zzbi(strongBinder7);
                }
                zzasx.c(parcel);
                D3(zzlVar2, zzbiVar);
                parcel2.writeNoException();
                return true;
            case 44:
                IObjectWrapper iObjectWrapperX0 = IObjectWrapper.Stub.X0(parcel.readStrongBinder());
                zzasx.c(parcel);
                y4(iObjectWrapperX0);
                parcel2.writeNoException();
                return true;
            case 45:
                IBinder strongBinder8 = parcel.readStrongBinder();
                if (strongBinder8 != null) {
                    IInterface iInterfaceQueryLocalInterface8 = strongBinder8.queryLocalInterface("com.google.android.gms.ads.internal.client.IFullScreenContentCallback");
                    zzcgVar = iInterfaceQueryLocalInterface8 instanceof zzci ? (zzci) iInterfaceQueryLocalInterface8 : new zzcg(strongBinder8);
                }
                zzasx.c(parcel);
                q2(zzcgVar);
                parcel2.writeNoException();
                return true;
        }
    }
}
