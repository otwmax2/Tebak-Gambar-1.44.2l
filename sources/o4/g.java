package o4;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Outline;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Region;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Looper;
import android.util.AttributeSet;
import android.util.Log;
import java.util.BitSet;
import o4.k;
import o4.l;
import o4.m;

/* JADX INFO: compiled from: MaterialShapeDrawable.java */
/* JADX INFO: loaded from: classes2.dex */
public class g extends Drawable implements androidx.core.graphics.drawable.e, n {
    private static final String K = g.class.getSimpleName();
    private static final Paint L = new Paint(1);
    private k A;
    private final Paint B;
    private final Paint C;
    private final n4.a D;
    private final l.b E;
    private final l F;
    private PorterDuffColorFilter G;
    private PorterDuffColorFilter H;
    private final RectF I;
    private boolean J;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private c f32973o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final m.g[] f32974p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final m.g[] f32975q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private final BitSet f32976r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private boolean f32977s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private final Matrix f32978t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private final Path f32979u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private final Path f32980v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private final RectF f32981w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private final RectF f32982x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private final Region f32983y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private final Region f32984z;

    /* JADX INFO: compiled from: MaterialShapeDrawable.java */
    class a implements l.b {
        a() {
        }

        @Override // o4.l.b
        public void a(m mVar, Matrix matrix, int i10) {
            g.this.f32976r.set(i10 + 4, mVar.e());
            g.this.f32975q[i10] = mVar.f(matrix);
        }

        @Override // o4.l.b
        public void b(m mVar, Matrix matrix, int i10) {
            g.this.f32976r.set(i10, mVar.e());
            g.this.f32974p[i10] = mVar.f(matrix);
        }
    }

    /* JADX INFO: compiled from: MaterialShapeDrawable.java */
    class b implements k.c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ float f32986a;

        b(float f10) {
            this.f32986a = f10;
        }

        @Override // o4.k.c
        public o4.c a(o4.c cVar) {
            return cVar instanceof i ? cVar : new o4.b(this.f32986a, cVar);
        }
    }

    /* synthetic */ g(c cVar, a aVar) {
        this(cVar);
    }

    private float D() {
        if (L()) {
            return this.C.getStrokeWidth() / 2.0f;
        }
        return 0.0f;
    }

    private boolean J() {
        c cVar = this.f32973o;
        int i10 = cVar.f33004q;
        return i10 != 1 && cVar.f33005r > 0 && (i10 == 2 || T());
    }

    private boolean K() {
        Paint.Style style = this.f32973o.f33009v;
        return style == Paint.Style.FILL_AND_STROKE || style == Paint.Style.FILL;
    }

    private boolean L() {
        Paint.Style style = this.f32973o.f33009v;
        return (style == Paint.Style.FILL_AND_STROKE || style == Paint.Style.STROKE) && this.C.getStrokeWidth() > 0.0f;
    }

    private void N() {
        super.invalidateSelf();
    }

    private void Q(Canvas canvas) {
        if (J()) {
            canvas.save();
            S(canvas);
            if (!this.J) {
                n(canvas);
                canvas.restore();
                return;
            }
            int iWidth = (int) (this.I.width() - getBounds().width());
            int iHeight = (int) (this.I.height() - getBounds().height());
            if (iWidth < 0 || iHeight < 0) {
                throw new IllegalStateException("Invalid shadow bounds. Check that the treatments result in a valid path.");
            }
            Bitmap bitmapCreateBitmap = Bitmap.createBitmap(((int) this.I.width()) + (this.f32973o.f33005r * 2) + iWidth, ((int) this.I.height()) + (this.f32973o.f33005r * 2) + iHeight, Bitmap.Config.ARGB_8888);
            Canvas canvas2 = new Canvas(bitmapCreateBitmap);
            float f10 = (getBounds().left - this.f32973o.f33005r) - iWidth;
            float f11 = (getBounds().top - this.f32973o.f33005r) - iHeight;
            canvas2.translate(-f10, -f11);
            n(canvas2);
            canvas.drawBitmap(bitmapCreateBitmap, f10, f11, (Paint) null);
            bitmapCreateBitmap.recycle();
            canvas.restore();
        }
    }

    private static int R(int i10, int i11) {
        return (i10 * (i11 + (i11 >>> 7))) >>> 8;
    }

    private void S(Canvas canvas) {
        int iZ = z();
        int iA = A();
        if (Build.VERSION.SDK_INT < 21 && this.J) {
            Rect clipBounds = canvas.getClipBounds();
            int i10 = this.f32973o.f33005r;
            clipBounds.inset(-i10, -i10);
            clipBounds.offset(iZ, iA);
            canvas.clipRect(clipBounds, Region.Op.REPLACE);
        }
        canvas.translate(iZ, iA);
    }

    private PorterDuffColorFilter f(Paint paint, boolean z10) {
        int color;
        int iL;
        if (!z10 || (iL = l((color = paint.getColor()))) == color) {
            return null;
        }
        return new PorterDuffColorFilter(iL, PorterDuff.Mode.SRC_IN);
    }

    private boolean f0(int[] iArr) {
        boolean z10;
        int color;
        int colorForState;
        int color2;
        int colorForState2;
        if (this.f32973o.f32991d == null || color2 == (colorForState2 = this.f32973o.f32991d.getColorForState(iArr, (color2 = this.B.getColor())))) {
            z10 = false;
        } else {
            this.B.setColor(colorForState2);
            z10 = true;
        }
        if (this.f32973o.f32992e == null || color == (colorForState = this.f32973o.f32992e.getColorForState(iArr, (color = this.C.getColor())))) {
            return z10;
        }
        this.C.setColor(colorForState);
        return true;
    }

    private void g(RectF rectF, Path path) {
        h(rectF, path);
        if (this.f32973o.f32997j != 1.0f) {
            this.f32978t.reset();
            Matrix matrix = this.f32978t;
            float f10 = this.f32973o.f32997j;
            matrix.setScale(f10, f10, rectF.width() / 2.0f, rectF.height() / 2.0f);
            path.transform(this.f32978t);
        }
        path.computeBounds(this.I, true);
    }

    private boolean g0() {
        PorterDuffColorFilter porterDuffColorFilter = this.G;
        PorterDuffColorFilter porterDuffColorFilter2 = this.H;
        c cVar = this.f32973o;
        this.G = k(cVar.f32994g, cVar.f32995h, this.B, true);
        c cVar2 = this.f32973o;
        this.H = k(cVar2.f32993f, cVar2.f32995h, this.C, false);
        c cVar3 = this.f32973o;
        if (cVar3.f33008u) {
            this.D.d(cVar3.f32994g.getColorForState(getState(), 0));
        }
        return (androidx.core.util.c.a(porterDuffColorFilter, this.G) && androidx.core.util.c.a(porterDuffColorFilter2, this.H)) ? false : true;
    }

    private void h0() {
        float fI = I();
        this.f32973o.f33005r = (int) Math.ceil(0.75f * fI);
        this.f32973o.f33006s = (int) Math.ceil(fI * 0.25f);
        g0();
        N();
    }

    private void i() {
        k kVarY = C().y(new b(-D()));
        this.A = kVarY;
        this.F.d(kVarY, this.f32973o.f32998k, v(), this.f32980v);
    }

    private PorterDuffColorFilter j(ColorStateList colorStateList, PorterDuff.Mode mode, boolean z10) {
        int colorForState = colorStateList.getColorForState(getState(), 0);
        if (z10) {
            colorForState = l(colorForState);
        }
        return new PorterDuffColorFilter(colorForState, mode);
    }

    private PorterDuffColorFilter k(ColorStateList colorStateList, PorterDuff.Mode mode, Paint paint, boolean z10) {
        return (colorStateList == null || mode == null) ? f(paint, z10) : j(colorStateList, mode, z10);
    }

    public static g m(Context context, float f10) {
        int iB = e4.a.b(context, y3.b.f36642l, g.class.getSimpleName());
        g gVar = new g();
        gVar.M(context);
        gVar.W(ColorStateList.valueOf(iB));
        gVar.V(f10);
        return gVar;
    }

    private void n(Canvas canvas) {
        if (this.f32976r.cardinality() > 0) {
            Log.w(K, "Compatibility shadow requested but can't be drawn for all operations in this shape.");
        }
        if (this.f32973o.f33006s != 0) {
            canvas.drawPath(this.f32979u, this.D.c());
        }
        for (int i10 = 0; i10 < 4; i10++) {
            this.f32974p[i10].b(this.D, this.f32973o.f33005r, canvas);
            this.f32975q[i10].b(this.D, this.f32973o.f33005r, canvas);
        }
        if (this.J) {
            int iZ = z();
            int iA = A();
            canvas.translate(-iZ, -iA);
            canvas.drawPath(this.f32979u, L);
            canvas.translate(iZ, iA);
        }
    }

    private void o(Canvas canvas) {
        q(canvas, this.B, this.f32979u, this.f32973o.f32988a, u());
    }

    private void q(Canvas canvas, Paint paint, Path path, k kVar, RectF rectF) {
        if (!kVar.u(rectF)) {
            canvas.drawPath(path, paint);
        } else {
            float fA = kVar.t().a(rectF) * this.f32973o.f32998k;
            canvas.drawRoundRect(rectF, fA, fA, paint);
        }
    }

    private void r(Canvas canvas) {
        q(canvas, this.C, this.f32980v, this.A, v());
    }

    private RectF v() {
        this.f32982x.set(u());
        float fD = D();
        this.f32982x.inset(fD, fD);
        return this.f32982x;
    }

    public int A() {
        double d10 = this.f32973o.f33006s;
        double dCos = Math.cos(Math.toRadians(r0.f33007t));
        Double.isNaN(d10);
        return (int) (d10 * dCos);
    }

    public int B() {
        return this.f32973o.f33005r;
    }

    public k C() {
        return this.f32973o.f32988a;
    }

    public ColorStateList E() {
        return this.f32973o.f32994g;
    }

    public float F() {
        return this.f32973o.f32988a.r().a(u());
    }

    public float G() {
        return this.f32973o.f32988a.t().a(u());
    }

    public float H() {
        return this.f32973o.f33003p;
    }

    public float I() {
        return w() + H();
    }

    public void M(Context context) {
        this.f32973o.f32989b = new h4.a(context);
        h0();
    }

    public boolean O() {
        h4.a aVar = this.f32973o.f32989b;
        return aVar != null && aVar.d();
    }

    public boolean P() {
        return this.f32973o.f32988a.u(u());
    }

    public boolean T() {
        int i10 = Build.VERSION.SDK_INT;
        return i10 < 21 || !(P() || this.f32979u.isConvex() || i10 >= 29);
    }

    public void U(o4.c cVar) {
        setShapeAppearanceModel(this.f32973o.f32988a.x(cVar));
    }

    public void V(float f10) {
        c cVar = this.f32973o;
        if (cVar.f33002o != f10) {
            cVar.f33002o = f10;
            h0();
        }
    }

    public void W(ColorStateList colorStateList) {
        c cVar = this.f32973o;
        if (cVar.f32991d != colorStateList) {
            cVar.f32991d = colorStateList;
            onStateChange(getState());
        }
    }

    public void X(float f10) {
        c cVar = this.f32973o;
        if (cVar.f32998k != f10) {
            cVar.f32998k = f10;
            this.f32977s = true;
            invalidateSelf();
        }
    }

    public void Y(int i10, int i11, int i12, int i13) {
        c cVar = this.f32973o;
        if (cVar.f32996i == null) {
            cVar.f32996i = new Rect();
        }
        this.f32973o.f32996i.set(i10, i11, i12, i13);
        invalidateSelf();
    }

    public void Z(float f10) {
        c cVar = this.f32973o;
        if (cVar.f33001n != f10) {
            cVar.f33001n = f10;
            h0();
        }
    }

    public void a0(int i10) {
        c cVar = this.f32973o;
        if (cVar.f33007t != i10) {
            cVar.f33007t = i10;
            N();
        }
    }

    public void b0(float f10, int i10) {
        e0(f10);
        d0(ColorStateList.valueOf(i10));
    }

    public void c0(float f10, ColorStateList colorStateList) {
        e0(f10);
        d0(colorStateList);
    }

    public void d0(ColorStateList colorStateList) {
        c cVar = this.f32973o;
        if (cVar.f32992e != colorStateList) {
            cVar.f32992e = colorStateList;
            onStateChange(getState());
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        this.B.setColorFilter(this.G);
        int alpha = this.B.getAlpha();
        this.B.setAlpha(R(alpha, this.f32973o.f33000m));
        this.C.setColorFilter(this.H);
        this.C.setStrokeWidth(this.f32973o.f32999l);
        int alpha2 = this.C.getAlpha();
        this.C.setAlpha(R(alpha2, this.f32973o.f33000m));
        if (this.f32977s) {
            i();
            g(u(), this.f32979u);
            this.f32977s = false;
        }
        Q(canvas);
        if (K()) {
            o(canvas);
        }
        if (L()) {
            r(canvas);
        }
        this.B.setAlpha(alpha);
        this.C.setAlpha(alpha2);
    }

    public void e0(float f10) {
        this.f32973o.f32999l = f10;
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable.ConstantState getConstantState() {
        return this.f32973o;
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    @Override // android.graphics.drawable.Drawable
    @TargetApi(21)
    public void getOutline(Outline outline) {
        if (this.f32973o.f33004q == 2) {
            return;
        }
        if (P()) {
            outline.setRoundRect(getBounds(), F() * this.f32973o.f32998k);
            return;
        }
        g(u(), this.f32979u);
        if (this.f32979u.isConvex() || Build.VERSION.SDK_INT >= 29) {
            try {
                outline.setConvexPath(this.f32979u);
            } catch (IllegalArgumentException unused) {
            }
        }
    }

    @Override // android.graphics.drawable.Drawable
    public boolean getPadding(Rect rect) {
        Rect rect2 = this.f32973o.f32996i;
        if (rect2 == null) {
            return super.getPadding(rect);
        }
        rect.set(rect2);
        return true;
    }

    @Override // android.graphics.drawable.Drawable
    public Region getTransparentRegion() {
        this.f32983y.set(getBounds());
        g(u(), this.f32979u);
        this.f32984z.setPath(this.f32979u, this.f32983y);
        this.f32983y.op(this.f32984z, Region.Op.DIFFERENCE);
        return this.f32983y;
    }

    protected final void h(RectF rectF, Path path) {
        l lVar = this.F;
        c cVar = this.f32973o;
        lVar.e(cVar.f32988a, cVar.f32998k, rectF, this.E, path);
    }

    @Override // android.graphics.drawable.Drawable
    public void invalidateSelf() {
        this.f32977s = true;
        super.invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isStateful() {
        ColorStateList colorStateList;
        ColorStateList colorStateList2;
        ColorStateList colorStateList3;
        ColorStateList colorStateList4;
        return super.isStateful() || ((colorStateList = this.f32973o.f32994g) != null && colorStateList.isStateful()) || (((colorStateList2 = this.f32973o.f32993f) != null && colorStateList2.isStateful()) || (((colorStateList3 = this.f32973o.f32992e) != null && colorStateList3.isStateful()) || ((colorStateList4 = this.f32973o.f32991d) != null && colorStateList4.isStateful())));
    }

    protected int l(int i10) {
        float fI = I() + y();
        h4.a aVar = this.f32973o.f32989b;
        return aVar != null ? aVar.c(i10, fI) : i10;
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable mutate() {
        this.f32973o = new c(this.f32973o);
        return this;
    }

    @Override // android.graphics.drawable.Drawable
    protected void onBoundsChange(Rect rect) {
        this.f32977s = true;
        super.onBoundsChange(rect);
    }

    @Override // android.graphics.drawable.Drawable, com.google.android.material.internal.h.b
    protected boolean onStateChange(int[] iArr) {
        boolean z10 = f0(iArr) || g0();
        if (z10) {
            invalidateSelf();
        }
        return z10;
    }

    protected void p(Canvas canvas, Paint paint, Path path, RectF rectF) {
        q(canvas, paint, path, this.f32973o.f32988a, rectF);
    }

    public float s() {
        return this.f32973o.f32988a.j().a(u());
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i10) {
        c cVar = this.f32973o;
        if (cVar.f33000m != i10) {
            cVar.f33000m = i10;
            N();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.f32973o.f32990c = colorFilter;
        N();
    }

    @Override // o4.n
    public void setShapeAppearanceModel(k kVar) {
        this.f32973o.f32988a = kVar;
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable, androidx.core.graphics.drawable.e
    public void setTint(int i10) {
        setTintList(ColorStateList.valueOf(i10));
    }

    @Override // android.graphics.drawable.Drawable, androidx.core.graphics.drawable.e
    public void setTintList(ColorStateList colorStateList) {
        this.f32973o.f32994g = colorStateList;
        g0();
        N();
    }

    @Override // android.graphics.drawable.Drawable, androidx.core.graphics.drawable.e
    public void setTintMode(PorterDuff.Mode mode) {
        c cVar = this.f32973o;
        if (cVar.f32995h != mode) {
            cVar.f32995h = mode;
            g0();
            N();
        }
    }

    public float t() {
        return this.f32973o.f32988a.l().a(u());
    }

    protected RectF u() {
        this.f32981w.set(getBounds());
        return this.f32981w;
    }

    public float w() {
        return this.f32973o.f33002o;
    }

    public ColorStateList x() {
        return this.f32973o.f32991d;
    }

    public float y() {
        return this.f32973o.f33001n;
    }

    public int z() {
        double d10 = this.f32973o.f33006s;
        double dSin = Math.sin(Math.toRadians(r0.f33007t));
        Double.isNaN(d10);
        return (int) (d10 * dSin);
    }

    public g() {
        this(new k());
    }

    public g(Context context, AttributeSet attributeSet, int i10, int i11) {
        this(k.e(context, attributeSet, i10, i11).m());
    }

    public g(k kVar) {
        this(new c(kVar, null));
    }

    private g(c cVar) {
        this.f32974p = new m.g[4];
        this.f32975q = new m.g[4];
        this.f32976r = new BitSet(8);
        this.f32978t = new Matrix();
        this.f32979u = new Path();
        this.f32980v = new Path();
        this.f32981w = new RectF();
        this.f32982x = new RectF();
        this.f32983y = new Region();
        this.f32984z = new Region();
        Paint paint = new Paint(1);
        this.B = paint;
        Paint paint2 = new Paint(1);
        this.C = paint2;
        this.D = new n4.a();
        this.F = Looper.getMainLooper().getThread() == Thread.currentThread() ? l.k() : new l();
        this.I = new RectF();
        this.J = true;
        this.f32973o = cVar;
        paint2.setStyle(Paint.Style.STROKE);
        paint.setStyle(Paint.Style.FILL);
        Paint paint3 = L;
        paint3.setColor(-1);
        paint3.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.DST_OUT));
        g0();
        f0(getState());
        this.E = new a();
    }

    /* JADX INFO: compiled from: MaterialShapeDrawable.java */
    static final class c extends Drawable.ConstantState {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public k f32988a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public h4.a f32989b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public ColorFilter f32990c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public ColorStateList f32991d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public ColorStateList f32992e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public ColorStateList f32993f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public ColorStateList f32994g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public PorterDuff.Mode f32995h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public Rect f32996i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public float f32997j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public float f32998k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        public float f32999l;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        public int f33000m;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        public float f33001n;

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        public float f33002o;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        public float f33003p;

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        public int f33004q;

        /* JADX INFO: renamed from: r, reason: collision with root package name */
        public int f33005r;

        /* JADX INFO: renamed from: s, reason: collision with root package name */
        public int f33006s;

        /* JADX INFO: renamed from: t, reason: collision with root package name */
        public int f33007t;

        /* JADX INFO: renamed from: u, reason: collision with root package name */
        public boolean f33008u;

        /* JADX INFO: renamed from: v, reason: collision with root package name */
        public Paint.Style f33009v;

        public c(k kVar, h4.a aVar) {
            this.f32991d = null;
            this.f32992e = null;
            this.f32993f = null;
            this.f32994g = null;
            this.f32995h = PorterDuff.Mode.SRC_IN;
            this.f32996i = null;
            this.f32997j = 1.0f;
            this.f32998k = 1.0f;
            this.f33000m = 255;
            this.f33001n = 0.0f;
            this.f33002o = 0.0f;
            this.f33003p = 0.0f;
            this.f33004q = 0;
            this.f33005r = 0;
            this.f33006s = 0;
            this.f33007t = 0;
            this.f33008u = false;
            this.f33009v = Paint.Style.FILL_AND_STROKE;
            this.f32988a = kVar;
            this.f32989b = aVar;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public int getChangingConfigurations() {
            return 0;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable() {
            g gVar = new g(this, null);
            gVar.f32977s = true;
            return gVar;
        }

        public c(c cVar) {
            this.f32991d = null;
            this.f32992e = null;
            this.f32993f = null;
            this.f32994g = null;
            this.f32995h = PorterDuff.Mode.SRC_IN;
            this.f32996i = null;
            this.f32997j = 1.0f;
            this.f32998k = 1.0f;
            this.f33000m = 255;
            this.f33001n = 0.0f;
            this.f33002o = 0.0f;
            this.f33003p = 0.0f;
            this.f33004q = 0;
            this.f33005r = 0;
            this.f33006s = 0;
            this.f33007t = 0;
            this.f33008u = false;
            this.f33009v = Paint.Style.FILL_AND_STROKE;
            this.f32988a = cVar.f32988a;
            this.f32989b = cVar.f32989b;
            this.f32999l = cVar.f32999l;
            this.f32990c = cVar.f32990c;
            this.f32991d = cVar.f32991d;
            this.f32992e = cVar.f32992e;
            this.f32995h = cVar.f32995h;
            this.f32994g = cVar.f32994g;
            this.f33000m = cVar.f33000m;
            this.f32997j = cVar.f32997j;
            this.f33006s = cVar.f33006s;
            this.f33004q = cVar.f33004q;
            this.f33008u = cVar.f33008u;
            this.f32998k = cVar.f32998k;
            this.f33001n = cVar.f33001n;
            this.f33002o = cVar.f33002o;
            this.f33003p = cVar.f33003p;
            this.f33005r = cVar.f33005r;
            this.f33007t = cVar.f33007t;
            this.f32993f = cVar.f32993f;
            this.f33009v = cVar.f33009v;
            if (cVar.f32996i != null) {
                this.f32996i = new Rect(cVar.f32996i);
            }
        }
    }
}
