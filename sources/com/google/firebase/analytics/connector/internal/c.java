package com.google.firebase.analytics.connector.internal;

import android.os.Bundle;
import com.google.android.gms.measurement.api.AppMeasurementSdk;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-api@@20.1.2 */
/* JADX INFO: loaded from: classes2.dex */
final class c implements AppMeasurementSdk.OnEventListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ d f26243a;

    public c(d dVar) {
        this.f26243a = dVar;
    }

    @Override // com.google.android.gms.measurement.internal.zzhj
    public final void a(String str, String str2, Bundle bundle, long j10) {
        if (this.f26243a.f26244a.contains(str2)) {
            Bundle bundle2 = new Bundle();
            bundle2.putString("events", b.c(str2));
            this.f26243a.f26245b.a(2, bundle2);
        }
    }
}
