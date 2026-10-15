package f8;

import android.graphics.Bitmap;
import android.net.Uri;
import f8.t;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.TimeUnit;

/* JADX INFO: compiled from: Request.java */
/* JADX INFO: loaded from: classes2.dex */
public final class w {

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private static final long f29465s = TimeUnit.SECONDS.toNanos(5);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    int f29466a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    long f29467b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    int f29468c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final Uri f29469d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f29470e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final String f29471f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final List<c0> f29472g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final int f29473h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final int f29474i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final boolean f29475j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final boolean f29476k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final boolean f29477l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final float f29478m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final float f29479n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final float f29480o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final boolean f29481p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public final Bitmap.Config f29482q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public final t.f f29483r;

    /* JADX INFO: compiled from: Request.java */
    public static final class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private Uri f29484a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private int f29485b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private String f29486c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private int f29487d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private int f29488e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private boolean f29489f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private boolean f29490g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private boolean f29491h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        private float f29492i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        private float f29493j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        private float f29494k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        private boolean f29495l;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        private List<c0> f29496m;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        private Bitmap.Config f29497n;

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        private t.f f29498o;

        b(Uri uri, int i10, Bitmap.Config config) {
            this.f29484a = uri;
            this.f29485b = i10;
            this.f29497n = config;
        }

        public w a() {
            boolean z10 = this.f29490g;
            if (z10 && this.f29489f) {
                throw new IllegalStateException("Center crop and center inside can not be used together.");
            }
            if (this.f29489f && this.f29487d == 0 && this.f29488e == 0) {
                throw new IllegalStateException("Center crop requires calling resize with positive width and height.");
            }
            if (z10 && this.f29487d == 0 && this.f29488e == 0) {
                throw new IllegalStateException("Center inside requires calling resize with positive width and height.");
            }
            if (this.f29498o == null) {
                this.f29498o = t.f.NORMAL;
            }
            return new w(this.f29484a, this.f29485b, this.f29486c, this.f29496m, this.f29487d, this.f29488e, this.f29489f, this.f29490g, this.f29491h, this.f29492i, this.f29493j, this.f29494k, this.f29495l, this.f29497n, this.f29498o);
        }

        boolean b() {
            return (this.f29484a == null && this.f29485b == 0) ? false : true;
        }

        boolean c() {
            return (this.f29487d == 0 && this.f29488e == 0) ? false : true;
        }

        public b d(int i10, int i11) {
            if (i10 < 0) {
                throw new IllegalArgumentException("Width must be positive number or 0.");
            }
            if (i11 < 0) {
                throw new IllegalArgumentException("Height must be positive number or 0.");
            }
            if (i11 == 0 && i10 == 0) {
                throw new IllegalArgumentException("At least one dimension has to be positive number.");
            }
            this.f29487d = i10;
            this.f29488e = i11;
            return this;
        }
    }

    String a() {
        Uri uri = this.f29469d;
        return uri != null ? String.valueOf(uri.getPath()) : Integer.toHexString(this.f29470e);
    }

    boolean b() {
        return this.f29472g != null;
    }

    public boolean c() {
        return (this.f29473h == 0 && this.f29474i == 0) ? false : true;
    }

    String d() {
        long jNanoTime = System.nanoTime() - this.f29467b;
        if (jNanoTime > f29465s) {
            return g() + '+' + TimeUnit.NANOSECONDS.toSeconds(jNanoTime) + 's';
        }
        return g() + '+' + TimeUnit.NANOSECONDS.toMillis(jNanoTime) + "ms";
    }

    boolean e() {
        return c() || this.f29478m != 0.0f;
    }

    boolean f() {
        return e() || b();
    }

    String g() {
        return "[R" + this.f29466a + ']';
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("Request{");
        int i10 = this.f29470e;
        if (i10 > 0) {
            sb.append(i10);
        } else {
            sb.append(this.f29469d);
        }
        List<c0> list = this.f29472g;
        if (list != null && !list.isEmpty()) {
            for (c0 c0Var : this.f29472g) {
                sb.append(' ');
                sb.append(c0Var.b());
            }
        }
        if (this.f29471f != null) {
            sb.append(" stableKey(");
            sb.append(this.f29471f);
            sb.append(')');
        }
        if (this.f29473h > 0) {
            sb.append(" resize(");
            sb.append(this.f29473h);
            sb.append(',');
            sb.append(this.f29474i);
            sb.append(')');
        }
        if (this.f29475j) {
            sb.append(" centerCrop");
        }
        if (this.f29476k) {
            sb.append(" centerInside");
        }
        if (this.f29478m != 0.0f) {
            sb.append(" rotation(");
            sb.append(this.f29478m);
            if (this.f29481p) {
                sb.append(" @ ");
                sb.append(this.f29479n);
                sb.append(',');
                sb.append(this.f29480o);
            }
            sb.append(')');
        }
        if (this.f29482q != null) {
            sb.append(' ');
            sb.append(this.f29482q);
        }
        sb.append('}');
        return sb.toString();
    }

    private w(Uri uri, int i10, String str, List<c0> list, int i11, int i12, boolean z10, boolean z11, boolean z12, float f10, float f11, float f12, boolean z13, Bitmap.Config config, t.f fVar) {
        this.f29469d = uri;
        this.f29470e = i10;
        this.f29471f = str;
        if (list == null) {
            this.f29472g = null;
        } else {
            this.f29472g = Collections.unmodifiableList(list);
        }
        this.f29473h = i11;
        this.f29474i = i12;
        this.f29475j = z10;
        this.f29476k = z11;
        this.f29477l = z12;
        this.f29478m = f10;
        this.f29479n = f11;
        this.f29480o = f12;
        this.f29481p = z13;
        this.f29482q = config;
        this.f29483r = fVar;
    }
}
