package x6;

import com.vungle.mediation.BuildConfig;
import java.util.Locale;
import java.util.UUID;

/* JADX INFO: compiled from: SessionGenerator.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class e0 {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final b f36390f = new b(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final k0 f36391a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final s9.a<UUID> f36392b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final String f36393c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f36394d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private z f36395e;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX INFO: compiled from: SessionGenerator.kt */
    public /* synthetic */ class a extends t9.j implements s9.a<UUID> {

        /* JADX INFO: renamed from: x, reason: collision with root package name */
        public static final a f36396x = new a();

        a() {
            super(0, UUID.class, "randomUUID", "randomUUID()Ljava/util/UUID;", 0);
        }

        @Override // s9.a
        /* JADX INFO: renamed from: l, reason: merged with bridge method [inline-methods] */
        public final UUID invoke() {
            return UUID.randomUUID();
        }
    }

    /* JADX INFO: compiled from: SessionGenerator.kt */
    public static final class b {
        private b() {
        }

        public /* synthetic */ b(t9.g gVar) {
            this();
        }

        public final e0 a() {
            Object objJ = b5.o.a(b5.c.f4652a).j(e0.class);
            t9.m.d(objJ, "Firebase.app[SessionGenerator::class.java]");
            return (e0) objJ;
        }
    }

    public e0(k0 k0Var, s9.a<UUID> aVar) {
        t9.m.e(k0Var, "timeProvider");
        t9.m.e(aVar, "uuidGenerator");
        this.f36391a = k0Var;
        this.f36392b = aVar;
        this.f36393c = b();
        this.f36394d = -1;
    }

    private final String b() {
        String string = this.f36392b.invoke().toString();
        t9.m.d(string, "uuidGenerator().toString()");
        String lowerCase = ba.p.s(string, "-", BuildConfig.FLAVOR, false, 4, null).toLowerCase(Locale.ROOT);
        t9.m.d(lowerCase, "this as java.lang.String).toLowerCase(Locale.ROOT)");
        return lowerCase;
    }

    public final z a() {
        int i10 = this.f36394d + 1;
        this.f36394d = i10;
        this.f36395e = new z(i10 == 0 ? this.f36393c : b(), this.f36393c, this.f36394d, this.f36391a.a());
        return c();
    }

    public final z c() {
        z zVar = this.f36395e;
        if (zVar != null) {
            return zVar;
        }
        t9.m.p("currentSession");
        return null;
    }

    public /* synthetic */ e0(k0 k0Var, s9.a aVar, int i10, t9.g gVar) {
        this(k0Var, (i10 & 2) != 0 ? a.f36396x : aVar);
    }
}
