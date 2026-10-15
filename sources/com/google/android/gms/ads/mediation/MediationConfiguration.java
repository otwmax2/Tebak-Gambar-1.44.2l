package com.google.android.gms.ads.mediation;

import android.os.Bundle;
import com.google.android.gms.ads.AdFormat;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.0.0 */
/* JADX INFO: loaded from: classes.dex */
public class MediationConfiguration {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final AdFormat f6283a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Bundle f6284b;

    public MediationConfiguration(AdFormat adFormat, Bundle bundle) {
        this.f6283a = adFormat;
        this.f6284b = bundle;
    }

    public Bundle a() {
        return this.f6284b;
    }
}
