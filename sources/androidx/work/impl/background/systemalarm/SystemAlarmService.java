package androidx.work.impl.background.systemalarm;

import android.content.Intent;
import androidx.lifecycle.q;
import androidx.work.impl.background.systemalarm.e;
import i1.j;

/* JADX INFO: loaded from: classes.dex */
public class SystemAlarmService extends q implements e.c {

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private static final String f4414r = j.f("SystemAlarmService");

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private e f4415p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private boolean f4416q;

    private void e() {
        e eVar = new e(this);
        this.f4415p = eVar;
        eVar.m(this);
    }

    @Override // androidx.work.impl.background.systemalarm.e.c
    public void a() {
        this.f4416q = true;
        j.c().a(f4414r, "All commands completed in dispatcher", new Throwable[0]);
        r1.j.a();
        stopSelf();
    }

    @Override // androidx.lifecycle.q, android.app.Service
    public void onCreate() {
        super.onCreate();
        e();
        this.f4416q = false;
    }

    @Override // androidx.lifecycle.q, android.app.Service
    public void onDestroy() {
        super.onDestroy();
        this.f4416q = true;
        this.f4415p.j();
    }

    @Override // androidx.lifecycle.q, android.app.Service
    public int onStartCommand(Intent intent, int i10, int i11) {
        super.onStartCommand(intent, i10, i11);
        if (this.f4416q) {
            j.c().d(f4414r, "Re-initializing SystemAlarmDispatcher after a request to shut-down.", new Throwable[0]);
            this.f4415p.j();
            e();
            this.f4416q = false;
        }
        if (intent == null) {
            return 3;
        }
        this.f4415p.a(intent, i11);
        return 3;
    }
}
