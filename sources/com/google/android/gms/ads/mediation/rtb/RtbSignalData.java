package com.google.android.gms.ads.mediation.rtb;

import android.content.Context;
import android.os.Bundle;
import com.google.android.gms.ads.AdSize;
import com.google.android.gms.ads.mediation.MediationConfiguration;
import java.util.List;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.0.0 */
/* JADX INFO: loaded from: classes.dex */
public class RtbSignalData {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Context f6317a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final List f6318b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Bundle f6319c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final AdSize f6320d;

    public RtbSignalData(Context context, List<MediationConfiguration> list, Bundle bundle, AdSize adSize) {
        this.f6317a = context;
        this.f6318b = list;
        this.f6319c = bundle;
        this.f6320d = adSize;
    }
}
