package com.google.android.gms.internal.ads;

import android.content.Context;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzdmv implements zzcvj {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final zzcei f15202o;

    zzdmv(zzcei zzceiVar) {
        this.f15202o = zzceiVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcvj
    public final void c(Context context) {
        zzcei zzceiVar = this.f15202o;
        if (zzceiVar != null) {
            zzceiVar.onResume();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcvj
    public final void o(Context context) {
        zzcei zzceiVar = this.f15202o;
        if (zzceiVar != null) {
            zzceiVar.destroy();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcvj
    public final void p(Context context) {
        zzcei zzceiVar = this.f15202o;
        if (zzceiVar != null) {
            zzceiVar.onPause();
        }
    }
}
