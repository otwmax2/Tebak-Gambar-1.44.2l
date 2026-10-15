package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.FullScreenContentCallback;
import com.google.android.gms.ads.OnUserEarnedRewardListener;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzbvo extends zzbuy {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private FullScreenContentCallback f11373o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private OnUserEarnedRewardListener f11374p;

    @Override // com.google.android.gms.internal.ads.zzbuz
    public final void Q8(com.google.android.gms.ads.internal.client.zze zzeVar) {
        FullScreenContentCallback fullScreenContentCallback = this.f11373o;
        if (fullScreenContentCallback != null) {
            fullScreenContentCallback.c(zzeVar.V3());
        }
    }

    public final void Sa(FullScreenContentCallback fullScreenContentCallback) {
        this.f11373o = fullScreenContentCallback;
    }

    public final void Ta(OnUserEarnedRewardListener onUserEarnedRewardListener) {
        this.f11374p = onUserEarnedRewardListener;
    }

    @Override // com.google.android.gms.internal.ads.zzbuz
    public final void b() {
        FullScreenContentCallback fullScreenContentCallback = this.f11373o;
        if (fullScreenContentCallback != null) {
            fullScreenContentCallback.a();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbuz
    public final void c() {
        FullScreenContentCallback fullScreenContentCallback = this.f11373o;
        if (fullScreenContentCallback != null) {
            fullScreenContentCallback.d();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbuz
    public final void e() {
        FullScreenContentCallback fullScreenContentCallback = this.f11373o;
        if (fullScreenContentCallback != null) {
            fullScreenContentCallback.b();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbuz
    public final void g8(zzbut zzbutVar) {
        OnUserEarnedRewardListener onUserEarnedRewardListener = this.f11374p;
        if (onUserEarnedRewardListener != null) {
            onUserEarnedRewardListener.a(new zzbvg(zzbutVar));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbuz
    public final void h() {
        FullScreenContentCallback fullScreenContentCallback = this.f11373o;
        if (fullScreenContentCallback != null) {
            fullScreenContentCallback.e();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbuz
    public final void j0(int i10) {
    }
}
