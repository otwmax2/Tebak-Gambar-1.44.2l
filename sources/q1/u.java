package q1;

import android.database.Cursor;
import androidx.room.h0;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: compiled from: WorkTagDao_Impl.java */
/* JADX INFO: loaded from: classes.dex */
public final class u implements t {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final h0 f33825a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final x0.g<s> f33826b;

    /* JADX INFO: compiled from: WorkTagDao_Impl.java */
    class a extends x0.g<s> {
        a(h0 h0Var) {
            super(h0Var);
        }

        @Override // x0.l
        public String d() {
            return "INSERT OR IGNORE INTO `WorkTag` (`tag`,`work_spec_id`) VALUES (?,?)";
        }

        @Override // x0.g
        /* JADX INFO: renamed from: j, reason: merged with bridge method [inline-methods] */
        public void g(b1.k kVar, s sVar) {
            String str = sVar.f33823a;
            if (str == null) {
                kVar.z2(1);
            } else {
                kVar.k0(1, str);
            }
            String str2 = sVar.f33824b;
            if (str2 == null) {
                kVar.z2(2);
            } else {
                kVar.k0(2, str2);
            }
        }
    }

    public u(h0 h0Var) {
        this.f33825a = h0Var;
        this.f33826b = new a(h0Var);
    }

    @Override // q1.t
    public void a(s sVar) {
        this.f33825a.d();
        this.f33825a.e();
        try {
            this.f33826b.i(sVar);
            this.f33825a.A();
        } finally {
            this.f33825a.i();
        }
    }

    @Override // q1.t
    public List<String> b(String str) {
        x0.k kVarD = x0.k.d("SELECT DISTINCT tag FROM worktag WHERE work_spec_id=?", 1);
        if (str == null) {
            kVarD.z2(1);
        } else {
            kVarD.k0(1, str);
        }
        this.f33825a.d();
        Cursor cursorB = z0.c.b(this.f33825a, kVarD, false, null);
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
}
