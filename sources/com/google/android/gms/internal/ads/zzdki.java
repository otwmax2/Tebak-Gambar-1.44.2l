package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import java.util.List;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzdki extends zzbel {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final String f14992o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final zzdgd f14993p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final zzdgi f14994q;

    public zzdki(String str, zzdgd zzdgdVar, zzdgi zzdgiVar) {
        this.f14992o = str;
        this.f14993p = zzdgdVar;
        this.f14994q = zzdgiVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbem
    public final Bundle a() throws RemoteException {
        return this.f14994q.N();
    }

    @Override // com.google.android.gms.internal.ads.zzbem
    public final zzbdp b() throws RemoteException {
        return this.f14994q.V();
    }

    @Override // com.google.android.gms.internal.ads.zzbem
    public final zzbdx c() throws RemoteException {
        return this.f14994q.X();
    }

    @Override // com.google.android.gms.internal.ads.zzbem
    public final com.google.android.gms.ads.internal.client.zzdq d() throws RemoteException {
        return this.f14994q.T();
    }

    @Override // com.google.android.gms.internal.ads.zzbem
    public final IObjectWrapper e() throws RemoteException {
        return this.f14994q.d0();
    }

    @Override // com.google.android.gms.internal.ads.zzbem
    public final IObjectWrapper f() throws RemoteException {
        return ObjectWrapper.Q4(this.f14993p);
    }

    @Override // com.google.android.gms.internal.ads.zzbem
    public final String g() throws RemoteException {
        return this.f14994q.h0();
    }

    @Override // com.google.android.gms.internal.ads.zzbem
    public final String h() throws RemoteException {
        return this.f14994q.i0();
    }

    @Override // com.google.android.gms.internal.ads.zzbem
    public final void h1(Bundle bundle) throws RemoteException {
        this.f14993p.r(bundle);
    }

    @Override // com.google.android.gms.internal.ads.zzbem
    public final String i() throws RemoteException {
        return this.f14994q.a();
    }

    @Override // com.google.android.gms.internal.ads.zzbem
    public final void i0(Bundle bundle) throws RemoteException {
        this.f14993p.m(bundle);
    }

    @Override // com.google.android.gms.internal.ads.zzbem
    public final String j() throws RemoteException {
        return this.f14992o;
    }

    @Override // com.google.android.gms.internal.ads.zzbem
    public final String k() throws RemoteException {
        return this.f14994q.d();
    }

    @Override // com.google.android.gms.internal.ads.zzbem
    public final String l() throws RemoteException {
        return this.f14994q.c();
    }

    @Override // com.google.android.gms.internal.ads.zzbem
    public final List m() throws RemoteException {
        return this.f14994q.f();
    }

    @Override // com.google.android.gms.internal.ads.zzbem
    public final void n() throws RemoteException {
        this.f14993p.a();
    }

    @Override // com.google.android.gms.internal.ads.zzbem
    public final boolean s7(Bundle bundle) throws RemoteException {
        return this.f14993p.E(bundle);
    }

    @Override // com.google.android.gms.internal.ads.zzbem
    public final double zzb() throws RemoteException {
        return this.f14994q.A();
    }
}
