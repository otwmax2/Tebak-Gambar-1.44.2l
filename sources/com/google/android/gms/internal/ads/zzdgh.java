package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import javax.annotation.Nullable;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes.dex */
public final class zzdgh extends com.google.android.gms.ads.internal.client.zzdp {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final Object f14630o = new Object();

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @Nullable
    private final com.google.android.gms.ads.internal.client.zzdq f14631p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @Nullable
    private final zzbnu f14632q;

    public zzdgh(@Nullable com.google.android.gms.ads.internal.client.zzdq zzdqVar, @Nullable zzbnu zzbnuVar) {
        this.f14631p = zzdqVar;
        this.f14632q = zzbnuVar;
    }

    @Override // com.google.android.gms.ads.internal.client.zzdq
    public final void H0(boolean z10) throws RemoteException {
        throw new RemoteException();
    }

    @Override // com.google.android.gms.ads.internal.client.zzdq
    public final void W1(@Nullable com.google.android.gms.ads.internal.client.zzdt zzdtVar) throws RemoteException {
        synchronized (this.f14630o) {
            com.google.android.gms.ads.internal.client.zzdq zzdqVar = this.f14631p;
            if (zzdqVar != null) {
                zzdqVar.W1(zzdtVar);
            }
        }
    }

    @Override // com.google.android.gms.ads.internal.client.zzdq
    public final float b() throws RemoteException {
        throw new RemoteException();
    }

    @Override // com.google.android.gms.ads.internal.client.zzdq
    public final float c() throws RemoteException {
        zzbnu zzbnuVar = this.f14632q;
        if (zzbnuVar != null) {
            return zzbnuVar.e();
        }
        return 0.0f;
    }

    @Override // com.google.android.gms.ads.internal.client.zzdq
    public final float e() throws RemoteException {
        zzbnu zzbnuVar = this.f14632q;
        if (zzbnuVar != null) {
            return zzbnuVar.f();
        }
        return 0.0f;
    }

    @Override // com.google.android.gms.ads.internal.client.zzdq
    public final int f() throws RemoteException {
        throw new RemoteException();
    }

    @Override // com.google.android.gms.ads.internal.client.zzdq
    @Nullable
    public final com.google.android.gms.ads.internal.client.zzdt g() throws RemoteException {
        synchronized (this.f14630o) {
            com.google.android.gms.ads.internal.client.zzdq zzdqVar = this.f14631p;
            if (zzdqVar == null) {
                return null;
            }
            return zzdqVar.g();
        }
    }

    @Override // com.google.android.gms.ads.internal.client.zzdq
    public final void i() throws RemoteException {
        throw new RemoteException();
    }

    @Override // com.google.android.gms.ads.internal.client.zzdq
    public final void j() throws RemoteException {
        throw new RemoteException();
    }

    @Override // com.google.android.gms.ads.internal.client.zzdq
    public final void k() throws RemoteException {
        throw new RemoteException();
    }

    @Override // com.google.android.gms.ads.internal.client.zzdq
    public final boolean m() throws RemoteException {
        throw new RemoteException();
    }

    @Override // com.google.android.gms.ads.internal.client.zzdq
    public final boolean n() throws RemoteException {
        throw new RemoteException();
    }

    @Override // com.google.android.gms.ads.internal.client.zzdq
    public final boolean r() throws RemoteException {
        throw new RemoteException();
    }
}
