package x6;

import android.app.Application;
import android.content.Context;
import android.util.Log;
import da.o0;
import da.p0;

/* JADX INFO: compiled from: FirebaseSessions.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class l {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final b f36434c = new b(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final b5.g f36435a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final z6.f f36436b;

    /* JADX INFO: compiled from: FirebaseSessions.kt */
    @m9.f(c = "com.google.firebase.sessions.FirebaseSessions$1", f = "FirebaseSessions.kt", l = {44, 48}, m = "invokeSuspend")
    static final class a extends m9.k implements s9.p<o0, k9.d<? super h9.t>, Object> {

        /* JADX INFO: renamed from: s, reason: collision with root package name */
        int f36437s;

        /* JADX INFO: renamed from: u, reason: collision with root package name */
        final /* synthetic */ k9.g f36439u;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(k9.g gVar, k9.d<? super a> dVar) {
            super(2, dVar);
            this.f36439u = gVar;
        }

        @Override // m9.a
        public final k9.d<h9.t> d(Object obj, k9.d<?> dVar) {
            return l.this.new a(this.f36439u, dVar);
        }

        /* JADX WARN: Removed duplicated region for block: B:31:0x0079  */
        /* JADX WARN: Removed duplicated region for block: B:32:0x007f  */
        @Override // m9.a
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public final java.lang.Object i(java.lang.Object r6) throws java.lang.Throwable {
            /*
                r5 = this;
                java.lang.Object r0 = l9.b.c()
                int r1 = r5.f36437s
                java.lang.String r2 = "FirebaseSessions"
                r3 = 2
                r4 = 1
                if (r1 == 0) goto L20
                if (r1 == r4) goto L1c
                if (r1 != r3) goto L14
                h9.o.b(r6)
                goto L6d
            L14:
                java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
                java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
                r6.<init>(r0)
                throw r6
            L1c:
                h9.o.b(r6)
                goto L2e
            L20:
                h9.o.b(r6)
                y6.a r6 = y6.a.f36997a
                r5.f36437s = r4
                java.lang.Object r6 = r6.c(r5)
                if (r6 != r0) goto L2e
                return r0
            L2e:
                java.util.Map r6 = (java.util.Map) r6
                java.util.Collection r6 = r6.values()
                boolean r1 = r6 instanceof java.util.Collection
                if (r1 == 0) goto L3f
                boolean r1 = r6.isEmpty()
                if (r1 == 0) goto L3f
                goto L56
            L3f:
                java.util.Iterator r6 = r6.iterator()
            L43:
                boolean r1 = r6.hasNext()
                if (r1 == 0) goto L56
                java.lang.Object r1 = r6.next()
                y6.b r1 = (y6.b) r1
                boolean r1 = r1.b()
                if (r1 == 0) goto L43
                r4 = 0
            L56:
                if (r4 == 0) goto L5e
                java.lang.String r6 = "No Sessions subscribers. Not listening to lifecycle events."
                android.util.Log.d(r2, r6)
                goto L99
            L5e:
                x6.l r6 = x6.l.this
                z6.f r6 = x6.l.b(r6)
                r5.f36437s = r3
                java.lang.Object r6 = r6.g(r5)
                if (r6 != r0) goto L6d
                return r0
            L6d:
                x6.l r6 = x6.l.this
                z6.f r6 = x6.l.b(r6)
                boolean r6 = r6.d()
                if (r6 != 0) goto L7f
                java.lang.String r6 = "Sessions SDK disabled. Not listening to lifecycle events."
                android.util.Log.d(r2, r6)
                goto L99
            L7f:
                x6.g0 r6 = new x6.g0
                k9.g r0 = r5.f36439u
                r6.<init>(r0)
                r6.i()
                x6.j0 r0 = x6.j0.f36430o
                r0.a(r6)
                x6.l r6 = x6.l.this
                b5.g r6 = x6.l.a(r6)
                x6.k r0 = new b5.h() { // from class: x6.k
                    static {
                        /*
                            x6.k r0 = new x6.k
                            r0.<init>()
                            
                            // error: 0x0005: SPUT (r0 I:x6.k) x6.k.a x6.k
                            return
                        */
                        throw new UnsupportedOperationException("Method not decompiled: x6.k.<clinit>():void");
                    }

                    {
                        /*
                            r0 = this;
                            r0.<init>()
                            return
                        */
                        throw new UnsupportedOperationException("Method not decompiled: x6.k.<init>():void");
                    }
                }
                r6.h(r0)
            L99:
                h9.t r6 = h9.t.f30301a
                return r6
            */
            throw new UnsupportedOperationException("Method not decompiled: x6.l.a.i(java.lang.Object):java.lang.Object");
        }

        @Override // s9.p
        /* JADX INFO: renamed from: l, reason: merged with bridge method [inline-methods] */
        public final Object invoke(o0 o0Var, k9.d<? super h9.t> dVar) {
            return ((a) d(o0Var, dVar)).i(h9.t.f30301a);
        }
    }

    /* JADX INFO: compiled from: FirebaseSessions.kt */
    public static final class b {
        private b() {
        }

        public /* synthetic */ b(t9.g gVar) {
            this();
        }
    }

    public l(b5.g gVar, z6.f fVar, k9.g gVar2) {
        t9.m.e(gVar, "firebaseApp");
        t9.m.e(fVar, "settings");
        t9.m.e(gVar2, "backgroundDispatcher");
        this.f36435a = gVar;
        this.f36436b = fVar;
        Log.d("FirebaseSessions", "Initializing Firebase Sessions SDK.");
        Context applicationContext = gVar.l().getApplicationContext();
        if (applicationContext instanceof Application) {
            ((Application) applicationContext).registerActivityLifecycleCallbacks(j0.f36430o);
            da.j.b(p0.a(gVar2), null, null, new a(gVar2, null), 3, null);
            return;
        }
        Log.e("FirebaseSessions", "Failed to register lifecycle callbacks, unexpected context " + applicationContext.getClass() + '.');
    }
}
