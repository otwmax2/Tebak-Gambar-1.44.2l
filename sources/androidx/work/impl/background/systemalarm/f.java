package androidx.work.impl.background.systemalarm;

import android.content.Context;
import i1.j;
import q1.p;

/* JADX INFO: compiled from: SystemAlarmScheduler.java */
/* JADX INFO: loaded from: classes.dex */
public class f implements j1.e {

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private static final String f4453p = j.f("SystemAlarmScheduler");

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final Context f4454o;

    public f(Context context) {
        this.f4454o = context.getApplicationContext();
    }

    private void b(p pVar) {
        j.c().a(f4453p, String.format("Scheduling work with workSpecId %s", pVar.f33778a), new Throwable[0]);
        this.f4454o.startService(b.f(this.f4454o, pVar.f33778a));
    }

    @Override // j1.e
    public boolean a() {
        return true;
    }

    @Override // j1.e
    public void cancel(String str) {
        this.f4454o.startService(b.g(this.f4454o, str));
    }

    @Override // j1.e
    public void d(p... pVarArr) {
        for (p pVar : pVarArr) {
            b(pVar);
        }
    }
}
