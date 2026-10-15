package com.google.android.gms.internal.ads;

import android.view.MotionEvent;
import org.json.JSONObject;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzdkm implements zzbdk {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ zzdkn f15004a;

    zzdkm(zzdkn zzdknVar) {
        this.f15004a = zzdknVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbdk
    public final void a() {
        zzdkn zzdknVar = this.f15004a;
        if (zzdknVar.f15008r != null) {
            zzdknVar.f15008r.l("_videoMediaView");
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbdk
    public final void b(MotionEvent motionEvent) {
    }

    @Override // com.google.android.gms.internal.ads.zzbdk
    public final JSONObject zza() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzbdk
    public final JSONObject zzb() {
        return null;
    }
}
