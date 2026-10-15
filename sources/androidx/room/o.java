package androidx.room;

import android.annotation.SuppressLint;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteException;
import android.os.Build;
import android.util.Log;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.locks.Lock;

/* JADX INFO: compiled from: InvalidationTracker.java */
/* JADX INFO: loaded from: classes.dex */
public class o {

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private static final String[] f4150n = {"UPDATE", "DELETE", "INSERT"};

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final String[] f4152b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Map<String, Set<String>> f4153c;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    final h0 f4155e;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    volatile b1.k f4158h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private b f4159i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final m f4160j;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private p f4162l;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    androidx.room.a f4154d = null;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    AtomicBoolean f4156f = new AtomicBoolean(false);

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private volatile boolean f4157g = false;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @SuppressLint({"RestrictedApi"})
    final k.b<c, d> f4161k = new k.b<>();

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    Runnable f4163m = new a();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final HashMap<String, Integer> f4151a = new HashMap<>();

    /* JADX INFO: compiled from: InvalidationTracker.java */
    class a implements Runnable {
        a() {
        }

        private Set<Integer> a() {
            HashSet hashSet = new HashSet();
            Cursor cursorY = o.this.f4155e.y(new b1.a("SELECT * FROM room_table_modification_log WHERE invalidated = 1;"));
            while (cursorY.moveToNext()) {
                try {
                    hashSet.add(Integer.valueOf(cursorY.getInt(0)));
                } catch (Throwable th) {
                    cursorY.close();
                    throw th;
                }
            }
            cursorY.close();
            if (!hashSet.isEmpty()) {
                o.this.f4158h.u0();
            }
            return hashSet;
        }

        @Override // java.lang.Runnable
        public void run() {
            androidx.room.a aVar;
            androidx.room.a aVar2;
            Lock lockK = o.this.f4155e.k();
            lockK.lock();
            Set<Integer> setA = null;
            try {
                try {
                } finally {
                    lockK.unlock();
                    aVar2 = o.this.f4154d;
                    if (aVar2 != null) {
                        aVar2.b();
                    }
                }
            } catch (SQLiteException | IllegalStateException e10) {
                Log.e("ROOM", "Cannot run invalidation tracker. Is the db closed?", e10);
                lockK.unlock();
                aVar = o.this.f4154d;
                if (aVar != null) {
                }
            }
            if (!o.this.d()) {
                if (aVar2 != null) {
                    return;
                } else {
                    return;
                }
            }
            if (!o.this.f4156f.compareAndSet(true, false)) {
                lockK.unlock();
                androidx.room.a aVar3 = o.this.f4154d;
                if (aVar3 != null) {
                    aVar3.b();
                    return;
                }
                return;
            }
            if (o.this.f4155e.p()) {
                lockK.unlock();
                androidx.room.a aVar4 = o.this.f4154d;
                if (aVar4 != null) {
                    aVar4.b();
                    return;
                }
                return;
            }
            b1.g gVarK1 = o.this.f4155e.l().K1();
            gVarK1.z1();
            try {
                setA = a();
                gVarK1.u1();
                lockK.unlock();
                aVar = o.this.f4154d;
                if (aVar != null) {
                    aVar.b();
                }
                if (setA == null || setA.isEmpty()) {
                    return;
                }
                synchronized (o.this.f4161k) {
                    Iterator<Map.Entry<c, d>> it = o.this.f4161k.iterator();
                    while (it.hasNext()) {
                        it.next().getValue().a(setA);
                    }
                }
            } finally {
                gVarK1.X1();
            }
        }
    }

    /* JADX INFO: compiled from: InvalidationTracker.java */
    static class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final long[] f4165a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final boolean[] f4166b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final int[] f4167c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        boolean f4168d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        boolean f4169e;

        b(int i10) {
            long[] jArr = new long[i10];
            this.f4165a = jArr;
            boolean[] zArr = new boolean[i10];
            this.f4166b = zArr;
            this.f4167c = new int[i10];
            Arrays.fill(jArr, 0L);
            Arrays.fill(zArr, false);
        }

        int[] a() {
            synchronized (this) {
                if (this.f4168d && !this.f4169e) {
                    int length = this.f4165a.length;
                    int i10 = 0;
                    while (true) {
                        int i11 = 1;
                        if (i10 >= length) {
                            this.f4169e = true;
                            this.f4168d = false;
                            return this.f4167c;
                        }
                        boolean z10 = this.f4165a[i10] > 0;
                        boolean[] zArr = this.f4166b;
                        if (z10 != zArr[i10]) {
                            int[] iArr = this.f4167c;
                            if (!z10) {
                                i11 = 2;
                            }
                            iArr[i10] = i11;
                        } else {
                            this.f4167c[i10] = 0;
                        }
                        zArr[i10] = z10;
                        i10++;
                    }
                }
                return null;
            }
        }

        boolean b(int... iArr) {
            boolean z10;
            synchronized (this) {
                z10 = false;
                for (int i10 : iArr) {
                    long[] jArr = this.f4165a;
                    long j10 = jArr[i10];
                    jArr[i10] = 1 + j10;
                    if (j10 == 0) {
                        this.f4168d = true;
                        z10 = true;
                    }
                }
            }
            return z10;
        }

        boolean c(int... iArr) {
            boolean z10;
            synchronized (this) {
                z10 = false;
                for (int i10 : iArr) {
                    long[] jArr = this.f4165a;
                    long j10 = jArr[i10];
                    jArr[i10] = j10 - 1;
                    if (j10 == 1) {
                        this.f4168d = true;
                        z10 = true;
                    }
                }
            }
            return z10;
        }

        void d() {
            synchronized (this) {
                this.f4169e = false;
            }
        }

        void e() {
            synchronized (this) {
                Arrays.fill(this.f4166b, false);
                this.f4168d = true;
            }
        }
    }

    /* JADX INFO: compiled from: InvalidationTracker.java */
    public static abstract class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final String[] f4170a;

        public c(String[] strArr) {
            this.f4170a = (String[]) Arrays.copyOf(strArr, strArr.length);
        }

        boolean a() {
            return false;
        }

        public abstract void b(Set<String> set);
    }

    /* JADX INFO: compiled from: InvalidationTracker.java */
    static class d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final int[] f4171a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final String[] f4172b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final c f4173c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final Set<String> f4174d;

        d(c cVar, int[] iArr, String[] strArr) {
            this.f4173c = cVar;
            this.f4171a = iArr;
            this.f4172b = strArr;
            if (iArr.length != 1) {
                this.f4174d = null;
                return;
            }
            HashSet hashSet = new HashSet();
            hashSet.add(strArr[0]);
            this.f4174d = Collections.unmodifiableSet(hashSet);
        }

        void a(Set<Integer> set) {
            int length = this.f4171a.length;
            Set<String> hashSet = null;
            for (int i10 = 0; i10 < length; i10++) {
                if (set.contains(Integer.valueOf(this.f4171a[i10]))) {
                    if (length == 1) {
                        hashSet = this.f4174d;
                    } else {
                        if (hashSet == null) {
                            hashSet = new HashSet<>(length);
                        }
                        hashSet.add(this.f4172b[i10]);
                    }
                }
            }
            if (hashSet != null) {
                this.f4173c.b(hashSet);
            }
        }

        void b(String[] strArr) {
            Set<String> set = null;
            if (this.f4172b.length == 1) {
                int length = strArr.length;
                int i10 = 0;
                while (true) {
                    if (i10 >= length) {
                        break;
                    }
                    if (strArr[i10].equalsIgnoreCase(this.f4172b[0])) {
                        set = this.f4174d;
                        break;
                    }
                    i10++;
                }
            } else {
                HashSet hashSet = new HashSet();
                for (String str : strArr) {
                    String[] strArr2 = this.f4172b;
                    int length2 = strArr2.length;
                    int i11 = 0;
                    while (true) {
                        if (i11 < length2) {
                            String str2 = strArr2[i11];
                            if (str2.equalsIgnoreCase(str)) {
                                hashSet.add(str2);
                                break;
                            }
                            i11++;
                        }
                    }
                }
                if (hashSet.size() > 0) {
                    set = hashSet;
                }
            }
            if (set != null) {
                this.f4173c.b(set);
            }
        }
    }

    public o(h0 h0Var, Map<String, String> map, Map<String, Set<String>> map2, String... strArr) {
        this.f4155e = h0Var;
        this.f4159i = new b(strArr.length);
        this.f4153c = map2;
        this.f4160j = new m(h0Var);
        int length = strArr.length;
        this.f4152b = new String[length];
        for (int i10 = 0; i10 < length; i10++) {
            String str = strArr[i10];
            Locale locale = Locale.US;
            String lowerCase = str.toLowerCase(locale);
            this.f4151a.put(lowerCase, Integer.valueOf(i10));
            String str2 = map.get(strArr[i10]);
            if (str2 != null) {
                this.f4152b[i10] = str2.toLowerCase(locale);
            } else {
                this.f4152b[i10] = lowerCase;
            }
        }
        for (Map.Entry<String, String> entry : map.entrySet()) {
            String value = entry.getValue();
            Locale locale2 = Locale.US;
            String lowerCase2 = value.toLowerCase(locale2);
            if (this.f4151a.containsKey(lowerCase2)) {
                String lowerCase3 = entry.getKey().toLowerCase(locale2);
                HashMap<String, Integer> map3 = this.f4151a;
                map3.put(lowerCase3, map3.get(lowerCase2));
            }
        }
    }

    private static void b(StringBuilder sb, String str, String str2) {
        sb.append("`");
        sb.append("room_table_modification_trigger_");
        sb.append(str);
        sb.append("_");
        sb.append(str2);
        sb.append("`");
    }

    private static void c(b1.g gVar) {
        if (Build.VERSION.SDK_INT < 16 || !gVar.h3()) {
            gVar.V();
        } else {
            gVar.z1();
        }
    }

    private String[] j(String[] strArr) {
        HashSet hashSet = new HashSet();
        for (String str : strArr) {
            String lowerCase = str.toLowerCase(Locale.US);
            if (this.f4153c.containsKey(lowerCase)) {
                hashSet.addAll(this.f4153c.get(lowerCase));
            } else {
                hashSet.add(str);
            }
        }
        return (String[]) hashSet.toArray(new String[hashSet.size()]);
    }

    private void m(b1.g gVar, int i10) {
        gVar.execSQL("INSERT OR IGNORE INTO room_table_modification_log VALUES(" + i10 + ", 0)");
        String str = this.f4152b[i10];
        StringBuilder sb = new StringBuilder();
        for (String str2 : f4150n) {
            sb.setLength(0);
            sb.append("CREATE TEMP TRIGGER IF NOT EXISTS ");
            b(sb, str, str2);
            sb.append(" AFTER ");
            sb.append(str2);
            sb.append(" ON `");
            sb.append(str);
            sb.append("` BEGIN UPDATE ");
            sb.append("room_table_modification_log");
            sb.append(" SET ");
            sb.append("invalidated");
            sb.append(" = 1");
            sb.append(" WHERE ");
            sb.append("table_id");
            sb.append(" = ");
            sb.append(i10);
            sb.append(" AND ");
            sb.append("invalidated");
            sb.append(" = 0");
            sb.append("; END");
            gVar.execSQL(sb.toString());
        }
    }

    private void n(b1.g gVar, int i10) {
        String str = this.f4152b[i10];
        StringBuilder sb = new StringBuilder();
        for (String str2 : f4150n) {
            sb.setLength(0);
            sb.append("DROP TRIGGER IF EXISTS ");
            b(sb, str, str2);
            gVar.execSQL(sb.toString());
        }
    }

    @SuppressLint({"RestrictedApi"})
    public void a(c cVar) {
        d dVarL;
        String[] strArrJ = j(cVar.f4170a);
        int[] iArr = new int[strArrJ.length];
        int length = strArrJ.length;
        for (int i10 = 0; i10 < length; i10++) {
            Integer num = this.f4151a.get(strArrJ[i10].toLowerCase(Locale.US));
            if (num == null) {
                throw new IllegalArgumentException("There is no table with name " + strArrJ[i10]);
            }
            iArr[i10] = num.intValue();
        }
        d dVar = new d(cVar, iArr, strArrJ);
        synchronized (this.f4161k) {
            dVarL = this.f4161k.l(cVar, dVar);
        }
        if (dVarL == null && this.f4159i.b(iArr)) {
            o();
        }
    }

    boolean d() {
        if (!this.f4155e.v()) {
            return false;
        }
        if (!this.f4157g) {
            this.f4155e.l().K1();
        }
        if (this.f4157g) {
            return true;
        }
        Log.e("ROOM", "database is not initialized even though it is open");
        return false;
    }

    void e(b1.g gVar) {
        synchronized (this) {
            if (this.f4157g) {
                Log.e("ROOM", "Invalidation tracker is initialized twice :/.");
                return;
            }
            gVar.execSQL("PRAGMA temp_store = MEMORY;");
            gVar.execSQL("PRAGMA recursive_triggers='ON';");
            gVar.execSQL("CREATE TEMP TABLE room_table_modification_log(table_id INTEGER PRIMARY KEY, invalidated INTEGER NOT NULL DEFAULT 0)");
            p(gVar);
            this.f4158h = gVar.w0("UPDATE room_table_modification_log SET invalidated = 0 WHERE invalidated = 1 ");
            this.f4157g = true;
        }
    }

    public void f(String... strArr) {
        synchronized (this.f4161k) {
            for (Map.Entry<c, d> entry : this.f4161k) {
                if (!entry.getKey().a()) {
                    entry.getValue().b(strArr);
                }
            }
        }
    }

    void g() {
        synchronized (this) {
            this.f4157g = false;
            this.f4159i.e();
        }
    }

    public void h() {
        if (this.f4156f.compareAndSet(false, true)) {
            androidx.room.a aVar = this.f4154d;
            if (aVar != null) {
                aVar.e();
            }
            this.f4155e.m().execute(this.f4163m);
        }
    }

    @SuppressLint({"RestrictedApi"})
    public void i(c cVar) {
        d dVarM;
        synchronized (this.f4161k) {
            dVarM = this.f4161k.m(cVar);
        }
        if (dVarM == null || !this.f4159i.c(dVarM.f4171a)) {
            return;
        }
        o();
    }

    void k(androidx.room.a aVar) {
        this.f4154d = aVar;
        aVar.h(new Runnable() { // from class: androidx.room.n
            @Override // java.lang.Runnable
            public final void run() {
                this.f4149o.g();
            }
        });
    }

    void l(Context context, String str) {
        this.f4162l = new p(context, str, this, this.f4155e.m());
    }

    void o() {
        if (this.f4155e.v()) {
            p(this.f4155e.l().K1());
        }
    }

    void p(b1.g gVar) {
        if (gVar.O2()) {
            return;
        }
        while (true) {
            try {
                Lock lockK = this.f4155e.k();
                lockK.lock();
                try {
                    int[] iArrA = this.f4159i.a();
                    if (iArrA == null) {
                        return;
                    }
                    int length = iArrA.length;
                    c(gVar);
                    for (int i10 = 0; i10 < length; i10++) {
                        try {
                            int i11 = iArrA[i10];
                            if (i11 == 1) {
                                m(gVar, i10);
                            } else if (i11 == 2) {
                                n(gVar, i10);
                            }
                        } finally {
                        }
                    }
                    gVar.u1();
                    gVar.X1();
                    this.f4159i.d();
                } finally {
                    lockK.unlock();
                }
            } catch (SQLiteException | IllegalStateException e10) {
                Log.e("ROOM", "Cannot run invalidation tracker. Is the db closed?", e10);
                return;
            }
        }
    }
}
