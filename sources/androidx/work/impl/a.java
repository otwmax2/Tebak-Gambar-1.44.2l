package androidx.work.impl;

import android.content.Context;
import android.os.Build;

/* JADX INFO: compiled from: WorkDatabaseMigrations.java */
/* JADX INFO: loaded from: classes.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static y0.b f4398a = new C0073a(1, 2);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static y0.b f4399b = new b(3, 4);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static y0.b f4400c = new c(4, 5);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static y0.b f4401d = new d(6, 7);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static y0.b f4402e = new e(7, 8);

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static y0.b f4403f = new f(8, 9);

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static y0.b f4404g = new g(11, 12);

    /* JADX INFO: renamed from: androidx.work.impl.a$a, reason: collision with other inner class name */
    /* JADX INFO: compiled from: WorkDatabaseMigrations.java */
    class C0073a extends y0.b {
        C0073a(int i10, int i11) {
            super(i10, i11);
        }

        @Override // y0.b
        public void a(b1.g gVar) {
            gVar.execSQL("CREATE TABLE IF NOT EXISTS `SystemIdInfo` (`work_spec_id` TEXT NOT NULL, `system_id` INTEGER NOT NULL, PRIMARY KEY(`work_spec_id`), FOREIGN KEY(`work_spec_id`) REFERENCES `WorkSpec`(`id`) ON UPDATE CASCADE ON DELETE CASCADE )");
            gVar.execSQL("INSERT INTO SystemIdInfo(work_spec_id, system_id) SELECT work_spec_id, alarm_id AS system_id FROM alarmInfo");
            gVar.execSQL("DROP TABLE IF EXISTS alarmInfo");
            gVar.execSQL("INSERT OR IGNORE INTO worktag(tag, work_spec_id) SELECT worker_class_name AS tag, id AS work_spec_id FROM workspec");
        }
    }

    /* JADX INFO: compiled from: WorkDatabaseMigrations.java */
    class b extends y0.b {
        b(int i10, int i11) {
            super(i10, i11);
        }

        @Override // y0.b
        public void a(b1.g gVar) {
            if (Build.VERSION.SDK_INT >= 23) {
                gVar.execSQL("UPDATE workspec SET schedule_requested_at=0 WHERE state NOT IN (2, 3, 5) AND schedule_requested_at=-1 AND interval_duration<>0");
            }
        }
    }

    /* JADX INFO: compiled from: WorkDatabaseMigrations.java */
    class c extends y0.b {
        c(int i10, int i11) {
            super(i10, i11);
        }

        @Override // y0.b
        public void a(b1.g gVar) {
            gVar.execSQL("ALTER TABLE workspec ADD COLUMN `trigger_content_update_delay` INTEGER NOT NULL DEFAULT -1");
            gVar.execSQL("ALTER TABLE workspec ADD COLUMN `trigger_max_content_delay` INTEGER NOT NULL DEFAULT -1");
        }
    }

    /* JADX INFO: compiled from: WorkDatabaseMigrations.java */
    class d extends y0.b {
        d(int i10, int i11) {
            super(i10, i11);
        }

        @Override // y0.b
        public void a(b1.g gVar) {
            gVar.execSQL("CREATE TABLE IF NOT EXISTS `WorkProgress` (`work_spec_id` TEXT NOT NULL, `progress` BLOB NOT NULL, PRIMARY KEY(`work_spec_id`), FOREIGN KEY(`work_spec_id`) REFERENCES `WorkSpec`(`id`) ON UPDATE CASCADE ON DELETE CASCADE )");
        }
    }

    /* JADX INFO: compiled from: WorkDatabaseMigrations.java */
    class e extends y0.b {
        e(int i10, int i11) {
            super(i10, i11);
        }

        @Override // y0.b
        public void a(b1.g gVar) {
            gVar.execSQL("CREATE INDEX IF NOT EXISTS `index_WorkSpec_period_start_time` ON `workspec` (`period_start_time`)");
        }
    }

    /* JADX INFO: compiled from: WorkDatabaseMigrations.java */
    class f extends y0.b {
        f(int i10, int i11) {
            super(i10, i11);
        }

        @Override // y0.b
        public void a(b1.g gVar) {
            gVar.execSQL("ALTER TABLE workspec ADD COLUMN `run_in_foreground` INTEGER NOT NULL DEFAULT 0");
        }
    }

    /* JADX INFO: compiled from: WorkDatabaseMigrations.java */
    class g extends y0.b {
        g(int i10, int i11) {
            super(i10, i11);
        }

        @Override // y0.b
        public void a(b1.g gVar) {
            gVar.execSQL("ALTER TABLE workspec ADD COLUMN `out_of_quota_policy` INTEGER NOT NULL DEFAULT 0");
        }
    }

    /* JADX INFO: compiled from: WorkDatabaseMigrations.java */
    public static class h extends y0.b {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final Context f4405c;

        public h(Context context, int i10, int i11) {
            super(i10, i11);
            this.f4405c = context;
        }

        @Override // y0.b
        public void a(b1.g gVar) {
            if (this.f36566b >= 10) {
                gVar.x1("INSERT OR REPLACE INTO `Preference` (`key`, `long_value`) VALUES (@key, @long_value)", new Object[]{"reschedule_needed", 1});
            } else {
                this.f4405c.getSharedPreferences("androidx.work.util.preferences", 0).edit().putBoolean("reschedule_needed", true).apply();
            }
        }
    }

    /* JADX INFO: compiled from: WorkDatabaseMigrations.java */
    public static class i extends y0.b {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final Context f4406c;

        public i(Context context) {
            super(9, 10);
            this.f4406c = context;
        }

        @Override // y0.b
        public void a(b1.g gVar) {
            gVar.execSQL("CREATE TABLE IF NOT EXISTS `Preference` (`key` TEXT NOT NULL, `long_value` INTEGER, PRIMARY KEY(`key`))");
            r1.e.b(this.f4406c, gVar);
            r1.c.a(this.f4406c, gVar);
        }
    }
}
