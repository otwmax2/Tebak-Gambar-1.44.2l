package ja;

import com.vungle.mediation.BuildConfig;
import java.util.concurrent.TimeUnit;
import javax.annotation.Nullable;

/* JADX INFO: compiled from: CacheControl.java */
/* JADX INFO: loaded from: classes.dex */
public final class d {

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public static final d f30986n = new a().c().a();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public static final d f30987o = new a().d().b(Integer.MAX_VALUE, TimeUnit.SECONDS).a();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final boolean f30988a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final boolean f30989b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final int f30990c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final int f30991d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final boolean f30992e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final boolean f30993f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final boolean f30994g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final int f30995h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final int f30996i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final boolean f30997j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final boolean f30998k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private final boolean f30999l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @Nullable
    String f31000m;

    /* JADX INFO: compiled from: CacheControl.java */
    /* JADX INFO: loaded from: classes2.dex */
    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        boolean f31001a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        boolean f31002b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        int f31003c = -1;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        int f31004d = -1;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        int f31005e = -1;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        boolean f31006f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        boolean f31007g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        boolean f31008h;

        public d a() {
            return new d(this);
        }

        public a b(int i10, TimeUnit timeUnit) {
            if (i10 >= 0) {
                long seconds = timeUnit.toSeconds(i10);
                this.f31004d = seconds > 2147483647L ? Integer.MAX_VALUE : (int) seconds;
                return this;
            }
            throw new IllegalArgumentException("maxStale < 0: " + i10);
        }

        public a c() {
            this.f31001a = true;
            return this;
        }

        public a d() {
            this.f31006f = true;
            return this;
        }
    }

    private d(boolean z10, boolean z11, int i10, int i11, boolean z12, boolean z13, boolean z14, int i12, int i13, boolean z15, boolean z16, boolean z17, @Nullable String str) {
        this.f30988a = z10;
        this.f30989b = z11;
        this.f30990c = i10;
        this.f30991d = i11;
        this.f30992e = z12;
        this.f30993f = z13;
        this.f30994g = z14;
        this.f30995h = i12;
        this.f30996i = i13;
        this.f30997j = z15;
        this.f30998k = z16;
        this.f30999l = z17;
        this.f31000m = str;
    }

    private String a() {
        StringBuilder sb = new StringBuilder();
        if (this.f30988a) {
            sb.append("no-cache, ");
        }
        if (this.f30989b) {
            sb.append("no-store, ");
        }
        if (this.f30990c != -1) {
            sb.append("max-age=");
            sb.append(this.f30990c);
            sb.append(", ");
        }
        if (this.f30991d != -1) {
            sb.append("s-maxage=");
            sb.append(this.f30991d);
            sb.append(", ");
        }
        if (this.f30992e) {
            sb.append("private, ");
        }
        if (this.f30993f) {
            sb.append("public, ");
        }
        if (this.f30994g) {
            sb.append("must-revalidate, ");
        }
        if (this.f30995h != -1) {
            sb.append("max-stale=");
            sb.append(this.f30995h);
            sb.append(", ");
        }
        if (this.f30996i != -1) {
            sb.append("min-fresh=");
            sb.append(this.f30996i);
            sb.append(", ");
        }
        if (this.f30997j) {
            sb.append("only-if-cached, ");
        }
        if (this.f30998k) {
            sb.append("no-transform, ");
        }
        if (this.f30999l) {
            sb.append("immutable, ");
        }
        if (sb.length() == 0) {
            return BuildConfig.FLAVOR;
        }
        sb.delete(sb.length() - 2, sb.length());
        return sb.toString();
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0041  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static ja.d k(ja.s r22) {
        /*
            Method dump skipped, instruction units count: 333
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: ja.d.k(ja.s):ja.d");
    }

    public boolean b() {
        return this.f30992e;
    }

    public boolean c() {
        return this.f30993f;
    }

    public int d() {
        return this.f30990c;
    }

    public int e() {
        return this.f30995h;
    }

    public int f() {
        return this.f30996i;
    }

    public boolean g() {
        return this.f30994g;
    }

    public boolean h() {
        return this.f30988a;
    }

    public boolean i() {
        return this.f30989b;
    }

    public boolean j() {
        return this.f30997j;
    }

    public String toString() {
        String str = this.f31000m;
        if (str != null) {
            return str;
        }
        String strA = a();
        this.f31000m = strA;
        return strA;
    }

    d(a aVar) {
        this.f30988a = aVar.f31001a;
        this.f30989b = aVar.f31002b;
        this.f30990c = aVar.f31003c;
        this.f30991d = -1;
        this.f30992e = false;
        this.f30993f = false;
        this.f30994g = false;
        this.f30995h = aVar.f31004d;
        this.f30996i = aVar.f31005e;
        this.f30997j = aVar.f31006f;
        this.f30998k = aVar.f31007g;
        this.f30999l = aVar.f31008h;
    }
}
