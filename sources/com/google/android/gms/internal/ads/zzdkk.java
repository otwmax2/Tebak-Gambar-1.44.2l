package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import java.util.List;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzdkk extends zzben {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final String f14998o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final zzdgd f14999p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final zzdgi f15000q;

    public zzdkk(String str, zzdgd zzdgdVar, zzdgi zzdgiVar) {
        this.f14998o = str;
        this.f14999p = zzdgdVar;
        this.f15000q = zzdgiVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbeo
    public final void N3(Bundle bundle) throws RemoteException {
        this.f14999p.m(bundle);
    }

    @Override // com.google.android.gms.internal.ads.zzbeo
    public final com.google.android.gms.ads.internal.client.zzdq a() throws RemoteException {
        return this.f15000q.T();
    }

    @Override // com.google.android.gms.internal.ads.zzbeo
    public final zzbdx b() throws RemoteException {
        return this.f15000q.Y();
    }

    @Override // com.google.android.gms.internal.ads.zzbeo
    public final IObjectWrapper c() throws RemoteException {
        return this.f15000q.d0();
    }

    @Override // com.google.android.gms.internal.ads.zzbeo
    public final zzbdp d() throws RemoteException {
        return this.f15000q.V();
    }

    @Override // com.google.android.gms.internal.ads.zzbeo
    public final IObjectWrapper e() throws RemoteException {
        return ObjectWrapper.Q4(this.f14999p);
    }

    @Override // com.google.android.gms.internal.ads.zzbeo
    public final String f() throws RemoteException {
        return this.f15000q.g0();
    }

    @Override // com.google.android.gms.internal.ads.zzbeo
    public final String g() throws RemoteException {
        return this.f15000q.h0();
    }

    @Override // com.google.android.gms.internal.ads.zzbeo
    public final String h() throws RemoteException {
        return this.f15000q.i0();
    }

    @Override // com.google.android.gms.internal.ads.zzbeo
    public final String i() throws RemoteException {
        return this.f15000q.a();
    }

    @Override // com.google.android.gms.internal.ads.zzbeo
    public final boolean i0(Bundle bundle) throws RemoteException {
        return this.f14999p.E(bundle);
    }

    @Override // com.google.android.gms.internal.ads.zzbeo
    public final String j() throws RemoteException {
        return this.f14998o;
    }

    @Override // com.google.android.gms.internal.ads.zzbeo
    public final void k() throws RemoteException {
        this.f14999p.a();
    }

    @Override // com.google.android.gms.internal.ads.zzbeo
    public final List l() throws RemoteException {
        return this.f15000q.f();
    }

    @Override // com.google.android.gms.internal.ads.zzbeo
    public final void n0(Bundle bundle) throws RemoteException {
        this.f14999p.r(bundle);
    }

    @Override // com.google.android.gms.internal.ads.zzbeo
    public final Bundle zzb() throws RemoteException {
        return this.f15000q.N();
    }
}
