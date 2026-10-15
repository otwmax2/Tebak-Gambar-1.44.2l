package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.FullScreenContentCallback;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzauv extends zzave {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private FullScreenContentCallback f10000o;

    @Override // com.google.android.gms.internal.ads.zzavf
    public final void L0(com.google.android.gms.ads.internal.client.zze zzeVar) {
        FullScreenContentCallback fullScreenContentCallback = this.f10000o;
        if (fullScreenContentCallback != null) {
            fullScreenContentCallback.c(zzeVar.V3());
        }
    }

    @Override // com.google.android.gms.internal.ads.zzavf
    public final void a() {
        FullScreenContentCallback fullScreenContentCallback = this.f10000o;
        if (fullScreenContentCallback != null) {
            fullScreenContentCallback.b();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzavf
    public final void b() {
        FullScreenContentCallback fullScreenContentCallback = this.f10000o;
        if (fullScreenContentCallback != null) {
            fullScreenContentCallback.d();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzavf
    public final void c() {
        FullScreenContentCallback fullScreenContentCallback = this.f10000o;
        if (fullScreenContentCallback != null) {
            fullScreenContentCallback.e();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzavf
    public final void zzb() {
        FullScreenContentCallback fullScreenContentCallback = this.f10000o;
        if (fullScreenContentCallback != null) {
            fullScreenContentCallback.a();
        }
    }
}
