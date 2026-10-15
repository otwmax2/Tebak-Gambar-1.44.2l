package com.google.android.gms.ads.internal.util;

import android.annotation.SuppressLint;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Build;
import com.google.android.gms.internal.ads.zzbar;
import java.util.ArrayList;
import java.util.Map;
import java.util.WeakHashMap;
import javax.annotation.concurrent.GuardedBy;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes.dex */
public final class zzcg {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f6144d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private Context f6145e;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f6143c = false;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @GuardedBy("this")
    private final Map f6142b = new WeakHashMap();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @GuardedBy("this")
    private final BroadcastReceiver f6141a = new l(this);

    /* JADX INFO: Access modifiers changed from: private */
    public final synchronized void e(Context context, Intent intent) {
        ArrayList arrayList = new ArrayList();
        for (Map.Entry entry : this.f6142b.entrySet()) {
            if (((IntentFilter) entry.getValue()).hasAction(intent.getAction())) {
                arrayList.add((BroadcastReceiver) entry.getKey());
            }
        }
        int size = arrayList.size();
        for (int i10 = 0; i10 < size; i10++) {
            ((BroadcastReceiver) arrayList.get(i10)).onReceive(context, intent);
        }
    }

    @SuppressLint({"UnprotectedReceiver"})
    public final synchronized void b(Context context) {
        if (this.f6143c) {
            return;
        }
        Context applicationContext = context.getApplicationContext();
        this.f6145e = applicationContext;
        if (applicationContext == null) {
            this.f6145e = context;
        }
        zzbar.c(this.f6145e);
        this.f6144d = ((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.f10349r3)).booleanValue();
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.intent.action.SCREEN_ON");
        intentFilter.addAction("android.intent.action.SCREEN_OFF");
        intentFilter.addAction("android.intent.action.USER_PRESENT");
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.f10311n9)).booleanValue() || Build.VERSION.SDK_INT < 33) {
            this.f6145e.registerReceiver(this.f6141a, intentFilter);
        } else {
            this.f6145e.registerReceiver(this.f6141a, intentFilter, 4);
        }
        this.f6143c = true;
    }

    @SuppressLint({"UnprotectedReceiver"})
    public final synchronized void c(Context context, BroadcastReceiver broadcastReceiver, IntentFilter intentFilter) {
        if (this.f6144d) {
            this.f6142b.put(broadcastReceiver, intentFilter);
            return;
        }
        zzbar.c(context);
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.f10311n9)).booleanValue() || Build.VERSION.SDK_INT < 33) {
            context.registerReceiver(broadcastReceiver, intentFilter);
        } else {
            context.registerReceiver(broadcastReceiver, intentFilter, 4);
        }
    }

    public final synchronized void d(Context context, BroadcastReceiver broadcastReceiver) {
        if (this.f6144d) {
            this.f6142b.remove(broadcastReceiver);
        } else {
            context.unregisterReceiver(broadcastReceiver);
        }
    }
}
