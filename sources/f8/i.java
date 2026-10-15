package f8;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import com.vungle.mediation.BuildConfig;
import f8.r;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.WeakHashMap;
import java.util.concurrent.ExecutorService;

/* JADX INFO: compiled from: Dispatcher.java */
/* JADX INFO: loaded from: classes2.dex */
class i {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final b f29356a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final Context f29357b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final ExecutorService f29358c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final j f29359d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    final Map<String, f8.c> f29360e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    final Map<Object, f8.a> f29361f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    final Map<Object, f8.a> f29362g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    final Set<Object> f29363h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    final Handler f29364i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    final Handler f29365j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    final d f29366k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    final a0 f29367l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    final List<f8.c> f29368m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    final c f29369n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    final boolean f29370o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    boolean f29371p;

    /* JADX INFO: compiled from: Dispatcher.java */
    private static class a extends Handler {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final i f29372a;

        /* JADX INFO: renamed from: f8.i$a$a, reason: collision with other inner class name */
        /* JADX INFO: compiled from: Dispatcher.java */
        class RunnableC0159a implements Runnable {

            /* JADX INFO: renamed from: o, reason: collision with root package name */
            final /* synthetic */ Message f29373o;

            RunnableC0159a(Message message) {
                this.f29373o = message;
            }

            @Override // java.lang.Runnable
            public void run() {
                throw new AssertionError("Unknown handler message received: " + this.f29373o.what);
            }
        }

        public a(Looper looper, i iVar) {
            super(looper);
            this.f29372a = iVar;
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            switch (message.what) {
                case 1:
                    this.f29372a.v((f8.a) message.obj);
                    break;
                case 2:
                    this.f29372a.o((f8.a) message.obj);
                    break;
                case 3:
                case 8:
                default:
                    t.f29415p.post(new RunnableC0159a(message));
                    break;
                case 4:
                    this.f29372a.p((f8.c) message.obj);
                    break;
                case 5:
                    this.f29372a.u((f8.c) message.obj);
                    break;
                case 6:
                    this.f29372a.q((f8.c) message.obj, false);
                    break;
                case 7:
                    this.f29372a.n();
                    break;
                case 9:
                    this.f29372a.r((NetworkInfo) message.obj);
                    break;
                case 10:
                    this.f29372a.m(message.arg1 == 1);
                    break;
                case 11:
                    this.f29372a.s(message.obj);
                    break;
                case 12:
                    this.f29372a.t(message.obj);
                    break;
            }
        }
    }

    /* JADX INFO: compiled from: Dispatcher.java */
    static class b extends HandlerThread {
        b() {
            super("Picasso-Dispatcher", 10);
        }
    }

    /* JADX INFO: compiled from: Dispatcher.java */
    static class c extends BroadcastReceiver {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final i f29375a;

        c(i iVar) {
            this.f29375a = iVar;
        }

        void a() {
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction("android.intent.action.AIRPLANE_MODE");
            if (this.f29375a.f29370o) {
                intentFilter.addAction("android.net.conn.CONNECTIVITY_CHANGE");
            }
            this.f29375a.f29357b.registerReceiver(this, intentFilter);
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (intent == null) {
                return;
            }
            String action = intent.getAction();
            if ("android.intent.action.AIRPLANE_MODE".equals(action)) {
                if (intent.hasExtra("state")) {
                    this.f29375a.b(intent.getBooleanExtra("state", false));
                }
            } else if ("android.net.conn.CONNECTIVITY_CHANGE".equals(action)) {
                this.f29375a.f(((ConnectivityManager) e0.p(context, "connectivity")).getActiveNetworkInfo());
            }
        }
    }

    i(Context context, ExecutorService executorService, Handler handler, j jVar, d dVar, a0 a0Var) {
        b bVar = new b();
        this.f29356a = bVar;
        bVar.start();
        e0.j(bVar.getLooper());
        this.f29357b = context;
        this.f29358c = executorService;
        this.f29360e = new LinkedHashMap();
        this.f29361f = new WeakHashMap();
        this.f29362g = new WeakHashMap();
        this.f29363h = new HashSet();
        this.f29364i = new a(bVar.getLooper(), this);
        this.f29359d = jVar;
        this.f29365j = handler;
        this.f29366k = dVar;
        this.f29367l = a0Var;
        this.f29368m = new ArrayList(4);
        this.f29371p = e0.r(context);
        this.f29370o = e0.q(context, "android.permission.ACCESS_NETWORK_STATE");
        c cVar = new c(this);
        this.f29369n = cVar;
        cVar.a();
    }

    private void a(f8.c cVar) {
        if (cVar.s()) {
            return;
        }
        this.f29368m.add(cVar);
        if (this.f29364i.hasMessages(7)) {
            return;
        }
        this.f29364i.sendEmptyMessageDelayed(7, 200L);
    }

    private void i() {
        if (this.f29361f.isEmpty()) {
            return;
        }
        Iterator<f8.a> it = this.f29361f.values().iterator();
        while (it.hasNext()) {
            f8.a next = it.next();
            it.remove();
            if (next.g().f29430n) {
                e0.u("Dispatcher", "replaying", next.i().d());
            }
            w(next, false);
        }
    }

    private void j(List<f8.c> list) {
        if (list == null || list.isEmpty() || !list.get(0).o().f29430n) {
            return;
        }
        StringBuilder sb = new StringBuilder();
        for (f8.c cVar : list) {
            if (sb.length() > 0) {
                sb.append(", ");
            }
            sb.append(e0.l(cVar));
        }
        e0.u("Dispatcher", "delivered", sb.toString());
    }

    private void k(f8.a aVar) {
        Object objK = aVar.k();
        if (objK != null) {
            aVar.f29292k = true;
            this.f29361f.put(objK, aVar);
        }
    }

    private void l(f8.c cVar) {
        f8.a aVarH = cVar.h();
        if (aVarH != null) {
            k(aVarH);
        }
        List<f8.a> listI = cVar.i();
        if (listI != null) {
            int size = listI.size();
            for (int i10 = 0; i10 < size; i10++) {
                k(listI.get(i10));
            }
        }
    }

    void b(boolean z10) {
        Handler handler = this.f29364i;
        handler.sendMessage(handler.obtainMessage(10, z10 ? 1 : 0, 0));
    }

    void c(f8.a aVar) {
        Handler handler = this.f29364i;
        handler.sendMessage(handler.obtainMessage(2, aVar));
    }

    void d(f8.c cVar) {
        Handler handler = this.f29364i;
        handler.sendMessage(handler.obtainMessage(4, cVar));
    }

    void e(f8.c cVar) {
        Handler handler = this.f29364i;
        handler.sendMessage(handler.obtainMessage(6, cVar));
    }

    void f(NetworkInfo networkInfo) {
        Handler handler = this.f29364i;
        handler.sendMessage(handler.obtainMessage(9, networkInfo));
    }

    void g(f8.c cVar) {
        Handler handler = this.f29364i;
        handler.sendMessageDelayed(handler.obtainMessage(5, cVar), 500L);
    }

    void h(f8.a aVar) {
        Handler handler = this.f29364i;
        handler.sendMessage(handler.obtainMessage(1, aVar));
    }

    void m(boolean z10) {
        this.f29371p = z10;
    }

    void n() {
        ArrayList arrayList = new ArrayList(this.f29368m);
        this.f29368m.clear();
        Handler handler = this.f29365j;
        handler.sendMessage(handler.obtainMessage(8, arrayList));
        j(arrayList);
    }

    void o(f8.a aVar) {
        String strD = aVar.d();
        f8.c cVar = this.f29360e.get(strD);
        if (cVar != null) {
            cVar.f(aVar);
            if (cVar.c()) {
                this.f29360e.remove(strD);
                if (aVar.g().f29430n) {
                    e0.u("Dispatcher", "canceled", aVar.i().d());
                }
            }
        }
        if (this.f29363h.contains(aVar.j())) {
            this.f29362g.remove(aVar.k());
            if (aVar.g().f29430n) {
                e0.v("Dispatcher", "canceled", aVar.i().d(), "because paused request got canceled");
            }
        }
        f8.a aVarRemove = this.f29361f.remove(aVar.k());
        if (aVarRemove == null || !aVarRemove.g().f29430n) {
            return;
        }
        e0.v("Dispatcher", "canceled", aVarRemove.i().d(), "from replaying");
    }

    void p(f8.c cVar) {
        if (p.e(cVar.n())) {
            this.f29366k.c(cVar.l(), cVar.q());
        }
        this.f29360e.remove(cVar.l());
        a(cVar);
        if (cVar.o().f29430n) {
            e0.v("Dispatcher", "batched", e0.l(cVar), "for completion");
        }
    }

    void q(f8.c cVar, boolean z10) {
        if (cVar.o().f29430n) {
            String strL = e0.l(cVar);
            StringBuilder sb = new StringBuilder();
            sb.append("for error");
            sb.append(z10 ? " (will replay)" : BuildConfig.FLAVOR);
            e0.v("Dispatcher", "batched", strL, sb.toString());
        }
        this.f29360e.remove(cVar.l());
        a(cVar);
    }

    void r(NetworkInfo networkInfo) {
        ExecutorService executorService = this.f29358c;
        if (executorService instanceof v) {
            ((v) executorService).a(networkInfo);
        }
        if (networkInfo == null || !networkInfo.isConnected()) {
            return;
        }
        i();
    }

    void s(Object obj) {
        if (this.f29363h.add(obj)) {
            Iterator<f8.c> it = this.f29360e.values().iterator();
            while (it.hasNext()) {
                f8.c next = it.next();
                boolean z10 = next.o().f29430n;
                f8.a aVarH = next.h();
                List<f8.a> listI = next.i();
                boolean z11 = (listI == null || listI.isEmpty()) ? false : true;
                if (aVarH != null || z11) {
                    if (aVarH != null && aVarH.j().equals(obj)) {
                        next.f(aVarH);
                        this.f29362g.put(aVarH.k(), aVarH);
                        if (z10) {
                            e0.v("Dispatcher", "paused", aVarH.f29283b.d(), "because tag '" + obj + "' was paused");
                        }
                    }
                    if (z11) {
                        for (int size = listI.size() - 1; size >= 0; size--) {
                            f8.a aVar = listI.get(size);
                            if (aVar.j().equals(obj)) {
                                next.f(aVar);
                                this.f29362g.put(aVar.k(), aVar);
                                if (z10) {
                                    e0.v("Dispatcher", "paused", aVar.f29283b.d(), "because tag '" + obj + "' was paused");
                                }
                            }
                        }
                    }
                    if (next.c()) {
                        it.remove();
                        if (z10) {
                            e0.v("Dispatcher", "canceled", e0.l(next), "all actions paused");
                        }
                    }
                }
            }
        }
    }

    void t(Object obj) {
        if (this.f29363h.remove(obj)) {
            ArrayList arrayList = null;
            Iterator<f8.a> it = this.f29362g.values().iterator();
            while (it.hasNext()) {
                f8.a next = it.next();
                if (next.j().equals(obj)) {
                    if (arrayList == null) {
                        arrayList = new ArrayList();
                    }
                    arrayList.add(next);
                    it.remove();
                }
            }
            if (arrayList != null) {
                Handler handler = this.f29365j;
                handler.sendMessage(handler.obtainMessage(13, arrayList));
            }
        }
    }

    void u(f8.c cVar) {
        if (cVar.s()) {
            return;
        }
        boolean z10 = false;
        if (this.f29358c.isShutdown()) {
            q(cVar, false);
            return;
        }
        NetworkInfo activeNetworkInfo = this.f29370o ? ((ConnectivityManager) e0.p(this.f29357b, "connectivity")).getActiveNetworkInfo() : null;
        boolean z11 = activeNetworkInfo != null && activeNetworkInfo.isConnected();
        boolean zU = cVar.u(this.f29371p, activeNetworkInfo);
        boolean zV = cVar.v();
        if (!zU) {
            if (this.f29370o && zV) {
                z10 = true;
            }
            q(cVar, z10);
            if (z10) {
                l(cVar);
                return;
            }
            return;
        }
        if (this.f29370o && !z11) {
            q(cVar, zV);
            if (zV) {
                l(cVar);
                return;
            }
            return;
        }
        if (cVar.o().f29430n) {
            e0.u("Dispatcher", "retrying", e0.l(cVar));
        }
        if (cVar.k() instanceof r.a) {
            cVar.f29336w |= q.NO_CACHE.f29411o;
        }
        cVar.B = this.f29358c.submit(cVar);
    }

    void v(f8.a aVar) {
        w(aVar, true);
    }

    void w(f8.a aVar, boolean z10) {
        if (this.f29363h.contains(aVar.j())) {
            this.f29362g.put(aVar.k(), aVar);
            if (aVar.g().f29430n) {
                e0.v("Dispatcher", "paused", aVar.f29283b.d(), "because tag '" + aVar.j() + "' is paused");
                return;
            }
            return;
        }
        f8.c cVar = this.f29360e.get(aVar.d());
        if (cVar != null) {
            cVar.b(aVar);
            return;
        }
        if (this.f29358c.isShutdown()) {
            if (aVar.g().f29430n) {
                e0.v("Dispatcher", "ignored", aVar.f29283b.d(), "because shut down");
                return;
            }
            return;
        }
        f8.c cVarG = f8.c.g(aVar.g(), this, this.f29366k, this.f29367l, aVar);
        cVarG.B = this.f29358c.submit(cVarG);
        this.f29360e.put(aVar.d(), cVarG);
        if (z10) {
            this.f29361f.remove(aVar.k());
        }
        if (aVar.g().f29430n) {
            e0.u("Dispatcher", "enqueued", aVar.f29283b.d());
        }
    }
}
