package com.google.android.gms.internal.ads;

import java.util.Map;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzcmy implements zzbhp {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ zzcnb f13534a;

    zzcmy(zzcnb zzcnbVar) {
        this.f13534a = zzcnbVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbhp
    public final void a(Object obj, Map map) {
        if (zzcnb.g(this.f13534a, map)) {
            this.f13534a.f13544c.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzcmx
                @Override // java.lang.Runnable
                public final void run() {
                    this.f13533o.f13534a.f13545d.a();
                }
            });
        }
    }
}
