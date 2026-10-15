package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.tasks.OnCompleteListener;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzfmv {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private static final Map f18441o = new HashMap();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Context f18442a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final zzfmk f18443b;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private boolean f18448g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final Intent f18449h;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private ServiceConnection f18453l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private IInterface f18454m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private final zzfls f18455n;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final List f18445d = new ArrayList();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Set f18446e = new HashSet();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final Object f18447f = new Object();

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final IBinder.DeathRecipient f18451j = new IBinder.DeathRecipient() { // from class: com.google.android.gms.internal.ads.zzfmn
        @Override // android.os.IBinder.DeathRecipient
        public final void binderDied() {
            zzfmv.j(this.f18432a);
        }
    };

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final AtomicInteger f18452k = new AtomicInteger(0);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final String f18444c = "OverlayDisplayService";

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final WeakReference f18450i = new WeakReference(null);

    public zzfmv(Context context, zzfmk zzfmkVar, String str, Intent intent, zzfls zzflsVar, zzfmq zzfmqVar, byte[] bArr) {
        this.f18442a = context;
        this.f18443b = zzfmkVar;
        this.f18449h = intent;
        this.f18455n = zzflsVar;
    }

    public static /* synthetic */ void j(zzfmv zzfmvVar) {
        zzfmvVar.f18443b.c("reportBinderDeath", new Object[0]);
        zzfmq zzfmqVar = (zzfmq) zzfmvVar.f18450i.get();
        if (zzfmqVar != null) {
            zzfmvVar.f18443b.c("calling onBinderDied", new Object[0]);
            zzfmqVar.zza();
        } else {
            zzfmvVar.f18443b.c("%s : Binder has died.", zzfmvVar.f18444c);
            Iterator it = zzfmvVar.f18445d.iterator();
            while (it.hasNext()) {
                ((zzfml) it.next()).c(zzfmvVar.v());
            }
            zzfmvVar.f18445d.clear();
        }
        synchronized (zzfmvVar.f18447f) {
            zzfmvVar.w();
        }
    }

    static /* bridge */ /* synthetic */ void n(final zzfmv zzfmvVar, final TaskCompletionSource taskCompletionSource) {
        zzfmvVar.f18446e.add(taskCompletionSource);
        taskCompletionSource.a().c(new OnCompleteListener() { // from class: com.google.android.gms.internal.ads.zzfmm
            @Override // com.google.android.gms.tasks.OnCompleteListener
            public final void a(Task task) {
                this.f18430a.t(taskCompletionSource, task);
            }
        });
    }

    static /* bridge */ /* synthetic */ void p(zzfmv zzfmvVar, zzfml zzfmlVar) {
        if (zzfmvVar.f18454m != null || zzfmvVar.f18448g) {
            if (!zzfmvVar.f18448g) {
                zzfmlVar.run();
                return;
            } else {
                zzfmvVar.f18443b.c("Waiting to bind to the service.", new Object[0]);
                zzfmvVar.f18445d.add(zzfmlVar);
                return;
            }
        }
        zzfmvVar.f18443b.c("Initiate binding to the service.", new Object[0]);
        zzfmvVar.f18445d.add(zzfmlVar);
        zzfmu zzfmuVar = new zzfmu(zzfmvVar, null);
        zzfmvVar.f18453l = zzfmuVar;
        zzfmvVar.f18448g = true;
        if (zzfmvVar.f18442a.bindService(zzfmvVar.f18449h, zzfmuVar, 1)) {
            return;
        }
        zzfmvVar.f18443b.c("Failed to bind to the service.", new Object[0]);
        zzfmvVar.f18448g = false;
        Iterator it = zzfmvVar.f18445d.iterator();
        while (it.hasNext()) {
            ((zzfml) it.next()).c(new zzfmw());
        }
        zzfmvVar.f18445d.clear();
    }

    static /* bridge */ /* synthetic */ void q(zzfmv zzfmvVar) {
        zzfmvVar.f18443b.c("linkToDeath", new Object[0]);
        try {
            zzfmvVar.f18454m.asBinder().linkToDeath(zzfmvVar.f18451j, 0);
        } catch (RemoteException e10) {
            zzfmvVar.f18443b.b(e10, "linkToDeath failed", new Object[0]);
        }
    }

    static /* bridge */ /* synthetic */ void r(zzfmv zzfmvVar) {
        zzfmvVar.f18443b.c("unlinkToDeath", new Object[0]);
        zzfmvVar.f18454m.asBinder().unlinkToDeath(zzfmvVar.f18451j, 0);
    }

    private final RemoteException v() {
        return new RemoteException(String.valueOf(this.f18444c).concat(" : Binder has died."));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void w() {
        Iterator it = this.f18446e.iterator();
        while (it.hasNext()) {
            ((TaskCompletionSource) it.next()).d(v());
        }
        this.f18446e.clear();
    }

    public final Handler c() {
        Handler handler;
        Map map = f18441o;
        synchronized (map) {
            if (!map.containsKey(this.f18444c)) {
                HandlerThread handlerThread = new HandlerThread(this.f18444c, 10);
                handlerThread.start();
                map.put(this.f18444c, new Handler(handlerThread.getLooper()));
            }
            handler = (Handler) map.get(this.f18444c);
        }
        return handler;
    }

    public final IInterface e() {
        return this.f18454m;
    }

    public final void s(zzfml zzfmlVar, TaskCompletionSource taskCompletionSource) {
        c().post(new zzfmo(this, zzfmlVar.b(), taskCompletionSource, zzfmlVar));
    }

    final /* synthetic */ void t(TaskCompletionSource taskCompletionSource, Task task) {
        synchronized (this.f18447f) {
            this.f18446e.remove(taskCompletionSource);
        }
    }

    public final void u() {
        c().post(new zzfmp(this));
    }
}
