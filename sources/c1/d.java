package c1;

import android.database.sqlite.SQLiteProgram;
import b1.i;

/* JADX INFO: compiled from: FrameworkSQLiteProgram.java */
/* JADX INFO: loaded from: classes.dex */
class d implements i {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final SQLiteProgram f4810o;

    d(SQLiteProgram sQLiteProgram) {
        this.f4810o = sQLiteProgram;
    }

    @Override // b1.i
    public void D1(int i10, byte[] bArr) {
        this.f4810o.bindBlob(i10, bArr);
    }

    @Override // b1.i
    public void L0(int i10, double d10) {
        this.f4810o.bindDouble(i10, d10);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.f4810o.close();
    }

    @Override // b1.i
    public void k0(int i10, String str) {
        this.f4810o.bindString(i10, str);
    }

    @Override // b1.i
    public void s1(int i10, long j10) {
        this.f4810o.bindLong(i10, j10);
    }

    @Override // b1.i
    public void z2(int i10) {
        this.f4810o.bindNull(i10);
    }
}
