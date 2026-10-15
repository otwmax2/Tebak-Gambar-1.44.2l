package c1;

import android.content.Context;
import android.database.DatabaseErrorHandler;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import android.os.Build;
import b1.g;
import b1.h;
import java.io.File;

/* JADX INFO: compiled from: FrameworkSQLiteOpenHelper.java */
/* JADX INFO: loaded from: classes.dex */
class b implements h {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final Context f4798o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final String f4799p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final h.a f4800q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private final boolean f4801r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private final Object f4802s = new Object();

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private a f4803t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private boolean f4804u;

    /* JADX INFO: compiled from: FrameworkSQLiteOpenHelper.java */
    static class a extends SQLiteOpenHelper {

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        final c1.a[] f4805o;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        final h.a f4806p;

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        private boolean f4807q;

        /* JADX INFO: renamed from: c1.b$a$a, reason: collision with other inner class name */
        /* JADX INFO: compiled from: FrameworkSQLiteOpenHelper.java */
        class C0089a implements DatabaseErrorHandler {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            final /* synthetic */ h.a f4808a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            final /* synthetic */ c1.a[] f4809b;

            C0089a(h.a aVar, c1.a[] aVarArr) {
                this.f4808a = aVar;
                this.f4809b = aVarArr;
            }

            @Override // android.database.DatabaseErrorHandler
            public void onCorruption(SQLiteDatabase sQLiteDatabase) {
                this.f4808a.c(a.c(this.f4809b, sQLiteDatabase));
            }
        }

        a(Context context, String str, c1.a[] aVarArr, h.a aVar) {
            super(context, str, null, aVar.f4539a, new C0089a(aVar, aVarArr));
            this.f4806p = aVar;
            this.f4805o = aVarArr;
        }

        static c1.a c(c1.a[] aVarArr, SQLiteDatabase sQLiteDatabase) {
            c1.a aVar = aVarArr[0];
            if (aVar == null || !aVar.b(sQLiteDatabase)) {
                aVarArr[0] = new c1.a(sQLiteDatabase);
            }
            return aVarArr[0];
        }

        c1.a b(SQLiteDatabase sQLiteDatabase) {
            return c(this.f4805o, sQLiteDatabase);
        }

        @Override // android.database.sqlite.SQLiteOpenHelper, java.lang.AutoCloseable
        public synchronized void close() {
            super.close();
            this.f4805o[0] = null;
        }

        synchronized g d() {
            this.f4807q = false;
            SQLiteDatabase writableDatabase = super.getWritableDatabase();
            if (!this.f4807q) {
                return b(writableDatabase);
            }
            close();
            return d();
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public void onConfigure(SQLiteDatabase sQLiteDatabase) {
            this.f4806p.b(b(sQLiteDatabase));
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public void onCreate(SQLiteDatabase sQLiteDatabase) {
            this.f4806p.d(b(sQLiteDatabase));
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public void onDowngrade(SQLiteDatabase sQLiteDatabase, int i10, int i11) {
            this.f4807q = true;
            this.f4806p.e(b(sQLiteDatabase), i10, i11);
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public void onOpen(SQLiteDatabase sQLiteDatabase) {
            if (this.f4807q) {
                return;
            }
            this.f4806p.f(b(sQLiteDatabase));
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i10, int i11) {
            this.f4807q = true;
            this.f4806p.g(b(sQLiteDatabase), i10, i11);
        }
    }

    b(Context context, String str, h.a aVar, boolean z10) {
        this.f4798o = context;
        this.f4799p = str;
        this.f4800q = aVar;
        this.f4801r = z10;
    }

    private a b() {
        a aVar;
        synchronized (this.f4802s) {
            if (this.f4803t == null) {
                c1.a[] aVarArr = new c1.a[1];
                int i10 = Build.VERSION.SDK_INT;
                if (i10 < 23 || this.f4799p == null || !this.f4801r) {
                    this.f4803t = new a(this.f4798o, this.f4799p, aVarArr, this.f4800q);
                } else {
                    this.f4803t = new a(this.f4798o, new File(b1.d.a(this.f4798o), this.f4799p).getAbsolutePath(), aVarArr, this.f4800q);
                }
                if (i10 >= 16) {
                    b1.b.d(this.f4803t, this.f4804u);
                }
            }
            aVar = this.f4803t;
        }
        return aVar;
    }

    @Override // b1.h
    public g K1() {
        return b().d();
    }

    @Override // b1.h, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        b().close();
    }

    @Override // b1.h
    public String getDatabaseName() {
        return this.f4799p;
    }

    @Override // b1.h
    public void setWriteAheadLoggingEnabled(boolean z10) {
        synchronized (this.f4802s) {
            a aVar = this.f4803t;
            if (aVar != null) {
                b1.b.d(aVar, z10);
            }
            this.f4804u = z10;
        }
    }
}
