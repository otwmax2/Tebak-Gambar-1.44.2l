package c1;

import android.database.sqlite.SQLiteStatement;
import b1.k;

/* JADX INFO: compiled from: FrameworkSQLiteStatement.java */
/* JADX INFO: loaded from: classes.dex */
class e extends d implements k {

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final SQLiteStatement f4811p;

    e(SQLiteStatement sQLiteStatement) {
        super(sQLiteStatement);
        this.f4811p = sQLiteStatement;
    }

    @Override // b1.k
    public long I3() {
        return this.f4811p.executeInsert();
    }

    @Override // b1.k
    public int u0() {
        return this.f4811p.executeUpdateDelete();
    }
}
