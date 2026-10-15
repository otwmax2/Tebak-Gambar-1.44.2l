package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzfmp extends zzfml {

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    final /* synthetic */ zzfmv f18436p;

    zzfmp(zzfmv zzfmvVar) {
        this.f18436p = zzfmvVar;
    }

    @Override // com.google.android.gms.internal.ads.zzfml
    public final void a() {
        synchronized (this.f18436p.f18447f) {
            if (this.f18436p.f18452k.get() > 0 && this.f18436p.f18452k.decrementAndGet() > 0) {
                this.f18436p.f18443b.c("Leaving the connection open for other ongoing calls.", new Object[0]);
                return;
            }
            zzfmv zzfmvVar = this.f18436p;
            if (zzfmvVar.f18454m != null) {
                zzfmvVar.f18443b.c("Unbind from service.", new Object[0]);
                zzfmv zzfmvVar2 = this.f18436p;
                zzfmvVar2.f18442a.unbindService(zzfmvVar2.f18453l);
                this.f18436p.f18448g = false;
                this.f18436p.f18454m = null;
                this.f18436p.f18453l = null;
            }
            this.f18436p.w();
        }
    }
}
