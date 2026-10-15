package com.google.android.gms.internal.ads;

import android.os.RemoteException;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzawj {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final byte[] f10075a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f10076b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final /* synthetic */ zzawk f10077c;

    /* synthetic */ zzawj(zzawk zzawkVar, byte[] bArr, zzawi zzawiVar) {
        this.f10077c = zzawkVar;
        this.f10075a = bArr;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final synchronized void d() {
        try {
            zzawk zzawkVar = this.f10077c;
            if (zzawkVar.f10079b) {
                zzawkVar.f10078a.O0(this.f10075a);
                this.f10077c.f10078a.Q(0);
                this.f10077c.f10078a.w(this.f10076b);
                this.f10077c.f10078a.g1(null);
                this.f10077c.f10078a.c();
            }
        } catch (RemoteException e10) {
            zzbza.c("Clearcut log failed", e10);
        }
    }

    public final zzawj a(int i10) {
        this.f10076b = i10;
        return this;
    }

    public final synchronized void c() {
        this.f10077c.f10080c.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzawh
            @Override // java.lang.Runnable
            public final void run() {
                this.f10074o.d();
            }
        });
    }
}
