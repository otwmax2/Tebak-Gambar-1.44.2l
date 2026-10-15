package com.google.android.play.core.assetpacks;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import java.util.ArrayList;
import java.util.concurrent.Executor;

/* JADX INFO: compiled from: com.google.android.play:core@@1.10.2 */
/* JADX INFO: loaded from: classes2.dex */
final class y extends w4.d<AssetPackState> {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final w1 f26178g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final e1 f26179h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final v4.y<u3> f26180i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final r0 f26181j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final h1 f26182k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private final v4.y<Executor> f26183l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private final v4.y<Executor> f26184m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private final p2 f26185n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final Handler f26186o;

    y(Context context, w1 w1Var, e1 e1Var, v4.y<u3> yVar, h1 h1Var, r0 r0Var, v4.y<Executor> yVar2, v4.y<Executor> yVar3, p2 p2Var) {
        super(new v4.a("AssetPackServiceListenerRegistry"), new IntentFilter("com.google.android.play.core.assetpacks.receiver.ACTION_SESSION_UPDATE"), context);
        this.f26186o = new Handler(Looper.getMainLooper());
        this.f26178g = w1Var;
        this.f26179h = e1Var;
        this.f26180i = yVar;
        this.f26182k = h1Var;
        this.f26181j = r0Var;
        this.f26183l = yVar2;
        this.f26184m = yVar3;
        this.f26185n = p2Var;
    }

    @Override // w4.d
    protected final void a(Context context, Intent intent) {
        final Bundle bundleExtra = intent.getBundleExtra("com.google.android.play.core.assetpacks.receiver.EXTRA_SESSION_STATE");
        if (bundleExtra == null) {
            this.f35987a.b("Empty bundle received from broadcast.", new Object[0]);
            return;
        }
        ArrayList<String> stringArrayList = bundleExtra.getStringArrayList("pack_names");
        if (stringArrayList == null || stringArrayList.size() != 1) {
            this.f35987a.b("Corrupt bundle received from broadcast.", new Object[0]);
            return;
        }
        final AssetPackState assetPackStateI = AssetPackState.i(bundleExtra, stringArrayList.get(0), this.f26182k, this.f26185n, new b0() { // from class: com.google.android.play.core.assetpacks.a0
            @Override // com.google.android.play.core.assetpacks.b0
            public final int P(int i10, String str) {
                return i10;
            }
        });
        this.f35987a.a("ListenerRegistryBroadcastReceiver.onReceive: %s", assetPackStateI);
        PendingIntent pendingIntent = (PendingIntent) bundleExtra.getParcelable("confirmation_intent");
        if (pendingIntent != null) {
            this.f26181j.a(pendingIntent);
        }
        this.f26184m.zza().execute(new Runnable() { // from class: com.google.android.play.core.assetpacks.v
            @Override // java.lang.Runnable
            public final void run() {
                this.f26112o.g(bundleExtra, assetPackStateI);
            }
        });
        this.f26183l.zza().execute(new Runnable() { // from class: com.google.android.play.core.assetpacks.u
            @Override // java.lang.Runnable
            public final void run() {
                this.f26097o.f(bundleExtra);
            }
        });
    }

    final /* synthetic */ void f(Bundle bundle) {
        if (this.f26178g.n(bundle)) {
            this.f26179h.a();
        }
    }

    final /* synthetic */ void g(Bundle bundle, AssetPackState assetPackState) {
        if (this.f26178g.m(bundle)) {
            h(assetPackState);
            this.f26180i.zza().c();
        }
    }

    final void h(final AssetPackState assetPackState) {
        this.f26186o.post(new Runnable() { // from class: com.google.android.play.core.assetpacks.x
            @Override // java.lang.Runnable
            public final void run() {
                this.f26160o.d(assetPackState);
            }
        });
    }
}
