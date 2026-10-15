package androidx.room;

import android.annotation.SuppressLint;
import android.app.ActivityManager;
import android.content.Context;
import android.database.Cursor;
import android.os.Build;
import android.os.CancellationSignal;
import android.os.Looper;
import android.util.Log;
import b1.h;
import java.io.File;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.BitSet;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.TreeMap;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantReadWriteLock;

/* JADX INFO: compiled from: RoomDatabase.java */
/* JADX INFO: loaded from: classes.dex */
public abstract class h0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @Deprecated
    protected volatile b1.g f4056a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Executor f4057b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Executor f4058c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private b1.h f4059d;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f4061f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    boolean f4062g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @Deprecated
    protected List<b> f4063h;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private androidx.room.a f4066k;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final ReentrantReadWriteLock f4065j = new ReentrantReadWriteLock();

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private final ThreadLocal<Integer> f4067l = new ThreadLocal<>();

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private final Map<String, Object> f4068m = Collections.synchronizedMap(new HashMap());

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final o f4060e = g();

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private final Map<Class<?>, Object> f4069n = new HashMap();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    protected Map<Class<? extends y0.a>, y0.a> f4064i = new HashMap();

    /* JADX INFO: compiled from: RoomDatabase.java */
    public static class a<T extends h0> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Class<T> f4070a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final String f4071b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final Context f4072c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private ArrayList<b> f4073d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private e f4074e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private f f4075f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private Executor f4076g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private List<Object> f4077h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        private List<y0.a> f4078i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        private Executor f4079j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        private Executor f4080k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        private h.c f4081l;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        private boolean f4082m;

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        private boolean f4084o;

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        private boolean f4086q;

        /* JADX INFO: renamed from: s, reason: collision with root package name */
        private TimeUnit f4088s;

        /* JADX INFO: renamed from: u, reason: collision with root package name */
        private Set<Integer> f4090u;

        /* JADX INFO: renamed from: v, reason: collision with root package name */
        private Set<Integer> f4091v;

        /* JADX INFO: renamed from: w, reason: collision with root package name */
        private String f4092w;

        /* JADX INFO: renamed from: x, reason: collision with root package name */
        private File f4093x;

        /* JADX INFO: renamed from: y, reason: collision with root package name */
        private Callable<InputStream> f4094y;

        /* JADX INFO: renamed from: r, reason: collision with root package name */
        private long f4087r = -1;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        private c f4083n = c.AUTOMATIC;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        private boolean f4085p = true;

        /* JADX INFO: renamed from: t, reason: collision with root package name */
        private final d f4089t = new d();

        a(Context context, Class<T> cls, String str) {
            this.f4072c = context;
            this.f4070a = cls;
            this.f4071b = str;
        }

        public a<T> a(b bVar) {
            if (this.f4073d == null) {
                this.f4073d = new ArrayList<>();
            }
            this.f4073d.add(bVar);
            return this;
        }

        public a<T> b(y0.b... bVarArr) {
            if (this.f4091v == null) {
                this.f4091v = new HashSet();
            }
            for (y0.b bVar : bVarArr) {
                this.f4091v.add(Integer.valueOf(bVar.f36565a));
                this.f4091v.add(Integer.valueOf(bVar.f36566b));
            }
            this.f4089t.b(bVarArr);
            return this;
        }

        public a<T> c() {
            this.f4082m = true;
            return this;
        }

        @SuppressLint({"RestrictedApi"})
        public T d() {
            Executor executor;
            if (this.f4072c == null) {
                throw new IllegalArgumentException("Cannot provide null context for the database.");
            }
            if (this.f4070a == null) {
                throw new IllegalArgumentException("Must provide an abstract class that extends RoomDatabase");
            }
            Executor executor2 = this.f4079j;
            if (executor2 == null && this.f4080k == null) {
                Executor executorD = j.a.d();
                this.f4080k = executorD;
                this.f4079j = executorD;
            } else if (executor2 != null && this.f4080k == null) {
                this.f4080k = executor2;
            } else if (executor2 == null && (executor = this.f4080k) != null) {
                this.f4079j = executor;
            }
            Set<Integer> set = this.f4091v;
            if (set != null && this.f4090u != null) {
                for (Integer num : set) {
                    if (this.f4090u.contains(num)) {
                        throw new IllegalArgumentException("Inconsistency detected. A Migration was supplied to addMigration(Migration... migrations) that has a start or end version equal to a start version supplied to fallbackToDestructiveMigrationFrom(int... startVersions). Start version: " + num);
                    }
                }
            }
            h.c k0Var = this.f4081l;
            if (k0Var == null) {
                k0Var = new c1.c();
            }
            long j10 = this.f4087r;
            if (j10 > 0) {
                if (this.f4071b == null) {
                    throw new IllegalArgumentException("Cannot create auto-closing database for an in-memory database.");
                }
                k0Var = new h(k0Var, new androidx.room.a(j10, this.f4088s, this.f4080k));
            }
            String str = this.f4092w;
            if (str != null || this.f4093x != null || this.f4094y != null) {
                if (this.f4071b == null) {
                    throw new IllegalArgumentException("Cannot create from asset or file for an in-memory database.");
                }
                int i10 = str == null ? 0 : 1;
                File file = this.f4093x;
                int i11 = i10 + (file == null ? 0 : 1);
                Callable<InputStream> callable = this.f4094y;
                if (i11 + (callable != null ? 1 : 0) != 1) {
                    throw new IllegalArgumentException("More than one of createFromAsset(), createFromInputStream(), and createFromFile() were called on this Builder, but the database can only be created using one of the three configurations.");
                }
                k0Var = new k0(str, file, callable, k0Var);
            }
            f fVar = this.f4075f;
            h.c b0Var = fVar != null ? new b0(k0Var, fVar, this.f4076g) : k0Var;
            Context context = this.f4072c;
            i iVar = new i(context, this.f4071b, b0Var, this.f4089t, this.f4073d, this.f4082m, this.f4083n.e(context), this.f4079j, this.f4080k, this.f4084o, this.f4085p, this.f4086q, this.f4090u, this.f4092w, this.f4093x, this.f4094y, this.f4074e, this.f4077h, this.f4078i);
            T t10 = (T) g0.b(this.f4070a, "_Impl");
            t10.q(iVar);
            return t10;
        }

        public a<T> e() {
            this.f4085p = false;
            this.f4086q = true;
            return this;
        }

        public a<T> f(h.c cVar) {
            this.f4081l = cVar;
            return this;
        }

        public a<T> g(Executor executor) {
            this.f4079j = executor;
            return this;
        }
    }

    /* JADX INFO: compiled from: RoomDatabase.java */
    public static abstract class b {
        public void a(b1.g gVar) {
        }

        public void b(b1.g gVar) {
        }

        public void c(b1.g gVar) {
        }
    }

    /* JADX INFO: compiled from: RoomDatabase.java */
    public enum c {
        AUTOMATIC,
        TRUNCATE,
        WRITE_AHEAD_LOGGING;

        private static boolean c(ActivityManager activityManager) {
            if (Build.VERSION.SDK_INT >= 19) {
                return b1.c.b(activityManager);
            }
            return false;
        }

        c e(Context context) {
            ActivityManager activityManager;
            return this != AUTOMATIC ? this : (Build.VERSION.SDK_INT < 16 || (activityManager = (ActivityManager) context.getSystemService("activity")) == null || c(activityManager)) ? TRUNCATE : WRITE_AHEAD_LOGGING;
        }
    }

    /* JADX INFO: compiled from: RoomDatabase.java */
    public static class d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private HashMap<Integer, TreeMap<Integer, y0.b>> f4099a = new HashMap<>();

        private void a(y0.b bVar) {
            int i10 = bVar.f36565a;
            int i11 = bVar.f36566b;
            TreeMap<Integer, y0.b> treeMap = this.f4099a.get(Integer.valueOf(i10));
            if (treeMap == null) {
                treeMap = new TreeMap<>();
                this.f4099a.put(Integer.valueOf(i10), treeMap);
            }
            y0.b bVar2 = treeMap.get(Integer.valueOf(i11));
            if (bVar2 != null) {
                Log.w("ROOM", "Overriding migration " + bVar2 + " with " + bVar);
            }
            treeMap.put(Integer.valueOf(i11), bVar);
        }

        /* JADX WARN: Removed duplicated region for block: B:19:0x003e  */
        /* JADX WARN: Removed duplicated region for block: B:31:0x0016 A[SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:36:0x0047 A[SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:43:? A[LOOP:1: B:13:0x0026->B:43:?, LOOP_END, SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:9:0x0017  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        private java.util.List<y0.b> d(java.util.List<y0.b> r7, boolean r8, int r9, int r10) {
            /*
                r6 = this;
            L0:
                if (r8 == 0) goto L5
                if (r9 >= r10) goto L5a
                goto L7
            L5:
                if (r9 <= r10) goto L5a
            L7:
                java.util.HashMap<java.lang.Integer, java.util.TreeMap<java.lang.Integer, y0.b>> r0 = r6.f4099a
                java.lang.Integer r1 = java.lang.Integer.valueOf(r9)
                java.lang.Object r0 = r0.get(r1)
                java.util.TreeMap r0 = (java.util.TreeMap) r0
                r1 = 0
                if (r0 != 0) goto L17
                return r1
            L17:
                if (r8 == 0) goto L1e
                java.util.NavigableSet r2 = r0.descendingKeySet()
                goto L22
            L1e:
                java.util.Set r2 = r0.keySet()
            L22:
                java.util.Iterator r2 = r2.iterator()
            L26:
                boolean r3 = r2.hasNext()
                r4 = 1
                r5 = 0
                if (r3 == 0) goto L56
                java.lang.Object r3 = r2.next()
                java.lang.Integer r3 = (java.lang.Integer) r3
                int r3 = r3.intValue()
                if (r8 == 0) goto L40
                if (r3 > r10) goto L45
                if (r3 <= r9) goto L45
            L3e:
                r5 = 1
                goto L45
            L40:
                if (r3 < r10) goto L45
                if (r3 >= r9) goto L45
                goto L3e
            L45:
                if (r5 == 0) goto L26
                java.lang.Integer r9 = java.lang.Integer.valueOf(r3)
                java.lang.Object r9 = r0.get(r9)
                y0.b r9 = (y0.b) r9
                r7.add(r9)
                r9 = r3
                goto L57
            L56:
                r4 = 0
            L57:
                if (r4 != 0) goto L0
                return r1
            L5a:
                return r7
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.room.h0.d.d(java.util.List, boolean, int, int):java.util.List");
        }

        public void b(y0.b... bVarArr) {
            for (y0.b bVar : bVarArr) {
                a(bVar);
            }
        }

        public List<y0.b> c(int i10, int i11) {
            if (i10 == i11) {
                return Collections.emptyList();
            }
            return d(new ArrayList(), i11 > i10, i10, i11);
        }

        public Map<Integer, Map<Integer, y0.b>> e() {
            return Collections.unmodifiableMap(this.f4099a);
        }
    }

    /* JADX INFO: compiled from: RoomDatabase.java */
    public static abstract class e {
    }

    /* JADX INFO: compiled from: RoomDatabase.java */
    public interface f {
        void a(String str, List<Object> list);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private <T> T B(Class<T> cls, b1.h hVar) {
        if (cls.isInstance(hVar)) {
            return hVar;
        }
        if (hVar instanceof j) {
            return (T) B(cls, ((j) hVar).b());
        }
        return null;
    }

    private void r() {
        c();
        b1.g gVarK1 = this.f4059d.K1();
        this.f4060e.p(gVarK1);
        if (Build.VERSION.SDK_INT < 16 || !gVarK1.h3()) {
            gVarK1.V();
        } else {
            gVarK1.z1();
        }
    }

    private void s() {
        this.f4059d.K1().X1();
        if (p()) {
            return;
        }
        this.f4060e.h();
    }

    private static boolean u() {
        return Looper.getMainLooper().getThread() == Thread.currentThread();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object w(b1.g gVar) {
        r();
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object x(b1.g gVar) {
        s();
        return null;
    }

    @Deprecated
    public void A() {
        this.f4059d.K1().u1();
    }

    public void c() {
        if (!this.f4061f && u()) {
            throw new IllegalStateException("Cannot access database on the main thread since it may potentially lock the UI for a long period of time.");
        }
    }

    public void d() {
        if (!p() && this.f4067l.get() != null) {
            throw new IllegalStateException("Cannot access database on a different coroutine context inherited from a suspending transaction.");
        }
    }

    @Deprecated
    public void e() {
        c();
        androidx.room.a aVar = this.f4066k;
        if (aVar == null) {
            r();
        } else {
            aVar.c(new l.a() { // from class: x0.h
                @Override // l.a
                public final Object a(Object obj) {
                    return this.f36181a.w((b1.g) obj);
                }
            });
        }
    }

    public b1.k f(String str) {
        c();
        d();
        return this.f4059d.K1().w0(str);
    }

    protected abstract o g();

    protected abstract b1.h h(i iVar);

    @Deprecated
    public void i() {
        androidx.room.a aVar = this.f4066k;
        if (aVar == null) {
            s();
        } else {
            aVar.c(new l.a() { // from class: x0.i
                @Override // l.a
                public final Object a(Object obj) {
                    return this.f36182a.x((b1.g) obj);
                }
            });
        }
    }

    public List<y0.b> j(Map<Class<? extends y0.a>, y0.a> map) {
        return Collections.emptyList();
    }

    Lock k() {
        return this.f4065j.readLock();
    }

    public b1.h l() {
        return this.f4059d;
    }

    public Executor m() {
        return this.f4057b;
    }

    public Set<Class<? extends y0.a>> n() {
        return Collections.emptySet();
    }

    protected Map<Class<?>, List<Class<?>>> o() {
        return Collections.emptyMap();
    }

    public boolean p() {
        return this.f4059d.K1().O2();
    }

    public void q(i iVar) {
        boolean z10;
        this.f4059d = h(iVar);
        Set<Class<? extends y0.a>> setN = n();
        BitSet bitSet = new BitSet();
        Iterator<Class<? extends y0.a>> it = setN.iterator();
        while (true) {
            int i10 = -1;
            if (!it.hasNext()) {
                for (int size = iVar.f4107h.size() - 1; size >= 0; size--) {
                    if (!bitSet.get(size)) {
                        throw new IllegalArgumentException("Unexpected auto migration specs found. Annotate AutoMigrationSpec implementation with @ProvidedAutoMigrationSpec annotation or remove this spec from the builder.");
                    }
                }
                Iterator<y0.b> it2 = j(this.f4064i).iterator();
                while (true) {
                    if (!it2.hasNext()) {
                        break;
                    }
                    y0.b next = it2.next();
                    if (!iVar.f4103d.e().containsKey(Integer.valueOf(next.f36565a))) {
                        iVar.f4103d.b(next);
                    }
                }
                j0 j0Var = (j0) B(j0.class, this.f4059d);
                if (j0Var != null) {
                    j0Var.e(iVar);
                }
                androidx.room.f fVar = (androidx.room.f) B(androidx.room.f.class, this.f4059d);
                if (fVar != null) {
                    androidx.room.a aVarC = fVar.c();
                    this.f4066k = aVarC;
                    this.f4060e.k(aVarC);
                }
                if (Build.VERSION.SDK_INT >= 16) {
                    z10 = iVar.f4109j == c.WRITE_AHEAD_LOGGING;
                    this.f4059d.setWriteAheadLoggingEnabled(z10);
                }
                this.f4063h = iVar.f4104e;
                this.f4057b = iVar.f4110k;
                this.f4058c = new l0(iVar.f4111l);
                this.f4061f = iVar.f4108i;
                this.f4062g = z10;
                if (iVar.f4112m) {
                    this.f4060e.l(iVar.f4101b, iVar.f4102c);
                }
                Map<Class<?>, List<Class<?>>> mapO = o();
                BitSet bitSet2 = new BitSet();
                for (Map.Entry<Class<?>, List<Class<?>>> entry : mapO.entrySet()) {
                    Class<?> key = entry.getKey();
                    for (Class<?> cls : entry.getValue()) {
                        int size2 = iVar.f4106g.size() - 1;
                        while (true) {
                            if (size2 < 0) {
                                size2 = -1;
                                break;
                            } else {
                                if (cls.isAssignableFrom(iVar.f4106g.get(size2).getClass())) {
                                    bitSet2.set(size2);
                                    break;
                                }
                                size2--;
                            }
                        }
                        if (size2 < 0) {
                            throw new IllegalArgumentException("A required type converter (" + cls + ") for " + key.getCanonicalName() + " is missing in the database configuration.");
                        }
                        this.f4069n.put(cls, iVar.f4106g.get(size2));
                    }
                }
                for (int size3 = iVar.f4106g.size() - 1; size3 >= 0; size3--) {
                    if (!bitSet2.get(size3)) {
                        throw new IllegalArgumentException("Unexpected type converter " + iVar.f4106g.get(size3) + ". Annotate TypeConverter class with @ProvidedTypeConverter annotation or remove this converter from the builder.");
                    }
                }
                return;
            }
            Class<? extends y0.a> next2 = it.next();
            int size4 = iVar.f4107h.size() - 1;
            while (true) {
                if (size4 < 0) {
                    break;
                }
                if (next2.isAssignableFrom(iVar.f4107h.get(size4).getClass())) {
                    bitSet.set(size4);
                    i10 = size4;
                    break;
                }
                size4--;
            }
            if (i10 < 0) {
                throw new IllegalArgumentException("A required auto migration spec (" + next2.getCanonicalName() + ") is missing in the database configuration.");
            }
            this.f4064i.put(next2, iVar.f4107h.get(i10));
        }
    }

    protected void t(b1.g gVar) {
        this.f4060e.e(gVar);
    }

    public boolean v() {
        androidx.room.a aVar = this.f4066k;
        if (aVar != null) {
            return aVar.g();
        }
        b1.g gVar = this.f4056a;
        return gVar != null && gVar.isOpen();
    }

    public Cursor y(b1.j jVar) {
        return z(jVar, null);
    }

    public Cursor z(b1.j jVar, CancellationSignal cancellationSignal) {
        c();
        d();
        return (cancellationSignal == null || Build.VERSION.SDK_INT < 16) ? this.f4059d.K1().c1(jVar) : this.f4059d.K1().s0(jVar, cancellationSignal);
    }
}
