package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzapq implements Runnable {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    final /* synthetic */ zzapr f9684o;

    zzapq(zzapr zzaprVar) {
        this.f9684o = zzaprVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        boolean zBooleanValue;
        if (this.f9684o.f9689b != null) {
            return;
        }
        synchronized (zzapr.f9685c) {
            if (this.f9684o.f9689b != null) {
                return;
            }
            boolean z10 = false;
            try {
                zBooleanValue = ((Boolean) zzbar.f10205e2.e()).booleanValue();
            } catch (IllegalStateException unused) {
                zBooleanValue = false;
            }
            if (zBooleanValue) {
                try {
                    zzapr.f9686d = zzfjr.b(this.f9684o.f9688a.f9750a, "ADSHIELD", null);
                    z10 = zBooleanValue;
                } catch (Throwable unused2) {
                }
            } else {
                z10 = zBooleanValue;
            }
            this.f9684o.f9689b = Boolean.valueOf(z10);
            zzapr.f9685c.open();
        }
    }
}
