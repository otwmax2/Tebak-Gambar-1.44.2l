package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
import java.util.ArrayList;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public abstract class zzbnh extends zzasw implements zzbni {
    public zzbnh() {
        super("com.google.android.gms.ads.internal.mediation.client.IMediationAdapter");
    }

    @Override // com.google.android.gms.internal.ads.zzasw
    protected final boolean Ra(int i10, Parcel parcel, Parcel parcel2, int i11) throws RemoteException {
        zzbnl zzbnjVar = null;
        switch (i10) {
            case 1:
                IObjectWrapper iObjectWrapperX0 = IObjectWrapper.Stub.X0(parcel.readStrongBinder());
                com.google.android.gms.ads.internal.client.zzq zzqVar = (com.google.android.gms.ads.internal.client.zzq) zzasx.a(parcel, com.google.android.gms.ads.internal.client.zzq.CREATOR);
                com.google.android.gms.ads.internal.client.zzl zzlVar = (com.google.android.gms.ads.internal.client.zzl) zzasx.a(parcel, com.google.android.gms.ads.internal.client.zzl.CREATOR);
                String string = parcel.readString();
                IBinder strongBinder = parcel.readStrongBinder();
                if (strongBinder != null) {
                    IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.IMediationAdapterListener");
                    zzbnjVar = iInterfaceQueryLocalInterface instanceof zzbnl ? (zzbnl) iInterfaceQueryLocalInterface : new zzbnj(strongBinder);
                }
                zzbnl zzbnlVar = zzbnjVar;
                zzasx.c(parcel);
                S9(iObjectWrapperX0, zzqVar, zzlVar, string, zzbnlVar);
                parcel2.writeNoException();
                return true;
            case 2:
                IObjectWrapper iObjectWrapperK = k();
                parcel2.writeNoException();
                zzasx.g(parcel2, iObjectWrapperK);
                return true;
            case 3:
                IObjectWrapper iObjectWrapperX02 = IObjectWrapper.Stub.X0(parcel.readStrongBinder());
                com.google.android.gms.ads.internal.client.zzl zzlVar2 = (com.google.android.gms.ads.internal.client.zzl) zzasx.a(parcel, com.google.android.gms.ads.internal.client.zzl.CREATOR);
                String string2 = parcel.readString();
                IBinder strongBinder2 = parcel.readStrongBinder();
                if (strongBinder2 != null) {
                    IInterface iInterfaceQueryLocalInterface2 = strongBinder2.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.IMediationAdapterListener");
                    zzbnjVar = iInterfaceQueryLocalInterface2 instanceof zzbnl ? (zzbnl) iInterfaceQueryLocalInterface2 : new zzbnj(strongBinder2);
                }
                zzasx.c(parcel);
                T8(iObjectWrapperX02, zzlVar2, string2, zzbnjVar);
                parcel2.writeNoException();
                return true;
            case 4:
                T();
                parcel2.writeNoException();
                return true;
            case 5:
                m();
                parcel2.writeNoException();
                return true;
            case 6:
                IObjectWrapper iObjectWrapperX03 = IObjectWrapper.Stub.X0(parcel.readStrongBinder());
                com.google.android.gms.ads.internal.client.zzq zzqVar2 = (com.google.android.gms.ads.internal.client.zzq) zzasx.a(parcel, com.google.android.gms.ads.internal.client.zzq.CREATOR);
                com.google.android.gms.ads.internal.client.zzl zzlVar3 = (com.google.android.gms.ads.internal.client.zzl) zzasx.a(parcel, com.google.android.gms.ads.internal.client.zzl.CREATOR);
                String string3 = parcel.readString();
                String string4 = parcel.readString();
                IBinder strongBinder3 = parcel.readStrongBinder();
                if (strongBinder3 != null) {
                    IInterface iInterfaceQueryLocalInterface3 = strongBinder3.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.IMediationAdapterListener");
                    zzbnjVar = iInterfaceQueryLocalInterface3 instanceof zzbnl ? (zzbnl) iInterfaceQueryLocalInterface3 : new zzbnj(strongBinder3);
                }
                zzbnl zzbnlVar2 = zzbnjVar;
                zzasx.c(parcel);
                h6(iObjectWrapperX03, zzqVar2, zzlVar3, string3, string4, zzbnlVar2);
                parcel2.writeNoException();
                return true;
            case 7:
                IObjectWrapper iObjectWrapperX04 = IObjectWrapper.Stub.X0(parcel.readStrongBinder());
                com.google.android.gms.ads.internal.client.zzl zzlVar4 = (com.google.android.gms.ads.internal.client.zzl) zzasx.a(parcel, com.google.android.gms.ads.internal.client.zzl.CREATOR);
                String string5 = parcel.readString();
                String string6 = parcel.readString();
                IBinder strongBinder4 = parcel.readStrongBinder();
                if (strongBinder4 != null) {
                    IInterface iInterfaceQueryLocalInterface4 = strongBinder4.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.IMediationAdapterListener");
                    zzbnjVar = iInterfaceQueryLocalInterface4 instanceof zzbnl ? (zzbnl) iInterfaceQueryLocalInterface4 : new zzbnj(strongBinder4);
                }
                zzbnl zzbnlVar3 = zzbnjVar;
                zzasx.c(parcel);
                K8(iObjectWrapperX04, zzlVar4, string5, string6, zzbnlVar3);
                parcel2.writeNoException();
                return true;
            case 8:
                H();
                parcel2.writeNoException();
                return true;
            case 9:
                L();
                parcel2.writeNoException();
                return true;
            case 10:
                IObjectWrapper iObjectWrapperX05 = IObjectWrapper.Stub.X0(parcel.readStrongBinder());
                com.google.android.gms.ads.internal.client.zzl zzlVar5 = (com.google.android.gms.ads.internal.client.zzl) zzasx.a(parcel, com.google.android.gms.ads.internal.client.zzl.CREATOR);
                String string7 = parcel.readString();
                zzbuo zzbuoVarSa = zzbun.Sa(parcel.readStrongBinder());
                String string8 = parcel.readString();
                zzasx.c(parcel);
                x8(iObjectWrapperX05, zzlVar5, string7, zzbuoVarSa, string8);
                parcel2.writeNoException();
                return true;
            case 11:
                com.google.android.gms.ads.internal.client.zzl zzlVar6 = (com.google.android.gms.ads.internal.client.zzl) zzasx.a(parcel, com.google.android.gms.ads.internal.client.zzl.CREATOR);
                String string9 = parcel.readString();
                zzasx.c(parcel);
                E8(zzlVar6, string9);
                parcel2.writeNoException();
                return true;
            case 12:
                q0();
                parcel2.writeNoException();
                return true;
            case 13:
                boolean zJ = J();
                parcel2.writeNoException();
                zzasx.d(parcel2, zJ);
                return true;
            case 14:
                IObjectWrapper iObjectWrapperX06 = IObjectWrapper.Stub.X0(parcel.readStrongBinder());
                com.google.android.gms.ads.internal.client.zzl zzlVar7 = (com.google.android.gms.ads.internal.client.zzl) zzasx.a(parcel, com.google.android.gms.ads.internal.client.zzl.CREATOR);
                String string10 = parcel.readString();
                String string11 = parcel.readString();
                IBinder strongBinder5 = parcel.readStrongBinder();
                if (strongBinder5 != null) {
                    IInterface iInterfaceQueryLocalInterface5 = strongBinder5.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.IMediationAdapterListener");
                    zzbnjVar = iInterfaceQueryLocalInterface5 instanceof zzbnl ? (zzbnl) iInterfaceQueryLocalInterface5 : new zzbnj(strongBinder5);
                }
                zzbnl zzbnlVar4 = zzbnjVar;
                zzbdl zzbdlVar = (zzbdl) zzasx.a(parcel, zzbdl.CREATOR);
                ArrayList<String> arrayListCreateStringArrayList = parcel.createStringArrayList();
                zzasx.c(parcel);
                v9(iObjectWrapperX06, zzlVar7, string10, string11, zzbnlVar4, zzbdlVar, arrayListCreateStringArrayList);
                parcel2.writeNoException();
                return true;
            case 15:
                parcel2.writeNoException();
                zzasx.g(parcel2, null);
                return true;
            case 16:
                parcel2.writeNoException();
                zzasx.g(parcel2, null);
                return true;
            case 17:
                Bundle bundleB = b();
                parcel2.writeNoException();
                zzasx.f(parcel2, bundleB);
                return true;
            case 18:
                Bundle bundleC = c();
                parcel2.writeNoException();
                zzasx.f(parcel2, bundleC);
                return true;
            case 19:
                Bundle bundleE = e();
                parcel2.writeNoException();
                zzasx.f(parcel2, bundleE);
                return true;
            case 20:
                com.google.android.gms.ads.internal.client.zzl zzlVar8 = (com.google.android.gms.ads.internal.client.zzl) zzasx.a(parcel, com.google.android.gms.ads.internal.client.zzl.CREATOR);
                String string12 = parcel.readString();
                String string13 = parcel.readString();
                zzasx.c(parcel);
                La(zzlVar8, string12, string13);
                parcel2.writeNoException();
                return true;
            case 21:
                IObjectWrapper iObjectWrapperX07 = IObjectWrapper.Stub.X0(parcel.readStrongBinder());
                zzasx.c(parcel);
                w1(iObjectWrapperX07);
                parcel2.writeNoException();
                return true;
            case 22:
                parcel2.writeNoException();
                zzasx.d(parcel2, false);
                return true;
            case 23:
                IObjectWrapper iObjectWrapperX08 = IObjectWrapper.Stub.X0(parcel.readStrongBinder());
                zzbuo zzbuoVarSa2 = zzbun.Sa(parcel.readStrongBinder());
                ArrayList<String> arrayListCreateStringArrayList2 = parcel.createStringArrayList();
                zzasx.c(parcel);
                w8(iObjectWrapperX08, zzbuoVarSa2, arrayListCreateStringArrayList2);
                parcel2.writeNoException();
                return true;
            case 24:
                zzber zzberVarG = g();
                parcel2.writeNoException();
                zzasx.g(parcel2, zzberVarG);
                return true;
            case 25:
                boolean zH = zzasx.h(parcel);
                zzasx.c(parcel);
                I7(zH);
                parcel2.writeNoException();
                return true;
            case 26:
                com.google.android.gms.ads.internal.client.zzdq zzdqVarF = f();
                parcel2.writeNoException();
                zzasx.g(parcel2, zzdqVarF);
                return true;
            case 27:
                zzbnu zzbnuVarI = i();
                parcel2.writeNoException();
                zzasx.g(parcel2, zzbnuVarI);
                return true;
            case 28:
                IObjectWrapper iObjectWrapperX09 = IObjectWrapper.Stub.X0(parcel.readStrongBinder());
                com.google.android.gms.ads.internal.client.zzl zzlVar9 = (com.google.android.gms.ads.internal.client.zzl) zzasx.a(parcel, com.google.android.gms.ads.internal.client.zzl.CREATOR);
                String string14 = parcel.readString();
                IBinder strongBinder6 = parcel.readStrongBinder();
                if (strongBinder6 != null) {
                    IInterface iInterfaceQueryLocalInterface6 = strongBinder6.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.IMediationAdapterListener");
                    zzbnjVar = iInterfaceQueryLocalInterface6 instanceof zzbnl ? (zzbnl) iInterfaceQueryLocalInterface6 : new zzbnj(strongBinder6);
                }
                zzasx.c(parcel);
                T4(iObjectWrapperX09, zzlVar9, string14, zzbnjVar);
                parcel2.writeNoException();
                return true;
            case 29:
            default:
                return false;
            case 30:
                IObjectWrapper iObjectWrapperX010 = IObjectWrapper.Stub.X0(parcel.readStrongBinder());
                zzasx.c(parcel);
                W8(iObjectWrapperX010);
                parcel2.writeNoException();
                return true;
            case 31:
                IObjectWrapper iObjectWrapperX011 = IObjectWrapper.Stub.X0(parcel.readStrongBinder());
                zzbjp zzbjpVarSa = zzbjo.Sa(parcel.readStrongBinder());
                ArrayList arrayListCreateTypedArrayList = parcel.createTypedArrayList(zzbjv.CREATOR);
                zzasx.c(parcel);
                h2(iObjectWrapperX011, zzbjpVarSa, arrayListCreateTypedArrayList);
                parcel2.writeNoException();
                return true;
            case 32:
                IObjectWrapper iObjectWrapperX012 = IObjectWrapper.Stub.X0(parcel.readStrongBinder());
                com.google.android.gms.ads.internal.client.zzl zzlVar10 = (com.google.android.gms.ads.internal.client.zzl) zzasx.a(parcel, com.google.android.gms.ads.internal.client.zzl.CREATOR);
                String string15 = parcel.readString();
                IBinder strongBinder7 = parcel.readStrongBinder();
                if (strongBinder7 != null) {
                    IInterface iInterfaceQueryLocalInterface7 = strongBinder7.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.IMediationAdapterListener");
                    zzbnjVar = iInterfaceQueryLocalInterface7 instanceof zzbnl ? (zzbnl) iInterfaceQueryLocalInterface7 : new zzbnj(strongBinder7);
                }
                zzasx.c(parcel);
                D1(iObjectWrapperX012, zzlVar10, string15, zzbnjVar);
                parcel2.writeNoException();
                return true;
            case 33:
                zzbpq zzbpqVarJ = j();
                parcel2.writeNoException();
                zzasx.f(parcel2, zzbpqVarJ);
                return true;
            case 34:
                zzbpq zzbpqVarL = l();
                parcel2.writeNoException();
                zzasx.f(parcel2, zzbpqVarL);
                return true;
            case 35:
                IObjectWrapper iObjectWrapperX013 = IObjectWrapper.Stub.X0(parcel.readStrongBinder());
                com.google.android.gms.ads.internal.client.zzq zzqVar3 = (com.google.android.gms.ads.internal.client.zzq) zzasx.a(parcel, com.google.android.gms.ads.internal.client.zzq.CREATOR);
                com.google.android.gms.ads.internal.client.zzl zzlVar11 = (com.google.android.gms.ads.internal.client.zzl) zzasx.a(parcel, com.google.android.gms.ads.internal.client.zzl.CREATOR);
                String string16 = parcel.readString();
                String string17 = parcel.readString();
                IBinder strongBinder8 = parcel.readStrongBinder();
                if (strongBinder8 != null) {
                    IInterface iInterfaceQueryLocalInterface8 = strongBinder8.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.IMediationAdapterListener");
                    zzbnjVar = iInterfaceQueryLocalInterface8 instanceof zzbnl ? (zzbnl) iInterfaceQueryLocalInterface8 : new zzbnj(strongBinder8);
                }
                zzbnl zzbnlVar5 = zzbnjVar;
                zzasx.c(parcel);
                y2(iObjectWrapperX013, zzqVar3, zzlVar11, string16, string17, zzbnlVar5);
                parcel2.writeNoException();
                return true;
            case 36:
                zzbno zzbnoVarH = h();
                parcel2.writeNoException();
                zzasx.g(parcel2, zzbnoVarH);
                return true;
            case 37:
                IObjectWrapper iObjectWrapperX014 = IObjectWrapper.Stub.X0(parcel.readStrongBinder());
                zzasx.c(parcel);
                Aa(iObjectWrapperX014);
                parcel2.writeNoException();
                return true;
            case 38:
                IObjectWrapper iObjectWrapperX015 = IObjectWrapper.Stub.X0(parcel.readStrongBinder());
                com.google.android.gms.ads.internal.client.zzl zzlVar12 = (com.google.android.gms.ads.internal.client.zzl) zzasx.a(parcel, com.google.android.gms.ads.internal.client.zzl.CREATOR);
                String string18 = parcel.readString();
                IBinder strongBinder9 = parcel.readStrongBinder();
                if (strongBinder9 != null) {
                    IInterface iInterfaceQueryLocalInterface9 = strongBinder9.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.IMediationAdapterListener");
                    zzbnjVar = iInterfaceQueryLocalInterface9 instanceof zzbnl ? (zzbnl) iInterfaceQueryLocalInterface9 : new zzbnj(strongBinder9);
                }
                zzasx.c(parcel);
                m4(iObjectWrapperX015, zzlVar12, string18, zzbnjVar);
                parcel2.writeNoException();
                return true;
            case 39:
                IObjectWrapper iObjectWrapperX016 = IObjectWrapper.Stub.X0(parcel.readStrongBinder());
                zzasx.c(parcel);
                M6(iObjectWrapperX016);
                parcel2.writeNoException();
                return true;
        }
    }
}
