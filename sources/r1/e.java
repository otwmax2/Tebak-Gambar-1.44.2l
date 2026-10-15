package r1;

import android.content.Context;
import android.content.SharedPreferences;
import androidx.work.impl.WorkDatabase;

/* JADX INFO: compiled from: PreferenceUtils.java */
/* JADX INFO: loaded from: classes.dex */
public class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final WorkDatabase f34167a;

    public e(WorkDatabase workDatabase) {
        this.f34167a = workDatabase;
    }

    public static void b(Context context, b1.g gVar) {
        SharedPreferences sharedPreferences = context.getSharedPreferences("androidx.work.util.preferences", 0);
        if (sharedPreferences.contains("reschedule_needed") || sharedPreferences.contains("last_cancel_all_time_ms")) {
            long j10 = sharedPreferences.getLong("last_cancel_all_time_ms", 0L);
            long j11 = sharedPreferences.getBoolean("reschedule_needed", false) ? 1L : 0L;
            gVar.V();
            try {
                gVar.x1("INSERT OR REPLACE INTO `Preference` (`key`, `long_value`) VALUES (@key, @long_value)", new Object[]{"last_cancel_all_time_ms", Long.valueOf(j10)});
                gVar.x1("INSERT OR REPLACE INTO `Preference` (`key`, `long_value`) VALUES (@key, @long_value)", new Object[]{"reschedule_needed", Long.valueOf(j11)});
                sharedPreferences.edit().clear().apply();
                gVar.u1();
            } finally {
                gVar.X1();
            }
        }
    }

    public boolean a() {
        Long lB = this.f34167a.H().b("reschedule_needed");
        return lB != null && lB.longValue() == 1;
    }

    public void c(boolean z10) {
        this.f34167a.H().a(new q1.d("reschedule_needed", z10));
    }
}
