package t3;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteDatabaseLockedException;
import android.os.SystemClock;
import android.util.Base64;
import com.facebook.gamingservices.cloudgaming.internal.SDKConstants;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import javax.inject.Inject;
import javax.inject.Named;
import javax.inject.Provider;
import javax.inject.Singleton;
import l3.i;
import o3.a;
import o3.c;
import u3.b;

/* JADX INFO: compiled from: SQLiteEventStore.java */
/* JADX INFO: loaded from: classes.dex */
@Singleton
public class m0 implements t3.d, u3.b, t3.c {

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private static final j3.b f35335t = j3.b.b("proto");

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final t0 f35336o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final v3.a f35337p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final v3.a f35338q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private final e f35339r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private final Provider<String> f35340s;

    /* JADX INFO: compiled from: SQLiteEventStore.java */
    interface b<T, U> {
        U a(T t10);
    }

    /* JADX INFO: compiled from: SQLiteEventStore.java */
    private static class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final String f35341a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final String f35342b;

        private c(String str, String str2) {
            this.f35341a = str;
            this.f35342b = str2;
        }
    }

    /* JADX INFO: compiled from: SQLiteEventStore.java */
    interface d<T> {
        T a();
    }

    @Inject
    m0(v3.a aVar, v3.a aVar2, e eVar, t0 t0Var, @Named Provider<String> provider) {
        this.f35336o = t0Var;
        this.f35337p = aVar;
        this.f35338q = aVar2;
        this.f35339r = eVar;
        this.f35340s = provider;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object A0(String str, String str2, SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.compileStatement(str).execute();
        P0(sQLiteDatabase.rawQuery(str2, null), new b() { // from class: t3.i0
            @Override // t3.m0.b
            public final Object a(Object obj) {
                return this.f35322a.z0((Cursor) obj);
            }
        });
        sQLiteDatabase.compileStatement("DELETE FROM events WHERE num_attempts >= 16").execute();
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Boolean B0(Cursor cursor) {
        return Boolean.valueOf(cursor.getCount() > 0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Object C0(String str, c.b bVar, long j10, SQLiteDatabase sQLiteDatabase) {
        if (((Boolean) P0(sQLiteDatabase.rawQuery("SELECT 1 FROM log_event_dropped WHERE log_source = ? AND reason = ?", new String[]{str, Integer.toString(bVar.h())}), new b() { // from class: t3.x
            @Override // t3.m0.b
            public final Object a(Object obj) {
                return m0.B0((Cursor) obj);
            }
        })).booleanValue()) {
            sQLiteDatabase.execSQL("UPDATE log_event_dropped SET events_dropped_count = events_dropped_count + " + j10 + " WHERE log_source = ? AND reason = ?", new String[]{str, Integer.toString(bVar.h())});
        } else {
            ContentValues contentValues = new ContentValues();
            contentValues.put("log_source", str);
            contentValues.put("reason", Integer.valueOf(bVar.h()));
            contentValues.put("events_dropped_count", Long.valueOf(j10));
            sQLiteDatabase.insert("log_event_dropped", null, contentValues);
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Object D0(long j10, l3.p pVar, SQLiteDatabase sQLiteDatabase) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("next_request_ms", Long.valueOf(j10));
        if (sQLiteDatabase.update("transport_contexts", contentValues, "backend_name = ? and priority = ?", new String[]{pVar.b(), String.valueOf(w3.a.a(pVar.d()))}) < 1) {
            contentValues.put("backend_name", pVar.b());
            contentValues.put("priority", Integer.valueOf(w3.a.a(pVar.d())));
            sQLiteDatabase.insert("transport_contexts", null, contentValues);
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object E0(SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.compileStatement("DELETE FROM log_event_dropped").execute();
        sQLiteDatabase.compileStatement("UPDATE global_log_event_state SET last_metrics_upload_ms=" + this.f35337p.a()).execute();
        return null;
    }

    private List<k> F0(SQLiteDatabase sQLiteDatabase, final l3.p pVar, int i10) {
        final ArrayList arrayList = new ArrayList();
        Long lP = P(sQLiteDatabase, pVar);
        if (lP == null) {
            return arrayList;
        }
        P0(sQLiteDatabase.query("events", new String[]{"_id", "transport_name", "timestamp_ms", "uptime_ms", "payload_encoding", "payload", "code", "inline"}, "context_id = ?", new String[]{lP.toString()}, null, null, null, String.valueOf(i10)), new b() { // from class: t3.n
            @Override // t3.m0.b
            public final Object a(Object obj) {
                return this.f35343a.p0(arrayList, pVar, (Cursor) obj);
            }
        });
        return arrayList;
    }

    private c.b G(int i10) {
        c.b bVar = c.b.REASON_UNKNOWN;
        if (i10 == bVar.h()) {
            return bVar;
        }
        c.b bVar2 = c.b.MESSAGE_TOO_OLD;
        if (i10 == bVar2.h()) {
            return bVar2;
        }
        c.b bVar3 = c.b.CACHE_FULL;
        if (i10 == bVar3.h()) {
            return bVar3;
        }
        c.b bVar4 = c.b.PAYLOAD_TOO_BIG;
        if (i10 == bVar4.h()) {
            return bVar4;
        }
        c.b bVar5 = c.b.MAX_RETRIES_REACHED;
        if (i10 == bVar5.h()) {
            return bVar5;
        }
        c.b bVar6 = c.b.INVALID_PAYLOD;
        if (i10 == bVar6.h()) {
            return bVar6;
        }
        c.b bVar7 = c.b.SERVER_ERROR;
        if (i10 == bVar7.h()) {
            return bVar7;
        }
        p3.a.b("SQLiteEventStore", "%n is not valid. No matched LogEventDropped-Reason found. Treated it as REASON_UNKNOWN", Integer.valueOf(i10));
        return bVar;
    }

    private Map<Long, Set<c>> G0(SQLiteDatabase sQLiteDatabase, List<k> list) {
        final HashMap map = new HashMap();
        StringBuilder sb = new StringBuilder("event_id IN (");
        for (int i10 = 0; i10 < list.size(); i10++) {
            sb.append(list.get(i10).c());
            if (i10 < list.size() - 1) {
                sb.append(',');
            }
        }
        sb.append(')');
        P0(sQLiteDatabase.query("event_metadata", new String[]{"event_id", "name", SDKConstants.PARAM_VALUE}, sb.toString(), null, null, null, null), new b() { // from class: t3.g0
            @Override // t3.m0.b
            public final Object a(Object obj) {
                return m0.t0(map, (Cursor) obj);
            }
        });
        return map;
    }

    private void H(final SQLiteDatabase sQLiteDatabase) {
        K0(new d() { // from class: t3.c0
            @Override // t3.m0.d
            public final Object a() {
                return m0.X(sQLiteDatabase);
            }
        }, new b() { // from class: t3.b0
            @Override // t3.m0.b
            public final Object a(Object obj) {
                return m0.Y((Throwable) obj);
            }
        });
    }

    private static byte[] H0(String str) {
        if (str == null) {
            return null;
        }
        return Base64.decode(str, 0);
    }

    private long I(SQLiteDatabase sQLiteDatabase, l3.p pVar) {
        Long lP = P(sQLiteDatabase, pVar);
        if (lP != null) {
            return lP.longValue();
        }
        ContentValues contentValues = new ContentValues();
        contentValues.put("backend_name", pVar.b());
        contentValues.put("priority", Integer.valueOf(w3.a.a(pVar.d())));
        contentValues.put("next_request_ms", (Integer) 0);
        if (pVar.c() != null) {
            contentValues.put("extras", Base64.encodeToString(pVar.c(), 0));
        }
        return sQLiteDatabase.insert("transport_contexts", null, contentValues);
    }

    private void I0(a.C0210a c0210a, Map<String, List<o3.c>> map) {
        for (Map.Entry<String, List<o3.c>> entry : map.entrySet()) {
            c0210a.a(o3.d.c().c(entry.getKey()).b(entry.getValue()).a());
        }
    }

    private byte[] J0(long j10) {
        return (byte[]) P0(K().query("event_payloads", new String[]{"bytes"}, "event_id = ?", new String[]{String.valueOf(j10)}, null, null, "sequence_num"), new b() { // from class: t3.s
            @Override // t3.m0.b
            public final Object a(Object obj) {
                return m0.y0((Cursor) obj);
            }
        });
    }

    private <T> T K0(d<T> dVar, b<Throwable, T> bVar) {
        long jA = this.f35338q.a();
        while (true) {
            try {
                return dVar.a();
            } catch (SQLiteDatabaseLockedException e10) {
                if (this.f35338q.a() >= ((long) this.f35339r.b()) + jA) {
                    return bVar.a(e10);
                }
                SystemClock.sleep(50L);
            }
        }
    }

    private o3.b L() {
        return o3.b.b().b(o3.e.c().b(J()).c(e.f35311a.f()).a()).a();
    }

    private long M() {
        return K().compileStatement("PRAGMA page_count").simpleQueryForLong();
    }

    private long N() {
        return K().compileStatement("PRAGMA page_size").simpleQueryForLong();
    }

    private static j3.b N0(String str) {
        return str == null ? f35335t : j3.b.b(str);
    }

    private o3.f O() {
        final long jA = this.f35337p.a();
        return (o3.f) Q(new b() { // from class: t3.w
            @Override // t3.m0.b
            public final Object a(Object obj) {
                return m0.e0(jA, (SQLiteDatabase) obj);
            }
        });
    }

    private static String O0(Iterable<k> iterable) {
        StringBuilder sb = new StringBuilder("(");
        Iterator<k> it = iterable.iterator();
        while (it.hasNext()) {
            sb.append(it.next().c());
            if (it.hasNext()) {
                sb.append(',');
            }
        }
        sb.append(')');
        return sb.toString();
    }

    private Long P(SQLiteDatabase sQLiteDatabase, l3.p pVar) {
        StringBuilder sb = new StringBuilder("backend_name = ? and priority = ?");
        ArrayList arrayList = new ArrayList(Arrays.asList(pVar.b(), String.valueOf(w3.a.a(pVar.d()))));
        if (pVar.c() != null) {
            sb.append(" and extras = ?");
            arrayList.add(Base64.encodeToString(pVar.c(), 0));
        } else {
            sb.append(" and extras is null");
        }
        return (Long) P0(sQLiteDatabase.query("transport_contexts", new String[]{"_id"}, sb.toString(), (String[]) arrayList.toArray(new String[0]), null, null, null), new b() { // from class: t3.v
            @Override // t3.m0.b
            public final Object a(Object obj) {
                return m0.f0((Cursor) obj);
            }
        });
    }

    static <T> T P0(Cursor cursor, b<Cursor, T> bVar) {
        try {
            return bVar.a(cursor);
        } finally {
            cursor.close();
        }
    }

    private boolean R() {
        return M() * N() >= this.f35339r.f();
    }

    private List<k> S(List<k> list, Map<Long, Set<c>> map) {
        ListIterator<k> listIterator = list.listIterator();
        while (listIterator.hasNext()) {
            k next = listIterator.next();
            if (map.containsKey(Long.valueOf(next.c()))) {
                i.a aVarL = next.b().l();
                for (c cVar : map.get(Long.valueOf(next.c()))) {
                    aVarL.c(cVar.f35341a, cVar.f35342b);
                }
                listIterator.set(k.a(next.c(), next.d(), aVarL.d()));
            }
        }
        return list;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object T(Cursor cursor) {
        while (cursor.moveToNext()) {
            e(cursor.getInt(0), c.b.MESSAGE_TOO_OLD, cursor.getString(1));
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Integer U(long j10, SQLiteDatabase sQLiteDatabase) {
        String[] strArr = {String.valueOf(j10)};
        P0(sQLiteDatabase.rawQuery("SELECT COUNT(*), transport_name FROM events WHERE timestamp_ms < ? GROUP BY transport_name", strArr), new b() { // from class: t3.h0
            @Override // t3.m0.b
            public final Object a(Object obj) {
                return this.f35320a.T((Cursor) obj);
            }
        });
        return Integer.valueOf(sQLiteDatabase.delete("events", "timestamp_ms < ?", strArr));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Object X(SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.beginTransaction();
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Object Y(Throwable th) {
        throw new u3.a("Timed out while trying to acquire the lock.", th);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ SQLiteDatabase Z(Throwable th) {
        throw new u3.a("Timed out while trying to open db.", th);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Long a0(Cursor cursor) {
        if (cursor.moveToNext()) {
            return Long.valueOf(cursor.getLong(0));
        }
        return 0L;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ o3.f c0(long j10, Cursor cursor) {
        cursor.moveToNext();
        return o3.f.c().c(cursor.getLong(0)).b(j10).a();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ o3.f e0(final long j10, SQLiteDatabase sQLiteDatabase) {
        return (o3.f) P0(sQLiteDatabase.rawQuery("SELECT last_metrics_upload_ms FROM global_log_event_state LIMIT 1", new String[0]), new b() { // from class: t3.l
            @Override // t3.m0.b
            public final Object a(Object obj) {
                return m0.c0(j10, (Cursor) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Long f0(Cursor cursor) {
        if (cursor.moveToNext()) {
            return Long.valueOf(cursor.getLong(0));
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Boolean g0(l3.p pVar, SQLiteDatabase sQLiteDatabase) {
        Long lP = P(sQLiteDatabase, pVar);
        return lP == null ? Boolean.FALSE : (Boolean) P0(K().rawQuery("SELECT 1 FROM events WHERE context_id = ? LIMIT 1", new String[]{lP.toString()}), new b() { // from class: t3.y
            @Override // t3.m0.b
            public final Object a(Object obj) {
                return Boolean.valueOf(((Cursor) obj).moveToNext());
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ List i0(SQLiteDatabase sQLiteDatabase) {
        return (List) P0(sQLiteDatabase.rawQuery("SELECT distinct t._id, t.backend_name, t.priority, t.extras FROM transport_contexts AS t, events AS e WHERE e.context_id = t._id", new String[0]), new b() { // from class: t3.t
            @Override // t3.m0.b
            public final Object a(Object obj) {
                return m0.j0((Cursor) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ List j0(Cursor cursor) {
        ArrayList arrayList = new ArrayList();
        while (cursor.moveToNext()) {
            arrayList.add(l3.p.a().b(cursor.getString(1)).d(w3.a.b(cursor.getInt(2))).c(H0(cursor.getString(3))).a());
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ List l0(l3.p pVar, SQLiteDatabase sQLiteDatabase) {
        List<k> listF0 = F0(sQLiteDatabase, pVar, this.f35339r.d());
        for (j3.d dVar : j3.d.values()) {
            if (dVar != pVar.d()) {
                int iD = this.f35339r.d() - listF0.size();
                if (iD <= 0) {
                    break;
                }
                listF0.addAll(F0(sQLiteDatabase, pVar.f(dVar), iD));
            }
        }
        return S(listF0, G0(sQLiteDatabase, listF0));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ o3.a m0(Map map, a.C0210a c0210a, Cursor cursor) {
        while (cursor.moveToNext()) {
            String string = cursor.getString(0);
            c.b bVarG = G(cursor.getInt(1));
            long j10 = cursor.getLong(2);
            if (!map.containsKey(string)) {
                map.put(string, new ArrayList());
            }
            ((List) map.get(string)).add(o3.c.c().c(bVarG).b(j10).a());
        }
        I0(c0210a, map);
        c0210a.e(O());
        c0210a.d(L());
        c0210a.c(this.f35340s.get());
        return c0210a.b();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ o3.a n0(String str, final Map map, final a.C0210a c0210a, SQLiteDatabase sQLiteDatabase) {
        return (o3.a) P0(sQLiteDatabase.rawQuery(str, new String[0]), new b() { // from class: t3.o
            @Override // t3.m0.b
            public final Object a(Object obj) {
                return this.f35351a.m0(map, c0210a, (Cursor) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object p0(List list, l3.p pVar, Cursor cursor) {
        while (cursor.moveToNext()) {
            long j10 = cursor.getLong(0);
            boolean z10 = cursor.getInt(7) != 0;
            i.a aVarK = l3.i.a().j(cursor.getString(1)).i(cursor.getLong(2)).k(cursor.getLong(3));
            if (z10) {
                aVarK.h(new l3.h(N0(cursor.getString(4)), cursor.getBlob(5)));
            } else {
                aVarK.h(new l3.h(N0(cursor.getString(4)), J0(j10)));
            }
            if (!cursor.isNull(6)) {
                aVarK.g(Integer.valueOf(cursor.getInt(6)));
            }
            list.add(k.a(j10, pVar, aVarK.d()));
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Object t0(Map map, Cursor cursor) {
        while (true) {
            if (!cursor.moveToNext()) {
                return null;
            }
            long j10 = cursor.getLong(0);
            Set hashSet = (Set) map.get(Long.valueOf(j10));
            if (hashSet == null) {
                hashSet = new HashSet();
                map.put(Long.valueOf(j10), hashSet);
            }
            hashSet.add(new c(cursor.getString(1), cursor.getString(2)));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Long v0(l3.i iVar, l3.p pVar, SQLiteDatabase sQLiteDatabase) {
        if (R()) {
            e(1L, c.b.CACHE_FULL, iVar.j());
            return -1L;
        }
        long jI = I(sQLiteDatabase, pVar);
        int iE = this.f35339r.e();
        byte[] bArrA = iVar.e().a();
        boolean z10 = bArrA.length <= iE;
        ContentValues contentValues = new ContentValues();
        contentValues.put(SDKConstants.PARAM_CONTEXT_CONTEXT_ID, Long.valueOf(jI));
        contentValues.put("transport_name", iVar.j());
        contentValues.put("timestamp_ms", Long.valueOf(iVar.f()));
        contentValues.put("uptime_ms", Long.valueOf(iVar.k()));
        contentValues.put("payload_encoding", iVar.e().b().a());
        contentValues.put("code", iVar.d());
        contentValues.put("num_attempts", (Integer) 0);
        contentValues.put("inline", Boolean.valueOf(z10));
        contentValues.put("payload", z10 ? bArrA : new byte[0]);
        long jInsert = sQLiteDatabase.insert("events", null, contentValues);
        if (!z10) {
            double length = bArrA.length;
            double d10 = iE;
            Double.isNaN(length);
            Double.isNaN(d10);
            int iCeil = (int) Math.ceil(length / d10);
            for (int i10 = 1; i10 <= iCeil; i10++) {
                byte[] bArrCopyOfRange = Arrays.copyOfRange(bArrA, (i10 - 1) * iE, Math.min(i10 * iE, bArrA.length));
                ContentValues contentValues2 = new ContentValues();
                contentValues2.put("event_id", Long.valueOf(jInsert));
                contentValues2.put("sequence_num", Integer.valueOf(i10));
                contentValues2.put("bytes", bArrCopyOfRange);
                sQLiteDatabase.insert("event_payloads", null, contentValues2);
            }
        }
        for (Map.Entry<String, String> entry : iVar.i().entrySet()) {
            ContentValues contentValues3 = new ContentValues();
            contentValues3.put("event_id", Long.valueOf(jInsert));
            contentValues3.put("name", entry.getKey());
            contentValues3.put(SDKConstants.PARAM_VALUE, entry.getValue());
            sQLiteDatabase.insert("event_metadata", null, contentValues3);
        }
        return Long.valueOf(jInsert);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ byte[] y0(Cursor cursor) {
        ArrayList arrayList = new ArrayList();
        int length = 0;
        while (cursor.moveToNext()) {
            byte[] blob = cursor.getBlob(0);
            arrayList.add(blob);
            length += blob.length;
        }
        byte[] bArr = new byte[length];
        int length2 = 0;
        for (int i10 = 0; i10 < arrayList.size(); i10++) {
            byte[] bArr2 = (byte[]) arrayList.get(i10);
            System.arraycopy(bArr2, 0, bArr, length2, bArr2.length);
            length2 += bArr2.length;
        }
        return bArr;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object z0(Cursor cursor) {
        while (cursor.moveToNext()) {
            e(cursor.getInt(0), c.b.MAX_RETRIES_REACHED, cursor.getString(1));
        }
        return null;
    }

    @Override // t3.d
    public k A3(final l3.p pVar, final l3.i iVar) {
        p3.a.c("SQLiteEventStore", "Storing event with priority=%s, name=%s for destination %s", pVar.d(), iVar.j(), pVar.b());
        long jLongValue = ((Long) Q(new b() { // from class: t3.p
            @Override // t3.m0.b
            public final Object a(Object obj) {
                return this.f35355a.v0(iVar, pVar, (SQLiteDatabase) obj);
            }
        })).longValue();
        if (jLongValue < 1) {
            return null;
        }
        return k.a(jLongValue, pVar, iVar);
    }

    @Override // t3.d
    public long B1(l3.p pVar) {
        return ((Long) P0(K().rawQuery("SELECT next_request_ms FROM transport_contexts WHERE backend_name = ? and priority = ?", new String[]{pVar.b(), String.valueOf(w3.a.a(pVar.d()))}), new b() { // from class: t3.u
            @Override // t3.m0.b
            public final Object a(Object obj) {
                return m0.a0((Cursor) obj);
            }
        })).longValue();
    }

    long J() {
        return M() * N();
    }

    SQLiteDatabase K() {
        final t0 t0Var = this.f35336o;
        Objects.requireNonNull(t0Var);
        return (SQLiteDatabase) K0(new d() { // from class: t3.d0
            @Override // t3.m0.d
            public final Object a() {
                return t0Var.getWritableDatabase();
            }
        }, new b() { // from class: t3.a0
            @Override // t3.m0.b
            public final Object a(Object obj) {
                return m0.Z((Throwable) obj);
            }
        });
    }

    <T> T Q(b<SQLiteDatabase, T> bVar) {
        SQLiteDatabase sQLiteDatabaseK = K();
        sQLiteDatabaseK.beginTransaction();
        try {
            T tA = bVar.a(sQLiteDatabaseK);
            sQLiteDatabaseK.setTransactionSuccessful();
            return tA;
        } finally {
            sQLiteDatabaseK.endTransaction();
        }
    }

    @Override // t3.d
    public Iterable<k> V0(final l3.p pVar) {
        return (Iterable) Q(new b() { // from class: t3.q
            @Override // t3.m0.b
            public final Object a(Object obj) {
                return this.f35359a.l0(pVar, (SQLiteDatabase) obj);
            }
        });
    }

    @Override // t3.d
    public int W() {
        final long jA = this.f35337p.a() - this.f35339r.c();
        return ((Integer) Q(new b() { // from class: t3.k0
            @Override // t3.m0.b
            public final Object a(Object obj) {
                return this.f35325a.U(jA, (SQLiteDatabase) obj);
            }
        })).intValue();
    }

    @Override // t3.d
    public Iterable<l3.p> Y0() {
        return (Iterable) Q(new b() { // from class: t3.z
            @Override // t3.m0.b
            public final Object a(Object obj) {
                return m0.i0((SQLiteDatabase) obj);
            }
        });
    }

    @Override // u3.b
    public <T> T b(b.a<T> aVar) {
        SQLiteDatabase sQLiteDatabaseK = K();
        H(sQLiteDatabaseK);
        try {
            T tExecute = aVar.execute();
            sQLiteDatabaseK.setTransactionSuccessful();
            return tExecute;
        } finally {
            sQLiteDatabaseK.endTransaction();
        }
    }

    @Override // t3.d
    public void b0(Iterable<k> iterable) {
        if (iterable.iterator().hasNext()) {
            K().compileStatement("DELETE FROM events WHERE _id in " + O0(iterable)).execute();
        }
    }

    @Override // t3.d
    public boolean b2(final l3.p pVar) {
        return ((Boolean) Q(new b() { // from class: t3.r
            @Override // t3.m0.b
            public final Object a(Object obj) {
                return this.f35362a.g0(pVar, (SQLiteDatabase) obj);
            }
        })).booleanValue();
    }

    @Override // t3.c
    public void c() {
        Q(new b() { // from class: t3.j0
            @Override // t3.m0.b
            public final Object a(Object obj) {
                return this.f35324a.E0((SQLiteDatabase) obj);
            }
        });
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.f35336o.close();
    }

    @Override // t3.c
    public o3.a d() {
        final a.C0210a c0210aE = o3.a.e();
        final HashMap map = new HashMap();
        final String str = "SELECT log_source, reason, events_dropped_count FROM log_event_dropped";
        return (o3.a) Q(new b() { // from class: t3.m
            @Override // t3.m0.b
            public final Object a(Object obj) {
                return this.f35331a.n0(str, map, c0210aE, (SQLiteDatabase) obj);
            }
        });
    }

    @Override // t3.c
    public void e(final long j10, final c.b bVar, final String str) {
        Q(new b() { // from class: t3.f0
            @Override // t3.m0.b
            public final Object a(Object obj) {
                return m0.C0(str, bVar, j10, (SQLiteDatabase) obj);
            }
        });
    }

    @Override // t3.d
    public void o0(final l3.p pVar, final long j10) {
        Q(new b() { // from class: t3.e0
            @Override // t3.m0.b
            public final Object a(Object obj) {
                return m0.D0(j10, pVar, (SQLiteDatabase) obj);
            }
        });
    }

    @Override // t3.d
    public void s3(Iterable<k> iterable) {
        if (iterable.iterator().hasNext()) {
            final String str = "UPDATE events SET num_attempts = num_attempts + 1 WHERE _id in " + O0(iterable);
            final String str2 = "SELECT COUNT(*), transport_name FROM events WHERE num_attempts >= 16 GROUP BY transport_name";
            Q(new b() { // from class: t3.l0
                @Override // t3.m0.b
                public final Object a(Object obj) {
                    return this.f35328a.A0(str, str2, (SQLiteDatabase) obj);
                }
            });
        }
    }
}
