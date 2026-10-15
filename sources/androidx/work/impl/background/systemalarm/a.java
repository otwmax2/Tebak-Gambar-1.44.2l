package androidx.work.impl.background.systemalarm;

import android.app.AlarmManager;
import android.app.PendingIntent;
import android.content.Context;
import android.os.Build;
import androidx.work.impl.WorkDatabase;
import i1.j;
import j1.i;
import q1.g;
import q1.h;

/* JADX INFO: compiled from: Alarms.java */
/* JADX INFO: loaded from: classes.dex */
class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f4417a = j.f("Alarms");

    public static void a(Context context, i iVar, String str) {
        h hVarI = iVar.p().I();
        g gVarC = hVarI.c(str);
        if (gVarC != null) {
            b(context, str, gVarC.f33756b);
            j.c().a(f4417a, String.format("Removing SystemIdInfo for workSpecId (%s)", str), new Throwable[0]);
            hVarI.d(str);
        }
    }

    private static void b(Context context, String str, int i10) {
        AlarmManager alarmManager = (AlarmManager) context.getSystemService("alarm");
        PendingIntent service = PendingIntent.getService(context, i10, b.b(context, str), Build.VERSION.SDK_INT >= 23 ? 603979776 : 536870912);
        if (service == null || alarmManager == null) {
            return;
        }
        j.c().a(f4417a, String.format("Cancelling existing alarm with (workSpecId, systemId) (%s, %s)", str, Integer.valueOf(i10)), new Throwable[0]);
        alarmManager.cancel(service);
    }

    public static void c(Context context, i iVar, String str, long j10) {
        WorkDatabase workDatabaseP = iVar.p();
        h hVarI = workDatabaseP.I();
        g gVarC = hVarI.c(str);
        if (gVarC != null) {
            b(context, str, gVarC.f33756b);
            d(context, str, gVarC.f33756b, j10);
        } else {
            int iB = new r1.c(workDatabaseP).b();
            hVarI.b(new g(str, iB));
            d(context, str, iB, j10);
        }
    }

    private static void d(Context context, String str, int i10, long j10) {
        AlarmManager alarmManager = (AlarmManager) context.getSystemService("alarm");
        int i11 = Build.VERSION.SDK_INT;
        PendingIntent service = PendingIntent.getService(context, i10, b.b(context, str), i11 >= 23 ? 201326592 : 134217728);
        if (alarmManager != null) {
            if (i11 >= 19) {
                alarmManager.setExact(0, j10, service);
            } else {
                alarmManager.set(0, j10, service);
            }
        }
    }
}
