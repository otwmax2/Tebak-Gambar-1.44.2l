package t3;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import android.os.Build;
import java.util.Arrays;
import java.util.List;
import javax.inject.Inject;
import javax.inject.Named;

/* JADX INFO: compiled from: SchemaManager.java */
/* JADX INFO: loaded from: classes.dex */
final class t0 extends SQLiteOpenHelper {

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private static final String f35368q = "INSERT INTO global_log_event_state VALUES (" + System.currentTimeMillis() + ")";

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    static int f35369r = 5;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private static final a f35370s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private static final a f35371t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private static final a f35372u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private static final a f35373v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private static final a f35374w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private static final List<a> f35375x;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final int f35376o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private boolean f35377p;

    /* JADX INFO: compiled from: SchemaManager.java */
    public interface a {
        void a(SQLiteDatabase sQLiteDatabase);
    }

    static {
        r0 r0Var = new a() { // from class: t3.r0
            @Override // t3.t0.a
            public final void a(SQLiteDatabase sQLiteDatabase) {
                t0.h(sQLiteDatabase);
            }
        };
        f35370s = r0Var;
        o0 o0Var = new a() { // from class: t3.o0
            @Override // t3.t0.a
            public final void a(SQLiteDatabase sQLiteDatabase) {
                t0.i(sQLiteDatabase);
            }
        };
        f35371t = o0Var;
        p0 p0Var = new a() { // from class: t3.p0
            @Override // t3.t0.a
            public final void a(SQLiteDatabase sQLiteDatabase) {
                sQLiteDatabase.execSQL("ALTER TABLE events ADD COLUMN payload_encoding TEXT");
            }
        };
        f35372u = p0Var;
        q0 q0Var = new a() { // from class: t3.q0
            @Override // t3.t0.a
            public final void a(SQLiteDatabase sQLiteDatabase) {
                t0.k(sQLiteDatabase);
            }
        };
        f35373v = q0Var;
        s0 s0Var = new a() { // from class: t3.s0
            @Override // t3.t0.a
            public final void a(SQLiteDatabase sQLiteDatabase) {
                t0.l(sQLiteDatabase);
            }
        };
        f35374w = s0Var;
        f35375x = Arrays.asList(r0Var, o0Var, p0Var, q0Var, s0Var);
    }

    @Inject
    t0(Context context, @Named String str, @Named int i10) {
        super(context, str, (SQLiteDatabase.CursorFactory) null, i10);
        this.f35377p = false;
        this.f35376o = i10;
    }

    private void g(SQLiteDatabase sQLiteDatabase) {
        if (this.f35377p) {
            return;
        }
        onConfigure(sQLiteDatabase);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void h(SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.execSQL("CREATE TABLE events (_id INTEGER PRIMARY KEY, context_id INTEGER NOT NULL, transport_name TEXT NOT NULL, timestamp_ms INTEGER NOT NULL, uptime_ms INTEGER NOT NULL, payload BLOB NOT NULL, code INTEGER, num_attempts INTEGER NOT NULL,FOREIGN KEY (context_id) REFERENCES transport_contexts(_id) ON DELETE CASCADE)");
        sQLiteDatabase.execSQL("CREATE TABLE event_metadata (_id INTEGER PRIMARY KEY, event_id INTEGER NOT NULL, name TEXT NOT NULL, value TEXT NOT NULL,FOREIGN KEY (event_id) REFERENCES events(_id) ON DELETE CASCADE)");
        sQLiteDatabase.execSQL("CREATE TABLE transport_contexts (_id INTEGER PRIMARY KEY, backend_name TEXT NOT NULL, priority INTEGER NOT NULL, next_request_ms INTEGER NOT NULL)");
        sQLiteDatabase.execSQL("CREATE INDEX events_backend_id on events(context_id)");
        sQLiteDatabase.execSQL("CREATE UNIQUE INDEX contexts_backend_priority on transport_contexts(backend_name, priority)");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void i(SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.execSQL("ALTER TABLE transport_contexts ADD COLUMN extras BLOB");
        sQLiteDatabase.execSQL("CREATE UNIQUE INDEX contexts_backend_priority_extras on transport_contexts(backend_name, priority, extras)");
        sQLiteDatabase.execSQL("DROP INDEX contexts_backend_priority");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void k(SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.execSQL("ALTER TABLE events ADD COLUMN inline BOOLEAN NOT NULL DEFAULT 1");
        sQLiteDatabase.execSQL("DROP TABLE IF EXISTS event_payloads");
        sQLiteDatabase.execSQL("CREATE TABLE event_payloads (sequence_num INTEGER NOT NULL, event_id INTEGER NOT NULL, bytes BLOB NOT NULL,FOREIGN KEY (event_id) REFERENCES events(_id) ON DELETE CASCADE,PRIMARY KEY (sequence_num, event_id))");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void l(SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.execSQL("DROP TABLE IF EXISTS log_event_dropped");
        sQLiteDatabase.execSQL("DROP TABLE IF EXISTS global_log_event_state");
        sQLiteDatabase.execSQL("CREATE TABLE log_event_dropped (log_source VARCHAR(45) NOT NULL,reason INTEGER NOT NULL,events_dropped_count BIGINT NOT NULL,PRIMARY KEY(log_source, reason))");
        sQLiteDatabase.execSQL("CREATE TABLE global_log_event_state (last_metrics_upload_ms BIGINT PRIMARY KEY)");
        sQLiteDatabase.execSQL(f35368q);
    }

    private void m(SQLiteDatabase sQLiteDatabase, int i10) {
        g(sQLiteDatabase);
        n(sQLiteDatabase, 0, i10);
    }

    private void n(SQLiteDatabase sQLiteDatabase, int i10, int i11) {
        List<a> list = f35375x;
        if (i11 <= list.size()) {
            while (i10 < i11) {
                f35375x.get(i10).a(sQLiteDatabase);
                i10++;
            }
            return;
        }
        throw new IllegalArgumentException("Migration from " + i10 + " to " + i11 + " was requested, but cannot be performed. Only " + list.size() + " migrations are provided");
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onConfigure(SQLiteDatabase sQLiteDatabase) {
        this.f35377p = true;
        sQLiteDatabase.rawQuery("PRAGMA busy_timeout=0;", new String[0]).close();
        if (Build.VERSION.SDK_INT >= 16) {
            sQLiteDatabase.setForeignKeyConstraintsEnabled(true);
        }
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onCreate(SQLiteDatabase sQLiteDatabase) {
        m(sQLiteDatabase, this.f35376o);
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onDowngrade(SQLiteDatabase sQLiteDatabase, int i10, int i11) {
        sQLiteDatabase.execSQL("DROP TABLE events");
        sQLiteDatabase.execSQL("DROP TABLE event_metadata");
        sQLiteDatabase.execSQL("DROP TABLE transport_contexts");
        sQLiteDatabase.execSQL("DROP TABLE IF EXISTS event_payloads");
        sQLiteDatabase.execSQL("DROP TABLE IF EXISTS log_event_dropped");
        sQLiteDatabase.execSQL("DROP TABLE IF EXISTS global_log_event_state");
        m(sQLiteDatabase, i11);
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onOpen(SQLiteDatabase sQLiteDatabase) {
        g(sQLiteDatabase);
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i10, int i11) {
        g(sQLiteDatabase);
        n(sQLiteDatabase, i10, i11);
    }
}
