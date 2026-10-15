package y6;

import android.util.Log;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlinx.coroutines.sync.b;
import m9.d;
import m9.f;
import t9.g;
import t9.m;
import y6.b;

/* JADX INFO: compiled from: FirebaseSessionsDependencies.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final a f36997a = new a();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final Map<b.a, C0303a> f36998b = Collections.synchronizedMap(new LinkedHashMap());

    /* JADX INFO: renamed from: y6.a$a, reason: collision with other inner class name */
    /* JADX INFO: compiled from: FirebaseSessionsDependencies.kt */
    private static final class C0303a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final kotlinx.coroutines.sync.b f36999a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private y6.b f37000b;

        public C0303a(kotlinx.coroutines.sync.b bVar, y6.b bVar2) {
            m.e(bVar, "mutex");
            this.f36999a = bVar;
            this.f37000b = bVar2;
        }

        public final kotlinx.coroutines.sync.b a() {
            return this.f36999a;
        }

        public final y6.b b() {
            return this.f37000b;
        }

        public final void c(y6.b bVar) {
            this.f37000b = bVar;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof C0303a)) {
                return false;
            }
            C0303a c0303a = (C0303a) obj;
            return m.a(this.f36999a, c0303a.f36999a) && m.a(this.f37000b, c0303a.f37000b);
        }

        public int hashCode() {
            int iHashCode = this.f36999a.hashCode() * 31;
            y6.b bVar = this.f37000b;
            return iHashCode + (bVar == null ? 0 : bVar.hashCode());
        }

        public String toString() {
            return "Dependency(mutex=" + this.f36999a + ", subscriber=" + this.f37000b + ')';
        }

        public /* synthetic */ C0303a(kotlinx.coroutines.sync.b bVar, y6.b bVar2, int i10, g gVar) {
            this(bVar, (i10 & 2) != 0 ? null : bVar2);
        }
    }

    /* JADX INFO: compiled from: FirebaseSessionsDependencies.kt */
    @f(c = "com.google.firebase.sessions.api.FirebaseSessionsDependencies", f = "FirebaseSessionsDependencies.kt", l = {123}, m = "getRegisteredSubscribers$com_google_firebase_firebase_sessions")
    static final class b extends d {

        /* JADX INFO: renamed from: r, reason: collision with root package name */
        Object f37001r;

        /* JADX INFO: renamed from: s, reason: collision with root package name */
        Object f37002s;

        /* JADX INFO: renamed from: t, reason: collision with root package name */
        Object f37003t;

        /* JADX INFO: renamed from: u, reason: collision with root package name */
        Object f37004u;

        /* JADX INFO: renamed from: v, reason: collision with root package name */
        Object f37005v;

        /* JADX INFO: renamed from: w, reason: collision with root package name */
        Object f37006w;

        /* JADX INFO: renamed from: x, reason: collision with root package name */
        /* synthetic */ Object f37007x;

        /* JADX INFO: renamed from: z, reason: collision with root package name */
        int f37009z;

        b(k9.d<? super b> dVar) {
            super(dVar);
        }

        @Override // m9.a
        public final Object i(Object obj) {
            this.f37007x = obj;
            this.f37009z |= Integer.MIN_VALUE;
            return a.this.c(this);
        }
    }

    private a() {
    }

    private final C0303a b(b.a aVar) {
        Map<b.a, C0303a> map = f36998b;
        m.d(map, "dependencies");
        C0303a c0303a = map.get(aVar);
        if (c0303a != null) {
            m.d(c0303a, "dependencies.getOrElse(s…load time.\"\n      )\n    }");
            return c0303a;
        }
        throw new IllegalStateException("Cannot get dependency " + aVar + ". Dependencies should be added at class load time.");
    }

    public static final void e(y6.b bVar) {
        m.e(bVar, "subscriber");
        b.a aVarC = bVar.c();
        C0303a c0303aB = f36997a.b(aVarC);
        if (c0303aB.b() != null) {
            Log.d("SessionsDependencies", "Subscriber " + aVarC + " already registered.");
            return;
        }
        c0303aB.c(bVar);
        Log.d("SessionsDependencies", "Subscriber " + aVarC + " registered.");
        b.a.a(c0303aB.a(), null, 1, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void a(b.a aVar) {
        m.e(aVar, "subscriberName");
        if (aVar == b.a.PERFORMANCE) {
            throw new IllegalArgumentException("Incompatible versions of Firebase Perf and Firebase Sessions.\nA safe combination would be:\n  firebase-sessions:1.1.0\n  firebase-crashlytics:18.5.0\n  firebase-perf:20.5.0\nFor more information contact Firebase Support.");
        }
        Map<b.a, C0303a> map = f36998b;
        if (map.containsKey(aVar)) {
            Log.d("SessionsDependencies", "Dependency " + aVar + " already added.");
            return;
        }
        m.d(map, "dependencies");
        map.put(aVar, new C0303a(kotlinx.coroutines.sync.d.a(true), null, 2, 0 == true ? 1 : 0));
        Log.d("SessionsDependencies", "Dependency to " + aVar + " added.");
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x006f  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x00b3 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:20:0x009f -> B:27:0x00a0). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object c(k9.d<? super java.util.Map<y6.b.a, ? extends y6.b>> r11) throws java.lang.Throwable {
        /*
            r10 = this;
            boolean r0 = r11 instanceof y6.a.b
            if (r0 == 0) goto L13
            r0 = r11
            y6.a$b r0 = (y6.a.b) r0
            int r1 = r0.f37009z
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f37009z = r1
            goto L18
        L13:
            y6.a$b r0 = new y6.a$b
            r0.<init>(r11)
        L18:
            java.lang.Object r11 = r0.f37007x
            java.lang.Object r1 = l9.b.c()
            int r2 = r0.f37009z
            r3 = 0
            r4 = 1
            if (r2 == 0) goto L48
            if (r2 != r4) goto L40
            java.lang.Object r2 = r0.f37006w
            java.lang.Object r5 = r0.f37005v
            java.util.Map r5 = (java.util.Map) r5
            java.lang.Object r6 = r0.f37004u
            kotlinx.coroutines.sync.b r6 = (kotlinx.coroutines.sync.b) r6
            java.lang.Object r7 = r0.f37003t
            y6.b$a r7 = (y6.b.a) r7
            java.lang.Object r8 = r0.f37002s
            java.util.Iterator r8 = (java.util.Iterator) r8
            java.lang.Object r9 = r0.f37001r
            java.util.Map r9 = (java.util.Map) r9
            h9.o.b(r11)
            goto La0
        L40:
            java.lang.IllegalStateException r11 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r11.<init>(r0)
            throw r11
        L48:
            h9.o.b(r11)
            java.util.Map<y6.b$a, y6.a$a> r11 = y6.a.f36998b
            java.lang.String r2 = "dependencies"
            t9.m.d(r11, r2)
            java.util.LinkedHashMap r2 = new java.util.LinkedHashMap
            int r5 = r11.size()
            int r5 = i9.a0.a(r5)
            r2.<init>(r5)
            java.util.Set r11 = r11.entrySet()
            java.util.Iterator r11 = r11.iterator()
            r8 = r11
            r5 = r2
        L69:
            boolean r11 = r8.hasNext()
            if (r11 == 0) goto Lb3
            java.lang.Object r11 = r8.next()
            java.util.Map$Entry r11 = (java.util.Map.Entry) r11
            java.lang.Object r2 = r11.getKey()
            java.lang.Object r6 = r11.getKey()
            r7 = r6
            y6.b$a r7 = (y6.b.a) r7
            java.lang.Object r11 = r11.getValue()
            y6.a$a r11 = (y6.a.C0303a) r11
            kotlinx.coroutines.sync.b r6 = r11.a()
            r0.f37001r = r5
            r0.f37002s = r8
            r0.f37003t = r7
            r0.f37004u = r6
            r0.f37005v = r5
            r0.f37006w = r2
            r0.f37009z = r4
            java.lang.Object r11 = r6.c(r3, r0)
            if (r11 != r1) goto L9f
            return r1
        L9f:
            r9 = r5
        La0:
            y6.a r11 = y6.a.f36997a     // Catch: java.lang.Throwable -> Lae
            y6.b r11 = r11.d(r7)     // Catch: java.lang.Throwable -> Lae
            r6.b(r3)
            r5.put(r2, r11)
            r5 = r9
            goto L69
        Lae:
            r11 = move-exception
            r6.b(r3)
            throw r11
        Lb3:
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: y6.a.c(k9.d):java.lang.Object");
    }

    public final y6.b d(b.a aVar) {
        m.e(aVar, "subscriberName");
        y6.b bVarB = b(aVar).b();
        if (bVarB != null) {
            return bVarB;
        }
        throw new IllegalStateException("Subscriber " + aVar + " has not been registered.");
    }
}
