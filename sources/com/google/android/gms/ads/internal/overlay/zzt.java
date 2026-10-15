package com.google.android.gms.ads.internal.overlay;

import android.app.Activity;
import android.os.Bundle;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes.dex */
public final class zzt extends zzl {
    public zzt(Activity activity) {
        super(activity);
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzl, com.google.android.gms.internal.ads.zzbrc
    public final void V7(Bundle bundle) {
        com.google.android.gms.ads.internal.util.zze.k("AdOverlayParcel is null or does not contain valid overlay type.");
        this.H = 4;
        this.f6004o.finish();
    }
}
