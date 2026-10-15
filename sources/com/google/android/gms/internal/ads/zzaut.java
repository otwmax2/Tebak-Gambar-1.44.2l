package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.appopen.AppOpenAd;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzaut extends zzava {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final AppOpenAd.AppOpenAdLoadCallback f9995o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final String f9996p;

    public zzaut(AppOpenAd.AppOpenAdLoadCallback appOpenAdLoadCallback, String str) {
        this.f9995o = appOpenAdLoadCallback;
        this.f9996p = str;
    }

    @Override // com.google.android.gms.internal.ads.zzavb
    public final void l8(com.google.android.gms.ads.internal.client.zze zzeVar) {
        if (this.f9995o != null) {
            this.f9995o.a(zzeVar.W3());
        }
    }

    @Override // com.google.android.gms.internal.ads.zzavb
    public final void s6(zzauy zzauyVar) {
        if (this.f9995o != null) {
            this.f9995o.b(new zzauu(zzauyVar, this.f9996p));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzavb
    public final void z(int i10) {
    }
}
