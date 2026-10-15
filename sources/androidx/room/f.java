package androidx.room;

import android.content.ContentResolver;
import android.database.CharArrayBuffer;
import android.database.ContentObserver;
import android.database.Cursor;
import android.database.DataSetObserver;
import android.database.SQLException;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.CancellationSignal;
import android.util.Pair;
import androidx.room.f;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: compiled from: AutoClosingRoomOpenHelper.java */
/* JADX INFO: loaded from: classes.dex */
final class f implements b1.h, j {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final b1.h f4038o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final a f4039p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final androidx.room.a f4040q;

    /* JADX INFO: compiled from: AutoClosingRoomOpenHelper.java */
    static final class a implements b1.g {

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        private final androidx.room.a f4041o;

        a(androidx.room.a aVar) {
            this.f4041o = aVar;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ Object f(String str, b1.g gVar) {
            gVar.execSQL(str);
            return null;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ Object g(String str, Object[] objArr, b1.g gVar) {
            gVar.x1(str, objArr);
            return null;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ Boolean h(b1.g gVar) {
            return Build.VERSION.SDK_INT >= 16 ? Boolean.valueOf(gVar.h3()) : Boolean.FALSE;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ Object i(b1.g gVar) {
            return null;
        }

        @Override // b1.g
        public String L2() {
            return (String) this.f4041o.c(new l.a() { // from class: x0.b
                @Override // l.a
                public final Object a(Object obj) {
                    return ((b1.g) obj).L2();
                }
            });
        }

        @Override // b1.g
        public boolean O2() {
            if (this.f4041o.d() == null) {
                return false;
            }
            return ((Boolean) this.f4041o.c(new l.a() { // from class: x0.c
                @Override // l.a
                public final Object a(Object obj) {
                    return Boolean.valueOf(((b1.g) obj).O2());
                }
            })).booleanValue();
        }

        @Override // b1.g
        public Cursor P1(String str) {
            try {
                return new c(this.f4041o.e().P1(str), this.f4041o);
            } catch (Throwable th) {
                this.f4041o.b();
                throw th;
            }
        }

        @Override // b1.g
        public void V() {
            try {
                this.f4041o.e().V();
            } catch (Throwable th) {
                this.f4041o.b();
                throw th;
            }
        }

        @Override // b1.g
        public void X1() {
            if (this.f4041o.d() == null) {
                throw new IllegalStateException("End transaction called but delegateDb is null");
            }
            try {
                this.f4041o.d().X1();
            } finally {
                this.f4041o.b();
            }
        }

        @Override // b1.g
        public Cursor c1(b1.j jVar) {
            try {
                return new c(this.f4041o.e().c1(jVar), this.f4041o);
            } catch (Throwable th) {
                this.f4041o.b();
                throw th;
            }
        }

        @Override // java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            this.f4041o.a();
        }

        @Override // b1.g
        public List<Pair<String, String>> d0() {
            return (List) this.f4041o.c(new l.a() { // from class: x0.a
                @Override // l.a
                public final Object a(Object obj) {
                    return ((b1.g) obj).d0();
                }
            });
        }

        @Override // b1.g
        public void execSQL(final String str) throws SQLException {
            this.f4041o.c(new l.a() { // from class: androidx.room.b
                @Override // l.a
                public final Object a(Object obj) {
                    return f.a.f(str, (b1.g) obj);
                }
            });
        }

        @Override // b1.g
        public boolean h3() {
            return ((Boolean) this.f4041o.c(new l.a() { // from class: androidx.room.d
                @Override // l.a
                public final Object a(Object obj) {
                    return f.a.h((b1.g) obj);
                }
            })).booleanValue();
        }

        @Override // b1.g
        public boolean isOpen() {
            b1.g gVarD = this.f4041o.d();
            if (gVarD == null) {
                return false;
            }
            return gVarD.isOpen();
        }

        void j() {
            this.f4041o.c(new l.a() { // from class: androidx.room.e
                @Override // l.a
                public final Object a(Object obj) {
                    return f.a.i((b1.g) obj);
                }
            });
        }

        @Override // b1.g
        public Cursor s0(b1.j jVar, CancellationSignal cancellationSignal) {
            try {
                return new c(this.f4041o.e().s0(jVar, cancellationSignal), this.f4041o);
            } catch (Throwable th) {
                this.f4041o.b();
                throw th;
            }
        }

        @Override // b1.g
        public void u1() {
            b1.g gVarD = this.f4041o.d();
            if (gVarD == null) {
                throw new IllegalStateException("setTransactionSuccessful called but delegateDb is null");
            }
            gVarD.u1();
        }

        @Override // b1.g
        public b1.k w0(String str) {
            return new b(str, this.f4041o);
        }

        @Override // b1.g
        public void x1(final String str, final Object[] objArr) throws SQLException {
            this.f4041o.c(new l.a() { // from class: androidx.room.c
                @Override // l.a
                public final Object a(Object obj) {
                    return f.a.g(str, objArr, (b1.g) obj);
                }
            });
        }

        @Override // b1.g
        public void z1() {
            try {
                this.f4041o.e().z1();
            } catch (Throwable th) {
                this.f4041o.b();
                throw th;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: compiled from: AutoClosingRoomOpenHelper.java */
    static class b implements b1.k {

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        private final String f4042o;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        private final ArrayList<Object> f4043p = new ArrayList<>();

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        private final androidx.room.a f4044q;

        b(String str, androidx.room.a aVar) {
            this.f4042o = str;
            this.f4044q = aVar;
        }

        private void c(b1.k kVar) {
            int i10 = 0;
            while (i10 < this.f4043p.size()) {
                int i11 = i10 + 1;
                Object obj = this.f4043p.get(i10);
                if (obj == null) {
                    kVar.z2(i11);
                } else if (obj instanceof Long) {
                    kVar.s1(i11, ((Long) obj).longValue());
                } else if (obj instanceof Double) {
                    kVar.L0(i11, ((Double) obj).doubleValue());
                } else if (obj instanceof String) {
                    kVar.k0(i11, (String) obj);
                } else if (obj instanceof byte[]) {
                    kVar.D1(i11, (byte[]) obj);
                }
                i10 = i11;
            }
        }

        private <T> T d(final l.a<b1.k, T> aVar) {
            return (T) this.f4044q.c(new l.a() { // from class: androidx.room.g
                @Override // l.a
                public final Object a(Object obj) {
                    return this.f4052a.e(aVar, (b1.g) obj);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ Object e(l.a aVar, b1.g gVar) {
            b1.k kVarW0 = gVar.w0(this.f4042o);
            c(kVarW0);
            return aVar.a(kVarW0);
        }

        private void f(int i10, Object obj) {
            int i11 = i10 - 1;
            if (i11 >= this.f4043p.size()) {
                for (int size = this.f4043p.size(); size <= i11; size++) {
                    this.f4043p.add(null);
                }
            }
            this.f4043p.set(i11, obj);
        }

        @Override // b1.i
        public void D1(int i10, byte[] bArr) {
            f(i10, bArr);
        }

        @Override // b1.k
        public long I3() {
            return ((Long) d(new l.a() { // from class: x0.e
                @Override // l.a
                public final Object a(Object obj) {
                    return Long.valueOf(((b1.k) obj).I3());
                }
            })).longValue();
        }

        @Override // b1.i
        public void L0(int i10, double d10) {
            f(i10, Double.valueOf(d10));
        }

        @Override // java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
        }

        @Override // b1.i
        public void k0(int i10, String str) {
            f(i10, str);
        }

        @Override // b1.i
        public void s1(int i10, long j10) {
            f(i10, Long.valueOf(j10));
        }

        @Override // b1.k
        public int u0() {
            return ((Integer) d(new l.a() { // from class: x0.d
                @Override // l.a
                public final Object a(Object obj) {
                    return Integer.valueOf(((b1.k) obj).u0());
                }
            })).intValue();
        }

        @Override // b1.i
        public void z2(int i10) {
            f(i10, null);
        }
    }

    /* JADX INFO: compiled from: AutoClosingRoomOpenHelper.java */
    private static final class c implements Cursor {

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        private final Cursor f4045o;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        private final androidx.room.a f4046p;

        c(Cursor cursor, androidx.room.a aVar) {
            this.f4045o = cursor;
            this.f4046p = aVar;
        }

        @Override // android.database.Cursor, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            this.f4045o.close();
            this.f4046p.b();
        }

        @Override // android.database.Cursor
        public void copyStringToBuffer(int i10, CharArrayBuffer charArrayBuffer) {
            this.f4045o.copyStringToBuffer(i10, charArrayBuffer);
        }

        @Override // android.database.Cursor
        @Deprecated
        public void deactivate() {
            this.f4045o.deactivate();
        }

        @Override // android.database.Cursor
        public byte[] getBlob(int i10) {
            return this.f4045o.getBlob(i10);
        }

        @Override // android.database.Cursor
        public int getColumnCount() {
            return this.f4045o.getColumnCount();
        }

        @Override // android.database.Cursor
        public int getColumnIndex(String str) {
            return this.f4045o.getColumnIndex(str);
        }

        @Override // android.database.Cursor
        public int getColumnIndexOrThrow(String str) throws IllegalArgumentException {
            return this.f4045o.getColumnIndexOrThrow(str);
        }

        @Override // android.database.Cursor
        public String getColumnName(int i10) {
            return this.f4045o.getColumnName(i10);
        }

        @Override // android.database.Cursor
        public String[] getColumnNames() {
            return this.f4045o.getColumnNames();
        }

        @Override // android.database.Cursor
        public int getCount() {
            return this.f4045o.getCount();
        }

        @Override // android.database.Cursor
        public double getDouble(int i10) {
            return this.f4045o.getDouble(i10);
        }

        @Override // android.database.Cursor
        public Bundle getExtras() {
            return this.f4045o.getExtras();
        }

        @Override // android.database.Cursor
        public float getFloat(int i10) {
            return this.f4045o.getFloat(i10);
        }

        @Override // android.database.Cursor
        public int getInt(int i10) {
            return this.f4045o.getInt(i10);
        }

        @Override // android.database.Cursor
        public long getLong(int i10) {
            return this.f4045o.getLong(i10);
        }

        @Override // android.database.Cursor
        public Uri getNotificationUri() {
            return b1.c.a(this.f4045o);
        }

        @Override // android.database.Cursor
        public List<Uri> getNotificationUris() {
            return b1.f.a(this.f4045o);
        }

        @Override // android.database.Cursor
        public int getPosition() {
            return this.f4045o.getPosition();
        }

        @Override // android.database.Cursor
        public short getShort(int i10) {
            return this.f4045o.getShort(i10);
        }

        @Override // android.database.Cursor
        public String getString(int i10) {
            return this.f4045o.getString(i10);
        }

        @Override // android.database.Cursor
        public int getType(int i10) {
            return this.f4045o.getType(i10);
        }

        @Override // android.database.Cursor
        public boolean getWantsAllOnMoveCalls() {
            return this.f4045o.getWantsAllOnMoveCalls();
        }

        @Override // android.database.Cursor
        public boolean isAfterLast() {
            return this.f4045o.isAfterLast();
        }

        @Override // android.database.Cursor
        public boolean isBeforeFirst() {
            return this.f4045o.isBeforeFirst();
        }

        @Override // android.database.Cursor
        public boolean isClosed() {
            return this.f4045o.isClosed();
        }

        @Override // android.database.Cursor
        public boolean isFirst() {
            return this.f4045o.isFirst();
        }

        @Override // android.database.Cursor
        public boolean isLast() {
            return this.f4045o.isLast();
        }

        @Override // android.database.Cursor
        public boolean isNull(int i10) {
            return this.f4045o.isNull(i10);
        }

        @Override // android.database.Cursor
        public boolean move(int i10) {
            return this.f4045o.move(i10);
        }

        @Override // android.database.Cursor
        public boolean moveToFirst() {
            return this.f4045o.moveToFirst();
        }

        @Override // android.database.Cursor
        public boolean moveToLast() {
            return this.f4045o.moveToLast();
        }

        @Override // android.database.Cursor
        public boolean moveToNext() {
            return this.f4045o.moveToNext();
        }

        @Override // android.database.Cursor
        public boolean moveToPosition(int i10) {
            return this.f4045o.moveToPosition(i10);
        }

        @Override // android.database.Cursor
        public boolean moveToPrevious() {
            return this.f4045o.moveToPrevious();
        }

        @Override // android.database.Cursor
        public void registerContentObserver(ContentObserver contentObserver) {
            this.f4045o.registerContentObserver(contentObserver);
        }

        @Override // android.database.Cursor
        public void registerDataSetObserver(DataSetObserver dataSetObserver) {
            this.f4045o.registerDataSetObserver(dataSetObserver);
        }

        @Override // android.database.Cursor
        @Deprecated
        public boolean requery() {
            return this.f4045o.requery();
        }

        @Override // android.database.Cursor
        public Bundle respond(Bundle bundle) {
            return this.f4045o.respond(bundle);
        }

        @Override // android.database.Cursor
        public void setExtras(Bundle bundle) {
            b1.e.a(this.f4045o, bundle);
        }

        @Override // android.database.Cursor
        public void setNotificationUri(ContentResolver contentResolver, Uri uri) {
            this.f4045o.setNotificationUri(contentResolver, uri);
        }

        @Override // android.database.Cursor
        public void setNotificationUris(ContentResolver contentResolver, List<Uri> list) {
            b1.f.b(this.f4045o, contentResolver, list);
        }

        @Override // android.database.Cursor
        public void unregisterContentObserver(ContentObserver contentObserver) {
            this.f4045o.unregisterContentObserver(contentObserver);
        }

        @Override // android.database.Cursor
        public void unregisterDataSetObserver(DataSetObserver dataSetObserver) {
            this.f4045o.unregisterDataSetObserver(dataSetObserver);
        }
    }

    f(b1.h hVar, androidx.room.a aVar) {
        this.f4038o = hVar;
        this.f4040q = aVar;
        aVar.f(hVar);
        this.f4039p = new a(aVar);
    }

    @Override // b1.h
    public b1.g K1() {
        this.f4039p.j();
        return this.f4039p;
    }

    @Override // androidx.room.j
    public b1.h b() {
        return this.f4038o;
    }

    androidx.room.a c() {
        return this.f4040q;
    }

    @Override // b1.h, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws Throwable {
        try {
            this.f4039p.close();
        } catch (IOException e10) {
            z0.e.a(e10);
        }
    }

    @Override // b1.h
    public String getDatabaseName() {
        return this.f4038o.getDatabaseName();
    }

    @Override // b1.h
    public void setWriteAheadLoggingEnabled(boolean z10) {
        this.f4038o.setWriteAheadLoggingEnabled(z10);
    }
}
