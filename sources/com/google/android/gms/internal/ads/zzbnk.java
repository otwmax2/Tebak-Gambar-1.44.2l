package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public abstract class zzbnk extends zzasw implements zzbnl {
    public zzbnk() {
        super("com.google.android.gms.ads.internal.mediation.client.IMediationAdapterListener");
    }

    public static zzbnl Sa(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.IMediationAdapterListener");
        return iInterfaceQueryLocalInterface instanceof zzbnl ? (zzbnl) iInterfaceQueryLocalInterface : new zzbnj(iBinder);
    }

    @Override // com.google.android.gms.internal.ads.zzasw
    protected final boolean Ra(int i10, Parcel parcel, Parcel parcel2, int i11) throws RemoteException {
        switch (i10) {
            case 1:
                b();
                break;
            case 2:
                c();
                break;
            case 3:
                int i12 = parcel.readInt();
                zzasx.c(parcel);
                w(i12);
                break;
            case 4:
                k();
                break;
            case 5:
                n();
                break;
            case 6:
                m();
                break;
            case 7:
                IBinder strongBinder = parcel.readStrongBinder();
                if (strongBinder != null) {
                    IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.IMediationResponseMetadata");
                    if (iInterfaceQueryLocalInterface instanceof zzbnp) {
                    }
                }
                zzasx.c(parcel);
                break;
            case 8:
                l();
                break;
            case 9:
                String string = parcel.readString();
                String string2 = parcel.readString();
                zzasx.c(parcel);
                o8(string, string2);
                break;
            case 10:
                zzbeq.Sa(parcel.readStrongBinder());
                parcel.readString();
                zzasx.c(parcel);
                break;
            case 11:
                t();
                break;
            case 12:
                parcel.readString();
                zzasx.c(parcel);
                break;
            case 13:
                E();
                break;
            case 14:
                zzbup zzbupVar = (zzbup) zzasx.a(parcel, zzbup.CREATOR);
                zzasx.c(parcel);
                V3(zzbupVar);
                break;
            case 15:
                C();
                break;
            case 16:
                zzbut zzbutVarSa = zzbus.Sa(parcel.readStrongBinder());
                zzasx.c(parcel);
                u6(zzbutVarSa);
                break;
            case 17:
                int i13 = parcel.readInt();
                zzasx.c(parcel);
                w0(i13);
                break;
            case 18:
                v();
                break;
            case 19:
                zzasx.c(parcel);
                break;
            case 20:
                y();
                break;
            case 21:
                String string3 = parcel.readString();
                zzasx.c(parcel);
                m0(string3);
                break;
            case 22:
                int i14 = parcel.readInt();
                String string4 = parcel.readString();
                zzasx.c(parcel);
                C2(i14, string4);
                break;
            case 23:
                com.google.android.gms.ads.internal.client.zze zzeVar = (com.google.android.gms.ads.internal.client.zze) zzasx.a(parcel, com.google.android.gms.ads.internal.client.zze.CREATOR);
                zzasx.c(parcel);
                Y2(zzeVar);
                break;
            case 24:
                com.google.android.gms.ads.internal.client.zze zzeVar2 = (com.google.android.gms.ads.internal.client.zze) zzasx.a(parcel, com.google.android.gms.ads.internal.client.zze.CREATOR);
                zzasx.c(parcel);
                W0(zzeVar2);
                break;
            default:
                return false;
        }
        parcel2.writeNoException();
        return true;
    }
}
