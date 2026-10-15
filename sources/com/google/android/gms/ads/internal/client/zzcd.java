package com.google.android.gms.ads.internal.client;

import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.internal.ads.zzasw;
import com.google.android.gms.internal.ads.zzasx;
import com.google.android.gms.internal.ads.zzbeb;
import com.google.android.gms.internal.ads.zzbeh;
import com.google.android.gms.internal.ads.zzbil;
import com.google.android.gms.internal.ads.zzbim;
import com.google.android.gms.internal.ads.zzbip;
import com.google.android.gms.internal.ads.zzbne;
import com.google.android.gms.internal.ads.zzbnf;
import com.google.android.gms.internal.ads.zzbqv;
import com.google.android.gms.internal.ads.zzbrc;
import com.google.android.gms.internal.ads.zzbug;
import com.google.android.gms.internal.ads.zzbuw;
import com.google.android.gms.internal.ads.zzbxr;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.0.0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class zzcd extends zzasw implements zzce {
    public zzcd() {
        super("com.google.android.gms.ads.internal.client.IClientApi");
    }

    @Override // com.google.android.gms.internal.ads.zzasw
    protected final boolean Ra(int i10, Parcel parcel, Parcel parcel2, int i11) throws RemoteException {
        switch (i10) {
            case 1:
                IObjectWrapper iObjectWrapperX0 = IObjectWrapper.Stub.X0(parcel.readStrongBinder());
                zzq zzqVar = (zzq) zzasx.a(parcel, zzq.CREATOR);
                String string = parcel.readString();
                zzbnf zzbnfVarSa = zzbne.Sa(parcel.readStrongBinder());
                int i12 = parcel.readInt();
                zzasx.c(parcel);
                zzbu zzbuVarP2 = p2(iObjectWrapperX0, zzqVar, string, zzbnfVarSa, i12);
                parcel2.writeNoException();
                zzasx.g(parcel2, zzbuVarP2);
                return true;
            case 2:
                IObjectWrapper iObjectWrapperX02 = IObjectWrapper.Stub.X0(parcel.readStrongBinder());
                zzq zzqVar2 = (zzq) zzasx.a(parcel, zzq.CREATOR);
                String string2 = parcel.readString();
                zzbnf zzbnfVarSa2 = zzbne.Sa(parcel.readStrongBinder());
                int i13 = parcel.readInt();
                zzasx.c(parcel);
                zzbu zzbuVarZ3 = z3(iObjectWrapperX02, zzqVar2, string2, zzbnfVarSa2, i13);
                parcel2.writeNoException();
                zzasx.g(parcel2, zzbuVarZ3);
                return true;
            case 3:
                IObjectWrapper iObjectWrapperX03 = IObjectWrapper.Stub.X0(parcel.readStrongBinder());
                String string3 = parcel.readString();
                zzbnf zzbnfVarSa3 = zzbne.Sa(parcel.readStrongBinder());
                int i14 = parcel.readInt();
                zzasx.c(parcel);
                zzbq zzbqVarV9 = V9(iObjectWrapperX03, string3, zzbnfVarSa3, i14);
                parcel2.writeNoException();
                zzasx.g(parcel2, zzbqVarV9);
                return true;
            case 4:
                IObjectWrapper.Stub.X0(parcel.readStrongBinder());
                zzasx.c(parcel);
                parcel2.writeNoException();
                zzasx.g(parcel2, null);
                return true;
            case 5:
                IObjectWrapper iObjectWrapperX04 = IObjectWrapper.Stub.X0(parcel.readStrongBinder());
                IObjectWrapper iObjectWrapperX05 = IObjectWrapper.Stub.X0(parcel.readStrongBinder());
                zzasx.c(parcel);
                zzbeb zzbebVarU6 = U6(iObjectWrapperX04, iObjectWrapperX05);
                parcel2.writeNoException();
                zzasx.g(parcel2, zzbebVarU6);
                return true;
            case 6:
                IObjectWrapper iObjectWrapperX06 = IObjectWrapper.Stub.X0(parcel.readStrongBinder());
                zzbnf zzbnfVarSa4 = zzbne.Sa(parcel.readStrongBinder());
                int i15 = parcel.readInt();
                zzasx.c(parcel);
                zzbug zzbugVarX4 = x4(iObjectWrapperX06, zzbnfVarSa4, i15);
                parcel2.writeNoException();
                zzasx.g(parcel2, zzbugVarX4);
                return true;
            case 7:
                IObjectWrapper.Stub.X0(parcel.readStrongBinder());
                zzasx.c(parcel);
                parcel2.writeNoException();
                zzasx.g(parcel2, null);
                return true;
            case 8:
                IObjectWrapper iObjectWrapperX07 = IObjectWrapper.Stub.X0(parcel.readStrongBinder());
                zzasx.c(parcel);
                zzbrc zzbrcVarL1 = l1(iObjectWrapperX07);
                parcel2.writeNoException();
                zzasx.g(parcel2, zzbrcVarL1);
                return true;
            case 9:
                IObjectWrapper iObjectWrapperX08 = IObjectWrapper.Stub.X0(parcel.readStrongBinder());
                int i16 = parcel.readInt();
                zzasx.c(parcel);
                zzco zzcoVarT0 = T0(iObjectWrapperX08, i16);
                parcel2.writeNoException();
                zzasx.g(parcel2, zzcoVarT0);
                return true;
            case 10:
                IObjectWrapper iObjectWrapperX09 = IObjectWrapper.Stub.X0(parcel.readStrongBinder());
                zzq zzqVar3 = (zzq) zzasx.a(parcel, zzq.CREATOR);
                String string4 = parcel.readString();
                int i17 = parcel.readInt();
                zzasx.c(parcel);
                zzbu zzbuVarW6 = w6(iObjectWrapperX09, zzqVar3, string4, i17);
                parcel2.writeNoException();
                zzasx.g(parcel2, zzbuVarW6);
                return true;
            case 11:
                IObjectWrapper iObjectWrapperX010 = IObjectWrapper.Stub.X0(parcel.readStrongBinder());
                IObjectWrapper iObjectWrapperX011 = IObjectWrapper.Stub.X0(parcel.readStrongBinder());
                IObjectWrapper iObjectWrapperX012 = IObjectWrapper.Stub.X0(parcel.readStrongBinder());
                zzasx.c(parcel);
                zzbeh zzbehVarW6 = W6(iObjectWrapperX010, iObjectWrapperX011, iObjectWrapperX012);
                parcel2.writeNoException();
                zzasx.g(parcel2, zzbehVarW6);
                return true;
            case 12:
                IObjectWrapper iObjectWrapperX013 = IObjectWrapper.Stub.X0(parcel.readStrongBinder());
                String string5 = parcel.readString();
                zzbnf zzbnfVarSa5 = zzbne.Sa(parcel.readStrongBinder());
                int i18 = parcel.readInt();
                zzasx.c(parcel);
                zzbuw zzbuwVarH5 = H5(iObjectWrapperX013, string5, zzbnfVarSa5, i18);
                parcel2.writeNoException();
                zzasx.g(parcel2, zzbuwVarH5);
                return true;
            case 13:
                IObjectWrapper iObjectWrapperX014 = IObjectWrapper.Stub.X0(parcel.readStrongBinder());
                zzq zzqVar4 = (zzq) zzasx.a(parcel, zzq.CREATOR);
                String string6 = parcel.readString();
                zzbnf zzbnfVarSa6 = zzbne.Sa(parcel.readStrongBinder());
                int i19 = parcel.readInt();
                zzasx.c(parcel);
                zzbu zzbuVarI5 = I5(iObjectWrapperX014, zzqVar4, string6, zzbnfVarSa6, i19);
                parcel2.writeNoException();
                zzasx.g(parcel2, zzbuVarI5);
                return true;
            case 14:
                IObjectWrapper iObjectWrapperX015 = IObjectWrapper.Stub.X0(parcel.readStrongBinder());
                zzbnf zzbnfVarSa7 = zzbne.Sa(parcel.readStrongBinder());
                int i20 = parcel.readInt();
                zzasx.c(parcel);
                zzbxr zzbxrVarE2 = e2(iObjectWrapperX015, zzbnfVarSa7, i20);
                parcel2.writeNoException();
                zzasx.g(parcel2, zzbxrVarE2);
                return true;
            case 15:
                IObjectWrapper iObjectWrapperX016 = IObjectWrapper.Stub.X0(parcel.readStrongBinder());
                zzbnf zzbnfVarSa8 = zzbne.Sa(parcel.readStrongBinder());
                int i21 = parcel.readInt();
                zzasx.c(parcel);
                zzbqv zzbqvVarJ6 = J6(iObjectWrapperX016, zzbnfVarSa8, i21);
                parcel2.writeNoException();
                zzasx.g(parcel2, zzbqvVarJ6);
                return true;
            case 16:
                IObjectWrapper iObjectWrapperX017 = IObjectWrapper.Stub.X0(parcel.readStrongBinder());
                zzbnf zzbnfVarSa9 = zzbne.Sa(parcel.readStrongBinder());
                int i22 = parcel.readInt();
                zzbim zzbimVarSa = zzbil.Sa(parcel.readStrongBinder());
                zzasx.c(parcel);
                zzbip zzbipVarU3 = U3(iObjectWrapperX017, zzbnfVarSa9, i22, zzbimVarSa);
                parcel2.writeNoException();
                zzasx.g(parcel2, zzbipVarU3);
                return true;
            case 17:
                IObjectWrapper iObjectWrapperX018 = IObjectWrapper.Stub.X0(parcel.readStrongBinder());
                zzbnf zzbnfVarSa10 = zzbne.Sa(parcel.readStrongBinder());
                int i23 = parcel.readInt();
                zzasx.c(parcel);
                zzdj zzdjVarY1 = y1(iObjectWrapperX018, zzbnfVarSa10, i23);
                parcel2.writeNoException();
                zzasx.g(parcel2, zzdjVarY1);
                return true;
            default:
                return false;
        }
    }
}
