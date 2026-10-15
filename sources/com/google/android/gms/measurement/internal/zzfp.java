package com.google.android.gms.measurement.internal;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement@@20.1.2 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzfp implements ServiceConnection {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final String f24673o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    final /* synthetic */ zzfq f24674p;

    zzfp(zzfq zzfqVar, String str) {
        this.f24674p = zzfqVar;
        this.f24673o = str;
    }

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        if (iBinder == null) {
            this.f24674p.f24675a.U().r().a("Install Referrer connection returned with null binder");
            return;
        }
        try {
            com.google.android.gms.internal.measurement.zzbr zzbrVarX0 = com.google.android.gms.internal.measurement.zzbq.X0(iBinder);
            if (zzbrVarX0 == null) {
                this.f24674p.f24675a.U().r().a("Install Referrer Service implementation was not found");
            } else {
                this.f24674p.f24675a.U().q().a("Install Referrer Service connected");
                this.f24674p.f24675a.B().v(new y(this, zzbrVarX0, this));
            }
        } catch (RuntimeException e10) {
            this.f24674p.f24675a.U().r().b("Exception occurred while calling Install Referrer API", e10);
        }
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
        this.f24674p.f24675a.U().q().a("Install Referrer Service disconnected");
    }
}
