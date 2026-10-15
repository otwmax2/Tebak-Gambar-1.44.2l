package com.google.android.gms.internal.ads;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzfmu implements ServiceConnection {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    final /* synthetic */ zzfmv f18440o;

    /* synthetic */ zzfmu(zzfmv zzfmvVar, zzfmt zzfmtVar) {
        this.f18440o = zzfmvVar;
    }

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        this.f18440o.f18443b.c("ServiceConnectionImpl.onServiceConnected(%s)", componentName);
        this.f18440o.c().post(new zzfmr(this, iBinder));
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
        this.f18440o.f18443b.c("ServiceConnectionImpl.onServiceDisconnected(%s)", componentName);
        this.f18440o.c().post(new zzfms(this));
    }
}
