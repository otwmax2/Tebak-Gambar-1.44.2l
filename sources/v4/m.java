package v4;

import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Build;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: compiled from: com.google.android.play:core@@1.10.2 */
/* JADX INFO: loaded from: classes2.dex */
public final class m<T extends IInterface> {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private static final Map<String, Handler> f35815o = new HashMap();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Context f35816a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final a f35817b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final String f35818c;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private boolean f35822g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final Intent f35823h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final h<T> f35824i;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private ServiceConnection f35828m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private T f35829n;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final List<b> f35819d = new ArrayList();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Set<y4.p<?>> f35820e = new HashSet();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final Object f35821f = new Object();

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final IBinder.DeathRecipient f35826k = new IBinder.DeathRecipient() { // from class: v4.c
        @Override // android.os.IBinder.DeathRecipient
        public final void binderDied() {
            m.i(this.f35802a);
        }
    };

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private final AtomicInteger f35827l = new AtomicInteger(0);

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final WeakReference<g> f35825j = new WeakReference<>(null);

    public m(Context context, a aVar, String str, Intent intent, h<T> hVar, g gVar) {
        this.f35816a = context;
        this.f35817b = aVar;
        this.f35818c = str;
        this.f35823h = intent;
        this.f35824i = hVar;
    }

    public static /* synthetic */ void i(m mVar) {
        mVar.f35817b.d("reportBinderDeath", new Object[0]);
        g gVar = mVar.f35825j.get();
        if (gVar != null) {
            mVar.f35817b.d("calling onBinderDied", new Object[0]);
            gVar.zza();
        } else {
            mVar.f35817b.d("%s : Binder has died.", mVar.f35818c);
            Iterator<b> it = mVar.f35819d.iterator();
            while (it.hasNext()) {
                it.next().c(mVar.t());
            }
            mVar.f35819d.clear();
        }
        mVar.u();
    }

    static /* bridge */ /* synthetic */ void n(m mVar, b bVar) {
        if (mVar.f35829n != null || mVar.f35822g) {
            if (!mVar.f35822g) {
                bVar.run();
                return;
            } else {
                mVar.f35817b.d("Waiting to bind to the service.", new Object[0]);
                mVar.f35819d.add(bVar);
                return;
            }
        }
        mVar.f35817b.d("Initiate binding to the service.", new Object[0]);
        mVar.f35819d.add(bVar);
        l lVar = new l(mVar, null);
        mVar.f35828m = lVar;
        mVar.f35822g = true;
        if (mVar.f35816a.bindService(mVar.f35823h, lVar, 1)) {
            return;
        }
        mVar.f35817b.d("Failed to bind to the service.", new Object[0]);
        mVar.f35822g = false;
        Iterator<b> it = mVar.f35819d.iterator();
        while (it.hasNext()) {
            it.next().c(new n());
        }
        mVar.f35819d.clear();
    }

    static /* bridge */ /* synthetic */ void o(m mVar) {
        mVar.f35817b.d("linkToDeath", new Object[0]);
        try {
            mVar.f35829n.asBinder().linkToDeath(mVar.f35826k, 0);
        } catch (RemoteException e10) {
            mVar.f35817b.c(e10, "linkToDeath failed", new Object[0]);
        }
    }

    static /* bridge */ /* synthetic */ void p(m mVar) {
        mVar.f35817b.d("unlinkToDeath", new Object[0]);
        mVar.f35829n.asBinder().unlinkToDeath(mVar.f35826k, 0);
    }

    private final RemoteException t() {
        return Build.VERSION.SDK_INT < 15 ? new RemoteException() : new RemoteException(String.valueOf(this.f35818c).concat(" : Binder has died."));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void u() {
        synchronized (this.f35821f) {
            Iterator<y4.p<?>> it = this.f35820e.iterator();
            while (it.hasNext()) {
                it.next().d(t());
            }
            this.f35820e.clear();
        }
    }

    public final Handler c() {
        Handler handler;
        Map<String, Handler> map = f35815o;
        synchronized (map) {
            if (!map.containsKey(this.f35818c)) {
                HandlerThread handlerThread = new HandlerThread(this.f35818c, 10);
                handlerThread.start();
                map.put(this.f35818c, new Handler(handlerThread.getLooper()));
            }
            handler = map.get(this.f35818c);
        }
        return handler;
    }

    public final T e() {
        return this.f35829n;
    }

    public final void q(b bVar, final y4.p<?> pVar) {
        synchronized (this.f35821f) {
            this.f35820e.add(pVar);
            pVar.a().a(new y4.a() { // from class: v4.d
                @Override // y4.a
                public final void a(y4.e eVar) {
                    this.f35803a.r(pVar, eVar);
                }
            });
        }
        synchronized (this.f35821f) {
            if (this.f35827l.getAndIncrement() > 0) {
                this.f35817b.a("Already connected to the service.", new Object[0]);
            }
        }
        c().post(new e(this, bVar.b(), bVar));
    }

    final /* synthetic */ void r(y4.p pVar, y4.e eVar) {
        synchronized (this.f35821f) {
            this.f35820e.remove(pVar);
        }
    }

    public final void s(y4.p<?> pVar) {
        synchronized (this.f35821f) {
            this.f35820e.remove(pVar);
        }
        synchronized (this.f35821f) {
            if (this.f35827l.decrementAndGet() > 0) {
                this.f35817b.d("Leaving the connection open for other ongoing calls.", new Object[0]);
            } else {
                c().post(new f(this));
            }
        }
    }
}
