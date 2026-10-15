package androidx.work.impl.utils;

import android.annotation.SuppressLint;
import android.app.ActivityManager;
import android.app.AlarmManager;
import android.app.ApplicationExitInfo;
import android.app.PendingIntent;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.database.sqlite.SQLiteAccessPermException;
import android.database.sqlite.SQLiteCantOpenDatabaseException;
import android.database.sqlite.SQLiteConstraintException;
import android.database.sqlite.SQLiteDatabaseCorruptException;
import android.database.sqlite.SQLiteDatabaseLockedException;
import android.database.sqlite.SQLiteTableLockedException;
import android.os.Build;
import android.text.TextUtils;
import androidx.core.os.a;
import androidx.work.impl.WorkDatabase;
import i1.g;
import i1.j;
import i1.s;
import j1.f;
import j1.h;
import j1.i;
import java.util.List;
import java.util.concurrent.TimeUnit;
import l1.b;
import q1.n;
import q1.p;
import q1.q;

/* JADX INFO: loaded from: classes.dex */
public class ForceStopRunnable implements Runnable {

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private static final String f4488r = j.f("ForceStopRunnable");

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private static final long f4489s = TimeUnit.DAYS.toMillis(3650);

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final Context f4490o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final i f4491p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private int f4492q = 0;

    public static class BroadcastReceiver extends android.content.BroadcastReceiver {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private static final String f4493a = j.f("ForceStopRunnable$Rcvr");

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (intent == null || !"ACTION_FORCE_STOP_RESCHEDULE".equals(intent.getAction())) {
                return;
            }
            j.c().g(f4493a, "Rescheduling alarm that keeps track of force-stops.", new Throwable[0]);
            ForceStopRunnable.g(context);
        }
    }

    public ForceStopRunnable(Context context, i iVar) {
        this.f4490o = context.getApplicationContext();
        this.f4491p = iVar;
    }

    static Intent c(Context context) {
        Intent intent = new Intent();
        intent.setComponent(new ComponentName(context, (Class<?>) BroadcastReceiver.class));
        intent.setAction("ACTION_FORCE_STOP_RESCHEDULE");
        return intent;
    }

    private static PendingIntent d(Context context, int i10) {
        return PendingIntent.getBroadcast(context, -1, c(context), i10);
    }

    @SuppressLint({"ClassVerificationFailure"})
    static void g(Context context) {
        AlarmManager alarmManager = (AlarmManager) context.getSystemService("alarm");
        PendingIntent pendingIntentD = d(context, a.c() ? 167772160 : 134217728);
        long jCurrentTimeMillis = System.currentTimeMillis() + f4489s;
        if (alarmManager != null) {
            if (Build.VERSION.SDK_INT >= 19) {
                alarmManager.setExact(0, jCurrentTimeMillis, pendingIntentD);
            } else {
                alarmManager.set(0, jCurrentTimeMillis, pendingIntentD);
            }
        }
    }

    public boolean a() {
        boolean zH = Build.VERSION.SDK_INT >= 23 ? b.h(this.f4490o, this.f4491p) : false;
        WorkDatabase workDatabaseP = this.f4491p.p();
        q qVarL = workDatabaseP.L();
        n nVarK = workDatabaseP.K();
        workDatabaseP.e();
        try {
            List<p> listJ = qVarL.j();
            boolean z10 = (listJ == null || listJ.isEmpty()) ? false : true;
            if (z10) {
                for (p pVar : listJ) {
                    qVarL.g(s.a.ENQUEUED, pVar.f33778a);
                    qVarL.c(pVar.f33778a, -1L);
                }
            }
            nVarK.c();
            workDatabaseP.A();
            return z10 || zH;
        } finally {
            workDatabaseP.i();
        }
    }

    public void b() {
        boolean zA = a();
        if (h()) {
            j.c().a(f4488r, "Rescheduling Workers.", new Throwable[0]);
            this.f4491p.t();
            this.f4491p.m().c(false);
        } else if (e()) {
            j.c().a(f4488r, "Application was force-stopped, rescheduling.", new Throwable[0]);
            this.f4491p.t();
        } else if (zA) {
            j.c().a(f4488r, "Found unfinished work, scheduling it.", new Throwable[0]);
            f.b(this.f4491p.j(), this.f4491p.p(), this.f4491p.o());
        }
    }

    @SuppressLint({"ClassVerificationFailure"})
    public boolean e() {
        try {
            PendingIntent pendingIntentD = d(this.f4490o, a.c() ? 570425344 : 536870912);
            if (Build.VERSION.SDK_INT >= 30) {
                if (pendingIntentD != null) {
                    pendingIntentD.cancel();
                }
                List<ApplicationExitInfo> historicalProcessExitReasons = ((ActivityManager) this.f4490o.getSystemService("activity")).getHistoricalProcessExitReasons(null, 0, 0);
                if (historicalProcessExitReasons != null && !historicalProcessExitReasons.isEmpty()) {
                    for (int i10 = 0; i10 < historicalProcessExitReasons.size(); i10++) {
                        if (historicalProcessExitReasons.get(i10).getReason() == 10) {
                            return true;
                        }
                    }
                }
            } else if (pendingIntentD == null) {
                g(this.f4490o);
                return true;
            }
            return false;
        } catch (IllegalArgumentException | SecurityException e10) {
            j.c().h(f4488r, "Ignoring exception", e10);
            return true;
        }
    }

    public boolean f() {
        androidx.work.a aVarJ = this.f4491p.j();
        if (TextUtils.isEmpty(aVarJ.c())) {
            j.c().a(f4488r, "The default process name was not specified.", new Throwable[0]);
            return true;
        }
        boolean zB = r1.f.b(this.f4490o, aVarJ);
        j.c().a(f4488r, String.format("Is default app process = %s", Boolean.valueOf(zB)), new Throwable[0]);
        return zB;
    }

    boolean h() {
        return this.f4491p.m().a();
    }

    public void i(long j10) {
        try {
            Thread.sleep(j10);
        } catch (InterruptedException unused) {
        }
    }

    @Override // java.lang.Runnable
    public void run() {
        int i10;
        try {
            if (f()) {
                while (true) {
                    h.e(this.f4490o);
                    j.c().a(f4488r, "Performing cleanup operations.", new Throwable[0]);
                    try {
                        b();
                        break;
                    } catch (SQLiteAccessPermException | SQLiteCantOpenDatabaseException | SQLiteConstraintException | SQLiteDatabaseCorruptException | SQLiteDatabaseLockedException | SQLiteTableLockedException e10) {
                        i10 = this.f4492q + 1;
                        this.f4492q = i10;
                        if (i10 >= 3) {
                            j jVarC = j.c();
                            String str = f4488r;
                            jVarC.b(str, "The file system on the device is in a bad state. WorkManager cannot access the app's internal data store.", e10);
                            IllegalStateException illegalStateException = new IllegalStateException("The file system on the device is in a bad state. WorkManager cannot access the app's internal data store.", e10);
                            g gVarD = this.f4491p.j().d();
                            if (gVarD == null) {
                                throw illegalStateException;
                            }
                            j.c().a(str, "Routing exception to the specified exception handler", illegalStateException);
                            gVarD.a(illegalStateException);
                        } else {
                            j.c().a(f4488r, String.format("Retrying after %s", Long.valueOf(((long) i10) * 300)), e10);
                            i(((long) this.f4492q) * 300);
                        }
                    }
                    j.c().a(f4488r, String.format("Retrying after %s", Long.valueOf(((long) i10) * 300)), e10);
                    i(((long) this.f4492q) * 300);
                }
            }
        } finally {
            this.f4491p.s();
        }
    }
}
