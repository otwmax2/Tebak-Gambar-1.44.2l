package com.google.android.gms.measurement;

import android.content.Context;
import android.content.Intent;
import com.google.android.gms.measurement.internal.zzfr;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement@@20.1.2 */
/* JADX INFO: loaded from: classes2.dex */
public final class AppMeasurementReceiver extends q0.a implements zzfr.zza {

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private zzfr f23965q;

    @Override // com.google.android.gms.measurement.internal.zzfr.zza
    public void a(Context context, Intent intent) {
        q0.a.c(context, intent);
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        if (this.f23965q == null) {
            this.f23965q = new zzfr(this);
        }
        this.f23965q.a(context, intent);
    }
}
