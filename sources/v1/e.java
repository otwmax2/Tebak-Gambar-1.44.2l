package v1;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.widget.ImageView;
import java.util.Objects;
import q2.m;

/* JADX INFO: compiled from: GenericRequestBuilder.java */
/* JADX INFO: loaded from: classes.dex */
public class e<ModelType, DataType, ResourceType, TranscodeType> implements Cloneable {
    private t2.f<? super ModelType, TranscodeType> A;
    private Float B;
    private e<?, ?, ?, TranscodeType> C;
    private Float D;
    private Drawable E;
    private Drawable F;
    private i G;
    private boolean H;
    private u2.d<TranscodeType> I;
    private int J;
    private int K;
    private b2.b L;
    private z1.g<ResourceType> M;
    private boolean N;
    private boolean O;
    private Drawable P;
    private int Q;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    protected final Class<ModelType> f35713o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    protected final Context f35714p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    protected final g f35715q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    protected final Class<TranscodeType> f35716r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    protected final m f35717s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    protected final q2.g f35718t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private s2.a<ModelType, DataType, ResourceType, TranscodeType> f35719u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private ModelType f35720v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private z1.c f35721w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private boolean f35722x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private int f35723y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private int f35724z;

    /* JADX INFO: compiled from: GenericRequestBuilder.java */
    class a implements Runnable {

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        final /* synthetic */ t2.e f35725o;

        a(t2.e eVar) {
            this.f35725o = eVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.f35725o.isCancelled()) {
                return;
            }
            e.this.q(this.f35725o);
        }
    }

    /* JADX INFO: compiled from: GenericRequestBuilder.java */
    static /* synthetic */ class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f35727a;

        static {
            int[] iArr = new int[ImageView.ScaleType.values().length];
            f35727a = iArr;
            try {
                iArr[ImageView.ScaleType.CENTER_CROP.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f35727a[ImageView.ScaleType.FIT_CENTER.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f35727a[ImageView.ScaleType.FIT_START.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f35727a[ImageView.ScaleType.FIT_END.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    e(s2.f<ModelType, DataType, ResourceType, TranscodeType> fVar, Class<TranscodeType> cls, e<ModelType, ?, ?, ?> eVar) {
        this(eVar.f35714p, eVar.f35713o, fVar, cls, eVar.f35715q, eVar.f35717s, eVar.f35718t);
        this.f35720v = eVar.f35720v;
        this.f35722x = eVar.f35722x;
        this.f35721w = eVar.f35721w;
        this.L = eVar.L;
        this.H = eVar.H;
    }

    private t2.c f(v2.j<TranscodeType> jVar) {
        if (this.G == null) {
            this.G = i.NORMAL;
        }
        return g(jVar, null);
    }

    private t2.c g(v2.j<TranscodeType> jVar, t2.h hVar) {
        e<?, ?, ?, TranscodeType> eVar = this.C;
        if (eVar == null) {
            if (this.B == null) {
                return t(jVar, this.D.floatValue(), this.G, hVar);
            }
            t2.h hVar2 = new t2.h(hVar);
            hVar2.m(t(jVar, this.D.floatValue(), this.G, hVar2), t(jVar, this.B.floatValue(), n(), hVar2));
            return hVar2;
        }
        if (this.O) {
            throw new IllegalStateException("You cannot use a request as both the main request and a thumbnail, consider using clone() on the request(s) passed to thumbnail()");
        }
        if (eVar.I.equals(u2.e.d())) {
            this.C.I = this.I;
        }
        e<?, ?, ?, TranscodeType> eVar2 = this.C;
        if (eVar2.G == null) {
            eVar2.G = n();
        }
        if (x2.h.l(this.K, this.J)) {
            e<?, ?, ?, TranscodeType> eVar3 = this.C;
            if (!x2.h.l(eVar3.K, eVar3.J)) {
                this.C.u(this.K, this.J);
            }
        }
        t2.h hVar3 = new t2.h(hVar);
        t2.c cVarT = t(jVar, this.D.floatValue(), this.G, hVar3);
        this.O = true;
        t2.c cVarG = this.C.g(jVar, hVar3);
        this.O = false;
        hVar3.m(cVarT, cVarG);
        return hVar3;
    }

    private i n() {
        i iVar = this.G;
        return iVar == i.LOW ? i.NORMAL : iVar == i.NORMAL ? i.HIGH : i.IMMEDIATE;
    }

    private t2.c t(v2.j<TranscodeType> jVar, float f10, i iVar, t2.d dVar) {
        return t2.b.v(this.f35719u, this.f35720v, this.f35721w, this.f35714p, iVar, jVar, f10, this.E, this.f35723y, this.F, this.f35724z, this.P, this.Q, this.A, dVar, this.f35715q.p(), this.M, this.f35716r, this.H, this.I, this.K, this.J, this.L);
    }

    public e<ModelType, DataType, ResourceType, TranscodeType> A(z1.b<DataType> bVar) {
        s2.a<ModelType, DataType, ResourceType, TranscodeType> aVar = this.f35719u;
        if (aVar != null) {
            aVar.k(bVar);
        }
        return this;
    }

    public e<ModelType, DataType, ResourceType, TranscodeType> B(z1.g<ResourceType>... gVarArr) {
        this.N = true;
        if (gVarArr.length == 1) {
            this.M = gVarArr[0];
        } else {
            this.M = new z1.d(gVarArr);
        }
        return this;
    }

    public e<ModelType, DataType, ResourceType, TranscodeType> a(u2.d<TranscodeType> dVar) {
        Objects.requireNonNull(dVar, "Animation factory must not be null!");
        this.I = dVar;
        return this;
    }

    void b() {
    }

    void d() {
    }

    @Override // 
    public e<ModelType, DataType, ResourceType, TranscodeType> h() {
        try {
            e<ModelType, DataType, ResourceType, TranscodeType> eVar = (e) super.clone();
            s2.a<ModelType, DataType, ResourceType, TranscodeType> aVar = this.f35719u;
            eVar.f35719u = aVar != null ? aVar.clone() : null;
            return eVar;
        } catch (CloneNotSupportedException e10) {
            throw new RuntimeException(e10);
        }
    }

    public e<ModelType, DataType, ResourceType, TranscodeType> i(z1.e<DataType, ResourceType> eVar) {
        s2.a<ModelType, DataType, ResourceType, TranscodeType> aVar = this.f35719u;
        if (aVar != null) {
            aVar.j(eVar);
        }
        return this;
    }

    public e<ModelType, DataType, ResourceType, TranscodeType> j(b2.b bVar) {
        this.L = bVar;
        return this;
    }

    public e<ModelType, DataType, ResourceType, TranscodeType> k() {
        return a(u2.e.d());
    }

    public e<ModelType, DataType, ResourceType, TranscodeType> l(int i10) {
        this.f35724z = i10;
        return this;
    }

    public e<ModelType, DataType, ResourceType, TranscodeType> m(Drawable drawable) {
        this.F = drawable;
        return this;
    }

    public t2.a<TranscodeType> o(int i10, int i11) {
        t2.e eVar = new t2.e(this.f35715q.r(), i10, i11);
        this.f35715q.r().post(new a(eVar));
        return eVar;
    }

    public v2.j<TranscodeType> p(ImageView imageView) {
        x2.h.b();
        if (imageView == null) {
            throw new IllegalArgumentException("You must pass in a non null View");
        }
        if (!this.N && imageView.getScaleType() != null) {
            int i10 = b.f35727a[imageView.getScaleType().ordinal()];
            if (i10 == 1) {
                b();
            } else if (i10 == 2 || i10 == 3 || i10 == 4) {
                d();
            }
        }
        return q(this.f35715q.c(imageView, this.f35716r));
    }

    public <Y extends v2.j<TranscodeType>> Y q(Y y10) {
        x2.h.b();
        if (y10 == null) {
            throw new IllegalArgumentException("You must pass in a non null Target");
        }
        if (!this.f35722x) {
            throw new IllegalArgumentException("You must first set a model (try #load())");
        }
        t2.c cVarK = y10.k();
        if (cVarK != null) {
            cVarK.clear();
            this.f35717s.c(cVarK);
            cVarK.b();
        }
        t2.c cVarF = f(y10);
        y10.m(cVarF);
        this.f35718t.a(y10);
        this.f35717s.f(cVarF);
        return y10;
    }

    public e<ModelType, DataType, ResourceType, TranscodeType> r(t2.f<? super ModelType, TranscodeType> fVar) {
        this.A = fVar;
        return this;
    }

    public e<ModelType, DataType, ResourceType, TranscodeType> s(ModelType modeltype) {
        this.f35720v = modeltype;
        this.f35722x = true;
        return this;
    }

    public e<ModelType, DataType, ResourceType, TranscodeType> u(int i10, int i11) {
        if (!x2.h.l(i10, i11)) {
            throw new IllegalArgumentException("Width and height must be Target#SIZE_ORIGINAL or > 0");
        }
        this.K = i10;
        this.J = i11;
        return this;
    }

    public e<ModelType, DataType, ResourceType, TranscodeType> v(int i10) {
        this.f35723y = i10;
        return this;
    }

    public e<ModelType, DataType, ResourceType, TranscodeType> w(Drawable drawable) {
        this.E = drawable;
        return this;
    }

    public e<ModelType, DataType, ResourceType, TranscodeType> x(i iVar) {
        this.G = iVar;
        return this;
    }

    public e<ModelType, DataType, ResourceType, TranscodeType> y(z1.c cVar) {
        Objects.requireNonNull(cVar, "Signature must not be null");
        this.f35721w = cVar;
        return this;
    }

    public e<ModelType, DataType, ResourceType, TranscodeType> z(boolean z10) {
        this.H = !z10;
        return this;
    }

    e(Context context, Class<ModelType> cls, s2.f<ModelType, DataType, ResourceType, TranscodeType> fVar, Class<TranscodeType> cls2, g gVar, m mVar, q2.g gVar2) {
        this.f35721w = w2.b.b();
        this.D = Float.valueOf(1.0f);
        this.G = null;
        this.H = true;
        this.I = u2.e.d();
        this.J = -1;
        this.K = -1;
        this.L = b2.b.RESULT;
        this.M = j2.d.c();
        this.f35714p = context;
        this.f35713o = cls;
        this.f35716r = cls2;
        this.f35715q = gVar;
        this.f35717s = mVar;
        this.f35718t = gVar2;
        this.f35719u = fVar != null ? new s2.a<>(fVar) : null;
        Objects.requireNonNull(context, "Context can't be null");
        if (cls != null) {
            Objects.requireNonNull(fVar, "LoadProvider must not be null");
        }
    }
}
