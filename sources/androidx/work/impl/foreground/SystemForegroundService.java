package androidx.work.impl.foreground;

import android.app.Notification;
import android.app.NotificationManager;
import android.content.Intent;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import androidx.lifecycle.q;
import androidx.work.impl.foreground.a;
import i1.j;

/* JADX INFO: loaded from: classes.dex */
public class SystemForegroundService extends q implements a.b {

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private static final String f4459t = j.f("SystemFgService");

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private static SystemForegroundService f4460u = null;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private Handler f4461p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private boolean f4462q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    androidx.work.impl.foreground.a f4463r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    NotificationManager f4464s;

    class a implements Runnable {

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        final /* synthetic */ int f4465o;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        final /* synthetic */ Notification f4466p;

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        final /* synthetic */ int f4467q;

        a(int i10, Notification notification, int i11) {
            this.f4465o = i10;
            this.f4466p = notification;
            this.f4467q = i11;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (Build.VERSION.SDK_INT >= 29) {
                SystemForegroundService.this.startForeground(this.f4465o, this.f4466p, this.f4467q);
            } else {
                SystemForegroundService.this.startForeground(this.f4465o, this.f4466p);
            }
        }
    }

    class b implements Runnable {

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        final /* synthetic */ int f4469o;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        final /* synthetic */ Notification f4470p;

        b(int i10, Notification notification) {
            this.f4469o = i10;
            this.f4470p = notification;
        }

        @Override // java.lang.Runnable
        public void run() {
            SystemForegroundService.this.f4464s.notify(this.f4469o, this.f4470p);
        }
    }

    class c implements Runnable {

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        final /* synthetic */ int f4472o;

        c(int i10) {
            this.f4472o = i10;
        }

        @Override // java.lang.Runnable
        public void run() {
            SystemForegroundService.this.f4464s.cancel(this.f4472o);
        }
    }

    private void e() {
        this.f4461p = new Handler(Looper.getMainLooper());
        this.f4464s = (NotificationManager) getApplicationContext().getSystemService("notification");
        androidx.work.impl.foreground.a aVar = new androidx.work.impl.foreground.a(getApplicationContext());
        this.f4463r = aVar;
        aVar.m(this);
    }

    @Override // androidx.work.impl.foreground.a.b
    public void b(int i10, int i11, Notification notification) {
        this.f4461p.post(new a(i10, notification, i11));
    }

    @Override // androidx.work.impl.foreground.a.b
    public void c(int i10, Notification notification) {
        this.f4461p.post(new b(i10, notification));
    }

    @Override // androidx.work.impl.foreground.a.b
    public void d(int i10) {
        this.f4461p.post(new c(i10));
    }

    @Override // androidx.lifecycle.q, android.app.Service
    public void onCreate() {
        super.onCreate();
        f4460u = this;
        e();
    }

    @Override // androidx.lifecycle.q, android.app.Service
    public void onDestroy() {
        super.onDestroy();
        this.f4463r.k();
    }

    @Override // androidx.lifecycle.q, android.app.Service
    public int onStartCommand(Intent intent, int i10, int i11) {
        super.onStartCommand(intent, i10, i11);
        if (this.f4462q) {
            j.c().d(f4459t, "Re-initializing SystemForegroundService after a request to shut-down.", new Throwable[0]);
            this.f4463r.k();
            e();
            this.f4462q = false;
        }
        if (intent == null) {
            return 3;
        }
        this.f4463r.l(intent);
        return 3;
    }

    @Override // androidx.work.impl.foreground.a.b
    public void stop() {
        this.f4462q = true;
        j.c().a(f4459t, "All commands completed.", new Throwable[0]);
        if (Build.VERSION.SDK_INT >= 26) {
            stopForeground(true);
        }
        f4460u = null;
        stopSelf();
    }
}
