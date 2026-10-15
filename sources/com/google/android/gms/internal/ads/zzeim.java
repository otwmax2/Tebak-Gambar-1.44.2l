package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import javax.annotation.concurrent.GuardedBy;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzeim {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzeir f16730a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f16731b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @GuardedBy("this")
    private com.google.android.gms.ads.internal.client.zzdn f16732c;

    public zzeim(zzeir zzeirVar, String str) {
        this.f16730a = zzeirVar;
        this.f16731b = str;
    }

    public final synchronized String a() {
        com.google.android.gms.ads.internal.client.zzdn zzdnVar;
        try {
            zzdnVar = this.f16732c;
        } catch (RemoteException e10) {
            zzbza.i("#007 Could not call remote method.", e10);
            return null;
        }
        return zzdnVar != null ? zzdnVar.e() : null;
    }

    public final synchronized String b() {
        com.google.android.gms.ads.internal.client.zzdn zzdnVar;
        try {
            zzdnVar = this.f16732c;
        } catch (RemoteException e10) {
            zzbza.i("#007 Could not call remote method.", e10);
            return null;
        }
        return zzdnVar != null ? zzdnVar.e() : null;
    }

    public final synchronized void d(com.google.android.gms.ads.internal.client.zzl zzlVar, int i10) throws RemoteException {
        this.f16732c = null;
        this.f16730a.a(zzlVar, this.f16731b, new zzeis(i10), new zzeil(this));
    }

    public final synchronized boolean e() throws RemoteException {
        return this.f16730a.zza();
    }
}
