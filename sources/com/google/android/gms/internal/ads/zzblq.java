package com.google.android.gms.internal.ads;

import com.google.android.gms.common.internal.Preconditions;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzblq extends zzbzz {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final com.google.android.gms.ads.internal.util.zzbb f10893d;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Object f10892c = new Object();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f10894e = false;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f10895f = 0;

    public zzblq(com.google.android.gms.ads.internal.util.zzbb zzbbVar) {
        this.f10893d = zzbbVar;
    }

    public final zzbll f() {
        zzbll zzbllVar = new zzbll(this);
        synchronized (this.f10892c) {
            e(new zzblm(this, zzbllVar), new zzbln(this, zzbllVar));
            Preconditions.n(this.f10895f >= 0);
            this.f10895f++;
        }
        return zzbllVar;
    }

    public final void g() {
        synchronized (this.f10892c) {
            Preconditions.n(this.f10895f >= 0);
            com.google.android.gms.ads.internal.util.zze.k("Releasing root reference. JS Engine will be destroyed once other references are released.");
            this.f10894e = true;
            h();
        }
    }

    protected final void h() {
        synchronized (this.f10892c) {
            Preconditions.n(this.f10895f >= 0);
            if (this.f10894e && this.f10895f == 0) {
                com.google.android.gms.ads.internal.util.zze.k("No reference is left (including root). Cleaning up engine.");
                e(new zzblp(this), new zzbzv());
            } else {
                com.google.android.gms.ads.internal.util.zze.k("There are still references to the engine. Not destroying.");
            }
        }
    }

    protected final void i() {
        synchronized (this.f10892c) {
            Preconditions.n(this.f10895f > 0);
            com.google.android.gms.ads.internal.util.zze.k("Releasing 1 reference for JS Engine");
            this.f10895f--;
            h();
        }
    }
}
