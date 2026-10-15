package t2;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.util.Log;
import b2.c;
import b2.l;
import com.vungle.mediation.BuildConfig;
import java.util.Queue;
import v1.i;
import v2.j;

/* JADX INFO: compiled from: GenericRequest.java */
/* JADX INFO: loaded from: classes.dex */
public final class b<A, T, Z, R> implements c, v2.h, g {
    private static final Queue<b<?, ?, ?, ?>> D = x2.h.d(0);
    private c.C0081c A;
    private long B;
    private a C;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f35244a = String.valueOf(hashCode());

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private z1.c f35245b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Drawable f35246c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f35247d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f35248e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f35249f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private Context f35250g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private z1.g<Z> f35251h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private s2.f<A, T, Z, R> f35252i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private d f35253j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private A f35254k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private Class<R> f35255l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private boolean f35256m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private i f35257n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private j<R> f35258o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private f<? super A, R> f35259p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private float f35260q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private b2.c f35261r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private u2.d<R> f35262s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private int f35263t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private int f35264u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private b2.b f35265v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private Drawable f35266w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private Drawable f35267x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private boolean f35268y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private l<?> f35269z;

    /* JADX INFO: compiled from: GenericRequest.java */
    private enum a {
        PENDING,
        RUNNING,
        WAITING_FOR_SIZE,
        COMPLETE,
        FAILED,
        CANCELLED,
        CLEARED,
        PAUSED
    }

    private b() {
    }

    private boolean j() {
        d dVar = this.f35253j;
        return dVar == null || dVar.a(this);
    }

    private boolean k() {
        d dVar = this.f35253j;
        return dVar == null || dVar.c(this);
    }

    private static void m(String str, Object obj, String str2) {
        if (obj == null) {
            StringBuilder sb = new StringBuilder(str);
            sb.append(" must not be null");
            if (str2 != null) {
                sb.append(", ");
                sb.append(str2);
            }
            throw new NullPointerException(sb.toString());
        }
    }

    private Drawable n() {
        if (this.f35267x == null && this.f35249f > 0) {
            this.f35267x = this.f35250g.getResources().getDrawable(this.f35249f);
        }
        return this.f35267x;
    }

    private Drawable o() {
        if (this.f35246c == null && this.f35247d > 0) {
            this.f35246c = this.f35250g.getResources().getDrawable(this.f35247d);
        }
        return this.f35246c;
    }

    private Drawable p() {
        if (this.f35266w == null && this.f35248e > 0) {
            this.f35266w = this.f35250g.getResources().getDrawable(this.f35248e);
        }
        return this.f35266w;
    }

    private void q(s2.f<A, T, Z, R> fVar, A a10, z1.c cVar, Context context, i iVar, j<R> jVar, float f10, Drawable drawable, int i10, Drawable drawable2, int i11, Drawable drawable3, int i12, f<? super A, R> fVar2, d dVar, b2.c cVar2, z1.g<Z> gVar, Class<R> cls, boolean z10, u2.d<R> dVar2, int i13, int i14, b2.b bVar) {
        this.f35252i = fVar;
        this.f35254k = a10;
        this.f35245b = cVar;
        this.f35246c = drawable3;
        this.f35247d = i12;
        this.f35250g = context.getApplicationContext();
        this.f35257n = iVar;
        this.f35258o = jVar;
        this.f35260q = f10;
        this.f35266w = drawable;
        this.f35248e = i10;
        this.f35267x = drawable2;
        this.f35249f = i11;
        this.f35259p = fVar2;
        this.f35253j = dVar;
        this.f35261r = cVar2;
        this.f35251h = gVar;
        this.f35255l = cls;
        this.f35256m = z10;
        this.f35262s = dVar2;
        this.f35263t = i13;
        this.f35264u = i14;
        this.f35265v = bVar;
        this.C = a.PENDING;
        if (a10 != null) {
            m("ModelLoader", fVar.h(), "try .using(ModelLoader)");
            m("Transcoder", fVar.b(), "try .as*(Class).transcode(ResourceTranscoder)");
            m("Transformation", gVar, "try .transform(UnitTransformation.get())");
            if (bVar.e()) {
                m("SourceEncoder", fVar.a(), "try .sourceEncoder(Encoder) or .diskCacheStrategy(NONE/RESULT)");
            } else {
                m("SourceDecoder", fVar.f(), "try .decoder/.imageDecoder/.videoDecoder(ResourceDecoder) or .diskCacheStrategy(ALL/SOURCE)");
            }
            if (bVar.e() || bVar.c()) {
                m("CacheDecoder", fVar.g(), "try .cacheDecoder(ResouceDecoder) or .diskCacheStrategy(NONE)");
            }
            if (bVar.c()) {
                m("Encoder", fVar.d(), "try .encode(ResourceEncoder) or .diskCacheStrategy(NONE/SOURCE)");
            }
        }
    }

    private boolean s() {
        d dVar = this.f35253j;
        return dVar == null || !dVar.d();
    }

    private void t(String str) {
        Log.v("GenericRequest", str + " this: " + this.f35244a);
    }

    private void u() {
        d dVar = this.f35253j;
        if (dVar != null) {
            dVar.g(this);
        }
    }

    public static <A, T, Z, R> b<A, T, Z, R> v(s2.f<A, T, Z, R> fVar, A a10, z1.c cVar, Context context, i iVar, j<R> jVar, float f10, Drawable drawable, int i10, Drawable drawable2, int i11, Drawable drawable3, int i12, f<? super A, R> fVar2, d dVar, b2.c cVar2, z1.g<Z> gVar, Class<R> cls, boolean z10, u2.d<R> dVar2, int i13, int i14, b2.b bVar) {
        b<A, T, Z, R> bVar2 = (b) D.poll();
        if (bVar2 == null) {
            bVar2 = new b<>();
        }
        bVar2.q(fVar, a10, cVar, context, iVar, jVar, f10, drawable, i10, drawable2, i11, drawable3, i12, fVar2, dVar, cVar2, gVar, cls, z10, dVar2, i13, i14, bVar);
        return bVar2;
    }

    private void w(l<?> lVar, R r10) {
        boolean zS = s();
        this.C = a.COMPLETE;
        this.f35269z = lVar;
        f<? super A, R> fVar = this.f35259p;
        if (fVar == null || !fVar.a(r10, this.f35254k, this.f35258o, this.f35268y, zS)) {
            this.f35258o.c(r10, this.f35262s.a(this.f35268y, zS));
        }
        u();
        if (Log.isLoggable("GenericRequest", 2)) {
            StringBuilder sb = new StringBuilder();
            sb.append("Resource ready in ");
            sb.append(x2.d.a(this.B));
            sb.append(" size: ");
            double dC = lVar.c();
            Double.isNaN(dC);
            sb.append(dC * 9.5367431640625E-7d);
            sb.append(" fromCache: ");
            sb.append(this.f35268y);
            t(sb.toString());
        }
    }

    private void x(l lVar) {
        this.f35261r.k(lVar);
        this.f35269z = null;
    }

    private void y(Exception exc) {
        if (j()) {
            Drawable drawableO = this.f35254k == null ? o() : null;
            if (drawableO == null) {
                drawableO = n();
            }
            if (drawableO == null) {
                drawableO = p();
            }
            this.f35258o.g(exc, drawableO);
        }
    }

    @Override // t2.g
    public void a(Exception exc) {
        if (Log.isLoggable("GenericRequest", 3)) {
            Log.d("GenericRequest", "load failed", exc);
        }
        this.C = a.FAILED;
        f<? super A, R> fVar = this.f35259p;
        if (fVar == null || !fVar.b(exc, this.f35254k, this.f35258o, s())) {
            y(exc);
        }
    }

    @Override // t2.c
    public void b() {
        this.f35252i = null;
        this.f35254k = null;
        this.f35250g = null;
        this.f35258o = null;
        this.f35266w = null;
        this.f35267x = null;
        this.f35246c = null;
        this.f35259p = null;
        this.f35253j = null;
        this.f35251h = null;
        this.f35262s = null;
        this.f35268y = false;
        this.A = null;
        D.offer(this);
    }

    @Override // t2.c
    public void clear() {
        x2.h.b();
        a aVar = this.C;
        a aVar2 = a.CLEARED;
        if (aVar == aVar2) {
            return;
        }
        l();
        l<?> lVar = this.f35269z;
        if (lVar != null) {
            x(lVar);
        }
        if (j()) {
            this.f35258o.l(p());
        }
        this.C = aVar2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // t2.g
    public void d(l<?> lVar) {
        if (lVar == null) {
            a(new Exception("Expected to receive a Resource<R> with an object of " + this.f35255l + " inside, but instead got null."));
            return;
        }
        Object obj = lVar.get();
        if (obj != null && this.f35255l.isAssignableFrom(obj.getClass())) {
            if (k()) {
                w(lVar, obj);
                return;
            } else {
                x(lVar);
                this.C = a.COMPLETE;
                return;
            }
        }
        x(lVar);
        StringBuilder sb = new StringBuilder();
        sb.append("Expected to receive an object of ");
        sb.append(this.f35255l);
        sb.append(" but instead got ");
        String str = BuildConfig.FLAVOR;
        sb.append(obj != null ? obj.getClass() : BuildConfig.FLAVOR);
        sb.append("{");
        sb.append(obj);
        sb.append("}");
        sb.append(" inside Resource{");
        sb.append(lVar);
        sb.append("}.");
        if (obj == null) {
            str = " To indicate failure return a null Resource object, rather than a Resource object containing null data.";
        }
        sb.append(str);
        a(new Exception(sb.toString()));
    }

    @Override // t2.c
    public void e() {
        clear();
        this.C = a.PAUSED;
    }

    @Override // t2.c
    public boolean f() {
        return i();
    }

    @Override // v2.h
    public void g(int i10, int i11) {
        if (Log.isLoggable("GenericRequest", 2)) {
            t("Got onSizeReady in " + x2.d.a(this.B));
        }
        if (this.C != a.WAITING_FOR_SIZE) {
            return;
        }
        this.C = a.RUNNING;
        int iRound = Math.round(this.f35260q * i10);
        int iRound2 = Math.round(this.f35260q * i11);
        a2.c<T> cVarA = this.f35252i.h().a(this.f35254k, iRound, iRound2);
        if (cVarA == null) {
            a(new Exception("Failed to load model: '" + this.f35254k + "'"));
            return;
        }
        p2.c<Z, R> cVarB = this.f35252i.b();
        if (Log.isLoggable("GenericRequest", 2)) {
            t("finished setup for calling load in " + x2.d.a(this.B));
        }
        this.f35268y = true;
        this.A = this.f35261r.g(this.f35245b, iRound, iRound2, cVarA, this.f35252i, this.f35251h, cVarB, this.f35257n, this.f35256m, this.f35265v, this);
        this.f35268y = this.f35269z != null;
        if (Log.isLoggable("GenericRequest", 2)) {
            t("finished onSizeReady in " + x2.d.a(this.B));
        }
    }

    @Override // t2.c
    public void h() {
        this.B = x2.d.b();
        if (this.f35254k == null) {
            a(null);
            return;
        }
        this.C = a.WAITING_FOR_SIZE;
        if (x2.h.l(this.f35263t, this.f35264u)) {
            g(this.f35263t, this.f35264u);
        } else {
            this.f35258o.i(this);
        }
        if (!i() && !r() && j()) {
            this.f35258o.j(p());
        }
        if (Log.isLoggable("GenericRequest", 2)) {
            t("finished run method in " + x2.d.a(this.B));
        }
    }

    @Override // t2.c
    public boolean i() {
        return this.C == a.COMPLETE;
    }

    @Override // t2.c
    public boolean isCancelled() {
        a aVar = this.C;
        return aVar == a.CANCELLED || aVar == a.CLEARED;
    }

    @Override // t2.c
    public boolean isRunning() {
        a aVar = this.C;
        return aVar == a.RUNNING || aVar == a.WAITING_FOR_SIZE;
    }

    void l() {
        this.C = a.CANCELLED;
        c.C0081c c0081c = this.A;
        if (c0081c != null) {
            c0081c.a();
            this.A = null;
        }
    }

    public boolean r() {
        return this.C == a.FAILED;
    }
}
