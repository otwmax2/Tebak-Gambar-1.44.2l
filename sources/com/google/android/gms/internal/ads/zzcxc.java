package com.google.android.gms.internal.ads;

import java.lang.ref.WeakReference;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzcxc implements Runnable {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final WeakReference f14151o;

    @Override // java.lang.Runnable
    public final void run() {
        zzcxd zzcxdVar = (zzcxd) this.f14151o.get();
        if (zzcxdVar != null) {
            zzcxdVar.W0(new zzczx() { // from class: com.google.android.gms.internal.ads.zzcxa
                @Override // com.google.android.gms.internal.ads.zzczx
                public final void a(Object obj) {
                    ((zzcxe) obj).zza();
                }
            });
        }
    }
}
