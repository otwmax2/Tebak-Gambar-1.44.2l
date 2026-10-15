package com.google.firebase.analytics.connector.internal;

import com.google.android.gms.measurement.api.AppMeasurementSdk;
import e5.a;
import java.util.HashSet;
import java.util.Set;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-api@@20.1.2 */
/* JADX INFO: loaded from: classes2.dex */
public final class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final Set f26244a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final a.b f26245b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final AppMeasurementSdk f26246c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final c f26247d;

    public d(AppMeasurementSdk appMeasurementSdk, a.b bVar) {
        this.f26245b = bVar;
        this.f26246c = appMeasurementSdk;
        c cVar = new c(this);
        this.f26247d = cVar;
        appMeasurementSdk.q(cVar);
        this.f26244a = new HashSet();
    }
}
