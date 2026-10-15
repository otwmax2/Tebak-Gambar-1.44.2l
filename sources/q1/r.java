package q1;

import android.database.Cursor;
import androidx.room.h0;
import i1.s;
import java.util.ArrayList;
import java.util.List;
import q1.p;

/* JADX INFO: compiled from: WorkSpecDao_Impl.java */
/* JADX INFO: loaded from: classes.dex */
public final class r implements q {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final h0 f33804a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final x0.g<p> f33805b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final x0.l f33806c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final x0.l f33807d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final x0.l f33808e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final x0.l f33809f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final x0.l f33810g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final x0.l f33811h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final x0.l f33812i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final x0.l f33813j;

    /* JADX INFO: compiled from: WorkSpecDao_Impl.java */
    class a extends x0.g<p> {
        a(h0 h0Var) {
            super(h0Var);
        }

        @Override // x0.l
        public String d() {
            return "INSERT OR IGNORE INTO `WorkSpec` (`id`,`state`,`worker_class_name`,`input_merger_class_name`,`input`,`output`,`initial_delay`,`interval_duration`,`flex_duration`,`run_attempt_count`,`backoff_policy`,`backoff_delay_duration`,`period_start_time`,`minimum_retention_duration`,`schedule_requested_at`,`run_in_foreground`,`out_of_quota_policy`,`required_network_type`,`requires_charging`,`requires_device_idle`,`requires_battery_not_low`,`requires_storage_not_low`,`trigger_content_update_delay`,`trigger_max_content_delay`,`content_uri_triggers`) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
        }

        @Override // x0.g
        /* JADX INFO: renamed from: j, reason: merged with bridge method [inline-methods] */
        public void g(b1.k kVar, p pVar) throws Throwable {
            String str = pVar.f33778a;
            if (str == null) {
                kVar.z2(1);
            } else {
                kVar.k0(1, str);
            }
            kVar.s1(2, v.j(pVar.f33779b));
            String str2 = pVar.f33780c;
            if (str2 == null) {
                kVar.z2(3);
            } else {
                kVar.k0(3, str2);
            }
            String str3 = pVar.f33781d;
            if (str3 == null) {
                kVar.z2(4);
            } else {
                kVar.k0(4, str3);
            }
            byte[] bArrK = androidx.work.b.k(pVar.f33782e);
            if (bArrK == null) {
                kVar.z2(5);
            } else {
                kVar.D1(5, bArrK);
            }
            byte[] bArrK2 = androidx.work.b.k(pVar.f33783f);
            if (bArrK2 == null) {
                kVar.z2(6);
            } else {
                kVar.D1(6, bArrK2);
            }
            kVar.s1(7, pVar.f33784g);
            kVar.s1(8, pVar.f33785h);
            kVar.s1(9, pVar.f33786i);
            kVar.s1(10, pVar.f33788k);
            kVar.s1(11, v.a(pVar.f33789l));
            kVar.s1(12, pVar.f33790m);
            kVar.s1(13, pVar.f33791n);
            kVar.s1(14, pVar.f33792o);
            kVar.s1(15, pVar.f33793p);
            kVar.s1(16, pVar.f33794q ? 1L : 0L);
            kVar.s1(17, v.i(pVar.f33795r));
            i1.b bVar = pVar.f33787j;
            if (bVar == null) {
                kVar.z2(18);
                kVar.z2(19);
                kVar.z2(20);
                kVar.z2(21);
                kVar.z2(22);
                kVar.z2(23);
                kVar.z2(24);
                kVar.z2(25);
                return;
            }
            kVar.s1(18, v.h(bVar.b()));
            kVar.s1(19, bVar.g() ? 1L : 0L);
            kVar.s1(20, bVar.h() ? 1L : 0L);
            kVar.s1(21, bVar.f() ? 1L : 0L);
            kVar.s1(22, bVar.i() ? 1L : 0L);
            kVar.s1(23, bVar.c());
            kVar.s1(24, bVar.d());
            byte[] bArrC = v.c(bVar.a());
            if (bArrC == null) {
                kVar.z2(25);
            } else {
                kVar.D1(25, bArrC);
            }
        }
    }

    /* JADX INFO: compiled from: WorkSpecDao_Impl.java */
    class b extends x0.l {
        b(h0 h0Var) {
            super(h0Var);
        }

        @Override // x0.l
        public String d() {
            return "DELETE FROM workspec WHERE id=?";
        }
    }

    /* JADX INFO: compiled from: WorkSpecDao_Impl.java */
    class c extends x0.l {
        c(h0 h0Var) {
            super(h0Var);
        }

        @Override // x0.l
        public String d() {
            return "UPDATE workspec SET output=? WHERE id=?";
        }
    }

    /* JADX INFO: compiled from: WorkSpecDao_Impl.java */
    class d extends x0.l {
        d(h0 h0Var) {
            super(h0Var);
        }

        @Override // x0.l
        public String d() {
            return "UPDATE workspec SET period_start_time=? WHERE id=?";
        }
    }

    /* JADX INFO: compiled from: WorkSpecDao_Impl.java */
    class e extends x0.l {
        e(h0 h0Var) {
            super(h0Var);
        }

        @Override // x0.l
        public String d() {
            return "UPDATE workspec SET run_attempt_count=run_attempt_count+1 WHERE id=?";
        }
    }

    /* JADX INFO: compiled from: WorkSpecDao_Impl.java */
    class f extends x0.l {
        f(h0 h0Var) {
            super(h0Var);
        }

        @Override // x0.l
        public String d() {
            return "UPDATE workspec SET run_attempt_count=0 WHERE id=?";
        }
    }

    /* JADX INFO: compiled from: WorkSpecDao_Impl.java */
    class g extends x0.l {
        g(h0 h0Var) {
            super(h0Var);
        }

        @Override // x0.l
        public String d() {
            return "UPDATE workspec SET schedule_requested_at=? WHERE id=?";
        }
    }

    /* JADX INFO: compiled from: WorkSpecDao_Impl.java */
    class h extends x0.l {
        h(h0 h0Var) {
            super(h0Var);
        }

        @Override // x0.l
        public String d() {
            return "UPDATE workspec SET schedule_requested_at=-1 WHERE state NOT IN (2, 3, 5)";
        }
    }

    /* JADX INFO: compiled from: WorkSpecDao_Impl.java */
    class i extends x0.l {
        i(h0 h0Var) {
            super(h0Var);
        }

        @Override // x0.l
        public String d() {
            return "DELETE FROM workspec WHERE state IN (2, 3, 5) AND (SELECT COUNT(*)=0 FROM dependency WHERE     prerequisite_id=id AND     work_spec_id NOT IN         (SELECT id FROM workspec WHERE state IN (2, 3, 5)))";
        }
    }

    public r(h0 h0Var) {
        this.f33804a = h0Var;
        this.f33805b = new a(h0Var);
        this.f33806c = new b(h0Var);
        this.f33807d = new c(h0Var);
        this.f33808e = new d(h0Var);
        this.f33809f = new e(h0Var);
        this.f33810g = new f(h0Var);
        this.f33811h = new g(h0Var);
        this.f33812i = new h(h0Var);
        this.f33813j = new i(h0Var);
    }

    @Override // q1.q
    public void a(String str) {
        this.f33804a.d();
        b1.k kVarA = this.f33806c.a();
        if (str == null) {
            kVarA.z2(1);
        } else {
            kVarA.k0(1, str);
        }
        this.f33804a.e();
        try {
            kVarA.u0();
            this.f33804a.A();
        } finally {
            this.f33804a.i();
            this.f33806c.f(kVarA);
        }
    }

    @Override // q1.q
    public void b(p pVar) {
        this.f33804a.d();
        this.f33804a.e();
        try {
            this.f33805b.i(pVar);
            this.f33804a.A();
        } finally {
            this.f33804a.i();
        }
    }

    @Override // q1.q
    public int c(String str, long j10) {
        this.f33804a.d();
        b1.k kVarA = this.f33811h.a();
        kVarA.s1(1, j10);
        if (str == null) {
            kVarA.z2(2);
        } else {
            kVarA.k0(2, str);
        }
        this.f33804a.e();
        try {
            int iU0 = kVarA.u0();
            this.f33804a.A();
            return iU0;
        } finally {
            this.f33804a.i();
            this.f33811h.f(kVarA);
        }
    }

    @Override // q1.q
    public List<p.b> d(String str) {
        x0.k kVarD = x0.k.d("SELECT id, state FROM workspec WHERE id IN (SELECT work_spec_id FROM workname WHERE name=?)", 1);
        if (str == null) {
            kVarD.z2(1);
        } else {
            kVarD.k0(1, str);
        }
        this.f33804a.d();
        Cursor cursorB = z0.c.b(this.f33804a, kVarD, false, null);
        try {
            int iE = z0.b.e(cursorB, "id");
            int iE2 = z0.b.e(cursorB, "state");
            ArrayList arrayList = new ArrayList(cursorB.getCount());
            while (cursorB.moveToNext()) {
                p.b bVar = new p.b();
                bVar.f33796a = cursorB.getString(iE);
                bVar.f33797b = v.g(cursorB.getInt(iE2));
                arrayList.add(bVar);
            }
            return arrayList;
        } finally {
            cursorB.close();
            kVarD.g();
        }
    }

    @Override // q1.q
    public List<p> e(long j10) throws Throwable {
        x0.k kVar;
        x0.k kVarD = x0.k.d("SELECT `required_network_type`, `requires_charging`, `requires_device_idle`, `requires_battery_not_low`, `requires_storage_not_low`, `trigger_content_update_delay`, `trigger_max_content_delay`, `content_uri_triggers`, `WorkSpec`.`id` AS `id`, `WorkSpec`.`state` AS `state`, `WorkSpec`.`worker_class_name` AS `worker_class_name`, `WorkSpec`.`input_merger_class_name` AS `input_merger_class_name`, `WorkSpec`.`input` AS `input`, `WorkSpec`.`output` AS `output`, `WorkSpec`.`initial_delay` AS `initial_delay`, `WorkSpec`.`interval_duration` AS `interval_duration`, `WorkSpec`.`flex_duration` AS `flex_duration`, `WorkSpec`.`run_attempt_count` AS `run_attempt_count`, `WorkSpec`.`backoff_policy` AS `backoff_policy`, `WorkSpec`.`backoff_delay_duration` AS `backoff_delay_duration`, `WorkSpec`.`period_start_time` AS `period_start_time`, `WorkSpec`.`minimum_retention_duration` AS `minimum_retention_duration`, `WorkSpec`.`schedule_requested_at` AS `schedule_requested_at`, `WorkSpec`.`run_in_foreground` AS `run_in_foreground`, `WorkSpec`.`out_of_quota_policy` AS `out_of_quota_policy` FROM workspec WHERE period_start_time >= ? AND state IN (2, 3, 5) ORDER BY period_start_time DESC", 1);
        kVarD.s1(1, j10);
        this.f33804a.d();
        Cursor cursorB = z0.c.b(this.f33804a, kVarD, false, null);
        try {
            int iE = z0.b.e(cursorB, "required_network_type");
            int iE2 = z0.b.e(cursorB, "requires_charging");
            int iE3 = z0.b.e(cursorB, "requires_device_idle");
            int iE4 = z0.b.e(cursorB, "requires_battery_not_low");
            int iE5 = z0.b.e(cursorB, "requires_storage_not_low");
            int iE6 = z0.b.e(cursorB, "trigger_content_update_delay");
            int iE7 = z0.b.e(cursorB, "trigger_max_content_delay");
            int iE8 = z0.b.e(cursorB, "content_uri_triggers");
            int iE9 = z0.b.e(cursorB, "id");
            int iE10 = z0.b.e(cursorB, "state");
            int iE11 = z0.b.e(cursorB, "worker_class_name");
            int iE12 = z0.b.e(cursorB, "input_merger_class_name");
            int iE13 = z0.b.e(cursorB, "input");
            int iE14 = z0.b.e(cursorB, "output");
            kVar = kVarD;
            try {
                int iE15 = z0.b.e(cursorB, "initial_delay");
                int iE16 = z0.b.e(cursorB, "interval_duration");
                int iE17 = z0.b.e(cursorB, "flex_duration");
                int iE18 = z0.b.e(cursorB, "run_attempt_count");
                int iE19 = z0.b.e(cursorB, "backoff_policy");
                int iE20 = z0.b.e(cursorB, "backoff_delay_duration");
                int iE21 = z0.b.e(cursorB, "period_start_time");
                int iE22 = z0.b.e(cursorB, "minimum_retention_duration");
                int iE23 = z0.b.e(cursorB, "schedule_requested_at");
                int iE24 = z0.b.e(cursorB, "run_in_foreground");
                int iE25 = z0.b.e(cursorB, "out_of_quota_policy");
                int i10 = iE14;
                ArrayList arrayList = new ArrayList(cursorB.getCount());
                while (cursorB.moveToNext()) {
                    String string = cursorB.getString(iE9);
                    int i11 = iE9;
                    String string2 = cursorB.getString(iE11);
                    int i12 = iE11;
                    i1.b bVar = new i1.b();
                    int i13 = iE;
                    bVar.k(v.e(cursorB.getInt(iE)));
                    bVar.m(cursorB.getInt(iE2) != 0);
                    bVar.n(cursorB.getInt(iE3) != 0);
                    bVar.l(cursorB.getInt(iE4) != 0);
                    bVar.o(cursorB.getInt(iE5) != 0);
                    int i14 = iE2;
                    int i15 = iE3;
                    bVar.p(cursorB.getLong(iE6));
                    bVar.q(cursorB.getLong(iE7));
                    bVar.j(v.b(cursorB.getBlob(iE8)));
                    p pVar = new p(string, string2);
                    pVar.f33779b = v.g(cursorB.getInt(iE10));
                    pVar.f33781d = cursorB.getString(iE12);
                    pVar.f33782e = androidx.work.b.g(cursorB.getBlob(iE13));
                    int i16 = i10;
                    pVar.f33783f = androidx.work.b.g(cursorB.getBlob(i16));
                    int i17 = iE15;
                    i10 = i16;
                    pVar.f33784g = cursorB.getLong(i17);
                    int i18 = iE12;
                    int i19 = iE16;
                    pVar.f33785h = cursorB.getLong(i19);
                    int i20 = iE4;
                    int i21 = iE17;
                    pVar.f33786i = cursorB.getLong(i21);
                    int i22 = iE18;
                    pVar.f33788k = cursorB.getInt(i22);
                    int i23 = iE19;
                    pVar.f33789l = v.d(cursorB.getInt(i23));
                    iE17 = i21;
                    int i24 = iE20;
                    pVar.f33790m = cursorB.getLong(i24);
                    int i25 = iE21;
                    pVar.f33791n = cursorB.getLong(i25);
                    iE21 = i25;
                    int i26 = iE22;
                    pVar.f33792o = cursorB.getLong(i26);
                    int i27 = iE23;
                    pVar.f33793p = cursorB.getLong(i27);
                    int i28 = iE24;
                    pVar.f33794q = cursorB.getInt(i28) != 0;
                    int i29 = iE25;
                    pVar.f33795r = v.f(cursorB.getInt(i29));
                    pVar.f33787j = bVar;
                    arrayList.add(pVar);
                    iE2 = i14;
                    iE25 = i29;
                    iE12 = i18;
                    iE15 = i17;
                    iE16 = i19;
                    iE18 = i22;
                    iE23 = i27;
                    iE9 = i11;
                    iE11 = i12;
                    iE = i13;
                    iE24 = i28;
                    iE22 = i26;
                    iE3 = i15;
                    iE20 = i24;
                    iE4 = i20;
                    iE19 = i23;
                }
                cursorB.close();
                kVar.g();
                return arrayList;
            } catch (Throwable th) {
                th = th;
                cursorB.close();
                kVar.g();
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
            kVar = kVarD;
        }
    }

    @Override // q1.q
    public List<p> f(int i10) throws Throwable {
        x0.k kVar;
        x0.k kVarD = x0.k.d("SELECT `required_network_type`, `requires_charging`, `requires_device_idle`, `requires_battery_not_low`, `requires_storage_not_low`, `trigger_content_update_delay`, `trigger_max_content_delay`, `content_uri_triggers`, `WorkSpec`.`id` AS `id`, `WorkSpec`.`state` AS `state`, `WorkSpec`.`worker_class_name` AS `worker_class_name`, `WorkSpec`.`input_merger_class_name` AS `input_merger_class_name`, `WorkSpec`.`input` AS `input`, `WorkSpec`.`output` AS `output`, `WorkSpec`.`initial_delay` AS `initial_delay`, `WorkSpec`.`interval_duration` AS `interval_duration`, `WorkSpec`.`flex_duration` AS `flex_duration`, `WorkSpec`.`run_attempt_count` AS `run_attempt_count`, `WorkSpec`.`backoff_policy` AS `backoff_policy`, `WorkSpec`.`backoff_delay_duration` AS `backoff_delay_duration`, `WorkSpec`.`period_start_time` AS `period_start_time`, `WorkSpec`.`minimum_retention_duration` AS `minimum_retention_duration`, `WorkSpec`.`schedule_requested_at` AS `schedule_requested_at`, `WorkSpec`.`run_in_foreground` AS `run_in_foreground`, `WorkSpec`.`out_of_quota_policy` AS `out_of_quota_policy` FROM workspec WHERE state=0 AND schedule_requested_at=-1 ORDER BY period_start_time LIMIT (SELECT MAX(?-COUNT(*), 0) FROM workspec WHERE schedule_requested_at<>-1 AND state NOT IN (2, 3, 5))", 1);
        kVarD.s1(1, i10);
        this.f33804a.d();
        Cursor cursorB = z0.c.b(this.f33804a, kVarD, false, null);
        try {
            int iE = z0.b.e(cursorB, "required_network_type");
            int iE2 = z0.b.e(cursorB, "requires_charging");
            int iE3 = z0.b.e(cursorB, "requires_device_idle");
            int iE4 = z0.b.e(cursorB, "requires_battery_not_low");
            int iE5 = z0.b.e(cursorB, "requires_storage_not_low");
            int iE6 = z0.b.e(cursorB, "trigger_content_update_delay");
            int iE7 = z0.b.e(cursorB, "trigger_max_content_delay");
            int iE8 = z0.b.e(cursorB, "content_uri_triggers");
            int iE9 = z0.b.e(cursorB, "id");
            int iE10 = z0.b.e(cursorB, "state");
            int iE11 = z0.b.e(cursorB, "worker_class_name");
            int iE12 = z0.b.e(cursorB, "input_merger_class_name");
            int iE13 = z0.b.e(cursorB, "input");
            int iE14 = z0.b.e(cursorB, "output");
            kVar = kVarD;
            try {
                int iE15 = z0.b.e(cursorB, "initial_delay");
                int iE16 = z0.b.e(cursorB, "interval_duration");
                int iE17 = z0.b.e(cursorB, "flex_duration");
                int iE18 = z0.b.e(cursorB, "run_attempt_count");
                int iE19 = z0.b.e(cursorB, "backoff_policy");
                int iE20 = z0.b.e(cursorB, "backoff_delay_duration");
                int iE21 = z0.b.e(cursorB, "period_start_time");
                int iE22 = z0.b.e(cursorB, "minimum_retention_duration");
                int iE23 = z0.b.e(cursorB, "schedule_requested_at");
                int iE24 = z0.b.e(cursorB, "run_in_foreground");
                int iE25 = z0.b.e(cursorB, "out_of_quota_policy");
                int i11 = iE14;
                ArrayList arrayList = new ArrayList(cursorB.getCount());
                while (cursorB.moveToNext()) {
                    String string = cursorB.getString(iE9);
                    int i12 = iE9;
                    String string2 = cursorB.getString(iE11);
                    int i13 = iE11;
                    i1.b bVar = new i1.b();
                    int i14 = iE;
                    bVar.k(v.e(cursorB.getInt(iE)));
                    bVar.m(cursorB.getInt(iE2) != 0);
                    bVar.n(cursorB.getInt(iE3) != 0);
                    bVar.l(cursorB.getInt(iE4) != 0);
                    bVar.o(cursorB.getInt(iE5) != 0);
                    int i15 = iE2;
                    int i16 = iE3;
                    bVar.p(cursorB.getLong(iE6));
                    bVar.q(cursorB.getLong(iE7));
                    bVar.j(v.b(cursorB.getBlob(iE8)));
                    p pVar = new p(string, string2);
                    pVar.f33779b = v.g(cursorB.getInt(iE10));
                    pVar.f33781d = cursorB.getString(iE12);
                    pVar.f33782e = androidx.work.b.g(cursorB.getBlob(iE13));
                    int i17 = i11;
                    pVar.f33783f = androidx.work.b.g(cursorB.getBlob(i17));
                    i11 = i17;
                    int i18 = iE15;
                    pVar.f33784g = cursorB.getLong(i18);
                    int i19 = iE12;
                    int i20 = iE16;
                    pVar.f33785h = cursorB.getLong(i20);
                    int i21 = iE4;
                    int i22 = iE17;
                    pVar.f33786i = cursorB.getLong(i22);
                    int i23 = iE18;
                    pVar.f33788k = cursorB.getInt(i23);
                    int i24 = iE19;
                    pVar.f33789l = v.d(cursorB.getInt(i24));
                    iE17 = i22;
                    int i25 = iE20;
                    pVar.f33790m = cursorB.getLong(i25);
                    int i26 = iE21;
                    pVar.f33791n = cursorB.getLong(i26);
                    iE21 = i26;
                    int i27 = iE22;
                    pVar.f33792o = cursorB.getLong(i27);
                    int i28 = iE23;
                    pVar.f33793p = cursorB.getLong(i28);
                    int i29 = iE24;
                    pVar.f33794q = cursorB.getInt(i29) != 0;
                    int i30 = iE25;
                    pVar.f33795r = v.f(cursorB.getInt(i30));
                    pVar.f33787j = bVar;
                    arrayList.add(pVar);
                    iE25 = i30;
                    iE2 = i15;
                    iE12 = i19;
                    iE15 = i18;
                    iE16 = i20;
                    iE18 = i23;
                    iE23 = i28;
                    iE9 = i12;
                    iE11 = i13;
                    iE = i14;
                    iE24 = i29;
                    iE22 = i27;
                    iE3 = i16;
                    iE20 = i25;
                    iE4 = i21;
                    iE19 = i24;
                }
                cursorB.close();
                kVar.g();
                return arrayList;
            } catch (Throwable th) {
                th = th;
                cursorB.close();
                kVar.g();
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
            kVar = kVarD;
        }
    }

    @Override // q1.q
    public int g(s.a aVar, String... strArr) {
        this.f33804a.d();
        StringBuilder sbB = z0.f.b();
        sbB.append("UPDATE workspec SET state=");
        sbB.append("?");
        sbB.append(" WHERE id IN (");
        z0.f.a(sbB, strArr.length);
        sbB.append(")");
        b1.k kVarF = this.f33804a.f(sbB.toString());
        kVarF.s1(1, v.j(aVar));
        int i10 = 2;
        for (String str : strArr) {
            if (str == null) {
                kVarF.z2(i10);
            } else {
                kVarF.k0(i10, str);
            }
            i10++;
        }
        this.f33804a.e();
        try {
            int iU0 = kVarF.u0();
            this.f33804a.A();
            return iU0;
        } finally {
            this.f33804a.i();
        }
    }

    @Override // q1.q
    public List<p> h() throws Throwable {
        x0.k kVar;
        x0.k kVarD = x0.k.d("SELECT `required_network_type`, `requires_charging`, `requires_device_idle`, `requires_battery_not_low`, `requires_storage_not_low`, `trigger_content_update_delay`, `trigger_max_content_delay`, `content_uri_triggers`, `WorkSpec`.`id` AS `id`, `WorkSpec`.`state` AS `state`, `WorkSpec`.`worker_class_name` AS `worker_class_name`, `WorkSpec`.`input_merger_class_name` AS `input_merger_class_name`, `WorkSpec`.`input` AS `input`, `WorkSpec`.`output` AS `output`, `WorkSpec`.`initial_delay` AS `initial_delay`, `WorkSpec`.`interval_duration` AS `interval_duration`, `WorkSpec`.`flex_duration` AS `flex_duration`, `WorkSpec`.`run_attempt_count` AS `run_attempt_count`, `WorkSpec`.`backoff_policy` AS `backoff_policy`, `WorkSpec`.`backoff_delay_duration` AS `backoff_delay_duration`, `WorkSpec`.`period_start_time` AS `period_start_time`, `WorkSpec`.`minimum_retention_duration` AS `minimum_retention_duration`, `WorkSpec`.`schedule_requested_at` AS `schedule_requested_at`, `WorkSpec`.`run_in_foreground` AS `run_in_foreground`, `WorkSpec`.`out_of_quota_policy` AS `out_of_quota_policy` FROM workspec WHERE state=0 AND schedule_requested_at<>-1", 0);
        this.f33804a.d();
        Cursor cursorB = z0.c.b(this.f33804a, kVarD, false, null);
        try {
            int iE = z0.b.e(cursorB, "required_network_type");
            int iE2 = z0.b.e(cursorB, "requires_charging");
            int iE3 = z0.b.e(cursorB, "requires_device_idle");
            int iE4 = z0.b.e(cursorB, "requires_battery_not_low");
            int iE5 = z0.b.e(cursorB, "requires_storage_not_low");
            int iE6 = z0.b.e(cursorB, "trigger_content_update_delay");
            int iE7 = z0.b.e(cursorB, "trigger_max_content_delay");
            int iE8 = z0.b.e(cursorB, "content_uri_triggers");
            int iE9 = z0.b.e(cursorB, "id");
            int iE10 = z0.b.e(cursorB, "state");
            int iE11 = z0.b.e(cursorB, "worker_class_name");
            int iE12 = z0.b.e(cursorB, "input_merger_class_name");
            int iE13 = z0.b.e(cursorB, "input");
            int iE14 = z0.b.e(cursorB, "output");
            kVar = kVarD;
            try {
                int iE15 = z0.b.e(cursorB, "initial_delay");
                int iE16 = z0.b.e(cursorB, "interval_duration");
                int iE17 = z0.b.e(cursorB, "flex_duration");
                int iE18 = z0.b.e(cursorB, "run_attempt_count");
                int iE19 = z0.b.e(cursorB, "backoff_policy");
                int iE20 = z0.b.e(cursorB, "backoff_delay_duration");
                int iE21 = z0.b.e(cursorB, "period_start_time");
                int iE22 = z0.b.e(cursorB, "minimum_retention_duration");
                int iE23 = z0.b.e(cursorB, "schedule_requested_at");
                int iE24 = z0.b.e(cursorB, "run_in_foreground");
                int iE25 = z0.b.e(cursorB, "out_of_quota_policy");
                int i10 = iE14;
                ArrayList arrayList = new ArrayList(cursorB.getCount());
                while (cursorB.moveToNext()) {
                    String string = cursorB.getString(iE9);
                    int i11 = iE9;
                    String string2 = cursorB.getString(iE11);
                    int i12 = iE11;
                    i1.b bVar = new i1.b();
                    int i13 = iE;
                    bVar.k(v.e(cursorB.getInt(iE)));
                    bVar.m(cursorB.getInt(iE2) != 0);
                    bVar.n(cursorB.getInt(iE3) != 0);
                    bVar.l(cursorB.getInt(iE4) != 0);
                    bVar.o(cursorB.getInt(iE5) != 0);
                    int i14 = iE2;
                    int i15 = iE3;
                    bVar.p(cursorB.getLong(iE6));
                    bVar.q(cursorB.getLong(iE7));
                    bVar.j(v.b(cursorB.getBlob(iE8)));
                    p pVar = new p(string, string2);
                    pVar.f33779b = v.g(cursorB.getInt(iE10));
                    pVar.f33781d = cursorB.getString(iE12);
                    pVar.f33782e = androidx.work.b.g(cursorB.getBlob(iE13));
                    int i16 = i10;
                    pVar.f33783f = androidx.work.b.g(cursorB.getBlob(i16));
                    i10 = i16;
                    int i17 = iE15;
                    pVar.f33784g = cursorB.getLong(i17);
                    int i18 = iE13;
                    int i19 = iE16;
                    pVar.f33785h = cursorB.getLong(i19);
                    int i20 = iE4;
                    int i21 = iE17;
                    pVar.f33786i = cursorB.getLong(i21);
                    int i22 = iE18;
                    pVar.f33788k = cursorB.getInt(i22);
                    int i23 = iE19;
                    pVar.f33789l = v.d(cursorB.getInt(i23));
                    iE17 = i21;
                    int i24 = iE20;
                    pVar.f33790m = cursorB.getLong(i24);
                    int i25 = iE21;
                    pVar.f33791n = cursorB.getLong(i25);
                    iE21 = i25;
                    int i26 = iE22;
                    pVar.f33792o = cursorB.getLong(i26);
                    int i27 = iE23;
                    pVar.f33793p = cursorB.getLong(i27);
                    int i28 = iE24;
                    pVar.f33794q = cursorB.getInt(i28) != 0;
                    int i29 = iE25;
                    pVar.f33795r = v.f(cursorB.getInt(i29));
                    pVar.f33787j = bVar;
                    arrayList.add(pVar);
                    iE25 = i29;
                    iE2 = i14;
                    iE13 = i18;
                    iE15 = i17;
                    iE16 = i19;
                    iE18 = i22;
                    iE23 = i27;
                    iE9 = i11;
                    iE11 = i12;
                    iE = i13;
                    iE24 = i28;
                    iE22 = i26;
                    iE3 = i15;
                    iE20 = i24;
                    iE4 = i20;
                    iE19 = i23;
                }
                cursorB.close();
                kVar.g();
                return arrayList;
            } catch (Throwable th) {
                th = th;
                cursorB.close();
                kVar.g();
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
            kVar = kVarD;
        }
    }

    @Override // q1.q
    public void i(String str, androidx.work.b bVar) throws Throwable {
        this.f33804a.d();
        b1.k kVarA = this.f33807d.a();
        byte[] bArrK = androidx.work.b.k(bVar);
        if (bArrK == null) {
            kVarA.z2(1);
        } else {
            kVarA.D1(1, bArrK);
        }
        if (str == null) {
            kVarA.z2(2);
        } else {
            kVarA.k0(2, str);
        }
        this.f33804a.e();
        try {
            kVarA.u0();
            this.f33804a.A();
        } finally {
            this.f33804a.i();
            this.f33807d.f(kVarA);
        }
    }

    @Override // q1.q
    public List<p> j() throws Throwable {
        x0.k kVar;
        x0.k kVarD = x0.k.d("SELECT `required_network_type`, `requires_charging`, `requires_device_idle`, `requires_battery_not_low`, `requires_storage_not_low`, `trigger_content_update_delay`, `trigger_max_content_delay`, `content_uri_triggers`, `WorkSpec`.`id` AS `id`, `WorkSpec`.`state` AS `state`, `WorkSpec`.`worker_class_name` AS `worker_class_name`, `WorkSpec`.`input_merger_class_name` AS `input_merger_class_name`, `WorkSpec`.`input` AS `input`, `WorkSpec`.`output` AS `output`, `WorkSpec`.`initial_delay` AS `initial_delay`, `WorkSpec`.`interval_duration` AS `interval_duration`, `WorkSpec`.`flex_duration` AS `flex_duration`, `WorkSpec`.`run_attempt_count` AS `run_attempt_count`, `WorkSpec`.`backoff_policy` AS `backoff_policy`, `WorkSpec`.`backoff_delay_duration` AS `backoff_delay_duration`, `WorkSpec`.`period_start_time` AS `period_start_time`, `WorkSpec`.`minimum_retention_duration` AS `minimum_retention_duration`, `WorkSpec`.`schedule_requested_at` AS `schedule_requested_at`, `WorkSpec`.`run_in_foreground` AS `run_in_foreground`, `WorkSpec`.`out_of_quota_policy` AS `out_of_quota_policy` FROM workspec WHERE state=1", 0);
        this.f33804a.d();
        Cursor cursorB = z0.c.b(this.f33804a, kVarD, false, null);
        try {
            int iE = z0.b.e(cursorB, "required_network_type");
            int iE2 = z0.b.e(cursorB, "requires_charging");
            int iE3 = z0.b.e(cursorB, "requires_device_idle");
            int iE4 = z0.b.e(cursorB, "requires_battery_not_low");
            int iE5 = z0.b.e(cursorB, "requires_storage_not_low");
            int iE6 = z0.b.e(cursorB, "trigger_content_update_delay");
            int iE7 = z0.b.e(cursorB, "trigger_max_content_delay");
            int iE8 = z0.b.e(cursorB, "content_uri_triggers");
            int iE9 = z0.b.e(cursorB, "id");
            int iE10 = z0.b.e(cursorB, "state");
            int iE11 = z0.b.e(cursorB, "worker_class_name");
            int iE12 = z0.b.e(cursorB, "input_merger_class_name");
            int iE13 = z0.b.e(cursorB, "input");
            int iE14 = z0.b.e(cursorB, "output");
            kVar = kVarD;
            try {
                int iE15 = z0.b.e(cursorB, "initial_delay");
                int iE16 = z0.b.e(cursorB, "interval_duration");
                int iE17 = z0.b.e(cursorB, "flex_duration");
                int iE18 = z0.b.e(cursorB, "run_attempt_count");
                int iE19 = z0.b.e(cursorB, "backoff_policy");
                int iE20 = z0.b.e(cursorB, "backoff_delay_duration");
                int iE21 = z0.b.e(cursorB, "period_start_time");
                int iE22 = z0.b.e(cursorB, "minimum_retention_duration");
                int iE23 = z0.b.e(cursorB, "schedule_requested_at");
                int iE24 = z0.b.e(cursorB, "run_in_foreground");
                int iE25 = z0.b.e(cursorB, "out_of_quota_policy");
                int i10 = iE14;
                ArrayList arrayList = new ArrayList(cursorB.getCount());
                while (cursorB.moveToNext()) {
                    String string = cursorB.getString(iE9);
                    int i11 = iE9;
                    String string2 = cursorB.getString(iE11);
                    int i12 = iE11;
                    i1.b bVar = new i1.b();
                    int i13 = iE;
                    bVar.k(v.e(cursorB.getInt(iE)));
                    bVar.m(cursorB.getInt(iE2) != 0);
                    bVar.n(cursorB.getInt(iE3) != 0);
                    bVar.l(cursorB.getInt(iE4) != 0);
                    bVar.o(cursorB.getInt(iE5) != 0);
                    int i14 = iE2;
                    int i15 = iE3;
                    bVar.p(cursorB.getLong(iE6));
                    bVar.q(cursorB.getLong(iE7));
                    bVar.j(v.b(cursorB.getBlob(iE8)));
                    p pVar = new p(string, string2);
                    pVar.f33779b = v.g(cursorB.getInt(iE10));
                    pVar.f33781d = cursorB.getString(iE12);
                    pVar.f33782e = androidx.work.b.g(cursorB.getBlob(iE13));
                    int i16 = i10;
                    pVar.f33783f = androidx.work.b.g(cursorB.getBlob(i16));
                    i10 = i16;
                    int i17 = iE15;
                    pVar.f33784g = cursorB.getLong(i17);
                    int i18 = iE13;
                    int i19 = iE16;
                    pVar.f33785h = cursorB.getLong(i19);
                    int i20 = iE4;
                    int i21 = iE17;
                    pVar.f33786i = cursorB.getLong(i21);
                    int i22 = iE18;
                    pVar.f33788k = cursorB.getInt(i22);
                    int i23 = iE19;
                    pVar.f33789l = v.d(cursorB.getInt(i23));
                    iE17 = i21;
                    int i24 = iE20;
                    pVar.f33790m = cursorB.getLong(i24);
                    int i25 = iE21;
                    pVar.f33791n = cursorB.getLong(i25);
                    iE21 = i25;
                    int i26 = iE22;
                    pVar.f33792o = cursorB.getLong(i26);
                    int i27 = iE23;
                    pVar.f33793p = cursorB.getLong(i27);
                    int i28 = iE24;
                    pVar.f33794q = cursorB.getInt(i28) != 0;
                    int i29 = iE25;
                    pVar.f33795r = v.f(cursorB.getInt(i29));
                    pVar.f33787j = bVar;
                    arrayList.add(pVar);
                    iE25 = i29;
                    iE2 = i14;
                    iE13 = i18;
                    iE15 = i17;
                    iE16 = i19;
                    iE18 = i22;
                    iE23 = i27;
                    iE9 = i11;
                    iE11 = i12;
                    iE = i13;
                    iE24 = i28;
                    iE22 = i26;
                    iE3 = i15;
                    iE20 = i24;
                    iE4 = i20;
                    iE19 = i23;
                }
                cursorB.close();
                kVar.g();
                return arrayList;
            } catch (Throwable th) {
                th = th;
                cursorB.close();
                kVar.g();
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
            kVar = kVarD;
        }
    }

    @Override // q1.q
    public boolean k() {
        boolean z10 = false;
        x0.k kVarD = x0.k.d("SELECT COUNT(*) > 0 FROM workspec WHERE state NOT IN (2, 3, 5) LIMIT 1", 0);
        this.f33804a.d();
        Cursor cursorB = z0.c.b(this.f33804a, kVarD, false, null);
        try {
            if (cursorB.moveToFirst()) {
                if (cursorB.getInt(0) != 0) {
                    z10 = true;
                }
            }
            return z10;
        } finally {
            cursorB.close();
            kVarD.g();
        }
    }

    @Override // q1.q
    public List<String> l(String str) {
        x0.k kVarD = x0.k.d("SELECT id FROM workspec WHERE state NOT IN (2, 3, 5) AND id IN (SELECT work_spec_id FROM workname WHERE name=?)", 1);
        if (str == null) {
            kVarD.z2(1);
        } else {
            kVarD.k0(1, str);
        }
        this.f33804a.d();
        Cursor cursorB = z0.c.b(this.f33804a, kVarD, false, null);
        try {
            ArrayList arrayList = new ArrayList(cursorB.getCount());
            while (cursorB.moveToNext()) {
                arrayList.add(cursorB.getString(0));
            }
            return arrayList;
        } finally {
            cursorB.close();
            kVarD.g();
        }
    }

    @Override // q1.q
    public s.a m(String str) {
        x0.k kVarD = x0.k.d("SELECT state FROM workspec WHERE id=?", 1);
        if (str == null) {
            kVarD.z2(1);
        } else {
            kVarD.k0(1, str);
        }
        this.f33804a.d();
        Cursor cursorB = z0.c.b(this.f33804a, kVarD, false, null);
        try {
            return cursorB.moveToFirst() ? v.g(cursorB.getInt(0)) : null;
        } finally {
            cursorB.close();
            kVarD.g();
        }
    }

    @Override // q1.q
    public p n(String str) throws Throwable {
        x0.k kVar;
        p pVar;
        x0.k kVarD = x0.k.d("SELECT `required_network_type`, `requires_charging`, `requires_device_idle`, `requires_battery_not_low`, `requires_storage_not_low`, `trigger_content_update_delay`, `trigger_max_content_delay`, `content_uri_triggers`, `WorkSpec`.`id` AS `id`, `WorkSpec`.`state` AS `state`, `WorkSpec`.`worker_class_name` AS `worker_class_name`, `WorkSpec`.`input_merger_class_name` AS `input_merger_class_name`, `WorkSpec`.`input` AS `input`, `WorkSpec`.`output` AS `output`, `WorkSpec`.`initial_delay` AS `initial_delay`, `WorkSpec`.`interval_duration` AS `interval_duration`, `WorkSpec`.`flex_duration` AS `flex_duration`, `WorkSpec`.`run_attempt_count` AS `run_attempt_count`, `WorkSpec`.`backoff_policy` AS `backoff_policy`, `WorkSpec`.`backoff_delay_duration` AS `backoff_delay_duration`, `WorkSpec`.`period_start_time` AS `period_start_time`, `WorkSpec`.`minimum_retention_duration` AS `minimum_retention_duration`, `WorkSpec`.`schedule_requested_at` AS `schedule_requested_at`, `WorkSpec`.`run_in_foreground` AS `run_in_foreground`, `WorkSpec`.`out_of_quota_policy` AS `out_of_quota_policy` FROM workspec WHERE id=?", 1);
        if (str == null) {
            kVarD.z2(1);
        } else {
            kVarD.k0(1, str);
        }
        this.f33804a.d();
        Cursor cursorB = z0.c.b(this.f33804a, kVarD, false, null);
        try {
            int iE = z0.b.e(cursorB, "required_network_type");
            int iE2 = z0.b.e(cursorB, "requires_charging");
            int iE3 = z0.b.e(cursorB, "requires_device_idle");
            int iE4 = z0.b.e(cursorB, "requires_battery_not_low");
            int iE5 = z0.b.e(cursorB, "requires_storage_not_low");
            int iE6 = z0.b.e(cursorB, "trigger_content_update_delay");
            int iE7 = z0.b.e(cursorB, "trigger_max_content_delay");
            int iE8 = z0.b.e(cursorB, "content_uri_triggers");
            int iE9 = z0.b.e(cursorB, "id");
            int iE10 = z0.b.e(cursorB, "state");
            int iE11 = z0.b.e(cursorB, "worker_class_name");
            int iE12 = z0.b.e(cursorB, "input_merger_class_name");
            int iE13 = z0.b.e(cursorB, "input");
            int iE14 = z0.b.e(cursorB, "output");
            kVar = kVarD;
            try {
                int iE15 = z0.b.e(cursorB, "initial_delay");
                int iE16 = z0.b.e(cursorB, "interval_duration");
                int iE17 = z0.b.e(cursorB, "flex_duration");
                int iE18 = z0.b.e(cursorB, "run_attempt_count");
                int iE19 = z0.b.e(cursorB, "backoff_policy");
                int iE20 = z0.b.e(cursorB, "backoff_delay_duration");
                int iE21 = z0.b.e(cursorB, "period_start_time");
                int iE22 = z0.b.e(cursorB, "minimum_retention_duration");
                int iE23 = z0.b.e(cursorB, "schedule_requested_at");
                int iE24 = z0.b.e(cursorB, "run_in_foreground");
                int iE25 = z0.b.e(cursorB, "out_of_quota_policy");
                if (cursorB.moveToFirst()) {
                    String string = cursorB.getString(iE9);
                    String string2 = cursorB.getString(iE11);
                    i1.b bVar = new i1.b();
                    bVar.k(v.e(cursorB.getInt(iE)));
                    bVar.m(cursorB.getInt(iE2) != 0);
                    bVar.n(cursorB.getInt(iE3) != 0);
                    bVar.l(cursorB.getInt(iE4) != 0);
                    bVar.o(cursorB.getInt(iE5) != 0);
                    bVar.p(cursorB.getLong(iE6));
                    bVar.q(cursorB.getLong(iE7));
                    bVar.j(v.b(cursorB.getBlob(iE8)));
                    p pVar2 = new p(string, string2);
                    pVar2.f33779b = v.g(cursorB.getInt(iE10));
                    pVar2.f33781d = cursorB.getString(iE12);
                    pVar2.f33782e = androidx.work.b.g(cursorB.getBlob(iE13));
                    pVar2.f33783f = androidx.work.b.g(cursorB.getBlob(iE14));
                    pVar2.f33784g = cursorB.getLong(iE15);
                    pVar2.f33785h = cursorB.getLong(iE16);
                    pVar2.f33786i = cursorB.getLong(iE17);
                    pVar2.f33788k = cursorB.getInt(iE18);
                    pVar2.f33789l = v.d(cursorB.getInt(iE19));
                    pVar2.f33790m = cursorB.getLong(iE20);
                    pVar2.f33791n = cursorB.getLong(iE21);
                    pVar2.f33792o = cursorB.getLong(iE22);
                    pVar2.f33793p = cursorB.getLong(iE23);
                    pVar2.f33794q = cursorB.getInt(iE24) != 0;
                    pVar2.f33795r = v.f(cursorB.getInt(iE25));
                    pVar2.f33787j = bVar;
                    pVar = pVar2;
                } else {
                    pVar = null;
                }
                cursorB.close();
                kVar.g();
                return pVar;
            } catch (Throwable th) {
                th = th;
                cursorB.close();
                kVar.g();
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
            kVar = kVarD;
        }
    }

    @Override // q1.q
    public int o(String str) {
        this.f33804a.d();
        b1.k kVarA = this.f33810g.a();
        if (str == null) {
            kVarA.z2(1);
        } else {
            kVarA.k0(1, str);
        }
        this.f33804a.e();
        try {
            int iU0 = kVarA.u0();
            this.f33804a.A();
            return iU0;
        } finally {
            this.f33804a.i();
            this.f33810g.f(kVarA);
        }
    }

    @Override // q1.q
    public List<String> p(String str) {
        x0.k kVarD = x0.k.d("SELECT id FROM workspec WHERE state NOT IN (2, 3, 5) AND id IN (SELECT work_spec_id FROM worktag WHERE tag=?)", 1);
        if (str == null) {
            kVarD.z2(1);
        } else {
            kVarD.k0(1, str);
        }
        this.f33804a.d();
        Cursor cursorB = z0.c.b(this.f33804a, kVarD, false, null);
        try {
            ArrayList arrayList = new ArrayList(cursorB.getCount());
            while (cursorB.moveToNext()) {
                arrayList.add(cursorB.getString(0));
            }
            return arrayList;
        } finally {
            cursorB.close();
            kVarD.g();
        }
    }

    @Override // q1.q
    public List<androidx.work.b> q(String str) {
        x0.k kVarD = x0.k.d("SELECT output FROM workspec WHERE id IN (SELECT prerequisite_id FROM dependency WHERE work_spec_id=?)", 1);
        if (str == null) {
            kVarD.z2(1);
        } else {
            kVarD.k0(1, str);
        }
        this.f33804a.d();
        Cursor cursorB = z0.c.b(this.f33804a, kVarD, false, null);
        try {
            ArrayList arrayList = new ArrayList(cursorB.getCount());
            while (cursorB.moveToNext()) {
                arrayList.add(androidx.work.b.g(cursorB.getBlob(0)));
            }
            return arrayList;
        } finally {
            cursorB.close();
            kVarD.g();
        }
    }

    @Override // q1.q
    public int r(String str) {
        this.f33804a.d();
        b1.k kVarA = this.f33809f.a();
        if (str == null) {
            kVarA.z2(1);
        } else {
            kVarA.k0(1, str);
        }
        this.f33804a.e();
        try {
            int iU0 = kVarA.u0();
            this.f33804a.A();
            return iU0;
        } finally {
            this.f33804a.i();
            this.f33809f.f(kVarA);
        }
    }

    @Override // q1.q
    public void s(String str, long j10) {
        this.f33804a.d();
        b1.k kVarA = this.f33808e.a();
        kVarA.s1(1, j10);
        if (str == null) {
            kVarA.z2(2);
        } else {
            kVarA.k0(2, str);
        }
        this.f33804a.e();
        try {
            kVarA.u0();
            this.f33804a.A();
        } finally {
            this.f33804a.i();
            this.f33808e.f(kVarA);
        }
    }

    @Override // q1.q
    public List<p> t(int i10) throws Throwable {
        x0.k kVar;
        x0.k kVarD = x0.k.d("SELECT `required_network_type`, `requires_charging`, `requires_device_idle`, `requires_battery_not_low`, `requires_storage_not_low`, `trigger_content_update_delay`, `trigger_max_content_delay`, `content_uri_triggers`, `WorkSpec`.`id` AS `id`, `WorkSpec`.`state` AS `state`, `WorkSpec`.`worker_class_name` AS `worker_class_name`, `WorkSpec`.`input_merger_class_name` AS `input_merger_class_name`, `WorkSpec`.`input` AS `input`, `WorkSpec`.`output` AS `output`, `WorkSpec`.`initial_delay` AS `initial_delay`, `WorkSpec`.`interval_duration` AS `interval_duration`, `WorkSpec`.`flex_duration` AS `flex_duration`, `WorkSpec`.`run_attempt_count` AS `run_attempt_count`, `WorkSpec`.`backoff_policy` AS `backoff_policy`, `WorkSpec`.`backoff_delay_duration` AS `backoff_delay_duration`, `WorkSpec`.`period_start_time` AS `period_start_time`, `WorkSpec`.`minimum_retention_duration` AS `minimum_retention_duration`, `WorkSpec`.`schedule_requested_at` AS `schedule_requested_at`, `WorkSpec`.`run_in_foreground` AS `run_in_foreground`, `WorkSpec`.`out_of_quota_policy` AS `out_of_quota_policy` FROM workspec WHERE state=0 ORDER BY period_start_time LIMIT ?", 1);
        kVarD.s1(1, i10);
        this.f33804a.d();
        Cursor cursorB = z0.c.b(this.f33804a, kVarD, false, null);
        try {
            int iE = z0.b.e(cursorB, "required_network_type");
            int iE2 = z0.b.e(cursorB, "requires_charging");
            int iE3 = z0.b.e(cursorB, "requires_device_idle");
            int iE4 = z0.b.e(cursorB, "requires_battery_not_low");
            int iE5 = z0.b.e(cursorB, "requires_storage_not_low");
            int iE6 = z0.b.e(cursorB, "trigger_content_update_delay");
            int iE7 = z0.b.e(cursorB, "trigger_max_content_delay");
            int iE8 = z0.b.e(cursorB, "content_uri_triggers");
            int iE9 = z0.b.e(cursorB, "id");
            int iE10 = z0.b.e(cursorB, "state");
            int iE11 = z0.b.e(cursorB, "worker_class_name");
            int iE12 = z0.b.e(cursorB, "input_merger_class_name");
            int iE13 = z0.b.e(cursorB, "input");
            int iE14 = z0.b.e(cursorB, "output");
            kVar = kVarD;
            try {
                int iE15 = z0.b.e(cursorB, "initial_delay");
                int iE16 = z0.b.e(cursorB, "interval_duration");
                int iE17 = z0.b.e(cursorB, "flex_duration");
                int iE18 = z0.b.e(cursorB, "run_attempt_count");
                int iE19 = z0.b.e(cursorB, "backoff_policy");
                int iE20 = z0.b.e(cursorB, "backoff_delay_duration");
                int iE21 = z0.b.e(cursorB, "period_start_time");
                int iE22 = z0.b.e(cursorB, "minimum_retention_duration");
                int iE23 = z0.b.e(cursorB, "schedule_requested_at");
                int iE24 = z0.b.e(cursorB, "run_in_foreground");
                int iE25 = z0.b.e(cursorB, "out_of_quota_policy");
                int i11 = iE14;
                ArrayList arrayList = new ArrayList(cursorB.getCount());
                while (cursorB.moveToNext()) {
                    String string = cursorB.getString(iE9);
                    int i12 = iE9;
                    String string2 = cursorB.getString(iE11);
                    int i13 = iE11;
                    i1.b bVar = new i1.b();
                    int i14 = iE;
                    bVar.k(v.e(cursorB.getInt(iE)));
                    bVar.m(cursorB.getInt(iE2) != 0);
                    bVar.n(cursorB.getInt(iE3) != 0);
                    bVar.l(cursorB.getInt(iE4) != 0);
                    bVar.o(cursorB.getInt(iE5) != 0);
                    int i15 = iE2;
                    int i16 = iE3;
                    bVar.p(cursorB.getLong(iE6));
                    bVar.q(cursorB.getLong(iE7));
                    bVar.j(v.b(cursorB.getBlob(iE8)));
                    p pVar = new p(string, string2);
                    pVar.f33779b = v.g(cursorB.getInt(iE10));
                    pVar.f33781d = cursorB.getString(iE12);
                    pVar.f33782e = androidx.work.b.g(cursorB.getBlob(iE13));
                    int i17 = i11;
                    pVar.f33783f = androidx.work.b.g(cursorB.getBlob(i17));
                    i11 = i17;
                    int i18 = iE15;
                    pVar.f33784g = cursorB.getLong(i18);
                    int i19 = iE12;
                    int i20 = iE16;
                    pVar.f33785h = cursorB.getLong(i20);
                    int i21 = iE4;
                    int i22 = iE17;
                    pVar.f33786i = cursorB.getLong(i22);
                    int i23 = iE18;
                    pVar.f33788k = cursorB.getInt(i23);
                    int i24 = iE19;
                    pVar.f33789l = v.d(cursorB.getInt(i24));
                    iE17 = i22;
                    int i25 = iE20;
                    pVar.f33790m = cursorB.getLong(i25);
                    int i26 = iE21;
                    pVar.f33791n = cursorB.getLong(i26);
                    iE21 = i26;
                    int i27 = iE22;
                    pVar.f33792o = cursorB.getLong(i27);
                    int i28 = iE23;
                    pVar.f33793p = cursorB.getLong(i28);
                    int i29 = iE24;
                    pVar.f33794q = cursorB.getInt(i29) != 0;
                    int i30 = iE25;
                    pVar.f33795r = v.f(cursorB.getInt(i30));
                    pVar.f33787j = bVar;
                    arrayList.add(pVar);
                    iE25 = i30;
                    iE2 = i15;
                    iE12 = i19;
                    iE15 = i18;
                    iE16 = i20;
                    iE18 = i23;
                    iE23 = i28;
                    iE9 = i12;
                    iE11 = i13;
                    iE = i14;
                    iE24 = i29;
                    iE22 = i27;
                    iE3 = i16;
                    iE20 = i25;
                    iE4 = i21;
                    iE19 = i24;
                }
                cursorB.close();
                kVar.g();
                return arrayList;
            } catch (Throwable th) {
                th = th;
                cursorB.close();
                kVar.g();
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
            kVar = kVarD;
        }
    }

    @Override // q1.q
    public int u() {
        this.f33804a.d();
        b1.k kVarA = this.f33812i.a();
        this.f33804a.e();
        try {
            int iU0 = kVarA.u0();
            this.f33804a.A();
            return iU0;
        } finally {
            this.f33804a.i();
            this.f33812i.f(kVarA);
        }
    }
}
