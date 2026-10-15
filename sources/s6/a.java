package s6;

import com.google.android.gms.internal.firebase_messaging.zzx;
import com.google.android.gms.internal.firebase_messaging.zzz;
import com.vungle.mediation.BuildConfig;

/* JADX INFO: compiled from: com.google.firebase:firebase-messaging@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class a {

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private static final a f34969p = new C0248a().a();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final long f34970a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f34971b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final String f34972c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final c f34973d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final d f34974e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final String f34975f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final String f34976g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final int f34977h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final int f34978i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final String f34979j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final long f34980k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private final b f34981l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private final String f34982m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private final long f34983n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final String f34984o;

    /* JADX INFO: renamed from: s6.a$a, reason: collision with other inner class name */
    /* JADX INFO: compiled from: com.google.firebase:firebase-messaging@@22.0.0 */
    public static final class C0248a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private long f34985a = 0;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private String f34986b = BuildConfig.FLAVOR;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private String f34987c = BuildConfig.FLAVOR;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private c f34988d = c.UNKNOWN;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private d f34989e = d.UNKNOWN_OS;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private String f34990f = BuildConfig.FLAVOR;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private String f34991g = BuildConfig.FLAVOR;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private int f34992h = 0;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        private int f34993i = 0;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        private String f34994j = BuildConfig.FLAVOR;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        private long f34995k = 0;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        private b f34996l = b.UNKNOWN_EVENT;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        private String f34997m = BuildConfig.FLAVOR;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        private long f34998n = 0;

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        private String f34999o = BuildConfig.FLAVOR;

        C0248a() {
        }

        public a a() {
            return new a(this.f34985a, this.f34986b, this.f34987c, this.f34988d, this.f34989e, this.f34990f, this.f34991g, this.f34992h, this.f34993i, this.f34994j, this.f34995k, this.f34996l, this.f34997m, this.f34998n, this.f34999o);
        }

        public C0248a b(String str) {
            this.f34997m = str;
            return this;
        }

        public C0248a c(String str) {
            this.f34991g = str;
            return this;
        }

        public C0248a d(String str) {
            this.f34999o = str;
            return this;
        }

        public C0248a e(b bVar) {
            this.f34996l = bVar;
            return this;
        }

        public C0248a f(String str) {
            this.f34987c = str;
            return this;
        }

        public C0248a g(String str) {
            this.f34986b = str;
            return this;
        }

        public C0248a h(c cVar) {
            this.f34988d = cVar;
            return this;
        }

        public C0248a i(String str) {
            this.f34990f = str;
            return this;
        }

        public C0248a j(long j10) {
            this.f34985a = j10;
            return this;
        }

        public C0248a k(d dVar) {
            this.f34989e = dVar;
            return this;
        }

        public C0248a l(String str) {
            this.f34994j = str;
            return this;
        }

        public C0248a m(int i10) {
            this.f34993i = i10;
            return this;
        }
    }

    /* JADX INFO: compiled from: com.google.firebase:firebase-messaging@@22.0.0 */
    public enum b implements zzx {
        UNKNOWN_EVENT(0),
        MESSAGE_DELIVERED(1),
        MESSAGE_OPEN(2);


        /* JADX INFO: renamed from: o, reason: collision with root package name */
        private final int f35004o;

        b(int i10) {
            this.f35004o = i10;
        }

        @Override // com.google.android.gms.internal.firebase_messaging.zzx
        public int h() {
            return this.f35004o;
        }
    }

    /* JADX INFO: compiled from: com.google.firebase:firebase-messaging@@22.0.0 */
    public enum c implements zzx {
        UNKNOWN(0),
        DATA_MESSAGE(1),
        TOPIC(2),
        DISPLAY_NOTIFICATION(3);


        /* JADX INFO: renamed from: o, reason: collision with root package name */
        private final int f35010o;

        c(int i10) {
            this.f35010o = i10;
        }

        @Override // com.google.android.gms.internal.firebase_messaging.zzx
        public int h() {
            return this.f35010o;
        }
    }

    /* JADX INFO: compiled from: com.google.firebase:firebase-messaging@@22.0.0 */
    public enum d implements zzx {
        UNKNOWN_OS(0),
        ANDROID(1),
        IOS(2),
        WEB(3);


        /* JADX INFO: renamed from: o, reason: collision with root package name */
        private final int f35016o;

        d(int i10) {
            this.f35016o = i10;
        }

        @Override // com.google.android.gms.internal.firebase_messaging.zzx
        public int h() {
            return this.f35016o;
        }
    }

    a(long j10, String str, String str2, c cVar, d dVar, String str3, String str4, int i10, int i11, String str5, long j11, b bVar, String str6, long j12, String str7) {
        this.f34970a = j10;
        this.f34971b = str;
        this.f34972c = str2;
        this.f34973d = cVar;
        this.f34974e = dVar;
        this.f34975f = str3;
        this.f34976g = str4;
        this.f34977h = i10;
        this.f34978i = i11;
        this.f34979j = str5;
        this.f34980k = j11;
        this.f34981l = bVar;
        this.f34982m = str6;
        this.f34983n = j12;
        this.f34984o = str7;
    }

    public static C0248a p() {
        return new C0248a();
    }

    @zzz(zza = 13)
    public String a() {
        return this.f34982m;
    }

    @zzz(zza = 11)
    public long b() {
        return this.f34980k;
    }

    @zzz(zza = 14)
    public long c() {
        return this.f34983n;
    }

    @zzz(zza = 7)
    public String d() {
        return this.f34976g;
    }

    @zzz(zza = 15)
    public String e() {
        return this.f34984o;
    }

    @zzz(zza = 12)
    public b f() {
        return this.f34981l;
    }

    @zzz(zza = 3)
    public String g() {
        return this.f34972c;
    }

    @zzz(zza = 2)
    public String h() {
        return this.f34971b;
    }

    @zzz(zza = 4)
    public c i() {
        return this.f34973d;
    }

    @zzz(zza = 6)
    public String j() {
        return this.f34975f;
    }

    @zzz(zza = 8)
    public int k() {
        return this.f34977h;
    }

    @zzz(zza = 1)
    public long l() {
        return this.f34970a;
    }

    @zzz(zza = 5)
    public d m() {
        return this.f34974e;
    }

    @zzz(zza = 10)
    public String n() {
        return this.f34979j;
    }

    @zzz(zza = 9)
    public int o() {
        return this.f34978i;
    }
}
