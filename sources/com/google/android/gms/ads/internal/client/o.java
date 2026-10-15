package com.google.android.gms.ads.internal.client;

import com.google.android.gms.ads.LoadAdError;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.0.0 */
/* JADX INFO: loaded from: classes.dex */
final class o extends zzaz {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final /* synthetic */ zzea f5765c;

    o(zzea zzeaVar) {
        this.f5765c = zzeaVar;
    }

    @Override // com.google.android.gms.ads.internal.client.zzaz, com.google.android.gms.ads.AdListener
    public final void m(LoadAdError loadAdError) {
        zzea zzeaVar = this.f5765c;
        zzeaVar.f5849d.c(zzeaVar.l());
        super.m(loadAdError);
    }

    @Override // com.google.android.gms.ads.internal.client.zzaz, com.google.android.gms.ads.AdListener
    public final void o() {
        zzea zzeaVar = this.f5765c;
        zzeaVar.f5849d.c(zzeaVar.l());
        super.o();
    }
}
