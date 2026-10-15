package com.google.android.gms.internal.ads;

import android.content.Context;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzcmm implements zzcvj {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final zzezs f13489o;

    public zzcmm(zzezs zzezsVar) {
        this.f13489o = zzezsVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcvj
    public final void c(Context context) {
        try {
            this.f13489o.z();
            if (context != null) {
                this.f13489o.x(context);
            }
        } catch (zzezc e10) {
            zzbza.h("Cannot invoke onResume for the mediation adapter.", e10);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcvj
    public final void o(Context context) {
        try {
            this.f13489o.l();
        } catch (zzezc e10) {
            zzbza.h("Cannot invoke onDestroy for the mediation adapter.", e10);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcvj
    public final void p(Context context) {
        try {
            this.f13489o.y();
        } catch (zzezc e10) {
            zzbza.h("Cannot invoke onPause for the mediation adapter.", e10);
        }
    }
}
