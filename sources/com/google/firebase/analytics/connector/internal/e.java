package com.google.firebase.analytics.connector.internal;

import android.os.Bundle;
import com.facebook.internal.NativeProtocol;
import com.google.android.gms.measurement.api.AppMeasurementSdk;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-api@@20.1.2 */
/* JADX INFO: loaded from: classes2.dex */
final class e implements AppMeasurementSdk.OnEventListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ f f26248a;

    public e(f fVar) {
        this.f26248a = fVar;
    }

    @Override // com.google.android.gms.measurement.internal.zzhj
    public final void a(String str, String str2, Bundle bundle, long j10) {
        if (str == null || str.equals("crash") || !b.h(str2)) {
            return;
        }
        Bundle bundle2 = new Bundle();
        bundle2.putString("name", str2);
        bundle2.putLong("timestampInMillis", j10);
        bundle2.putBundle(NativeProtocol.WEB_DIALOG_PARAMS, bundle);
        this.f26248a.f26249a.a(3, bundle2);
    }
}
