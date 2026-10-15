package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public abstract class zzbpb extends zzasw implements zzbpc {
    public zzbpb() {
        super("com.google.android.gms.ads.internal.mediation.client.rtb.IRtbAdapter");
    }

    public static zzbpc Sa(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.rtb.IRtbAdapter");
        return iInterfaceQueryLocalInterface instanceof zzbpc ? (zzbpc) iInterfaceQueryLocalInterface : new zzbpa(iBinder);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r11v1, types: [com.google.android.gms.internal.ads.zzbpf] */
    /* JADX WARN: Type inference failed for: r11v4, types: [com.google.android.gms.internal.ads.zzboz] */
    /* JADX WARN: Type inference failed for: r11v5, types: [com.google.android.gms.internal.ads.zzbow] */
    /* JADX WARN: Type inference failed for: r11v6, types: [com.google.android.gms.internal.ads.zzboz] */
    /* JADX WARN: Type inference failed for: r11v8, types: [com.google.android.gms.internal.ads.zzbow] */
    /* JADX WARN: Type inference failed for: r14v0, types: [com.google.android.gms.internal.ads.zzbpb, com.google.android.gms.internal.ads.zzbpc] */
    /* JADX WARN: Type inference failed for: r5v16, types: [com.google.android.gms.internal.ads.zzboq] */
    /* JADX WARN: Type inference failed for: r5v5, types: [com.google.android.gms.internal.ads.zzboq] */
    /* JADX WARN: Type inference failed for: r7v14, types: [com.google.android.gms.internal.ads.zzbon] */
    /* JADX WARN: Type inference failed for: r7v5, types: [com.google.android.gms.internal.ads.zzbot] */
    @Override // com.google.android.gms.internal.ads.zzasw
    protected final boolean Ra(int i10, Parcel parcel, Parcel parcel2, int i11) throws RemoteException {
        IInterface zzbpdVar = null;
        if (i10 == 1) {
            IObjectWrapper iObjectWrapperX0 = IObjectWrapper.Stub.X0(parcel.readStrongBinder());
            String string = parcel.readString();
            Parcelable.Creator creator = Bundle.CREATOR;
            Bundle bundle = (Bundle) zzasx.a(parcel, creator);
            Bundle bundle2 = (Bundle) zzasx.a(parcel, creator);
            com.google.android.gms.ads.internal.client.zzq zzqVar = (com.google.android.gms.ads.internal.client.zzq) zzasx.a(parcel, com.google.android.gms.ads.internal.client.zzq.CREATOR);
            IBinder strongBinder = parcel.readStrongBinder();
            if (strongBinder != null) {
                IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.rtb.ISignalsCallback");
                zzbpdVar = iInterfaceQueryLocalInterface instanceof zzbpf ? (zzbpf) iInterfaceQueryLocalInterface : new zzbpd(strongBinder);
            }
            ?? r11 = zzbpdVar;
            zzasx.c(parcel);
            F8(iObjectWrapperX0, string, bundle, bundle2, zzqVar, r11);
            parcel2.writeNoException();
        } else if (i10 == 2) {
            zzbpq zzbpqVarC = c();
            parcel2.writeNoException();
            zzasx.f(parcel2, zzbpqVarC);
        } else if (i10 == 3) {
            zzbpq zzbpqVarE = e();
            parcel2.writeNoException();
            zzasx.f(parcel2, zzbpqVarE);
        } else if (i10 == 5) {
            com.google.android.gms.ads.internal.client.zzdq zzdqVarB = b();
            parcel2.writeNoException();
            zzasx.g(parcel2, zzdqVarB);
        } else if (i10 == 10) {
            IObjectWrapper.Stub.X0(parcel.readStrongBinder());
            zzasx.c(parcel);
            parcel2.writeNoException();
        } else if (i10 != 11) {
            switch (i10) {
                case 13:
                    String string2 = parcel.readString();
                    String string3 = parcel.readString();
                    com.google.android.gms.ads.internal.client.zzl zzlVar = (com.google.android.gms.ads.internal.client.zzl) zzasx.a(parcel, com.google.android.gms.ads.internal.client.zzl.CREATOR);
                    IObjectWrapper iObjectWrapperX02 = IObjectWrapper.Stub.X0(parcel.readStrongBinder());
                    IBinder strongBinder2 = parcel.readStrongBinder();
                    if (strongBinder2 != null) {
                        IInterface iInterfaceQueryLocalInterface2 = strongBinder2.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.rtb.IBannerCallback");
                        zzbpdVar = iInterfaceQueryLocalInterface2 instanceof zzboq ? (zzboq) iInterfaceQueryLocalInterface2 : new zzboo(strongBinder2);
                    }
                    ?? r52 = zzbpdVar;
                    zzbnl zzbnlVarSa = zzbnk.Sa(parcel.readStrongBinder());
                    com.google.android.gms.ads.internal.client.zzq zzqVar2 = (com.google.android.gms.ads.internal.client.zzq) zzasx.a(parcel, com.google.android.gms.ads.internal.client.zzq.CREATOR);
                    zzasx.c(parcel);
                    R4(string2, string3, zzlVar, iObjectWrapperX02, r52, zzbnlVarSa, zzqVar2);
                    parcel2.writeNoException();
                    break;
                case 14:
                    String string4 = parcel.readString();
                    String string5 = parcel.readString();
                    com.google.android.gms.ads.internal.client.zzl zzlVar2 = (com.google.android.gms.ads.internal.client.zzl) zzasx.a(parcel, com.google.android.gms.ads.internal.client.zzl.CREATOR);
                    IObjectWrapper iObjectWrapperX03 = IObjectWrapper.Stub.X0(parcel.readStrongBinder());
                    IBinder strongBinder3 = parcel.readStrongBinder();
                    if (strongBinder3 != null) {
                        IInterface iInterfaceQueryLocalInterface3 = strongBinder3.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.rtb.IInterstitialCallback");
                        zzbpdVar = iInterfaceQueryLocalInterface3 instanceof zzbot ? (zzbot) iInterfaceQueryLocalInterface3 : new zzbor(strongBinder3);
                    }
                    ?? r72 = zzbpdVar;
                    zzbnl zzbnlVarSa2 = zzbnk.Sa(parcel.readStrongBinder());
                    zzasx.c(parcel);
                    K3(string4, string5, zzlVar2, iObjectWrapperX03, r72, zzbnlVarSa2);
                    parcel2.writeNoException();
                    break;
                case 15:
                    IObjectWrapper iObjectWrapperX04 = IObjectWrapper.Stub.X0(parcel.readStrongBinder());
                    zzasx.c(parcel);
                    boolean zD6 = D6(iObjectWrapperX04);
                    parcel2.writeNoException();
                    zzasx.d(parcel2, zD6);
                    break;
                case 16:
                    String string6 = parcel.readString();
                    String string7 = parcel.readString();
                    com.google.android.gms.ads.internal.client.zzl zzlVar3 = (com.google.android.gms.ads.internal.client.zzl) zzasx.a(parcel, com.google.android.gms.ads.internal.client.zzl.CREATOR);
                    IObjectWrapper iObjectWrapperX05 = IObjectWrapper.Stub.X0(parcel.readStrongBinder());
                    IBinder strongBinder4 = parcel.readStrongBinder();
                    if (strongBinder4 != null) {
                        IInterface iInterfaceQueryLocalInterface4 = strongBinder4.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.rtb.IRewardedCallback");
                        zzbpdVar = iInterfaceQueryLocalInterface4 instanceof zzboz ? (zzboz) iInterfaceQueryLocalInterface4 : new zzbox(strongBinder4);
                    }
                    ?? r112 = zzbpdVar;
                    zzbnl zzbnlVarSa3 = zzbnk.Sa(parcel.readStrongBinder());
                    zzasx.c(parcel);
                    xa(string6, string7, zzlVar3, iObjectWrapperX05, r112, zzbnlVarSa3);
                    parcel2.writeNoException();
                    break;
                case 17:
                    IObjectWrapper iObjectWrapperX06 = IObjectWrapper.Stub.X0(parcel.readStrongBinder());
                    zzasx.c(parcel);
                    boolean zD9 = D9(iObjectWrapperX06);
                    parcel2.writeNoException();
                    zzasx.d(parcel2, zD9);
                    break;
                case 18:
                    String string8 = parcel.readString();
                    String string9 = parcel.readString();
                    com.google.android.gms.ads.internal.client.zzl zzlVar4 = (com.google.android.gms.ads.internal.client.zzl) zzasx.a(parcel, com.google.android.gms.ads.internal.client.zzl.CREATOR);
                    IObjectWrapper iObjectWrapperX07 = IObjectWrapper.Stub.X0(parcel.readStrongBinder());
                    IBinder strongBinder5 = parcel.readStrongBinder();
                    if (strongBinder5 != null) {
                        IInterface iInterfaceQueryLocalInterface5 = strongBinder5.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.rtb.INativeCallback");
                        zzbpdVar = iInterfaceQueryLocalInterface5 instanceof zzbow ? (zzbow) iInterfaceQueryLocalInterface5 : new zzbou(strongBinder5);
                    }
                    ?? r113 = zzbpdVar;
                    zzbnl zzbnlVarSa4 = zzbnk.Sa(parcel.readStrongBinder());
                    zzasx.c(parcel);
                    r3(string8, string9, zzlVar4, iObjectWrapperX07, r113, zzbnlVarSa4);
                    parcel2.writeNoException();
                    break;
                case 19:
                    String string10 = parcel.readString();
                    zzasx.c(parcel);
                    K9(string10);
                    parcel2.writeNoException();
                    break;
                case 20:
                    String string11 = parcel.readString();
                    String string12 = parcel.readString();
                    com.google.android.gms.ads.internal.client.zzl zzlVar5 = (com.google.android.gms.ads.internal.client.zzl) zzasx.a(parcel, com.google.android.gms.ads.internal.client.zzl.CREATOR);
                    IObjectWrapper iObjectWrapperX08 = IObjectWrapper.Stub.X0(parcel.readStrongBinder());
                    IBinder strongBinder6 = parcel.readStrongBinder();
                    if (strongBinder6 != null) {
                        IInterface iInterfaceQueryLocalInterface6 = strongBinder6.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.rtb.IRewardedCallback");
                        zzbpdVar = iInterfaceQueryLocalInterface6 instanceof zzboz ? (zzboz) iInterfaceQueryLocalInterface6 : new zzbox(strongBinder6);
                    }
                    ?? r114 = zzbpdVar;
                    zzbnl zzbnlVarSa5 = zzbnk.Sa(parcel.readStrongBinder());
                    zzasx.c(parcel);
                    l2(string11, string12, zzlVar5, iObjectWrapperX08, r114, zzbnlVarSa5);
                    parcel2.writeNoException();
                    break;
                case 21:
                    String string13 = parcel.readString();
                    String string14 = parcel.readString();
                    com.google.android.gms.ads.internal.client.zzl zzlVar6 = (com.google.android.gms.ads.internal.client.zzl) zzasx.a(parcel, com.google.android.gms.ads.internal.client.zzl.CREATOR);
                    IObjectWrapper iObjectWrapperX09 = IObjectWrapper.Stub.X0(parcel.readStrongBinder());
                    IBinder strongBinder7 = parcel.readStrongBinder();
                    if (strongBinder7 != null) {
                        IInterface iInterfaceQueryLocalInterface7 = strongBinder7.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.rtb.IBannerCallback");
                        zzbpdVar = iInterfaceQueryLocalInterface7 instanceof zzboq ? (zzboq) iInterfaceQueryLocalInterface7 : new zzboo(strongBinder7);
                    }
                    ?? r53 = zzbpdVar;
                    zzbnl zzbnlVarSa6 = zzbnk.Sa(parcel.readStrongBinder());
                    com.google.android.gms.ads.internal.client.zzq zzqVar3 = (com.google.android.gms.ads.internal.client.zzq) zzasx.a(parcel, com.google.android.gms.ads.internal.client.zzq.CREATOR);
                    zzasx.c(parcel);
                    f6(string13, string14, zzlVar6, iObjectWrapperX09, r53, zzbnlVarSa6, zzqVar3);
                    parcel2.writeNoException();
                    break;
                case 22:
                    String string15 = parcel.readString();
                    String string16 = parcel.readString();
                    com.google.android.gms.ads.internal.client.zzl zzlVar7 = (com.google.android.gms.ads.internal.client.zzl) zzasx.a(parcel, com.google.android.gms.ads.internal.client.zzl.CREATOR);
                    IObjectWrapper iObjectWrapperX010 = IObjectWrapper.Stub.X0(parcel.readStrongBinder());
                    IBinder strongBinder8 = parcel.readStrongBinder();
                    if (strongBinder8 != null) {
                        IInterface iInterfaceQueryLocalInterface8 = strongBinder8.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.rtb.INativeCallback");
                        zzbpdVar = iInterfaceQueryLocalInterface8 instanceof zzbow ? (zzbow) iInterfaceQueryLocalInterface8 : new zzbou(strongBinder8);
                    }
                    ?? r115 = zzbpdVar;
                    zzbnl zzbnlVarSa7 = zzbnk.Sa(parcel.readStrongBinder());
                    zzbdl zzbdlVar = (zzbdl) zzasx.a(parcel, zzbdl.CREATOR);
                    zzasx.c(parcel);
                    a8(string15, string16, zzlVar7, iObjectWrapperX010, r115, zzbnlVarSa7, zzbdlVar);
                    parcel2.writeNoException();
                    break;
                case 23:
                    String string17 = parcel.readString();
                    String string18 = parcel.readString();
                    com.google.android.gms.ads.internal.client.zzl zzlVar8 = (com.google.android.gms.ads.internal.client.zzl) zzasx.a(parcel, com.google.android.gms.ads.internal.client.zzl.CREATOR);
                    IObjectWrapper iObjectWrapperX011 = IObjectWrapper.Stub.X0(parcel.readStrongBinder());
                    IBinder strongBinder9 = parcel.readStrongBinder();
                    if (strongBinder9 != null) {
                        IInterface iInterfaceQueryLocalInterface9 = strongBinder9.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.rtb.IAppOpenCallback");
                        zzbpdVar = iInterfaceQueryLocalInterface9 instanceof zzbon ? (zzbon) iInterfaceQueryLocalInterface9 : new zzbol(strongBinder9);
                    }
                    ?? r73 = zzbpdVar;
                    zzbnl zzbnlVarSa8 = zzbnk.Sa(parcel.readStrongBinder());
                    zzasx.c(parcel);
                    D5(string17, string18, zzlVar8, iObjectWrapperX011, r73, zzbnlVarSa8);
                    parcel2.writeNoException();
                    break;
                case 24:
                    IObjectWrapper iObjectWrapperX012 = IObjectWrapper.Stub.X0(parcel.readStrongBinder());
                    zzasx.c(parcel);
                    boolean zC0 = c0(iObjectWrapperX012);
                    parcel2.writeNoException();
                    zzasx.d(parcel2, zC0);
                    break;
                default:
                    return false;
            }
        } else {
            parcel.createStringArray();
            zzasx.c(parcel);
            parcel2.writeNoException();
        }
        return true;
    }
}
