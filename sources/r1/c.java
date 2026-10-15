package r1;

import android.content.Context;
import android.content.SharedPreferences;
import androidx.work.impl.WorkDatabase;

/* JADX INFO: compiled from: IdGenerator.java */
/* JADX INFO: loaded from: classes.dex */
public class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final WorkDatabase f34165a;

    public c(WorkDatabase workDatabase) {
        this.f34165a = workDatabase;
    }

    public static void a(Context context, b1.g gVar) {
        SharedPreferences sharedPreferences = context.getSharedPreferences("androidx.work.util.id", 0);
        if (sharedPreferences.contains("next_job_scheduler_id") || sharedPreferences.contains("next_job_scheduler_id")) {
            int i10 = sharedPreferences.getInt("next_job_scheduler_id", 0);
            int i11 = sharedPreferences.getInt("next_alarm_manager_id", 0);
            gVar.V();
            try {
                gVar.x1("INSERT OR REPLACE INTO `Preference` (`key`, `long_value`) VALUES (@key, @long_value)", new Object[]{"next_job_scheduler_id", Integer.valueOf(i10)});
                gVar.x1("INSERT OR REPLACE INTO `Preference` (`key`, `long_value`) VALUES (@key, @long_value)", new Object[]{"next_alarm_manager_id", Integer.valueOf(i11)});
                sharedPreferences.edit().clear().apply();
                gVar.u1();
            } finally {
                gVar.X1();
            }
        }
    }

    private int c(String str) {
        this.f34165a.e();
        try {
            Long lB = this.f34165a.H().b(str);
            int i10 = 0;
            int iIntValue = lB != null ? lB.intValue() : 0;
            if (iIntValue != Integer.MAX_VALUE) {
                i10 = iIntValue + 1;
            }
            e(str, i10);
            this.f34165a.A();
            return iIntValue;
        } finally {
            this.f34165a.i();
        }
    }

    private void e(String str, int i10) {
        this.f34165a.H().a(new q1.d(str, i10));
    }

    public int b() {
        int iC;
        synchronized (c.class) {
            iC = c("next_alarm_manager_id");
        }
        return iC;
    }

    public int d(int i10, int i11) {
        synchronized (c.class) {
            int iC = c("next_job_scheduler_id");
            if (iC < i10 || iC > i11) {
                e("next_job_scheduler_id", i10 + 1);
            } else {
                i10 = iC;
            }
        }
        return i10;
    }
}
