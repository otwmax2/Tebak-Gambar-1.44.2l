package androidx.work.impl.foreground;

import android.app.Notification;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.text.TextUtils;
import androidx.work.impl.WorkDatabase;
import i1.e;
import i1.j;
import j1.i;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.UUID;
import m1.c;
import m1.d;
import q1.p;

/* JADX INFO: compiled from: SystemForegroundDispatcher.java */
/* JADX INFO: loaded from: classes.dex */
public class a implements c, j1.b {

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    static final String f4474y = j.f("SystemFgDispatcher");

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private Context f4475o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private i f4476p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final s1.a f4477q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    final Object f4478r = new Object();

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    String f4479s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    final Map<String, e> f4480t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    final Map<String, p> f4481u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    final Set<p> f4482v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    final d f4483w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private b f4484x;

    /* JADX INFO: renamed from: androidx.work.impl.foreground.a$a, reason: collision with other inner class name */
    /* JADX INFO: compiled from: SystemForegroundDispatcher.java */
    class RunnableC0074a implements Runnable {

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        final /* synthetic */ WorkDatabase f4485o;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        final /* synthetic */ String f4486p;

        RunnableC0074a(WorkDatabase workDatabase, String str) {
            this.f4485o = workDatabase;
            this.f4486p = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            p pVarN = this.f4485o.L().n(this.f4486p);
            if (pVarN == null || !pVarN.b()) {
                return;
            }
            synchronized (a.this.f4478r) {
                a.this.f4481u.put(this.f4486p, pVarN);
                a.this.f4482v.add(pVarN);
                a aVar = a.this;
                aVar.f4483w.d(aVar.f4482v);
            }
        }
    }

    /* JADX INFO: compiled from: SystemForegroundDispatcher.java */
    interface b {
        void b(int i10, int i11, Notification notification);

        void c(int i10, Notification notification);

        void d(int i10);

        void stop();
    }

    a(Context context) {
        this.f4475o = context;
        i iVarL = i.l(context);
        this.f4476p = iVarL;
        s1.a aVarQ = iVarL.q();
        this.f4477q = aVarQ;
        this.f4479s = null;
        this.f4480t = new LinkedHashMap();
        this.f4482v = new HashSet();
        this.f4481u = new HashMap();
        this.f4483w = new d(this.f4475o, aVarQ, this);
        this.f4476p.n().d(this);
    }

    public static Intent a(Context context, String str, e eVar) {
        Intent intent = new Intent(context, (Class<?>) SystemForegroundService.class);
        intent.setAction("ACTION_NOTIFY");
        intent.putExtra("KEY_NOTIFICATION_ID", eVar.c());
        intent.putExtra("KEY_FOREGROUND_SERVICE_TYPE", eVar.a());
        intent.putExtra("KEY_NOTIFICATION", eVar.b());
        intent.putExtra("KEY_WORKSPEC_ID", str);
        return intent;
    }

    public static Intent d(Context context, String str, e eVar) {
        Intent intent = new Intent(context, (Class<?>) SystemForegroundService.class);
        intent.setAction("ACTION_START_FOREGROUND");
        intent.putExtra("KEY_WORKSPEC_ID", str);
        intent.putExtra("KEY_NOTIFICATION_ID", eVar.c());
        intent.putExtra("KEY_FOREGROUND_SERVICE_TYPE", eVar.a());
        intent.putExtra("KEY_NOTIFICATION", eVar.b());
        intent.putExtra("KEY_WORKSPEC_ID", str);
        return intent;
    }

    public static Intent f(Context context) {
        Intent intent = new Intent(context, (Class<?>) SystemForegroundService.class);
        intent.setAction("ACTION_STOP_FOREGROUND");
        return intent;
    }

    private void g(Intent intent) {
        j.c().d(f4474y, String.format("Stopping foreground work for %s", intent), new Throwable[0]);
        String stringExtra = intent.getStringExtra("KEY_WORKSPEC_ID");
        if (stringExtra == null || TextUtils.isEmpty(stringExtra)) {
            return;
        }
        this.f4476p.g(UUID.fromString(stringExtra));
    }

    private void h(Intent intent) {
        int iA = 0;
        int intExtra = intent.getIntExtra("KEY_NOTIFICATION_ID", 0);
        int intExtra2 = intent.getIntExtra("KEY_FOREGROUND_SERVICE_TYPE", 0);
        String stringExtra = intent.getStringExtra("KEY_WORKSPEC_ID");
        Notification notification = (Notification) intent.getParcelableExtra("KEY_NOTIFICATION");
        j.c().a(f4474y, String.format("Notifying with (id: %s, workSpecId: %s, notificationType: %s)", Integer.valueOf(intExtra), stringExtra, Integer.valueOf(intExtra2)), new Throwable[0]);
        if (notification == null || this.f4484x == null) {
            return;
        }
        this.f4480t.put(stringExtra, new e(intExtra, notification, intExtra2));
        if (TextUtils.isEmpty(this.f4479s)) {
            this.f4479s = stringExtra;
            this.f4484x.b(intExtra, intExtra2, notification);
            return;
        }
        this.f4484x.c(intExtra, notification);
        if (intExtra2 == 0 || Build.VERSION.SDK_INT < 29) {
            return;
        }
        Iterator<Map.Entry<String, e>> it = this.f4480t.entrySet().iterator();
        while (it.hasNext()) {
            iA |= it.next().getValue().a();
        }
        e eVar = this.f4480t.get(this.f4479s);
        if (eVar != null) {
            this.f4484x.b(eVar.c(), iA, eVar.b());
        }
    }

    private void i(Intent intent) {
        j.c().d(f4474y, String.format("Started foreground service %s", intent), new Throwable[0]);
        this.f4477q.b(new RunnableC0074a(this.f4476p.p(), intent.getStringExtra("KEY_WORKSPEC_ID")));
    }

    @Override // m1.c
    public void b(List<String> list) {
        if (list.isEmpty()) {
            return;
        }
        for (String str : list) {
            j.c().a(f4474y, String.format("Constraints unmet for WorkSpec %s", str), new Throwable[0]);
            this.f4476p.x(str);
        }
    }

    @Override // j1.b
    public void c(String str, boolean z10) {
        Map.Entry<String, e> entry;
        synchronized (this.f4478r) {
            p pVarRemove = this.f4481u.remove(str);
            if (pVarRemove != null ? this.f4482v.remove(pVarRemove) : false) {
                this.f4483w.d(this.f4482v);
            }
        }
        e eVarRemove = this.f4480t.remove(str);
        if (str.equals(this.f4479s) && this.f4480t.size() > 0) {
            Iterator<Map.Entry<String, e>> it = this.f4480t.entrySet().iterator();
            Map.Entry<String, e> next = it.next();
            while (true) {
                entry = next;
                if (!it.hasNext()) {
                    break;
                } else {
                    next = it.next();
                }
            }
            this.f4479s = entry.getKey();
            if (this.f4484x != null) {
                e value = entry.getValue();
                this.f4484x.b(value.c(), value.a(), value.b());
                this.f4484x.d(value.c());
            }
        }
        b bVar = this.f4484x;
        if (eVarRemove == null || bVar == null) {
            return;
        }
        j.c().a(f4474y, String.format("Removing Notification (id: %s, workSpecId: %s ,notificationType: %s)", Integer.valueOf(eVarRemove.c()), str, Integer.valueOf(eVarRemove.a())), new Throwable[0]);
        bVar.d(eVarRemove.c());
    }

    @Override // m1.c
    public void e(List<String> list) {
    }

    void j(Intent intent) {
        j.c().d(f4474y, "Stopping foreground service", new Throwable[0]);
        b bVar = this.f4484x;
        if (bVar != null) {
            bVar.stop();
        }
    }

    void k() {
        this.f4484x = null;
        synchronized (this.f4478r) {
            this.f4483w.e();
        }
        this.f4476p.n().i(this);
    }

    void l(Intent intent) {
        String action = intent.getAction();
        if ("ACTION_START_FOREGROUND".equals(action)) {
            i(intent);
            h(intent);
        } else if ("ACTION_NOTIFY".equals(action)) {
            h(intent);
        } else if ("ACTION_CANCEL_WORK".equals(action)) {
            g(intent);
        } else if ("ACTION_STOP_FOREGROUND".equals(action)) {
            j(intent);
        }
    }

    void m(b bVar) {
        if (this.f4484x != null) {
            j.c().b(f4474y, "A callback already exists.", new Throwable[0]);
        } else {
            this.f4484x = bVar;
        }
    }
}
