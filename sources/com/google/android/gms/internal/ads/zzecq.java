package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import javax.annotation.concurrent.GuardedBy;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzecq extends zzbnk implements zzcvy {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @GuardedBy("this")
    private zzbnl f16263o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @GuardedBy("this")
    private zzcvx f16264p;

    @Override // com.google.android.gms.internal.ads.zzcvy
    public final synchronized void A9(zzcvx zzcvxVar) {
        this.f16264p = zzcvxVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbnl
    public final synchronized void C() throws RemoteException {
        zzbnl zzbnlVar = this.f16263o;
        if (zzbnlVar != null) {
            zzbnlVar.C();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbnl
    public final synchronized void C2(int i10, String str) throws RemoteException {
        zzcvx zzcvxVar = this.f16264p;
        if (zzcvxVar != null) {
            zzcvxVar.K0(i10, str);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbnl
    public final synchronized void E() throws RemoteException {
        zzbnl zzbnlVar = this.f16263o;
        if (zzbnlVar != null) {
            zzbnlVar.E();
        }
    }

    public final synchronized void Ta(zzbnl zzbnlVar) {
        this.f16263o = zzbnlVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbnl
    public final synchronized void V3(zzbup zzbupVar) throws RemoteException {
        zzbnl zzbnlVar = this.f16263o;
        if (zzbnlVar != null) {
            zzbnlVar.V3(zzbupVar);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbnl
    public final synchronized void W0(com.google.android.gms.ads.internal.client.zze zzeVar) throws RemoteException {
        zzbnl zzbnlVar = this.f16263o;
        if (zzbnlVar != null) {
            zzbnlVar.W0(zzeVar);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbnl
    public final synchronized void X7(zzber zzberVar, String str) throws RemoteException {
    }

    @Override // com.google.android.gms.internal.ads.zzbnl
    public final synchronized void Y2(com.google.android.gms.ads.internal.client.zze zzeVar) throws RemoteException {
        zzcvx zzcvxVar = this.f16264p;
        if (zzcvxVar != null) {
            zzcvxVar.b1(zzeVar);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbnl
    public final synchronized void b() throws RemoteException {
        zzbnl zzbnlVar = this.f16263o;
        if (zzbnlVar != null) {
            zzbnlVar.b();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbnl
    public final synchronized void c() throws RemoteException {
        zzbnl zzbnlVar = this.f16263o;
        if (zzbnlVar != null) {
            zzbnlVar.c();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbnl
    public final synchronized void k() throws RemoteException {
        zzbnl zzbnlVar = this.f16263o;
        if (zzbnlVar != null) {
            zzbnlVar.k();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbnl
    public final synchronized void l() throws RemoteException {
        zzbnl zzbnlVar = this.f16263o;
        if (zzbnlVar != null) {
            zzbnlVar.l();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbnl
    public final synchronized void m() throws RemoteException {
        zzbnl zzbnlVar = this.f16263o;
        if (zzbnlVar != null) {
            zzbnlVar.m();
        }
        zzcvx zzcvxVar = this.f16264p;
        if (zzcvxVar != null) {
            zzcvxVar.d();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbnl
    public final synchronized void m0(String str) throws RemoteException {
        zzbnl zzbnlVar = this.f16263o;
        if (zzbnlVar != null) {
            zzbnlVar.m0(str);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbnl
    public final synchronized void n() throws RemoteException {
        zzbnl zzbnlVar = this.f16263o;
        if (zzbnlVar != null) {
            zzbnlVar.n();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbnl
    public final synchronized void o8(String str, String str2) throws RemoteException {
        zzbnl zzbnlVar = this.f16263o;
        if (zzbnlVar != null) {
            zzbnlVar.o8(str, str2);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbnl
    public final synchronized void t() throws RemoteException {
        zzbnl zzbnlVar = this.f16263o;
        if (zzbnlVar != null) {
            zzbnlVar.t();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbnl
    public final synchronized void u6(zzbut zzbutVar) throws RemoteException {
        zzbnl zzbnlVar = this.f16263o;
        if (zzbnlVar != null) {
            zzbnlVar.u6(zzbutVar);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbnl
    public final synchronized void v() throws RemoteException {
        zzbnl zzbnlVar = this.f16263o;
        if (zzbnlVar != null) {
            zzbnlVar.v();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbnl
    public final synchronized void w(int i10) throws RemoteException {
        zzcvx zzcvxVar = this.f16264p;
        if (zzcvxVar != null) {
            zzcvxVar.h(i10);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbnl
    public final synchronized void w0(int i10) throws RemoteException {
        zzbnl zzbnlVar = this.f16263o;
        if (zzbnlVar != null) {
            zzbnlVar.w0(i10);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbnl
    public final synchronized void y() throws RemoteException {
        zzbnl zzbnlVar = this.f16263o;
        if (zzbnlVar != null) {
            zzbnlVar.y();
        }
    }
}
