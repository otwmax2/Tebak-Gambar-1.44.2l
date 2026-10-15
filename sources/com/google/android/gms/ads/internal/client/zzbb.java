package com.google.android.gms.ads.internal.client;

import com.google.android.gms.ads.FullScreenContentCallback;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.0.0 */
/* JADX INFO: loaded from: classes.dex */
public final class zzbb extends zzch {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final FullScreenContentCallback f5799o;

    public zzbb(FullScreenContentCallback fullScreenContentCallback) {
        this.f5799o = fullScreenContentCallback;
    }

    @Override // com.google.android.gms.ads.internal.client.zzci
    public final void L0(zze zzeVar) {
        FullScreenContentCallback fullScreenContentCallback = this.f5799o;
        if (fullScreenContentCallback != null) {
            fullScreenContentCallback.c(zzeVar.V3());
        }
    }

    @Override // com.google.android.gms.ads.internal.client.zzci
    public final void a() {
        FullScreenContentCallback fullScreenContentCallback = this.f5799o;
        if (fullScreenContentCallback != null) {
            fullScreenContentCallback.b();
        }
    }

    @Override // com.google.android.gms.ads.internal.client.zzci
    public final void b() {
        FullScreenContentCallback fullScreenContentCallback = this.f5799o;
        if (fullScreenContentCallback != null) {
            fullScreenContentCallback.d();
        }
    }

    @Override // com.google.android.gms.ads.internal.client.zzci
    public final void c() {
        FullScreenContentCallback fullScreenContentCallback = this.f5799o;
        if (fullScreenContentCallback != null) {
            fullScreenContentCallback.e();
        }
    }

    @Override // com.google.android.gms.ads.internal.client.zzci
    public final void zzb() {
        FullScreenContentCallback fullScreenContentCallback = this.f5799o;
        if (fullScreenContentCallback != null) {
            fullScreenContentCallback.a();
        }
    }
}
