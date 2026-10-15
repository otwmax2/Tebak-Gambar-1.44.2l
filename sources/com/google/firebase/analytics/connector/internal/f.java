package com.google.firebase.analytics.connector.internal;

import com.google.android.gms.measurement.api.AppMeasurementSdk;
import e5.a;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-api@@20.1.2 */
/* JADX INFO: loaded from: classes2.dex */
public final class f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final a.b f26249a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final AppMeasurementSdk f26250b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final e f26251c;

    public f(AppMeasurementSdk appMeasurementSdk, a.b bVar) {
        this.f26249a = bVar;
        this.f26250b = appMeasurementSdk;
        e eVar = new e(this);
        this.f26251c = eVar;
        appMeasurementSdk.q(eVar);
    }
}
