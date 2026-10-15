package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzcbl implements Runnable {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final zzcax f11758o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private boolean f11759p = false;

    zzcbl(zzcax zzcaxVar) {
        this.f11758o = zzcaxVar;
    }

    private final void c() {
        zzfkr zzfkrVar = com.google.android.gms.ads.internal.util.zzs.f6190i;
        zzfkrVar.removeCallbacks(this);
        zzfkrVar.postDelayed(this, 250L);
    }

    public final void a() {
        this.f11759p = true;
        this.f11758o.D();
    }

    public final void b() {
        this.f11759p = false;
        c();
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (this.f11759p) {
            return;
        }
        this.f11758o.D();
        c();
    }
}
