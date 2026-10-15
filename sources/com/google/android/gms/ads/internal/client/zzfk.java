package com.google.android.gms.ads.internal.client;

import com.google.android.gms.ads.VideoController;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.0.0 */
/* JADX INFO: loaded from: classes.dex */
public final class zzfk extends zzds {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final VideoController.VideoLifecycleCallbacks f5897o;

    public zzfk(VideoController.VideoLifecycleCallbacks videoLifecycleCallbacks) {
        this.f5897o = videoLifecycleCallbacks;
    }

    @Override // com.google.android.gms.ads.internal.client.zzdt
    public final void b() {
        this.f5897o.a();
    }

    @Override // com.google.android.gms.ads.internal.client.zzdt
    public final void e() {
        this.f5897o.c();
    }

    @Override // com.google.android.gms.ads.internal.client.zzdt
    public final void f() {
        this.f5897o.d();
    }

    @Override // com.google.android.gms.ads.internal.client.zzdt
    public final void g() {
        this.f5897o.e();
    }

    @Override // com.google.android.gms.ads.internal.client.zzdt
    public final void y0(boolean z10) {
        this.f5897o.b(z10);
    }
}
