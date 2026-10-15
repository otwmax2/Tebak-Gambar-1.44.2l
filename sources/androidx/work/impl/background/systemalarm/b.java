package androidx.work.impl.background.systemalarm;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import androidx.work.impl.WorkDatabase;
import androidx.work.impl.background.systemalarm.e;
import i1.j;
import java.util.HashMap;
import java.util.Map;
import q1.p;

/* JADX INFO: compiled from: CommandHandler.java */
/* JADX INFO: loaded from: classes.dex */
public class b implements j1.b {

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private static final String f4418r = j.f("CommandHandler");

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final Context f4419o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final Map<String, j1.b> f4420p = new HashMap();

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final Object f4421q = new Object();

    b(Context context) {
        this.f4419o = context;
    }

    static Intent a(Context context) {
        Intent intent = new Intent(context, (Class<?>) SystemAlarmService.class);
        intent.setAction("ACTION_CONSTRAINTS_CHANGED");
        return intent;
    }

    static Intent b(Context context, String str) {
        Intent intent = new Intent(context, (Class<?>) SystemAlarmService.class);
        intent.setAction("ACTION_DELAY_MET");
        intent.putExtra("KEY_WORKSPEC_ID", str);
        return intent;
    }

    static Intent d(Context context, String str, boolean z10) {
        Intent intent = new Intent(context, (Class<?>) SystemAlarmService.class);
        intent.setAction("ACTION_EXECUTION_COMPLETED");
        intent.putExtra("KEY_WORKSPEC_ID", str);
        intent.putExtra("KEY_NEEDS_RESCHEDULE", z10);
        return intent;
    }

    static Intent e(Context context) {
        Intent intent = new Intent(context, (Class<?>) SystemAlarmService.class);
        intent.setAction("ACTION_RESCHEDULE");
        return intent;
    }

    static Intent f(Context context, String str) {
        Intent intent = new Intent(context, (Class<?>) SystemAlarmService.class);
        intent.setAction("ACTION_SCHEDULE_WORK");
        intent.putExtra("KEY_WORKSPEC_ID", str);
        return intent;
    }

    static Intent g(Context context, String str) {
        Intent intent = new Intent(context, (Class<?>) SystemAlarmService.class);
        intent.setAction("ACTION_STOP_WORK");
        intent.putExtra("KEY_WORKSPEC_ID", str);
        return intent;
    }

    private void h(Intent intent, int i10, e eVar) {
        j.c().a(f4418r, String.format("Handling constraints changed %s", intent), new Throwable[0]);
        new c(this.f4419o, i10, eVar).a();
    }

    private void i(Intent intent, int i10, e eVar) {
        Bundle extras = intent.getExtras();
        synchronized (this.f4421q) {
            String string = extras.getString("KEY_WORKSPEC_ID");
            j jVarC = j.c();
            String str = f4418r;
            jVarC.a(str, String.format("Handing delay met for %s", string), new Throwable[0]);
            if (this.f4420p.containsKey(string)) {
                j.c().a(str, String.format("WorkSpec %s is already being handled for ACTION_DELAY_MET", string), new Throwable[0]);
            } else {
                d dVar = new d(this.f4419o, i10, string, eVar);
                this.f4420p.put(string, dVar);
                dVar.f();
            }
        }
    }

    private void j(Intent intent, int i10) {
        Bundle extras = intent.getExtras();
        String string = extras.getString("KEY_WORKSPEC_ID");
        boolean z10 = extras.getBoolean("KEY_NEEDS_RESCHEDULE");
        j.c().a(f4418r, String.format("Handling onExecutionCompleted %s, %s", intent, Integer.valueOf(i10)), new Throwable[0]);
        c(string, z10);
    }

    private void k(Intent intent, int i10, e eVar) {
        j.c().a(f4418r, String.format("Handling reschedule %s, %s", intent, Integer.valueOf(i10)), new Throwable[0]);
        eVar.g().t();
    }

    private void l(Intent intent, int i10, e eVar) {
        String string = intent.getExtras().getString("KEY_WORKSPEC_ID");
        j jVarC = j.c();
        String str = f4418r;
        jVarC.a(str, String.format("Handling schedule work for %s", string), new Throwable[0]);
        WorkDatabase workDatabaseP = eVar.g().p();
        workDatabaseP.e();
        try {
            p pVarN = workDatabaseP.L().n(string);
            if (pVarN == null) {
                j.c().h(str, "Skipping scheduling " + string + " because it's no longer in the DB", new Throwable[0]);
                return;
            }
            if (pVarN.f33779b.c()) {
                j.c().h(str, "Skipping scheduling " + string + "because it is finished.", new Throwable[0]);
                return;
            }
            long jA = pVarN.a();
            if (pVarN.b()) {
                j.c().a(str, String.format("Opportunistically setting an alarm for %s at %s", string, Long.valueOf(jA)), new Throwable[0]);
                a.c(this.f4419o, eVar.g(), string, jA);
                eVar.k(new e.b(eVar, a(this.f4419o), i10));
            } else {
                j.c().a(str, String.format("Setting up Alarms for %s at %s", string, Long.valueOf(jA)), new Throwable[0]);
                a.c(this.f4419o, eVar.g(), string, jA);
            }
            workDatabaseP.A();
        } finally {
            workDatabaseP.i();
        }
    }

    private void m(Intent intent, e eVar) {
        String string = intent.getExtras().getString("KEY_WORKSPEC_ID");
        j.c().a(f4418r, String.format("Handing stopWork work for %s", string), new Throwable[0]);
        eVar.g().y(string);
        a.a(this.f4419o, eVar.g(), string);
        eVar.c(string, false);
    }

    private static boolean n(Bundle bundle, String... strArr) {
        if (bundle == null || bundle.isEmpty()) {
            return false;
        }
        for (String str : strArr) {
            if (bundle.get(str) == null) {
                return false;
            }
        }
        return true;
    }

    @Override // j1.b
    public void c(String str, boolean z10) {
        synchronized (this.f4421q) {
            j1.b bVarRemove = this.f4420p.remove(str);
            if (bVarRemove != null) {
                bVarRemove.c(str, z10);
            }
        }
    }

    boolean o() {
        boolean z10;
        synchronized (this.f4421q) {
            z10 = !this.f4420p.isEmpty();
        }
        return z10;
    }

    void p(Intent intent, int i10, e eVar) {
        String action = intent.getAction();
        if ("ACTION_CONSTRAINTS_CHANGED".equals(action)) {
            h(intent, i10, eVar);
            return;
        }
        if ("ACTION_RESCHEDULE".equals(action)) {
            k(intent, i10, eVar);
            return;
        }
        if (!n(intent.getExtras(), "KEY_WORKSPEC_ID")) {
            j.c().b(f4418r, String.format("Invalid request for %s, requires %s.", action, "KEY_WORKSPEC_ID"), new Throwable[0]);
            return;
        }
        if ("ACTION_SCHEDULE_WORK".equals(action)) {
            l(intent, i10, eVar);
            return;
        }
        if ("ACTION_DELAY_MET".equals(action)) {
            i(intent, i10, eVar);
            return;
        }
        if ("ACTION_STOP_WORK".equals(action)) {
            m(intent, eVar);
        } else if ("ACTION_EXECUTION_COMPLETED".equals(action)) {
            j(intent, i10);
        } else {
            j.c().h(f4418r, String.format("Ignoring intent %s", intent), new Throwable[0]);
        }
    }
}
