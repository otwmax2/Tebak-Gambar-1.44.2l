package androidx.room;

import android.database.Cursor;
import b1.h;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: compiled from: RoomOpenHelper.java */
/* JADX INFO: loaded from: classes.dex */
public class i0 extends h.a {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private i f4119b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final a f4120c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final String f4121d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final String f4122e;

    /* JADX INFO: compiled from: RoomOpenHelper.java */
    public static abstract class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f4123a;

        public a(int i10) {
            this.f4123a = i10;
        }

        protected abstract void a(b1.g gVar);

        protected abstract void b(b1.g gVar);

        protected abstract void c(b1.g gVar);

        protected abstract void d(b1.g gVar);

        protected abstract void e(b1.g gVar);

        protected abstract void f(b1.g gVar);

        protected abstract b g(b1.g gVar);
    }

    /* JADX INFO: compiled from: RoomOpenHelper.java */
    public static class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final boolean f4124a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f4125b;

        public b(boolean z10, String str) {
            this.f4124a = z10;
            this.f4125b = str;
        }
    }

    public i0(i iVar, a aVar, String str, String str2) {
        super(aVar.f4123a);
        this.f4119b = iVar;
        this.f4120c = aVar;
        this.f4121d = str;
        this.f4122e = str2;
    }

    private void h(b1.g gVar) {
        if (!k(gVar)) {
            b bVarG = this.f4120c.g(gVar);
            if (bVarG.f4124a) {
                this.f4120c.e(gVar);
                l(gVar);
                return;
            } else {
                throw new IllegalStateException("Pre-packaged database has an invalid schema: " + bVarG.f4125b);
            }
        }
        Cursor cursorC1 = gVar.c1(new b1.a("SELECT identity_hash FROM room_master_table WHERE id = 42 LIMIT 1"));
        try {
            String string = cursorC1.moveToFirst() ? cursorC1.getString(0) : null;
            cursorC1.close();
            if (!this.f4121d.equals(string) && !this.f4122e.equals(string)) {
                throw new IllegalStateException("Room cannot verify the data integrity. Looks like you've changed schema but forgot to update the version number. You can simply fix this by increasing the version number.");
            }
        } catch (Throwable th) {
            cursorC1.close();
            throw th;
        }
    }

    private void i(b1.g gVar) {
        gVar.execSQL("CREATE TABLE IF NOT EXISTS room_master_table (id INTEGER PRIMARY KEY,identity_hash TEXT)");
    }

    private static boolean j(b1.g gVar) {
        Cursor cursorP1 = gVar.P1("SELECT count(*) FROM sqlite_master WHERE name != 'android_metadata'");
        try {
            boolean z10 = false;
            if (cursorP1.moveToFirst()) {
                if (cursorP1.getInt(0) == 0) {
                    z10 = true;
                }
            }
            return z10;
        } finally {
            cursorP1.close();
        }
    }

    private static boolean k(b1.g gVar) {
        Cursor cursorP1 = gVar.P1("SELECT 1 FROM sqlite_master WHERE type = 'table' AND name='room_master_table'");
        try {
            boolean z10 = false;
            if (cursorP1.moveToFirst()) {
                if (cursorP1.getInt(0) != 0) {
                    z10 = true;
                }
            }
            return z10;
        } finally {
            cursorP1.close();
        }
    }

    private void l(b1.g gVar) {
        i(gVar);
        gVar.execSQL(x0.j.a(this.f4121d));
    }

    @Override // b1.h.a
    public void b(b1.g gVar) {
        super.b(gVar);
    }

    @Override // b1.h.a
    public void d(b1.g gVar) {
        boolean zJ = j(gVar);
        this.f4120c.a(gVar);
        if (!zJ) {
            b bVarG = this.f4120c.g(gVar);
            if (!bVarG.f4124a) {
                throw new IllegalStateException("Pre-packaged database has an invalid schema: " + bVarG.f4125b);
            }
        }
        l(gVar);
        this.f4120c.c(gVar);
    }

    @Override // b1.h.a
    public void e(b1.g gVar, int i10, int i11) {
        g(gVar, i10, i11);
    }

    @Override // b1.h.a
    public void f(b1.g gVar) {
        super.f(gVar);
        h(gVar);
        this.f4120c.d(gVar);
        this.f4119b = null;
    }

    @Override // b1.h.a
    public void g(b1.g gVar, int i10, int i11) {
        boolean z10;
        List<y0.b> listC;
        i iVar = this.f4119b;
        if (iVar == null || (listC = iVar.f4103d.c(i10, i11)) == null) {
            z10 = false;
        } else {
            this.f4120c.f(gVar);
            Iterator<y0.b> it = listC.iterator();
            while (it.hasNext()) {
                it.next().a(gVar);
            }
            b bVarG = this.f4120c.g(gVar);
            if (!bVarG.f4124a) {
                throw new IllegalStateException("Migration didn't properly handle: " + bVarG.f4125b);
            }
            this.f4120c.e(gVar);
            l(gVar);
            z10 = true;
        }
        if (z10) {
            return;
        }
        i iVar2 = this.f4119b;
        if (iVar2 != null && !iVar2.a(i10, i11)) {
            this.f4120c.b(gVar);
            this.f4120c.a(gVar);
            return;
        }
        throw new IllegalStateException("A migration from " + i10 + " to " + i11 + " was required but not found. Please provide the necessary Migration path via RoomDatabase.Builder.addMigration(Migration ...) or allow for destructive migrations via one of the RoomDatabase.Builder.fallbackToDestructiveMigration* methods.");
    }
}
