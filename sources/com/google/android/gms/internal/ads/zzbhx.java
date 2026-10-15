package com.google.android.gms.internal.ads;

import java.util.Map;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzbhx implements com.google.android.gms.ads.internal.overlay.zzx {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    boolean f10751a = false;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final /* synthetic */ boolean f10752b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final /* synthetic */ com.google.android.gms.ads.internal.client.zza f10753c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final /* synthetic */ Map f10754d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    final /* synthetic */ Map f10755e;

    zzbhx(zzbhz zzbhzVar, boolean z10, com.google.android.gms.ads.internal.client.zza zzaVar, Map map, Map map2) {
        this.f10752b = z10;
        this.f10753c = zzaVar;
        this.f10754d = map;
        this.f10755e = map2;
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzx
    public final void S(boolean z10) {
        if (this.f10751a) {
            return;
        }
        if (z10 && this.f10752b) {
            ((zzdcc) this.f10753c).p();
        }
        this.f10751a = true;
        this.f10754d.put((String) this.f10755e.get("event_id"), Boolean.valueOf(z10));
        ((zzbki) this.f10753c).v0("openIntentAsync", this.f10754d);
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzx
    public final void z(int i10) {
    }
}
