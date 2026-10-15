package i5;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.internal.firebase_auth.zzb;
import com.google.android.gms.internal.firebase_auth.zzcn;
import com.google.android.gms.internal.firebase_auth.zzcr;
import com.google.android.gms.internal.firebase_auth.zzct;
import com.google.android.gms.internal.firebase_auth.zzcv;
import com.google.android.gms.internal.firebase_auth.zzd;
import com.google.android.gms.internal.firebase_auth.zzdh;
import com.google.android.gms.internal.firebase_auth.zzdj;
import com.google.android.gms.internal.firebase_auth.zzdn;
import com.google.android.gms.internal.firebase_auth.zzdp;
import com.google.android.gms.internal.firebase_auth.zzdr;
import com.google.android.gms.internal.firebase_auth.zzfy;

/* JADX INFO: compiled from: com.google.firebase:firebase-auth@@19.3.1 */
/* JADX INFO: loaded from: classes2.dex */
public final class t0 extends zzb implements s0 {
    t0(IBinder iBinder) {
        super(iBinder, "com.google.firebase.auth.api.internal.IFirebaseAuthService");
    }

    @Override // i5.s0
    public final void F5(String str, g5.d0 d0Var, r0 r0Var) throws RemoteException {
        Parcel parcelP0 = P0();
        parcelP0.writeString(str);
        zzd.c(parcelP0, d0Var);
        zzd.b(parcelP0, r0Var);
        X0(24, parcelP0);
    }

    @Override // i5.s0
    public final void H7(zzdr zzdrVar, r0 r0Var) throws RemoteException {
        Parcel parcelP0 = P0();
        zzd.c(parcelP0, zzdrVar);
        zzd.b(parcelP0, r0Var);
        X0(123, parcelP0);
    }

    @Override // i5.s0
    public final void K1(zzdh zzdhVar, r0 r0Var) throws RemoteException {
        Parcel parcelP0 = P0();
        zzd.c(parcelP0, zzdhVar);
        zzd.b(parcelP0, r0Var);
        X0(116, parcelP0);
    }

    @Override // i5.s0
    public final void N2(String str, zzfy zzfyVar, r0 r0Var) throws RemoteException {
        Parcel parcelP0 = P0();
        parcelP0.writeString(str);
        zzd.c(parcelP0, zzfyVar);
        zzd.b(parcelP0, r0Var);
        X0(12, parcelP0);
    }

    @Override // i5.s0
    public final void P2(zzct zzctVar, r0 r0Var) throws RemoteException {
        Parcel parcelP0 = P0();
        zzd.c(parcelP0, zzctVar);
        zzd.b(parcelP0, r0Var);
        X0(112, parcelP0);
    }

    @Override // i5.s0
    public final void Q9(zzcr zzcrVar, r0 r0Var) throws RemoteException {
        Parcel parcelP0 = P0();
        zzd.c(parcelP0, zzcrVar);
        zzd.b(parcelP0, r0Var);
        X0(111, parcelP0);
    }

    @Override // i5.s0
    public final void W3(String str, String str2, r0 r0Var) throws RemoteException {
        Parcel parcelP0 = P0();
        parcelP0.writeString(str);
        parcelP0.writeString(str2);
        zzd.b(parcelP0, r0Var);
        X0(8, parcelP0);
    }

    @Override // i5.s0
    public final void Y4(zzfy zzfyVar, r0 r0Var) throws RemoteException {
        Parcel parcelP0 = P0();
        zzd.c(parcelP0, zzfyVar);
        zzd.b(parcelP0, r0Var);
        X0(3, parcelP0);
    }

    @Override // i5.s0
    public final void b2(zzcn zzcnVar, r0 r0Var) throws RemoteException {
        Parcel parcelP0 = P0();
        zzd.c(parcelP0, zzcnVar);
        zzd.b(parcelP0, r0Var);
        X0(101, parcelP0);
    }

    @Override // i5.s0
    public final void d2(zzdp zzdpVar, r0 r0Var) throws RemoteException {
        Parcel parcelP0 = P0();
        zzd.c(parcelP0, zzdpVar);
        zzd.b(parcelP0, r0Var);
        X0(129, parcelP0);
    }

    @Override // i5.s0
    public final void f3(String str, r0 r0Var) throws RemoteException {
        Parcel parcelP0 = P0();
        parcelP0.writeString(str);
        zzd.b(parcelP0, r0Var);
        X0(1, parcelP0);
    }

    @Override // i5.s0
    public final void f8(g5.e eVar, r0 r0Var) throws RemoteException {
        Parcel parcelP0 = P0();
        zzd.c(parcelP0, eVar);
        zzd.b(parcelP0, r0Var);
        X0(29, parcelP0);
    }

    @Override // i5.s0
    public final void g4(zzdj zzdjVar, r0 r0Var) throws RemoteException {
        Parcel parcelP0 = P0();
        zzd.c(parcelP0, zzdjVar);
        zzd.b(parcelP0, r0Var);
        X0(103, parcelP0);
    }

    @Override // i5.s0
    public final void g6(zzcv zzcvVar, r0 r0Var) throws RemoteException {
        Parcel parcelP0 = P0();
        zzd.c(parcelP0, zzcvVar);
        zzd.b(parcelP0, r0Var);
        X0(124, parcelP0);
    }

    @Override // i5.s0
    public final void h9(zzdn zzdnVar, r0 r0Var) throws RemoteException {
        Parcel parcelP0 = P0();
        zzd.c(parcelP0, zzdnVar);
        zzd.b(parcelP0, r0Var);
        X0(108, parcelP0);
    }

    @Override // i5.s0
    public final void p4(String str, String str2, String str3, r0 r0Var) throws RemoteException {
        Parcel parcelP0 = P0();
        parcelP0.writeString(str);
        parcelP0.writeString(str2);
        parcelP0.writeString(str3);
        zzd.b(parcelP0, r0Var);
        X0(11, parcelP0);
    }

    @Override // i5.s0
    public final void r4(r0 r0Var) throws RemoteException {
        Parcel parcelP0 = P0();
        zzd.b(parcelP0, r0Var);
        X0(16, parcelP0);
    }

    @Override // i5.s0
    public final void s9(g5.d0 d0Var, r0 r0Var) throws RemoteException {
        Parcel parcelP0 = P0();
        zzd.c(parcelP0, d0Var);
        zzd.b(parcelP0, r0Var);
        X0(23, parcelP0);
    }
}
