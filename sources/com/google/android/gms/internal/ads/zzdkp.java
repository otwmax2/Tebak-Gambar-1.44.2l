package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import java.util.Collections;
import java.util.List;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzdkp extends zzbft {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final String f15013o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final zzdgd f15014p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final zzdgi f15015q;

    public zzdkp(String str, zzdgd zzdgdVar, zzdgi zzdgiVar) {
        this.f15013o = str;
        this.f15014p = zzdgdVar;
        this.f15015q = zzdgiVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbfu
    public final void B() {
        this.f15014p.n();
    }

    @Override // com.google.android.gms.internal.ads.zzbfu
    public final void C() throws RemoteException {
        this.f15014p.X();
    }

    @Override // com.google.android.gms.internal.ads.zzbfu
    public final boolean V() {
        return this.f15014p.B();
    }

    @Override // com.google.android.gms.internal.ads.zzbfu
    public final double b() throws RemoteException {
        return this.f15015q.A();
    }

    @Override // com.google.android.gms.internal.ads.zzbfu
    public final Bundle c() throws RemoteException {
        return this.f15015q.N();
    }

    @Override // com.google.android.gms.internal.ads.zzbfu
    public final boolean c8(Bundle bundle) throws RemoteException {
        return this.f15014p.E(bundle);
    }

    @Override // com.google.android.gms.internal.ads.zzbfu
    public final com.google.android.gms.ads.internal.client.zzdn e() throws RemoteException {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.f10330p6)).booleanValue()) {
            return this.f15014p.c();
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzbfu
    public final com.google.android.gms.ads.internal.client.zzdq f() throws RemoteException {
        return this.f15015q.T();
    }

    @Override // com.google.android.gms.internal.ads.zzbfu
    public final void f0() {
        this.f15014p.t();
    }

    @Override // com.google.android.gms.internal.ads.zzbfu
    public final zzbdp g() throws RemoteException {
        return this.f15015q.V();
    }

    @Override // com.google.android.gms.internal.ads.zzbfu
    public final zzbdu h() throws RemoteException {
        return this.f15014p.N().a();
    }

    @Override // com.google.android.gms.internal.ads.zzbfu
    public final boolean h0() throws RemoteException {
        return (this.f15015q.g().isEmpty() || this.f15015q.U() == null) ? false : true;
    }

    @Override // com.google.android.gms.internal.ads.zzbfu
    public final void h3(com.google.android.gms.ads.internal.client.zzcw zzcwVar) throws RemoteException {
        this.f15014p.i(zzcwVar);
    }

    @Override // com.google.android.gms.internal.ads.zzbfu
    public final zzbdx i() throws RemoteException {
        return this.f15015q.X();
    }

    @Override // com.google.android.gms.internal.ads.zzbfu
    public final IObjectWrapper j() throws RemoteException {
        return this.f15015q.d0();
    }

    @Override // com.google.android.gms.internal.ads.zzbfu
    public final String k() throws RemoteException {
        return this.f15015q.g0();
    }

    @Override // com.google.android.gms.internal.ads.zzbfu
    public final void k5(Bundle bundle) throws RemoteException {
        this.f15014p.r(bundle);
    }

    @Override // com.google.android.gms.internal.ads.zzbfu
    public final IObjectWrapper l() throws RemoteException {
        return ObjectWrapper.Q4(this.f15014p);
    }

    @Override // com.google.android.gms.internal.ads.zzbfu
    public final String m() throws RemoteException {
        return this.f15015q.h0();
    }

    @Override // com.google.android.gms.internal.ads.zzbfu
    public final void m7(com.google.android.gms.ads.internal.client.zzcs zzcsVar) throws RemoteException {
        this.f15014p.u(zzcsVar);
    }

    @Override // com.google.android.gms.internal.ads.zzbfu
    public final String n() throws RemoteException {
        return this.f15015q.i0();
    }

    @Override // com.google.android.gms.internal.ads.zzbfu
    public final void o4(com.google.android.gms.ads.internal.client.zzdg zzdgVar) throws RemoteException {
        this.f15014p.v(zzdgVar);
    }

    @Override // com.google.android.gms.internal.ads.zzbfu
    public final String p() throws RemoteException {
        return this.f15013o;
    }

    @Override // com.google.android.gms.internal.ads.zzbfu
    public final void p9(zzbfr zzbfrVar) throws RemoteException {
        this.f15014p.w(zzbfrVar);
    }

    @Override // com.google.android.gms.internal.ads.zzbfu
    public final String q() throws RemoteException {
        return this.f15015q.c();
    }

    @Override // com.google.android.gms.internal.ads.zzbfu
    public final String r() throws RemoteException {
        return this.f15015q.a();
    }

    @Override // com.google.android.gms.internal.ads.zzbfu
    public final void sa(Bundle bundle) throws RemoteException {
        this.f15014p.m(bundle);
    }

    @Override // com.google.android.gms.internal.ads.zzbfu
    public final List t() throws RemoteException {
        return h0() ? this.f15015q.g() : Collections.emptyList();
    }

    @Override // com.google.android.gms.internal.ads.zzbfu
    public final List v() throws RemoteException {
        return this.f15015q.f();
    }

    @Override // com.google.android.gms.internal.ads.zzbfu
    public final String x() throws RemoteException {
        return this.f15015q.d();
    }

    @Override // com.google.android.gms.internal.ads.zzbfu
    public final void y() throws RemoteException {
        this.f15014p.a();
    }
}
