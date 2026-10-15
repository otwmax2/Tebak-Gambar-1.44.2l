package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.admanager.AdManagerAdView;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzbgd implements Runnable {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    final /* synthetic */ AdManagerAdView f10693o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    final /* synthetic */ com.google.android.gms.ads.internal.client.zzbu f10694p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    final /* synthetic */ zzbge f10695q;

    zzbgd(zzbge zzbgeVar, AdManagerAdView adManagerAdView, com.google.android.gms.ads.internal.client.zzbu zzbuVar) {
        this.f10695q = zzbgeVar;
        this.f10693o = adManagerAdView;
        this.f10694p = zzbuVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (this.f10693o.f(this.f10694p)) {
            this.f10695q.f10696o.a(this.f10693o);
        } else {
            zzbza.g("Could not bind.");
        }
    }
}
