package b1;

import android.content.Context;
import android.database.sqlite.SQLiteException;
import android.os.Build;
import android.text.TextUtils;
import android.util.Log;
import android.util.Pair;
import java.io.Closeable;
import java.io.File;
import java.io.IOException;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: compiled from: SupportSQLiteOpenHelper.java */
/* JADX INFO: loaded from: classes.dex */
public interface h extends Closeable {

    /* JADX INFO: compiled from: SupportSQLiteOpenHelper.java */
    public static abstract class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f4539a;

        public a(int i10) {
            this.f4539a = i10;
        }

        private void a(String str) {
            if (str.equalsIgnoreCase(":memory:") || str.trim().length() == 0) {
                return;
            }
            Log.w("SupportSQLite", "deleting the database file: " + str);
            try {
                if (Build.VERSION.SDK_INT >= 16) {
                    b1.b.a(new File(str));
                } else {
                    try {
                        if (!new File(str).delete()) {
                            Log.e("SupportSQLite", "Could not delete the database file " + str);
                        }
                    } catch (Exception e10) {
                        Log.e("SupportSQLite", "error while deleting corrupted database file", e10);
                    }
                }
            } catch (Exception e11) {
                Log.w("SupportSQLite", "delete failed: ", e11);
            }
        }

        public void b(g gVar) {
        }

        public void c(g gVar) {
            Log.e("SupportSQLite", "Corruption reported by sqlite on database: " + gVar.L2());
            if (!gVar.isOpen()) {
                a(gVar.L2());
                return;
            }
            List<Pair<String, String>> listD0 = null;
            try {
                try {
                    listD0 = gVar.d0();
                } catch (SQLiteException unused) {
                }
                try {
                    gVar.close();
                } catch (IOException unused2) {
                }
            } finally {
                if (listD0 != null) {
                    Iterator<Pair<String, String>> it = listD0.iterator();
                    while (it.hasNext()) {
                        a((String) it.next().second);
                    }
                } else {
                    a(gVar.L2());
                }
            }
        }

        public abstract void d(g gVar);

        public abstract void e(g gVar, int i10, int i11);

        public void f(g gVar) {
        }

        public abstract void g(g gVar, int i10, int i11);
    }

    /* JADX INFO: compiled from: SupportSQLiteOpenHelper.java */
    public static class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Context f4540a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f4541b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final a f4542c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final boolean f4543d;

        /* JADX INFO: compiled from: SupportSQLiteOpenHelper.java */
        public static class a {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            Context f4544a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            String f4545b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            a f4546c;

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            boolean f4547d;

            a(Context context) {
                this.f4544a = context;
            }

            public b a() {
                if (this.f4546c == null) {
                    throw new IllegalArgumentException("Must set a callback to create the configuration.");
                }
                if (this.f4544a == null) {
                    throw new IllegalArgumentException("Must set a non-null context to create the configuration.");
                }
                if (this.f4547d && TextUtils.isEmpty(this.f4545b)) {
                    throw new IllegalArgumentException("Must set a non-null database name to a configuration that uses the no backup directory.");
                }
                return new b(this.f4544a, this.f4545b, this.f4546c, this.f4547d);
            }

            public a b(a aVar) {
                this.f4546c = aVar;
                return this;
            }

            public a c(String str) {
                this.f4545b = str;
                return this;
            }

            public a d(boolean z10) {
                this.f4547d = z10;
                return this;
            }
        }

        b(Context context, String str, a aVar, boolean z10) {
            this.f4540a = context;
            this.f4541b = str;
            this.f4542c = aVar;
            this.f4543d = z10;
        }

        public static a a(Context context) {
            return new a(context);
        }
    }

    /* JADX INFO: compiled from: SupportSQLiteOpenHelper.java */
    public interface c {
        h a(b bVar);
    }

    g K1();

    @Override // java.io.Closeable, java.lang.AutoCloseable
    void close();

    String getDatabaseName();

    void setWriteAheadLoggingEnabled(boolean z10);
}
