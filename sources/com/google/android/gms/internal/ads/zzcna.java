package com.google.android.gms.internal.ads;

import java.util.Map;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzcna implements zzbhp {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ zzcnb f13541a;

    zzcna(zzcnb zzcnbVar) {
        this.f13541a = zzcnbVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbhp
    public final void a(Object obj, Map map) {
        if (zzcnb.g(this.f13541a, map)) {
            this.f13541a.f13544c.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzcmz
                @Override // java.lang.Runnable
                public final void run() {
                    this.f13535o.f13541a.f13545d.f();
                }
            });
        }
    }
}
