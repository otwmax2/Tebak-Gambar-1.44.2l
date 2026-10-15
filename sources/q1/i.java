package q1;

import android.database.Cursor;
import androidx.room.h0;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: compiled from: SystemIdInfoDao_Impl.java */
/* JADX INFO: loaded from: classes.dex */
public final class i implements h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final h0 f33757a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final x0.g<g> f33758b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final x0.l f33759c;

    /* JADX INFO: compiled from: SystemIdInfoDao_Impl.java */
    class a extends x0.g<g> {
        a(h0 h0Var) {
            super(h0Var);
        }

        @Override // x0.l
        public String d() {
            return "INSERT OR REPLACE INTO `SystemIdInfo` (`work_spec_id`,`system_id`) VALUES (?,?)";
        }

        @Override // x0.g
        /* JADX INFO: renamed from: j, reason: merged with bridge method [inline-methods] */
        public void g(b1.k kVar, g gVar) {
            String str = gVar.f33755a;
            if (str == null) {
                kVar.z2(1);
            } else {
                kVar.k0(1, str);
            }
            kVar.s1(2, gVar.f33756b);
        }
    }

    /* JADX INFO: compiled from: SystemIdInfoDao_Impl.java */
    class b extends x0.l {
        b(h0 h0Var) {
            super(h0Var);
        }

        @Override // x0.l
        public String d() {
            return "DELETE FROM SystemIdInfo where work_spec_id=?";
        }
    }

    public i(h0 h0Var) {
        this.f33757a = h0Var;
        this.f33758b = new a(h0Var);
        this.f33759c = new b(h0Var);
    }

    @Override // q1.h
    public List<String> a() {
        x0.k kVarD = x0.k.d("SELECT DISTINCT work_spec_id FROM SystemIdInfo", 0);
        this.f33757a.d();
        Cursor cursorB = z0.c.b(this.f33757a, kVarD, false, null);
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

    @Override // q1.h
    public void b(g gVar) {
        this.f33757a.d();
        this.f33757a.e();
        try {
            this.f33758b.i(gVar);
            this.f33757a.A();
        } finally {
            this.f33757a.i();
        }
    }

    @Override // q1.h
    public g c(String str) {
        x0.k kVarD = x0.k.d("SELECT `SystemIdInfo`.`work_spec_id` AS `work_spec_id`, `SystemIdInfo`.`system_id` AS `system_id` FROM SystemIdInfo WHERE work_spec_id=?", 1);
        if (str == null) {
            kVarD.z2(1);
        } else {
            kVarD.k0(1, str);
        }
        this.f33757a.d();
        Cursor cursorB = z0.c.b(this.f33757a, kVarD, false, null);
        try {
            return cursorB.moveToFirst() ? new g(cursorB.getString(z0.b.e(cursorB, "work_spec_id")), cursorB.getInt(z0.b.e(cursorB, "system_id"))) : null;
        } finally {
            cursorB.close();
            kVarD.g();
        }
    }

    @Override // q1.h
    public void d(String str) {
        this.f33757a.d();
        b1.k kVarA = this.f33759c.a();
        if (str == null) {
            kVarA.z2(1);
        } else {
            kVarA.k0(1, str);
        }
        this.f33757a.e();
        try {
            kVarA.u0();
            this.f33757a.A();
        } finally {
            this.f33757a.i();
            this.f33759c.f(kVarA);
        }
    }
}
