package androidx.work.impl;

import androidx.room.h0;
import androidx.room.i0;
import b1.g;
import b1.h;
import com.facebook.gamingservices.cloudgaming.internal.SDKConstants;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import q1.b;
import q1.e;
import q1.f;
import q1.h;
import q1.i;
import q1.k;
import q1.l;
import q1.n;
import q1.o;
import q1.q;
import q1.r;
import q1.t;
import q1.u;
import z0.c;
import z0.g;

/* JADX INFO: loaded from: classes.dex */
public final class WorkDatabase_Impl extends WorkDatabase {

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private volatile q f4390p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private volatile b f4391q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private volatile t f4392r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private volatile h f4393s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private volatile k f4394t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private volatile n f4395u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private volatile e f4396v;

    class a extends i0.a {
        a(int i10) {
            super(i10);
        }

        @Override // androidx.room.i0.a
        public void a(g gVar) {
            gVar.execSQL("CREATE TABLE IF NOT EXISTS `Dependency` (`work_spec_id` TEXT NOT NULL, `prerequisite_id` TEXT NOT NULL, PRIMARY KEY(`work_spec_id`, `prerequisite_id`), FOREIGN KEY(`work_spec_id`) REFERENCES `WorkSpec`(`id`) ON UPDATE CASCADE ON DELETE CASCADE , FOREIGN KEY(`prerequisite_id`) REFERENCES `WorkSpec`(`id`) ON UPDATE CASCADE ON DELETE CASCADE )");
            gVar.execSQL("CREATE INDEX IF NOT EXISTS `index_Dependency_work_spec_id` ON `Dependency` (`work_spec_id`)");
            gVar.execSQL("CREATE INDEX IF NOT EXISTS `index_Dependency_prerequisite_id` ON `Dependency` (`prerequisite_id`)");
            gVar.execSQL("CREATE TABLE IF NOT EXISTS `WorkSpec` (`id` TEXT NOT NULL, `state` INTEGER NOT NULL, `worker_class_name` TEXT NOT NULL, `input_merger_class_name` TEXT, `input` BLOB NOT NULL, `output` BLOB NOT NULL, `initial_delay` INTEGER NOT NULL, `interval_duration` INTEGER NOT NULL, `flex_duration` INTEGER NOT NULL, `run_attempt_count` INTEGER NOT NULL, `backoff_policy` INTEGER NOT NULL, `backoff_delay_duration` INTEGER NOT NULL, `period_start_time` INTEGER NOT NULL, `minimum_retention_duration` INTEGER NOT NULL, `schedule_requested_at` INTEGER NOT NULL, `run_in_foreground` INTEGER NOT NULL, `out_of_quota_policy` INTEGER NOT NULL, `required_network_type` INTEGER, `requires_charging` INTEGER NOT NULL, `requires_device_idle` INTEGER NOT NULL, `requires_battery_not_low` INTEGER NOT NULL, `requires_storage_not_low` INTEGER NOT NULL, `trigger_content_update_delay` INTEGER NOT NULL, `trigger_max_content_delay` INTEGER NOT NULL, `content_uri_triggers` BLOB, PRIMARY KEY(`id`))");
            gVar.execSQL("CREATE INDEX IF NOT EXISTS `index_WorkSpec_schedule_requested_at` ON `WorkSpec` (`schedule_requested_at`)");
            gVar.execSQL("CREATE INDEX IF NOT EXISTS `index_WorkSpec_period_start_time` ON `WorkSpec` (`period_start_time`)");
            gVar.execSQL("CREATE TABLE IF NOT EXISTS `WorkTag` (`tag` TEXT NOT NULL, `work_spec_id` TEXT NOT NULL, PRIMARY KEY(`tag`, `work_spec_id`), FOREIGN KEY(`work_spec_id`) REFERENCES `WorkSpec`(`id`) ON UPDATE CASCADE ON DELETE CASCADE )");
            gVar.execSQL("CREATE INDEX IF NOT EXISTS `index_WorkTag_work_spec_id` ON `WorkTag` (`work_spec_id`)");
            gVar.execSQL("CREATE TABLE IF NOT EXISTS `SystemIdInfo` (`work_spec_id` TEXT NOT NULL, `system_id` INTEGER NOT NULL, PRIMARY KEY(`work_spec_id`), FOREIGN KEY(`work_spec_id`) REFERENCES `WorkSpec`(`id`) ON UPDATE CASCADE ON DELETE CASCADE )");
            gVar.execSQL("CREATE TABLE IF NOT EXISTS `WorkName` (`name` TEXT NOT NULL, `work_spec_id` TEXT NOT NULL, PRIMARY KEY(`name`, `work_spec_id`), FOREIGN KEY(`work_spec_id`) REFERENCES `WorkSpec`(`id`) ON UPDATE CASCADE ON DELETE CASCADE )");
            gVar.execSQL("CREATE INDEX IF NOT EXISTS `index_WorkName_work_spec_id` ON `WorkName` (`work_spec_id`)");
            gVar.execSQL("CREATE TABLE IF NOT EXISTS `WorkProgress` (`work_spec_id` TEXT NOT NULL, `progress` BLOB NOT NULL, PRIMARY KEY(`work_spec_id`), FOREIGN KEY(`work_spec_id`) REFERENCES `WorkSpec`(`id`) ON UPDATE CASCADE ON DELETE CASCADE )");
            gVar.execSQL("CREATE TABLE IF NOT EXISTS `Preference` (`key` TEXT NOT NULL, `long_value` INTEGER, PRIMARY KEY(`key`))");
            gVar.execSQL("CREATE TABLE IF NOT EXISTS room_master_table (id INTEGER PRIMARY KEY,identity_hash TEXT)");
            gVar.execSQL("INSERT OR REPLACE INTO room_master_table (id,identity_hash) VALUES(42, 'c103703e120ae8cc73c9248622f3cd1e')");
        }

        @Override // androidx.room.i0.a
        public void b(g gVar) {
            gVar.execSQL("DROP TABLE IF EXISTS `Dependency`");
            gVar.execSQL("DROP TABLE IF EXISTS `WorkSpec`");
            gVar.execSQL("DROP TABLE IF EXISTS `WorkTag`");
            gVar.execSQL("DROP TABLE IF EXISTS `SystemIdInfo`");
            gVar.execSQL("DROP TABLE IF EXISTS `WorkName`");
            gVar.execSQL("DROP TABLE IF EXISTS `WorkProgress`");
            gVar.execSQL("DROP TABLE IF EXISTS `Preference`");
            if (((h0) WorkDatabase_Impl.this).f4063h != null) {
                int size = ((h0) WorkDatabase_Impl.this).f4063h.size();
                for (int i10 = 0; i10 < size; i10++) {
                    ((h0.b) ((h0) WorkDatabase_Impl.this).f4063h.get(i10)).b(gVar);
                }
            }
        }

        @Override // androidx.room.i0.a
        protected void c(g gVar) {
            if (((h0) WorkDatabase_Impl.this).f4063h != null) {
                int size = ((h0) WorkDatabase_Impl.this).f4063h.size();
                for (int i10 = 0; i10 < size; i10++) {
                    ((h0.b) ((h0) WorkDatabase_Impl.this).f4063h.get(i10)).a(gVar);
                }
            }
        }

        @Override // androidx.room.i0.a
        public void d(g gVar) {
            ((h0) WorkDatabase_Impl.this).f4056a = gVar;
            gVar.execSQL("PRAGMA foreign_keys = ON");
            WorkDatabase_Impl.this.t(gVar);
            if (((h0) WorkDatabase_Impl.this).f4063h != null) {
                int size = ((h0) WorkDatabase_Impl.this).f4063h.size();
                for (int i10 = 0; i10 < size; i10++) {
                    ((h0.b) ((h0) WorkDatabase_Impl.this).f4063h.get(i10)).c(gVar);
                }
            }
        }

        @Override // androidx.room.i0.a
        public void e(g gVar) {
        }

        @Override // androidx.room.i0.a
        public void f(g gVar) {
            c.a(gVar);
        }

        @Override // androidx.room.i0.a
        protected i0.b g(g gVar) {
            HashMap map = new HashMap(2);
            map.put("work_spec_id", new g.a("work_spec_id", "TEXT", true, 1, null, 1));
            map.put("prerequisite_id", new g.a("prerequisite_id", "TEXT", true, 2, null, 1));
            HashSet hashSet = new HashSet(2);
            hashSet.add(new g.b("WorkSpec", "CASCADE", "CASCADE", Arrays.asList("work_spec_id"), Arrays.asList("id")));
            hashSet.add(new g.b("WorkSpec", "CASCADE", "CASCADE", Arrays.asList("prerequisite_id"), Arrays.asList("id")));
            HashSet hashSet2 = new HashSet(2);
            hashSet2.add(new g.d("index_Dependency_work_spec_id", false, Arrays.asList("work_spec_id")));
            hashSet2.add(new g.d("index_Dependency_prerequisite_id", false, Arrays.asList("prerequisite_id")));
            z0.g gVar2 = new z0.g("Dependency", map, hashSet, hashSet2);
            z0.g gVarA = z0.g.a(gVar, "Dependency");
            if (!gVar2.equals(gVarA)) {
                return new i0.b(false, "Dependency(androidx.work.impl.model.Dependency).\n Expected:\n" + gVar2 + "\n Found:\n" + gVarA);
            }
            HashMap map2 = new HashMap(25);
            map2.put("id", new g.a("id", "TEXT", true, 1, null, 1));
            map2.put("state", new g.a("state", "INTEGER", true, 0, null, 1));
            map2.put("worker_class_name", new g.a("worker_class_name", "TEXT", true, 0, null, 1));
            map2.put("input_merger_class_name", new g.a("input_merger_class_name", "TEXT", false, 0, null, 1));
            map2.put("input", new g.a("input", "BLOB", true, 0, null, 1));
            map2.put("output", new g.a("output", "BLOB", true, 0, null, 1));
            map2.put("initial_delay", new g.a("initial_delay", "INTEGER", true, 0, null, 1));
            map2.put("interval_duration", new g.a("interval_duration", "INTEGER", true, 0, null, 1));
            map2.put("flex_duration", new g.a("flex_duration", "INTEGER", true, 0, null, 1));
            map2.put("run_attempt_count", new g.a("run_attempt_count", "INTEGER", true, 0, null, 1));
            map2.put("backoff_policy", new g.a("backoff_policy", "INTEGER", true, 0, null, 1));
            map2.put("backoff_delay_duration", new g.a("backoff_delay_duration", "INTEGER", true, 0, null, 1));
            map2.put("period_start_time", new g.a("period_start_time", "INTEGER", true, 0, null, 1));
            map2.put("minimum_retention_duration", new g.a("minimum_retention_duration", "INTEGER", true, 0, null, 1));
            map2.put("schedule_requested_at", new g.a("schedule_requested_at", "INTEGER", true, 0, null, 1));
            map2.put("run_in_foreground", new g.a("run_in_foreground", "INTEGER", true, 0, null, 1));
            map2.put("out_of_quota_policy", new g.a("out_of_quota_policy", "INTEGER", true, 0, null, 1));
            map2.put("required_network_type", new g.a("required_network_type", "INTEGER", false, 0, null, 1));
            map2.put("requires_charging", new g.a("requires_charging", "INTEGER", true, 0, null, 1));
            map2.put("requires_device_idle", new g.a("requires_device_idle", "INTEGER", true, 0, null, 1));
            map2.put("requires_battery_not_low", new g.a("requires_battery_not_low", "INTEGER", true, 0, null, 1));
            map2.put("requires_storage_not_low", new g.a("requires_storage_not_low", "INTEGER", true, 0, null, 1));
            map2.put("trigger_content_update_delay", new g.a("trigger_content_update_delay", "INTEGER", true, 0, null, 1));
            map2.put("trigger_max_content_delay", new g.a("trigger_max_content_delay", "INTEGER", true, 0, null, 1));
            map2.put("content_uri_triggers", new g.a("content_uri_triggers", "BLOB", false, 0, null, 1));
            HashSet hashSet3 = new HashSet(0);
            HashSet hashSet4 = new HashSet(2);
            hashSet4.add(new g.d("index_WorkSpec_schedule_requested_at", false, Arrays.asList("schedule_requested_at")));
            hashSet4.add(new g.d("index_WorkSpec_period_start_time", false, Arrays.asList("period_start_time")));
            z0.g gVar3 = new z0.g("WorkSpec", map2, hashSet3, hashSet4);
            z0.g gVarA2 = z0.g.a(gVar, "WorkSpec");
            if (!gVar3.equals(gVarA2)) {
                return new i0.b(false, "WorkSpec(androidx.work.impl.model.WorkSpec).\n Expected:\n" + gVar3 + "\n Found:\n" + gVarA2);
            }
            HashMap map3 = new HashMap(2);
            map3.put("tag", new g.a("tag", "TEXT", true, 1, null, 1));
            map3.put("work_spec_id", new g.a("work_spec_id", "TEXT", true, 2, null, 1));
            HashSet hashSet5 = new HashSet(1);
            hashSet5.add(new g.b("WorkSpec", "CASCADE", "CASCADE", Arrays.asList("work_spec_id"), Arrays.asList("id")));
            HashSet hashSet6 = new HashSet(1);
            hashSet6.add(new g.d("index_WorkTag_work_spec_id", false, Arrays.asList("work_spec_id")));
            z0.g gVar4 = new z0.g("WorkTag", map3, hashSet5, hashSet6);
            z0.g gVarA3 = z0.g.a(gVar, "WorkTag");
            if (!gVar4.equals(gVarA3)) {
                return new i0.b(false, "WorkTag(androidx.work.impl.model.WorkTag).\n Expected:\n" + gVar4 + "\n Found:\n" + gVarA3);
            }
            HashMap map4 = new HashMap(2);
            map4.put("work_spec_id", new g.a("work_spec_id", "TEXT", true, 1, null, 1));
            map4.put("system_id", new g.a("system_id", "INTEGER", true, 0, null, 1));
            HashSet hashSet7 = new HashSet(1);
            hashSet7.add(new g.b("WorkSpec", "CASCADE", "CASCADE", Arrays.asList("work_spec_id"), Arrays.asList("id")));
            z0.g gVar5 = new z0.g("SystemIdInfo", map4, hashSet7, new HashSet(0));
            z0.g gVarA4 = z0.g.a(gVar, "SystemIdInfo");
            if (!gVar5.equals(gVarA4)) {
                return new i0.b(false, "SystemIdInfo(androidx.work.impl.model.SystemIdInfo).\n Expected:\n" + gVar5 + "\n Found:\n" + gVarA4);
            }
            HashMap map5 = new HashMap(2);
            map5.put("name", new g.a("name", "TEXT", true, 1, null, 1));
            map5.put("work_spec_id", new g.a("work_spec_id", "TEXT", true, 2, null, 1));
            HashSet hashSet8 = new HashSet(1);
            hashSet8.add(new g.b("WorkSpec", "CASCADE", "CASCADE", Arrays.asList("work_spec_id"), Arrays.asList("id")));
            HashSet hashSet9 = new HashSet(1);
            hashSet9.add(new g.d("index_WorkName_work_spec_id", false, Arrays.asList("work_spec_id")));
            z0.g gVar6 = new z0.g("WorkName", map5, hashSet8, hashSet9);
            z0.g gVarA5 = z0.g.a(gVar, "WorkName");
            if (!gVar6.equals(gVarA5)) {
                return new i0.b(false, "WorkName(androidx.work.impl.model.WorkName).\n Expected:\n" + gVar6 + "\n Found:\n" + gVarA5);
            }
            HashMap map6 = new HashMap(2);
            map6.put("work_spec_id", new g.a("work_spec_id", "TEXT", true, 1, null, 1));
            map6.put("progress", new g.a("progress", "BLOB", true, 0, null, 1));
            HashSet hashSet10 = new HashSet(1);
            hashSet10.add(new g.b("WorkSpec", "CASCADE", "CASCADE", Arrays.asList("work_spec_id"), Arrays.asList("id")));
            z0.g gVar7 = new z0.g("WorkProgress", map6, hashSet10, new HashSet(0));
            z0.g gVarA6 = z0.g.a(gVar, "WorkProgress");
            if (!gVar7.equals(gVarA6)) {
                return new i0.b(false, "WorkProgress(androidx.work.impl.model.WorkProgress).\n Expected:\n" + gVar7 + "\n Found:\n" + gVarA6);
            }
            HashMap map7 = new HashMap(2);
            map7.put(SDKConstants.PARAM_KEY, new g.a(SDKConstants.PARAM_KEY, "TEXT", true, 1, null, 1));
            map7.put("long_value", new g.a("long_value", "INTEGER", false, 0, null, 1));
            z0.g gVar8 = new z0.g("Preference", map7, new HashSet(0), new HashSet(0));
            z0.g gVarA7 = z0.g.a(gVar, "Preference");
            if (gVar8.equals(gVarA7)) {
                return new i0.b(true, null);
            }
            return new i0.b(false, "Preference(androidx.work.impl.model.Preference).\n Expected:\n" + gVar8 + "\n Found:\n" + gVarA7);
        }
    }

    @Override // androidx.work.impl.WorkDatabase
    public b D() {
        b bVar;
        if (this.f4391q != null) {
            return this.f4391q;
        }
        synchronized (this) {
            if (this.f4391q == null) {
                this.f4391q = new q1.c(this);
            }
            bVar = this.f4391q;
        }
        return bVar;
    }

    @Override // androidx.work.impl.WorkDatabase
    public e H() {
        e eVar;
        if (this.f4396v != null) {
            return this.f4396v;
        }
        synchronized (this) {
            if (this.f4396v == null) {
                this.f4396v = new f(this);
            }
            eVar = this.f4396v;
        }
        return eVar;
    }

    @Override // androidx.work.impl.WorkDatabase
    public h I() {
        h hVar;
        if (this.f4393s != null) {
            return this.f4393s;
        }
        synchronized (this) {
            if (this.f4393s == null) {
                this.f4393s = new i(this);
            }
            hVar = this.f4393s;
        }
        return hVar;
    }

    @Override // androidx.work.impl.WorkDatabase
    public k J() {
        k kVar;
        if (this.f4394t != null) {
            return this.f4394t;
        }
        synchronized (this) {
            if (this.f4394t == null) {
                this.f4394t = new l(this);
            }
            kVar = this.f4394t;
        }
        return kVar;
    }

    @Override // androidx.work.impl.WorkDatabase
    public n K() {
        n nVar;
        if (this.f4395u != null) {
            return this.f4395u;
        }
        synchronized (this) {
            if (this.f4395u == null) {
                this.f4395u = new o(this);
            }
            nVar = this.f4395u;
        }
        return nVar;
    }

    @Override // androidx.work.impl.WorkDatabase
    public q L() {
        q qVar;
        if (this.f4390p != null) {
            return this.f4390p;
        }
        synchronized (this) {
            if (this.f4390p == null) {
                this.f4390p = new r(this);
            }
            qVar = this.f4390p;
        }
        return qVar;
    }

    @Override // androidx.work.impl.WorkDatabase
    public t M() {
        t tVar;
        if (this.f4392r != null) {
            return this.f4392r;
        }
        synchronized (this) {
            if (this.f4392r == null) {
                this.f4392r = new u(this);
            }
            tVar = this.f4392r;
        }
        return tVar;
    }

    @Override // androidx.room.h0
    protected androidx.room.o g() {
        return new androidx.room.o(this, new HashMap(0), new HashMap(0), "Dependency", "WorkSpec", "WorkTag", "SystemIdInfo", "WorkName", "WorkProgress", "Preference");
    }

    @Override // androidx.room.h0
    protected b1.h h(androidx.room.i iVar) {
        return iVar.f4100a.a(h.b.a(iVar.f4101b).c(iVar.f4102c).b(new i0(iVar, new a(12), "c103703e120ae8cc73c9248622f3cd1e", "49f946663a8deb7054212b8adda248c6")).a());
    }
}
