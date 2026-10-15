package com.google.android.play.core.assetpacks;

import android.app.Notification;
import android.content.ComponentName;
import android.content.Context;
import android.content.ServiceConnection;
import android.os.Bundle;
import android.os.IBinder;
import android.os.RemoteException;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: compiled from: com.google.android.play:core@@1.10.2 */
/* JADX INFO: loaded from: classes2.dex */
final class b1 implements ServiceConnection {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final v4.a f25814o = new v4.a("ExtractionForegroundServiceConnection");

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final List<v4.n0> f25815p = new ArrayList();

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final Context f25816q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private ExtractionForegroundService f25817r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private Notification f25818s;

    b1(Context context) {
        this.f25816q = context;
    }

    private final void d() {
        ArrayList arrayList;
        synchronized (this.f25815p) {
            arrayList = new ArrayList(this.f25815p);
            this.f25815p.clear();
        }
        int size = arrayList.size();
        for (int i10 = 0; i10 < size; i10++) {
            try {
                ((v4.n0) arrayList.get(i10)).G1(new Bundle(), new Bundle());
            } catch (RemoteException unused) {
                this.f25814o.b("Could not resolve Play Store service state update callback.", new Object[0]);
            }
        }
    }

    final void a(Notification notification) {
        this.f25818s = notification;
    }

    final void b() {
        this.f25814o.a("Stopping foreground installation service.", new Object[0]);
        this.f25816q.unbindService(this);
        ExtractionForegroundService extractionForegroundService = this.f25817r;
        if (extractionForegroundService != null) {
            extractionForegroundService.a();
        }
        d();
    }

    final void c(v4.n0 n0Var) {
        synchronized (this.f25815p) {
            this.f25815p.add(n0Var);
        }
    }

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        this.f25814o.a("Starting foreground installation service.", new Object[0]);
        ExtractionForegroundService extractionForegroundService = ((a1) iBinder).f25808o;
        this.f25817r = extractionForegroundService;
        extractionForegroundService.startForeground(-1883842196, this.f25818s);
        d();
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
    }
}
