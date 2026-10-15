package com.google.android.gms.common.api.internal;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;

/* JADX INFO: compiled from: com.google.android.gms:play-services-base@@18.0.1 */
/* JADX INFO: loaded from: classes.dex */
public final class zabx extends BroadcastReceiver {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    Context f7232a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final zabw f7233b;

    public zabx(zabw zabwVar) {
        this.f7233b = zabwVar;
    }

    public final void a(Context context) {
        this.f7232a = context;
    }

    public final synchronized void b() {
        Context context = this.f7232a;
        if (context != null) {
            context.unregisterReceiver(this);
        }
        this.f7232a = null;
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        Uri data = intent.getData();
        if ("com.google.android.gms".equals(data != null ? data.getSchemeSpecificPart() : null)) {
            this.f7233b.a();
            b();
        }
    }
}
