package com.google.android.gms.ads.admanager;

import com.google.android.gms.ads.AdRequest;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.0.0 */
/* JADX INFO: loaded from: classes.dex */
public final class AdManagerAdRequest extends AdRequest {

    /* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.0.0 */
    public static final class Builder extends AdRequest.Builder {
        @Override // com.google.android.gms.ads.AdRequest.Builder
        /* JADX INFO: renamed from: j, reason: merged with bridge method [inline-methods] */
        public AdManagerAdRequest c() {
            return new AdManagerAdRequest(this, null);
        }
    }

    /* synthetic */ AdManagerAdRequest(Builder builder, zza zzaVar) {
        super(builder);
    }
}
