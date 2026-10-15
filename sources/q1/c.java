package q1;

import android.database.Cursor;
import androidx.room.h0;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: compiled from: DependencyDao_Impl.java */
/* JADX INFO: loaded from: classes.dex */
public final class c implements b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final h0 f33747a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final x0.g<q1.a> f33748b;

    /* JADX INFO: compiled from: DependencyDao_Impl.java */
    class a extends x0.g<q1.a> {
        a(h0 h0Var) {
            super(h0Var);
        }

        @Override // x0.l
        public String d() {
            return "INSERT OR IGNORE INTO `Dependency` (`work_spec_id`,`prerequisite_id`) VALUES (?,?)";
        }

        @Override // x0.g
        /* JADX INFO: renamed from: j, reason: merged with bridge method [inline-methods] */
        public void g(b1.k kVar, q1.a aVar) {
            String str = aVar.f33745a;
            if (str == null) {
                kVar.z2(1);
            } else {
                kVar.k0(1, str);
            }
            String str2 = aVar.f33746b;
            if (str2 == null) {
                kVar.z2(2);
            } else {
                kVar.k0(2, str2);
            }
        }
    }

    public c(h0 h0Var) {
        this.f33747a = h0Var;
        this.f33748b = new a(h0Var);
    }

    @Override // q1.b
    public List<String> a(String str) {
        x0.k kVarD = x0.k.d("SELECT work_spec_id FROM dependency WHERE prerequisite_id=?", 1);
        if (str == null) {
            kVarD.z2(1);
        } else {
            kVarD.k0(1, str);
        }
        this.f33747a.d();
        Cursor cursorB = z0.c.b(this.f33747a, kVarD, false, null);
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

    @Override // q1.b
    public boolean b(String str) {
        x0.k kVarD = x0.k.d("SELECT COUNT(*)=0 FROM dependency WHERE work_spec_id=? AND prerequisite_id IN (SELECT id FROM workspec WHERE state!=2)", 1);
        if (str == null) {
            kVarD.z2(1);
        } else {
            kVarD.k0(1, str);
        }
        this.f33747a.d();
        boolean z10 = false;
        Cursor cursorB = z0.c.b(this.f33747a, kVarD, false, null);
        try {
            if (cursorB.moveToFirst()) {
                z10 = cursorB.getInt(0) != 0;
            }
            return z10;
        } finally {
            cursorB.close();
            kVarD.g();
        }
    }

    @Override // q1.b
    public void c(q1.a aVar) {
        this.f33747a.d();
        this.f33747a.e();
        try {
            this.f33748b.i(aVar);
            this.f33747a.A();
        } finally {
            this.f33747a.i();
        }
    }

    @Override // q1.b
    public boolean d(String str) {
        x0.k kVarD = x0.k.d("SELECT COUNT(*)>0 FROM dependency WHERE prerequisite_id=?", 1);
        if (str == null) {
            kVarD.z2(1);
        } else {
            kVarD.k0(1, str);
        }
        this.f33747a.d();
        boolean z10 = false;
        Cursor cursorB = z0.c.b(this.f33747a, kVarD, false, null);
        try {
            if (cursorB.moveToFirst()) {
                z10 = cursorB.getInt(0) != 0;
            }
            return z10;
        } finally {
            cursorB.close();
            kVarD.g();
        }
    }
}
