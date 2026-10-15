package q1;

import android.database.Cursor;
import androidx.room.h0;

/* JADX INFO: compiled from: PreferenceDao_Impl.java */
/* JADX INFO: loaded from: classes.dex */
public final class f implements e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final h0 f33752a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final x0.g<d> f33753b;

    /* JADX INFO: compiled from: PreferenceDao_Impl.java */
    class a extends x0.g<d> {
        a(h0 h0Var) {
            super(h0Var);
        }

        @Override // x0.l
        public String d() {
            return "INSERT OR REPLACE INTO `Preference` (`key`,`long_value`) VALUES (?,?)";
        }

        @Override // x0.g
        /* JADX INFO: renamed from: j, reason: merged with bridge method [inline-methods] */
        public void g(b1.k kVar, d dVar) {
            String str = dVar.f33750a;
            if (str == null) {
                kVar.z2(1);
            } else {
                kVar.k0(1, str);
            }
            Long l10 = dVar.f33751b;
            if (l10 == null) {
                kVar.z2(2);
            } else {
                kVar.s1(2, l10.longValue());
            }
        }
    }

    public f(h0 h0Var) {
        this.f33752a = h0Var;
        this.f33753b = new a(h0Var);
    }

    @Override // q1.e
    public void a(d dVar) {
        this.f33752a.d();
        this.f33752a.e();
        try {
            this.f33753b.i(dVar);
            this.f33752a.A();
        } finally {
            this.f33752a.i();
        }
    }

    @Override // q1.e
    public Long b(String str) {
        x0.k kVarD = x0.k.d("SELECT long_value FROM Preference where `key`=?", 1);
        if (str == null) {
            kVarD.z2(1);
        } else {
            kVarD.k0(1, str);
        }
        this.f33752a.d();
        Long lValueOf = null;
        Cursor cursorB = z0.c.b(this.f33752a, kVarD, false, null);
        try {
            if (cursorB.moveToFirst() && !cursorB.isNull(0)) {
                lValueOf = Long.valueOf(cursorB.getLong(0));
            }
            return lValueOf;
        } finally {
            cursorB.close();
            kVarD.g();
        }
    }
}
