package c1;

import android.database.Cursor;
import android.database.SQLException;
import android.database.sqlite.SQLiteCursor;
import android.database.sqlite.SQLiteCursorDriver;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteQuery;
import android.os.CancellationSignal;
import android.util.Pair;
import b1.g;
import b1.j;
import b1.k;
import com.vungle.mediation.BuildConfig;
import java.io.IOException;
import java.util.List;

/* JADX INFO: compiled from: FrameworkSQLiteDatabase.java */
/* JADX INFO: loaded from: classes.dex */
class a implements g {

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private static final String[] f4791p = {BuildConfig.FLAVOR, " OR ROLLBACK ", " OR ABORT ", " OR FAIL ", " OR IGNORE ", " OR REPLACE "};

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private static final String[] f4792q = new String[0];

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final SQLiteDatabase f4793o;

    /* JADX INFO: renamed from: c1.a$a, reason: collision with other inner class name */
    /* JADX INFO: compiled from: FrameworkSQLiteDatabase.java */
    class C0088a implements SQLiteDatabase.CursorFactory {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ j f4794a;

        C0088a(j jVar) {
            this.f4794a = jVar;
        }

        @Override // android.database.sqlite.SQLiteDatabase.CursorFactory
        public Cursor newCursor(SQLiteDatabase sQLiteDatabase, SQLiteCursorDriver sQLiteCursorDriver, String str, SQLiteQuery sQLiteQuery) {
            this.f4794a.c(new d(sQLiteQuery));
            return new SQLiteCursor(sQLiteCursorDriver, str, sQLiteQuery);
        }
    }

    /* JADX INFO: compiled from: FrameworkSQLiteDatabase.java */
    class b implements SQLiteDatabase.CursorFactory {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ j f4796a;

        b(j jVar) {
            this.f4796a = jVar;
        }

        @Override // android.database.sqlite.SQLiteDatabase.CursorFactory
        public Cursor newCursor(SQLiteDatabase sQLiteDatabase, SQLiteCursorDriver sQLiteCursorDriver, String str, SQLiteQuery sQLiteQuery) {
            this.f4796a.c(new d(sQLiteQuery));
            return new SQLiteCursor(sQLiteCursorDriver, str, sQLiteQuery);
        }
    }

    a(SQLiteDatabase sQLiteDatabase) {
        this.f4793o = sQLiteDatabase;
    }

    @Override // b1.g
    public String L2() {
        return this.f4793o.getPath();
    }

    @Override // b1.g
    public boolean O2() {
        return this.f4793o.inTransaction();
    }

    @Override // b1.g
    public Cursor P1(String str) {
        return c1(new b1.a(str));
    }

    @Override // b1.g
    public void V() {
        this.f4793o.beginTransaction();
    }

    @Override // b1.g
    public void X1() {
        this.f4793o.endTransaction();
    }

    boolean b(SQLiteDatabase sQLiteDatabase) {
        return this.f4793o == sQLiteDatabase;
    }

    @Override // b1.g
    public Cursor c1(j jVar) {
        return this.f4793o.rawQueryWithFactory(new C0088a(jVar), jVar.b(), f4792q, null);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f4793o.close();
    }

    @Override // b1.g
    public List<Pair<String, String>> d0() {
        return this.f4793o.getAttachedDbs();
    }

    @Override // b1.g
    public void execSQL(String str) throws SQLException {
        this.f4793o.execSQL(str);
    }

    @Override // b1.g
    public boolean h3() {
        return b1.b.b(this.f4793o);
    }

    @Override // b1.g
    public boolean isOpen() {
        return this.f4793o.isOpen();
    }

    @Override // b1.g
    public Cursor s0(j jVar, CancellationSignal cancellationSignal) {
        return b1.b.c(this.f4793o, jVar.b(), f4792q, null, cancellationSignal, new b(jVar));
    }

    @Override // b1.g
    public void u1() {
        this.f4793o.setTransactionSuccessful();
    }

    @Override // b1.g
    public k w0(String str) {
        return new e(this.f4793o.compileStatement(str));
    }

    @Override // b1.g
    public void x1(String str, Object[] objArr) throws SQLException {
        this.f4793o.execSQL(str, objArr);
    }

    @Override // b1.g
    public void z1() {
        this.f4793o.beginTransactionNonExclusive();
    }
}
