package q1;

import android.database.Cursor;
import androidx.room.h0;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: compiled from: WorkNameDao_Impl.java */
/* JADX INFO: loaded from: classes.dex */
public final class l implements k {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final h0 f33764a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final x0.g<j> f33765b;

    /* JADX INFO: compiled from: WorkNameDao_Impl.java */
    class a extends x0.g<j> {
        a(h0 h0Var) {
            super(h0Var);
        }

        @Override // x0.l
        public String d() {
            return "INSERT OR IGNORE INTO `WorkName` (`name`,`work_spec_id`) VALUES (?,?)";
        }

        @Override // x0.g
        /* JADX INFO: renamed from: j, reason: merged with bridge method [inline-methods] */
        public void g(b1.k kVar, j jVar) {
            String str = jVar.f33762a;
            if (str == null) {
                kVar.z2(1);
            } else {
                kVar.k0(1, str);
            }
            String str2 = jVar.f33763b;
            if (str2 == null) {
                kVar.z2(2);
            } else {
                kVar.k0(2, str2);
            }
        }
    }

    public l(h0 h0Var) {
        this.f33764a = h0Var;
        this.f33765b = new a(h0Var);
    }

    @Override // q1.k
    public void a(j jVar) {
        this.f33764a.d();
        this.f33764a.e();
        try {
            this.f33765b.i(jVar);
            this.f33764a.A();
        } finally {
            this.f33764a.i();
        }
    }

    @Override // q1.k
    public List<String> b(String str) {
        x0.k kVarD = x0.k.d("SELECT name FROM workname WHERE work_spec_id=?", 1);
        if (str == null) {
            kVarD.z2(1);
        } else {
            kVarD.k0(1, str);
        }
        this.f33764a.d();
        Cursor cursorB = z0.c.b(this.f33764a, kVarD, false, null);
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
