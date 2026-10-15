package com.google.android.gms.measurement.internal;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.VisibleForTesting;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement@@20.1.2 */
/* JADX INFO: loaded from: classes2.dex */
final class w extends BroadcastReceiver {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @VisibleForTesting
    static final String f24336d = w.class.getName();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzli f24337a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean f24338b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f24339c;

    w(zzli zzliVar) {
        Preconditions.k(zzliVar);
        this.f24337a = zzliVar;
    }

    public final void b() {
        this.f24337a.b();
        this.f24337a.B().c();
        if (this.f24338b) {
            return;
        }
        this.f24337a.N0().registerReceiver(this, new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE"));
        this.f24339c = this.f24337a.W().h();
        this.f24337a.U().q().b("Registering connectivity change receiver. Network connected", Boolean.valueOf(this.f24339c));
        this.f24338b = true;
    }

    public final void c() {
        this.f24337a.b();
        this.f24337a.B().c();
        this.f24337a.B().c();
        if (this.f24338b) {
            this.f24337a.U().q().a("Unregistering connectivity change receiver");
            this.f24338b = false;
            this.f24339c = false;
            try {
                this.f24337a.N0().unregisterReceiver(this);
            } catch (IllegalArgumentException e10) {
                this.f24337a.U().m().b("Failed to unregister the network broadcast receiver", e10);
            }
        }
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        this.f24337a.b();
        String action = intent.getAction();
        this.f24337a.U().q().b("NetworkBroadcastReceiver received action", action);
        if (!"android.net.conn.CONNECTIVITY_CHANGE".equals(action)) {
            this.f24337a.U().r().b("NetworkBroadcastReceiver received unknown action", action);
            return;
        }
        boolean zH = this.f24337a.W().h();
        if (this.f24339c != zH) {
            this.f24339c = zH;
            this.f24337a.B().v(new v(this, zH));
        }
    }
}
