package androidx.vectordrawable.graphics.drawable;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PathMeasure;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Rect;
import android.graphics.Region;
import android.graphics.Shader;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.VectorDrawable;
import android.os.Build;
import android.util.AttributeSet;
import android.util.Log;
import android.util.Xml;
import androidx.core.content.res.k;
import androidx.core.graphics.d;
import java.io.IOException;
import java.util.ArrayDeque;
import java.util.ArrayList;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: compiled from: VectorDrawableCompat.java */
/* JADX INFO: loaded from: classes.dex */
public class h extends androidx.vectordrawable.graphics.drawable.g {

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    static final PorterDuff.Mode f4252y = PorterDuff.Mode.SRC_IN;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private C0070h f4253p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private PorterDuffColorFilter f4254q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private ColorFilter f4255r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private boolean f4256s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private boolean f4257t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private Drawable.ConstantState f4258u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private final float[] f4259v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private final Matrix f4260w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private final Rect f4261x;

    /* JADX INFO: compiled from: VectorDrawableCompat.java */
    private static class b extends f {
        b() {
        }

        private void f(TypedArray typedArray, XmlPullParser xmlPullParser) {
            String string = typedArray.getString(0);
            if (string != null) {
                this.f4288b = string;
            }
            String string2 = typedArray.getString(1);
            if (string2 != null) {
                this.f4287a = androidx.core.graphics.d.d(string2);
            }
            this.f4289c = k.g(typedArray, xmlPullParser, "fillType", 2, 0);
        }

        @Override // androidx.vectordrawable.graphics.drawable.h.f
        public boolean c() {
            return true;
        }

        public void e(Resources resources, AttributeSet attributeSet, Resources.Theme theme, XmlPullParser xmlPullParser) {
            if (k.j(xmlPullParser, "pathData")) {
                TypedArray typedArrayK = k.k(resources, theme, attributeSet, androidx.vectordrawable.graphics.drawable.a.f4225d);
                f(typedArrayK, xmlPullParser);
                typedArrayK.recycle();
            }
        }

        b(b bVar) {
            super(bVar);
        }
    }

    /* JADX INFO: compiled from: VectorDrawableCompat.java */
    private static abstract class e {
        private e() {
        }

        public boolean a() {
            return false;
        }

        public boolean b(int[] iArr) {
            return false;
        }
    }

    /* JADX INFO: renamed from: androidx.vectordrawable.graphics.drawable.h$h, reason: collision with other inner class name */
    /* JADX INFO: compiled from: VectorDrawableCompat.java */
    private static class C0070h extends Drawable.ConstantState {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        int f4308a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        g f4309b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        ColorStateList f4310c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        PorterDuff.Mode f4311d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        boolean f4312e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        Bitmap f4313f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        ColorStateList f4314g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        PorterDuff.Mode f4315h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        int f4316i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        boolean f4317j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        boolean f4318k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        Paint f4319l;

        public C0070h(C0070h c0070h) {
            this.f4310c = null;
            this.f4311d = h.f4252y;
            if (c0070h != null) {
                this.f4308a = c0070h.f4308a;
                g gVar = new g(c0070h.f4309b);
                this.f4309b = gVar;
                if (c0070h.f4309b.f4296e != null) {
                    gVar.f4296e = new Paint(c0070h.f4309b.f4296e);
                }
                if (c0070h.f4309b.f4295d != null) {
                    this.f4309b.f4295d = new Paint(c0070h.f4309b.f4295d);
                }
                this.f4310c = c0070h.f4310c;
                this.f4311d = c0070h.f4311d;
                this.f4312e = c0070h.f4312e;
            }
        }

        public boolean a(int i10, int i11) {
            return i10 == this.f4313f.getWidth() && i11 == this.f4313f.getHeight();
        }

        public boolean b() {
            return !this.f4318k && this.f4314g == this.f4310c && this.f4315h == this.f4311d && this.f4317j == this.f4312e && this.f4316i == this.f4309b.getRootAlpha();
        }

        public void c(int i10, int i11) {
            if (this.f4313f == null || !a(i10, i11)) {
                this.f4313f = Bitmap.createBitmap(i10, i11, Bitmap.Config.ARGB_8888);
                this.f4318k = true;
            }
        }

        public void d(Canvas canvas, ColorFilter colorFilter, Rect rect) {
            canvas.drawBitmap(this.f4313f, (Rect) null, rect, e(colorFilter));
        }

        public Paint e(ColorFilter colorFilter) {
            if (!f() && colorFilter == null) {
                return null;
            }
            if (this.f4319l == null) {
                Paint paint = new Paint();
                this.f4319l = paint;
                paint.setFilterBitmap(true);
            }
            this.f4319l.setAlpha(this.f4309b.getRootAlpha());
            this.f4319l.setColorFilter(colorFilter);
            return this.f4319l;
        }

        public boolean f() {
            return this.f4309b.getRootAlpha() < 255;
        }

        public boolean g() {
            return this.f4309b.f();
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public int getChangingConfigurations() {
            return this.f4308a;
        }

        public boolean h(int[] iArr) {
            boolean zG = this.f4309b.g(iArr);
            this.f4318k |= zG;
            return zG;
        }

        public void i() {
            this.f4314g = this.f4310c;
            this.f4315h = this.f4311d;
            this.f4316i = this.f4309b.getRootAlpha();
            this.f4317j = this.f4312e;
            this.f4318k = false;
        }

        public void j(int i10, int i11) {
            this.f4313f.eraseColor(0);
            this.f4309b.b(new Canvas(this.f4313f), i10, i11, null);
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable() {
            return new h(this);
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable(Resources resources) {
            return new h(this);
        }

        public C0070h() {
            this.f4310c = null;
            this.f4311d = h.f4252y;
            this.f4309b = new g();
        }
    }

    h() {
        this.f4257t = true;
        this.f4259v = new float[9];
        this.f4260w = new Matrix();
        this.f4261x = new Rect();
        this.f4253p = new C0070h();
    }

    static int a(int i10, float f10) {
        return (i10 & 16777215) | (((int) (Color.alpha(i10) * f10)) << 24);
    }

    public static h b(Resources resources, int i10, Resources.Theme theme) {
        int next;
        if (Build.VERSION.SDK_INT >= 24) {
            h hVar = new h();
            hVar.f4251o = androidx.core.content.res.h.d(resources, i10, theme);
            hVar.f4258u = new i(hVar.f4251o.getConstantState());
            return hVar;
        }
        try {
            XmlResourceParser xml = resources.getXml(i10);
            AttributeSet attributeSetAsAttributeSet = Xml.asAttributeSet(xml);
            do {
                next = xml.next();
                if (next == 2) {
                    break;
                }
            } while (next != 1);
            if (next == 2) {
                return c(resources, xml, attributeSetAsAttributeSet, theme);
            }
            throw new XmlPullParserException("No start tag found");
        } catch (IOException e10) {
            Log.e("VectorDrawableCompat", "parser error", e10);
            return null;
        } catch (XmlPullParserException e11) {
            Log.e("VectorDrawableCompat", "parser error", e11);
            return null;
        }
    }

    public static h c(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) throws XmlPullParserException, IOException {
        h hVar = new h();
        hVar.inflate(resources, xmlPullParser, attributeSet, theme);
        return hVar;
    }

    private void e(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) throws XmlPullParserException, IOException {
        C0070h c0070h = this.f4253p;
        g gVar = c0070h.f4309b;
        ArrayDeque arrayDeque = new ArrayDeque();
        arrayDeque.push(gVar.f4299h);
        int eventType = xmlPullParser.getEventType();
        int depth = xmlPullParser.getDepth() + 1;
        boolean z10 = true;
        while (eventType != 1 && (xmlPullParser.getDepth() >= depth || eventType != 3)) {
            if (eventType == 2) {
                String name = xmlPullParser.getName();
                d dVar = (d) arrayDeque.peek();
                if ("path".equals(name)) {
                    c cVar = new c();
                    cVar.g(resources, attributeSet, theme, xmlPullParser);
                    dVar.f4275b.add(cVar);
                    if (cVar.getPathName() != null) {
                        gVar.f4307p.put(cVar.getPathName(), cVar);
                    }
                    z10 = false;
                    c0070h.f4308a = cVar.f4290d | c0070h.f4308a;
                } else if ("clip-path".equals(name)) {
                    b bVar = new b();
                    bVar.e(resources, attributeSet, theme, xmlPullParser);
                    dVar.f4275b.add(bVar);
                    if (bVar.getPathName() != null) {
                        gVar.f4307p.put(bVar.getPathName(), bVar);
                    }
                    c0070h.f4308a = bVar.f4290d | c0070h.f4308a;
                } else if ("group".equals(name)) {
                    d dVar2 = new d();
                    dVar2.c(resources, attributeSet, theme, xmlPullParser);
                    dVar.f4275b.add(dVar2);
                    arrayDeque.push(dVar2);
                    if (dVar2.getGroupName() != null) {
                        gVar.f4307p.put(dVar2.getGroupName(), dVar2);
                    }
                    c0070h.f4308a = dVar2.f4284k | c0070h.f4308a;
                }
            } else if (eventType == 3 && "group".equals(xmlPullParser.getName())) {
                arrayDeque.pop();
            }
            eventType = xmlPullParser.next();
        }
        if (z10) {
            throw new XmlPullParserException("no path defined");
        }
    }

    private boolean f() {
        return Build.VERSION.SDK_INT >= 17 && isAutoMirrored() && androidx.core.graphics.drawable.a.f(this) == 1;
    }

    private static PorterDuff.Mode g(int i10, PorterDuff.Mode mode) {
        if (i10 == 3) {
            return PorterDuff.Mode.SRC_OVER;
        }
        if (i10 == 5) {
            return PorterDuff.Mode.SRC_IN;
        }
        if (i10 == 9) {
            return PorterDuff.Mode.SRC_ATOP;
        }
        switch (i10) {
            case 14:
                return PorterDuff.Mode.MULTIPLY;
            case 15:
                return PorterDuff.Mode.SCREEN;
            case 16:
                return PorterDuff.Mode.ADD;
            default:
                return mode;
        }
    }

    private void i(TypedArray typedArray, XmlPullParser xmlPullParser, Resources.Theme theme) throws XmlPullParserException {
        C0070h c0070h = this.f4253p;
        g gVar = c0070h.f4309b;
        c0070h.f4311d = g(k.g(typedArray, xmlPullParser, "tintMode", 6, -1), PorterDuff.Mode.SRC_IN);
        ColorStateList colorStateListC = k.c(typedArray, xmlPullParser, theme, "tint", 1);
        if (colorStateListC != null) {
            c0070h.f4310c = colorStateListC;
        }
        c0070h.f4312e = k.a(typedArray, xmlPullParser, "autoMirrored", 5, c0070h.f4312e);
        gVar.f4302k = k.f(typedArray, xmlPullParser, "viewportWidth", 7, gVar.f4302k);
        float f10 = k.f(typedArray, xmlPullParser, "viewportHeight", 8, gVar.f4303l);
        gVar.f4303l = f10;
        if (gVar.f4302k <= 0.0f) {
            throw new XmlPullParserException(typedArray.getPositionDescription() + "<vector> tag requires viewportWidth > 0");
        }
        if (f10 <= 0.0f) {
            throw new XmlPullParserException(typedArray.getPositionDescription() + "<vector> tag requires viewportHeight > 0");
        }
        gVar.f4300i = typedArray.getDimension(3, gVar.f4300i);
        float dimension = typedArray.getDimension(2, gVar.f4301j);
        gVar.f4301j = dimension;
        if (gVar.f4300i <= 0.0f) {
            throw new XmlPullParserException(typedArray.getPositionDescription() + "<vector> tag requires width > 0");
        }
        if (dimension <= 0.0f) {
            throw new XmlPullParserException(typedArray.getPositionDescription() + "<vector> tag requires height > 0");
        }
        gVar.setAlpha(k.f(typedArray, xmlPullParser, "alpha", 4, gVar.getAlpha()));
        String string = typedArray.getString(0);
        if (string != null) {
            gVar.f4305n = string;
            gVar.f4307p.put(string, gVar);
        }
    }

    @Override // androidx.vectordrawable.graphics.drawable.g, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ void applyTheme(Resources.Theme theme) {
        super.applyTheme(theme);
    }

    @Override // android.graphics.drawable.Drawable
    public boolean canApplyTheme() {
        Drawable drawable = this.f4251o;
        if (drawable == null) {
            return false;
        }
        androidx.core.graphics.drawable.a.b(drawable);
        return false;
    }

    @Override // androidx.vectordrawable.graphics.drawable.g, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ void clearColorFilter() {
        super.clearColorFilter();
    }

    Object d(String str) {
        return this.f4253p.f4309b.f4307p.get(str);
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        Drawable drawable = this.f4251o;
        if (drawable != null) {
            drawable.draw(canvas);
            return;
        }
        copyBounds(this.f4261x);
        if (this.f4261x.width() <= 0 || this.f4261x.height() <= 0) {
            return;
        }
        ColorFilter colorFilter = this.f4255r;
        if (colorFilter == null) {
            colorFilter = this.f4254q;
        }
        canvas.getMatrix(this.f4260w);
        this.f4260w.getValues(this.f4259v);
        float fAbs = Math.abs(this.f4259v[0]);
        float fAbs2 = Math.abs(this.f4259v[4]);
        float fAbs3 = Math.abs(this.f4259v[1]);
        float fAbs4 = Math.abs(this.f4259v[3]);
        if (fAbs3 != 0.0f || fAbs4 != 0.0f) {
            fAbs = 1.0f;
            fAbs2 = 1.0f;
        }
        int iMin = Math.min(2048, (int) (this.f4261x.width() * fAbs));
        int iMin2 = Math.min(2048, (int) (this.f4261x.height() * fAbs2));
        if (iMin <= 0 || iMin2 <= 0) {
            return;
        }
        int iSave = canvas.save();
        Rect rect = this.f4261x;
        canvas.translate(rect.left, rect.top);
        if (f()) {
            canvas.translate(this.f4261x.width(), 0.0f);
            canvas.scale(-1.0f, 1.0f);
        }
        this.f4261x.offsetTo(0, 0);
        this.f4253p.c(iMin, iMin2);
        if (!this.f4257t) {
            this.f4253p.j(iMin, iMin2);
        } else if (!this.f4253p.b()) {
            this.f4253p.j(iMin, iMin2);
            this.f4253p.i();
        }
        this.f4253p.d(canvas, colorFilter, this.f4261x);
        canvas.restoreToCount(iSave);
    }

    @Override // android.graphics.drawable.Drawable
    public int getAlpha() {
        Drawable drawable = this.f4251o;
        return drawable != null ? androidx.core.graphics.drawable.a.d(drawable) : this.f4253p.f4309b.getRootAlpha();
    }

    @Override // android.graphics.drawable.Drawable
    public int getChangingConfigurations() {
        Drawable drawable = this.f4251o;
        return drawable != null ? drawable.getChangingConfigurations() : super.getChangingConfigurations() | this.f4253p.getChangingConfigurations();
    }

    @Override // android.graphics.drawable.Drawable
    public ColorFilter getColorFilter() {
        Drawable drawable = this.f4251o;
        return drawable != null ? androidx.core.graphics.drawable.a.e(drawable) : this.f4255r;
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable.ConstantState getConstantState() {
        if (this.f4251o != null && Build.VERSION.SDK_INT >= 24) {
            return new i(this.f4251o.getConstantState());
        }
        this.f4253p.f4308a = getChangingConfigurations();
        return this.f4253p;
    }

    @Override // androidx.vectordrawable.graphics.drawable.g, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ Drawable getCurrent() {
        return super.getCurrent();
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        Drawable drawable = this.f4251o;
        return drawable != null ? drawable.getIntrinsicHeight() : (int) this.f4253p.f4309b.f4301j;
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        Drawable drawable = this.f4251o;
        return drawable != null ? drawable.getIntrinsicWidth() : (int) this.f4253p.f4309b.f4300i;
    }

    @Override // androidx.vectordrawable.graphics.drawable.g, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ int getMinimumHeight() {
        return super.getMinimumHeight();
    }

    @Override // androidx.vectordrawable.graphics.drawable.g, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ int getMinimumWidth() {
        return super.getMinimumWidth();
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        Drawable drawable = this.f4251o;
        if (drawable != null) {
            return drawable.getOpacity();
        }
        return -3;
    }

    @Override // androidx.vectordrawable.graphics.drawable.g, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ boolean getPadding(Rect rect) {
        return super.getPadding(rect);
    }

    @Override // androidx.vectordrawable.graphics.drawable.g, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ int[] getState() {
        return super.getState();
    }

    @Override // androidx.vectordrawable.graphics.drawable.g, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ Region getTransparentRegion() {
        return super.getTransparentRegion();
    }

    void h(boolean z10) {
        this.f4257t = z10;
    }

    @Override // android.graphics.drawable.Drawable
    public void inflate(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet) throws XmlPullParserException, IOException {
        Drawable drawable = this.f4251o;
        if (drawable != null) {
            drawable.inflate(resources, xmlPullParser, attributeSet);
        } else {
            inflate(resources, xmlPullParser, attributeSet, null);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void invalidateSelf() {
        Drawable drawable = this.f4251o;
        if (drawable != null) {
            drawable.invalidateSelf();
        } else {
            super.invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isAutoMirrored() {
        Drawable drawable = this.f4251o;
        return drawable != null ? androidx.core.graphics.drawable.a.h(drawable) : this.f4253p.f4312e;
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isStateful() {
        C0070h c0070h;
        ColorStateList colorStateList;
        Drawable drawable = this.f4251o;
        return drawable != null ? drawable.isStateful() : super.isStateful() || ((c0070h = this.f4253p) != null && (c0070h.g() || ((colorStateList = this.f4253p.f4310c) != null && colorStateList.isStateful())));
    }

    PorterDuffColorFilter j(PorterDuffColorFilter porterDuffColorFilter, ColorStateList colorStateList, PorterDuff.Mode mode) {
        if (colorStateList == null || mode == null) {
            return null;
        }
        return new PorterDuffColorFilter(colorStateList.getColorForState(getState(), 0), mode);
    }

    @Override // androidx.vectordrawable.graphics.drawable.g, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ void jumpToCurrentState() {
        super.jumpToCurrentState();
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable mutate() {
        Drawable drawable = this.f4251o;
        if (drawable != null) {
            drawable.mutate();
            return this;
        }
        if (!this.f4256s && super.mutate() == this) {
            this.f4253p = new C0070h(this.f4253p);
            this.f4256s = true;
        }
        return this;
    }

    @Override // android.graphics.drawable.Drawable
    protected void onBoundsChange(Rect rect) {
        Drawable drawable = this.f4251o;
        if (drawable != null) {
            drawable.setBounds(rect);
        }
    }

    @Override // android.graphics.drawable.Drawable
    protected boolean onStateChange(int[] iArr) {
        PorterDuff.Mode mode;
        Drawable drawable = this.f4251o;
        if (drawable != null) {
            return drawable.setState(iArr);
        }
        boolean z10 = false;
        C0070h c0070h = this.f4253p;
        ColorStateList colorStateList = c0070h.f4310c;
        if (colorStateList != null && (mode = c0070h.f4311d) != null) {
            this.f4254q = j(this.f4254q, colorStateList, mode);
            invalidateSelf();
            z10 = true;
        }
        if (!c0070h.g() || !c0070h.h(iArr)) {
            return z10;
        }
        invalidateSelf();
        return true;
    }

    @Override // android.graphics.drawable.Drawable
    public void scheduleSelf(Runnable runnable, long j10) {
        Drawable drawable = this.f4251o;
        if (drawable != null) {
            drawable.scheduleSelf(runnable, j10);
        } else {
            super.scheduleSelf(runnable, j10);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i10) {
        Drawable drawable = this.f4251o;
        if (drawable != null) {
            drawable.setAlpha(i10);
        } else if (this.f4253p.f4309b.getRootAlpha() != i10) {
            this.f4253p.f4309b.setRootAlpha(i10);
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setAutoMirrored(boolean z10) {
        Drawable drawable = this.f4251o;
        if (drawable != null) {
            androidx.core.graphics.drawable.a.j(drawable, z10);
        } else {
            this.f4253p.f4312e = z10;
        }
    }

    @Override // androidx.vectordrawable.graphics.drawable.g, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ void setChangingConfigurations(int i10) {
        super.setChangingConfigurations(i10);
    }

    @Override // androidx.vectordrawable.graphics.drawable.g, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ void setColorFilter(int i10, PorterDuff.Mode mode) {
        super.setColorFilter(i10, mode);
    }

    @Override // androidx.vectordrawable.graphics.drawable.g, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ void setFilterBitmap(boolean z10) {
        super.setFilterBitmap(z10);
    }

    @Override // androidx.vectordrawable.graphics.drawable.g, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ void setHotspot(float f10, float f11) {
        super.setHotspot(f10, f11);
    }

    @Override // androidx.vectordrawable.graphics.drawable.g, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ void setHotspotBounds(int i10, int i11, int i12, int i13) {
        super.setHotspotBounds(i10, i11, i12, i13);
    }

    @Override // androidx.vectordrawable.graphics.drawable.g, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ boolean setState(int[] iArr) {
        return super.setState(iArr);
    }

    @Override // android.graphics.drawable.Drawable, androidx.core.graphics.drawable.e
    public void setTint(int i10) {
        Drawable drawable = this.f4251o;
        if (drawable != null) {
            androidx.core.graphics.drawable.a.n(drawable, i10);
        } else {
            setTintList(ColorStateList.valueOf(i10));
        }
    }

    @Override // android.graphics.drawable.Drawable, androidx.core.graphics.drawable.e
    public void setTintList(ColorStateList colorStateList) {
        Drawable drawable = this.f4251o;
        if (drawable != null) {
            androidx.core.graphics.drawable.a.o(drawable, colorStateList);
            return;
        }
        C0070h c0070h = this.f4253p;
        if (c0070h.f4310c != colorStateList) {
            c0070h.f4310c = colorStateList;
            this.f4254q = j(this.f4254q, colorStateList, c0070h.f4311d);
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable, androidx.core.graphics.drawable.e
    public void setTintMode(PorterDuff.Mode mode) {
        Drawable drawable = this.f4251o;
        if (drawable != null) {
            androidx.core.graphics.drawable.a.p(drawable, mode);
            return;
        }
        C0070h c0070h = this.f4253p;
        if (c0070h.f4311d != mode) {
            c0070h.f4311d = mode;
            this.f4254q = j(this.f4254q, c0070h.f4310c, mode);
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public boolean setVisible(boolean z10, boolean z11) {
        Drawable drawable = this.f4251o;
        return drawable != null ? drawable.setVisible(z10, z11) : super.setVisible(z10, z11);
    }

    @Override // android.graphics.drawable.Drawable
    public void unscheduleSelf(Runnable runnable) {
        Drawable drawable = this.f4251o;
        if (drawable != null) {
            drawable.unscheduleSelf(runnable);
        } else {
            super.unscheduleSelf(runnable);
        }
    }

    /* JADX INFO: compiled from: VectorDrawableCompat.java */
    private static class i extends Drawable.ConstantState {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Drawable.ConstantState f4320a;

        public i(Drawable.ConstantState constantState) {
            this.f4320a = constantState;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public boolean canApplyTheme() {
            return this.f4320a.canApplyTheme();
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public int getChangingConfigurations() {
            return this.f4320a.getChangingConfigurations();
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable() {
            h hVar = new h();
            hVar.f4251o = (VectorDrawable) this.f4320a.newDrawable();
            return hVar;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable(Resources resources) {
            h hVar = new h();
            hVar.f4251o = (VectorDrawable) this.f4320a.newDrawable(resources);
            return hVar;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable(Resources resources, Resources.Theme theme) {
            h hVar = new h();
            hVar.f4251o = (VectorDrawable) this.f4320a.newDrawable(resources, theme);
            return hVar;
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        Drawable drawable = this.f4251o;
        if (drawable != null) {
            drawable.setColorFilter(colorFilter);
        } else {
            this.f4255r = colorFilter;
            invalidateSelf();
        }
    }

    /* JADX INFO: compiled from: VectorDrawableCompat.java */
    private static abstract class f extends e {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        protected d.b[] f4287a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        String f4288b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        int f4289c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        int f4290d;

        public f() {
            super();
            this.f4287a = null;
            this.f4289c = 0;
        }

        public boolean c() {
            return false;
        }

        public void d(Path path) {
            path.reset();
            d.b[] bVarArr = this.f4287a;
            if (bVarArr != null) {
                d.b.e(bVarArr, path);
            }
        }

        public d.b[] getPathData() {
            return this.f4287a;
        }

        public String getPathName() {
            return this.f4288b;
        }

        public void setPathData(d.b[] bVarArr) {
            if (androidx.core.graphics.d.b(this.f4287a, bVarArr)) {
                androidx.core.graphics.d.j(this.f4287a, bVarArr);
            } else {
                this.f4287a = androidx.core.graphics.d.f(bVarArr);
            }
        }

        public f(f fVar) {
            super();
            this.f4287a = null;
            this.f4289c = 0;
            this.f4288b = fVar.f4288b;
            this.f4290d = fVar.f4290d;
            this.f4287a = androidx.core.graphics.d.f(fVar.f4287a);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void inflate(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) throws XmlPullParserException, IOException {
        Drawable drawable = this.f4251o;
        if (drawable != null) {
            androidx.core.graphics.drawable.a.g(drawable, resources, xmlPullParser, attributeSet, theme);
            return;
        }
        C0070h c0070h = this.f4253p;
        c0070h.f4309b = new g();
        TypedArray typedArrayK = k.k(resources, theme, attributeSet, androidx.vectordrawable.graphics.drawable.a.f4222a);
        i(typedArrayK, xmlPullParser, theme);
        typedArrayK.recycle();
        c0070h.f4308a = getChangingConfigurations();
        c0070h.f4318k = true;
        e(resources, xmlPullParser, attributeSet, theme);
        this.f4254q = j(this.f4254q, c0070h.f4310c, c0070h.f4311d);
    }

    h(C0070h c0070h) {
        this.f4257t = true;
        this.f4259v = new float[9];
        this.f4260w = new Matrix();
        this.f4261x = new Rect();
        this.f4253p = c0070h;
        this.f4254q = j(this.f4254q, c0070h.f4310c, c0070h.f4311d);
    }

    /* JADX INFO: compiled from: VectorDrawableCompat.java */
    private static class c extends f {

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private int[] f4262e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        androidx.core.content.res.d f4263f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        float f4264g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        androidx.core.content.res.d f4265h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        float f4266i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        float f4267j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        float f4268k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        float f4269l;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        float f4270m;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        Paint.Cap f4271n;

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        Paint.Join f4272o;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        float f4273p;

        c() {
            this.f4264g = 0.0f;
            this.f4266i = 1.0f;
            this.f4267j = 1.0f;
            this.f4268k = 0.0f;
            this.f4269l = 1.0f;
            this.f4270m = 0.0f;
            this.f4271n = Paint.Cap.BUTT;
            this.f4272o = Paint.Join.MITER;
            this.f4273p = 4.0f;
        }

        private Paint.Cap e(int i10, Paint.Cap cap) {
            return i10 != 0 ? i10 != 1 ? i10 != 2 ? cap : Paint.Cap.SQUARE : Paint.Cap.ROUND : Paint.Cap.BUTT;
        }

        private Paint.Join f(int i10, Paint.Join join) {
            return i10 != 0 ? i10 != 1 ? i10 != 2 ? join : Paint.Join.BEVEL : Paint.Join.ROUND : Paint.Join.MITER;
        }

        private void h(TypedArray typedArray, XmlPullParser xmlPullParser, Resources.Theme theme) {
            this.f4262e = null;
            if (k.j(xmlPullParser, "pathData")) {
                String string = typedArray.getString(0);
                if (string != null) {
                    this.f4288b = string;
                }
                String string2 = typedArray.getString(2);
                if (string2 != null) {
                    this.f4287a = androidx.core.graphics.d.d(string2);
                }
                this.f4265h = k.e(typedArray, xmlPullParser, theme, "fillColor", 1, 0);
                this.f4267j = k.f(typedArray, xmlPullParser, "fillAlpha", 12, this.f4267j);
                this.f4271n = e(k.g(typedArray, xmlPullParser, "strokeLineCap", 8, -1), this.f4271n);
                this.f4272o = f(k.g(typedArray, xmlPullParser, "strokeLineJoin", 9, -1), this.f4272o);
                this.f4273p = k.f(typedArray, xmlPullParser, "strokeMiterLimit", 10, this.f4273p);
                this.f4263f = k.e(typedArray, xmlPullParser, theme, "strokeColor", 3, 0);
                this.f4266i = k.f(typedArray, xmlPullParser, "strokeAlpha", 11, this.f4266i);
                this.f4264g = k.f(typedArray, xmlPullParser, "strokeWidth", 4, this.f4264g);
                this.f4269l = k.f(typedArray, xmlPullParser, "trimPathEnd", 6, this.f4269l);
                this.f4270m = k.f(typedArray, xmlPullParser, "trimPathOffset", 7, this.f4270m);
                this.f4268k = k.f(typedArray, xmlPullParser, "trimPathStart", 5, this.f4268k);
                this.f4289c = k.g(typedArray, xmlPullParser, "fillType", 13, this.f4289c);
            }
        }

        @Override // androidx.vectordrawable.graphics.drawable.h.e
        public boolean a() {
            return this.f4265h.i() || this.f4263f.i();
        }

        @Override // androidx.vectordrawable.graphics.drawable.h.e
        public boolean b(int[] iArr) {
            return this.f4263f.j(iArr) | this.f4265h.j(iArr);
        }

        public void g(Resources resources, AttributeSet attributeSet, Resources.Theme theme, XmlPullParser xmlPullParser) {
            TypedArray typedArrayK = k.k(resources, theme, attributeSet, androidx.vectordrawable.graphics.drawable.a.f4224c);
            h(typedArrayK, xmlPullParser, theme);
            typedArrayK.recycle();
        }

        float getFillAlpha() {
            return this.f4267j;
        }

        int getFillColor() {
            return this.f4265h.e();
        }

        float getStrokeAlpha() {
            return this.f4266i;
        }

        int getStrokeColor() {
            return this.f4263f.e();
        }

        float getStrokeWidth() {
            return this.f4264g;
        }

        float getTrimPathEnd() {
            return this.f4269l;
        }

        float getTrimPathOffset() {
            return this.f4270m;
        }

        float getTrimPathStart() {
            return this.f4268k;
        }

        void setFillAlpha(float f10) {
            this.f4267j = f10;
        }

        void setFillColor(int i10) {
            this.f4265h.k(i10);
        }

        void setStrokeAlpha(float f10) {
            this.f4266i = f10;
        }

        void setStrokeColor(int i10) {
            this.f4263f.k(i10);
        }

        void setStrokeWidth(float f10) {
            this.f4264g = f10;
        }

        void setTrimPathEnd(float f10) {
            this.f4269l = f10;
        }

        void setTrimPathOffset(float f10) {
            this.f4270m = f10;
        }

        void setTrimPathStart(float f10) {
            this.f4268k = f10;
        }

        c(c cVar) {
            super(cVar);
            this.f4264g = 0.0f;
            this.f4266i = 1.0f;
            this.f4267j = 1.0f;
            this.f4268k = 0.0f;
            this.f4269l = 1.0f;
            this.f4270m = 0.0f;
            this.f4271n = Paint.Cap.BUTT;
            this.f4272o = Paint.Join.MITER;
            this.f4273p = 4.0f;
            this.f4262e = cVar.f4262e;
            this.f4263f = cVar.f4263f;
            this.f4264g = cVar.f4264g;
            this.f4266i = cVar.f4266i;
            this.f4265h = cVar.f4265h;
            this.f4289c = cVar.f4289c;
            this.f4267j = cVar.f4267j;
            this.f4268k = cVar.f4268k;
            this.f4269l = cVar.f4269l;
            this.f4270m = cVar.f4270m;
            this.f4271n = cVar.f4271n;
            this.f4272o = cVar.f4272o;
            this.f4273p = cVar.f4273p;
        }
    }

    /* JADX INFO: compiled from: VectorDrawableCompat.java */
    private static class g {

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        private static final Matrix f4291q = new Matrix();

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Path f4292a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final Path f4293b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final Matrix f4294c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        Paint f4295d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        Paint f4296e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private PathMeasure f4297f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private int f4298g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        final d f4299h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        float f4300i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        float f4301j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        float f4302k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        float f4303l;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        int f4304m;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        String f4305n;

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        Boolean f4306o;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        final o.a<String, Object> f4307p;

        public g() {
            this.f4294c = new Matrix();
            this.f4300i = 0.0f;
            this.f4301j = 0.0f;
            this.f4302k = 0.0f;
            this.f4303l = 0.0f;
            this.f4304m = 255;
            this.f4305n = null;
            this.f4306o = null;
            this.f4307p = new o.a<>();
            this.f4299h = new d();
            this.f4292a = new Path();
            this.f4293b = new Path();
        }

        private static float a(float f10, float f11, float f12, float f13) {
            return (f10 * f13) - (f11 * f12);
        }

        private void c(d dVar, Matrix matrix, Canvas canvas, int i10, int i11, ColorFilter colorFilter) {
            dVar.f4274a.set(matrix);
            dVar.f4274a.preConcat(dVar.f4283j);
            canvas.save();
            for (int i12 = 0; i12 < dVar.f4275b.size(); i12++) {
                e eVar = dVar.f4275b.get(i12);
                if (eVar instanceof d) {
                    c((d) eVar, dVar.f4274a, canvas, i10, i11, colorFilter);
                } else if (eVar instanceof f) {
                    d(dVar, (f) eVar, canvas, i10, i11, colorFilter);
                }
            }
            canvas.restore();
        }

        private void d(d dVar, f fVar, Canvas canvas, int i10, int i11, ColorFilter colorFilter) {
            float f10 = i10 / this.f4302k;
            float f11 = i11 / this.f4303l;
            float fMin = Math.min(f10, f11);
            Matrix matrix = dVar.f4274a;
            this.f4294c.set(matrix);
            this.f4294c.postScale(f10, f11);
            float fE = e(matrix);
            if (fE == 0.0f) {
                return;
            }
            fVar.d(this.f4292a);
            Path path = this.f4292a;
            this.f4293b.reset();
            if (fVar.c()) {
                this.f4293b.setFillType(fVar.f4289c == 0 ? Path.FillType.WINDING : Path.FillType.EVEN_ODD);
                this.f4293b.addPath(path, this.f4294c);
                canvas.clipPath(this.f4293b);
                return;
            }
            c cVar = (c) fVar;
            float f12 = cVar.f4268k;
            if (f12 != 0.0f || cVar.f4269l != 1.0f) {
                float f13 = cVar.f4270m;
                float f14 = (f12 + f13) % 1.0f;
                float f15 = (cVar.f4269l + f13) % 1.0f;
                if (this.f4297f == null) {
                    this.f4297f = new PathMeasure();
                }
                this.f4297f.setPath(this.f4292a, false);
                float length = this.f4297f.getLength();
                float f16 = f14 * length;
                float f17 = f15 * length;
                path.reset();
                if (f16 > f17) {
                    this.f4297f.getSegment(f16, length, path, true);
                    this.f4297f.getSegment(0.0f, f17, path, true);
                } else {
                    this.f4297f.getSegment(f16, f17, path, true);
                }
                path.rLineTo(0.0f, 0.0f);
            }
            this.f4293b.addPath(path, this.f4294c);
            if (cVar.f4265h.l()) {
                androidx.core.content.res.d dVar2 = cVar.f4265h;
                if (this.f4296e == null) {
                    Paint paint = new Paint(1);
                    this.f4296e = paint;
                    paint.setStyle(Paint.Style.FILL);
                }
                Paint paint2 = this.f4296e;
                if (dVar2.h()) {
                    Shader shaderF = dVar2.f();
                    shaderF.setLocalMatrix(this.f4294c);
                    paint2.setShader(shaderF);
                    paint2.setAlpha(Math.round(cVar.f4267j * 255.0f));
                } else {
                    paint2.setShader(null);
                    paint2.setAlpha(255);
                    paint2.setColor(h.a(dVar2.e(), cVar.f4267j));
                }
                paint2.setColorFilter(colorFilter);
                this.f4293b.setFillType(cVar.f4289c == 0 ? Path.FillType.WINDING : Path.FillType.EVEN_ODD);
                canvas.drawPath(this.f4293b, paint2);
            }
            if (cVar.f4263f.l()) {
                androidx.core.content.res.d dVar3 = cVar.f4263f;
                if (this.f4295d == null) {
                    Paint paint3 = new Paint(1);
                    this.f4295d = paint3;
                    paint3.setStyle(Paint.Style.STROKE);
                }
                Paint paint4 = this.f4295d;
                Paint.Join join = cVar.f4272o;
                if (join != null) {
                    paint4.setStrokeJoin(join);
                }
                Paint.Cap cap = cVar.f4271n;
                if (cap != null) {
                    paint4.setStrokeCap(cap);
                }
                paint4.setStrokeMiter(cVar.f4273p);
                if (dVar3.h()) {
                    Shader shaderF2 = dVar3.f();
                    shaderF2.setLocalMatrix(this.f4294c);
                    paint4.setShader(shaderF2);
                    paint4.setAlpha(Math.round(cVar.f4266i * 255.0f));
                } else {
                    paint4.setShader(null);
                    paint4.setAlpha(255);
                    paint4.setColor(h.a(dVar3.e(), cVar.f4266i));
                }
                paint4.setColorFilter(colorFilter);
                paint4.setStrokeWidth(cVar.f4264g * fMin * fE);
                canvas.drawPath(this.f4293b, paint4);
            }
        }

        private float e(Matrix matrix) {
            float[] fArr = {0.0f, 1.0f, 1.0f, 0.0f};
            matrix.mapVectors(fArr);
            float fHypot = (float) Math.hypot(fArr[0], fArr[1]);
            float fHypot2 = (float) Math.hypot(fArr[2], fArr[3]);
            float fA = a(fArr[0], fArr[1], fArr[2], fArr[3]);
            float fMax = Math.max(fHypot, fHypot2);
            if (fMax > 0.0f) {
                return Math.abs(fA) / fMax;
            }
            return 0.0f;
        }

        public void b(Canvas canvas, int i10, int i11, ColorFilter colorFilter) {
            c(this.f4299h, f4291q, canvas, i10, i11, colorFilter);
        }

        public boolean f() {
            if (this.f4306o == null) {
                this.f4306o = Boolean.valueOf(this.f4299h.a());
            }
            return this.f4306o.booleanValue();
        }

        public boolean g(int[] iArr) {
            return this.f4299h.b(iArr);
        }

        public float getAlpha() {
            return getRootAlpha() / 255.0f;
        }

        public int getRootAlpha() {
            return this.f4304m;
        }

        public void setAlpha(float f10) {
            setRootAlpha((int) (f10 * 255.0f));
        }

        public void setRootAlpha(int i10) {
            this.f4304m = i10;
        }

        public g(g gVar) {
            this.f4294c = new Matrix();
            this.f4300i = 0.0f;
            this.f4301j = 0.0f;
            this.f4302k = 0.0f;
            this.f4303l = 0.0f;
            this.f4304m = 255;
            this.f4305n = null;
            this.f4306o = null;
            o.a<String, Object> aVar = new o.a<>();
            this.f4307p = aVar;
            this.f4299h = new d(gVar.f4299h, aVar);
            this.f4292a = new Path(gVar.f4292a);
            this.f4293b = new Path(gVar.f4293b);
            this.f4300i = gVar.f4300i;
            this.f4301j = gVar.f4301j;
            this.f4302k = gVar.f4302k;
            this.f4303l = gVar.f4303l;
            this.f4298g = gVar.f4298g;
            this.f4304m = gVar.f4304m;
            this.f4305n = gVar.f4305n;
            String str = gVar.f4305n;
            if (str != null) {
                aVar.put(str, this);
            }
            this.f4306o = gVar.f4306o;
        }
    }

    /* JADX INFO: compiled from: VectorDrawableCompat.java */
    private static class d extends e {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final Matrix f4274a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final ArrayList<e> f4275b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        float f4276c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private float f4277d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private float f4278e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private float f4279f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private float f4280g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private float f4281h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        private float f4282i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        final Matrix f4283j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        int f4284k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        private int[] f4285l;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        private String f4286m;

        public d(d dVar, o.a<String, Object> aVar) {
            f bVar;
            super();
            this.f4274a = new Matrix();
            this.f4275b = new ArrayList<>();
            this.f4276c = 0.0f;
            this.f4277d = 0.0f;
            this.f4278e = 0.0f;
            this.f4279f = 1.0f;
            this.f4280g = 1.0f;
            this.f4281h = 0.0f;
            this.f4282i = 0.0f;
            Matrix matrix = new Matrix();
            this.f4283j = matrix;
            this.f4286m = null;
            this.f4276c = dVar.f4276c;
            this.f4277d = dVar.f4277d;
            this.f4278e = dVar.f4278e;
            this.f4279f = dVar.f4279f;
            this.f4280g = dVar.f4280g;
            this.f4281h = dVar.f4281h;
            this.f4282i = dVar.f4282i;
            this.f4285l = dVar.f4285l;
            String str = dVar.f4286m;
            this.f4286m = str;
            this.f4284k = dVar.f4284k;
            if (str != null) {
                aVar.put(str, this);
            }
            matrix.set(dVar.f4283j);
            ArrayList<e> arrayList = dVar.f4275b;
            for (int i10 = 0; i10 < arrayList.size(); i10++) {
                e eVar = arrayList.get(i10);
                if (eVar instanceof d) {
                    this.f4275b.add(new d((d) eVar, aVar));
                } else {
                    if (eVar instanceof c) {
                        bVar = new c((c) eVar);
                    } else {
                        if (!(eVar instanceof b)) {
                            throw new IllegalStateException("Unknown object in the tree!");
                        }
                        bVar = new b((b) eVar);
                    }
                    this.f4275b.add(bVar);
                    String str2 = bVar.f4288b;
                    if (str2 != null) {
                        aVar.put(str2, bVar);
                    }
                }
            }
        }

        private void d() {
            this.f4283j.reset();
            this.f4283j.postTranslate(-this.f4277d, -this.f4278e);
            this.f4283j.postScale(this.f4279f, this.f4280g);
            this.f4283j.postRotate(this.f4276c, 0.0f, 0.0f);
            this.f4283j.postTranslate(this.f4281h + this.f4277d, this.f4282i + this.f4278e);
        }

        private void e(TypedArray typedArray, XmlPullParser xmlPullParser) {
            this.f4285l = null;
            this.f4276c = k.f(typedArray, xmlPullParser, "rotation", 5, this.f4276c);
            this.f4277d = typedArray.getFloat(1, this.f4277d);
            this.f4278e = typedArray.getFloat(2, this.f4278e);
            this.f4279f = k.f(typedArray, xmlPullParser, "scaleX", 3, this.f4279f);
            this.f4280g = k.f(typedArray, xmlPullParser, "scaleY", 4, this.f4280g);
            this.f4281h = k.f(typedArray, xmlPullParser, "translateX", 6, this.f4281h);
            this.f4282i = k.f(typedArray, xmlPullParser, "translateY", 7, this.f4282i);
            String string = typedArray.getString(0);
            if (string != null) {
                this.f4286m = string;
            }
            d();
        }

        @Override // androidx.vectordrawable.graphics.drawable.h.e
        public boolean a() {
            for (int i10 = 0; i10 < this.f4275b.size(); i10++) {
                if (this.f4275b.get(i10).a()) {
                    return true;
                }
            }
            return false;
        }

        @Override // androidx.vectordrawable.graphics.drawable.h.e
        public boolean b(int[] iArr) {
            boolean zB = false;
            for (int i10 = 0; i10 < this.f4275b.size(); i10++) {
                zB |= this.f4275b.get(i10).b(iArr);
            }
            return zB;
        }

        public void c(Resources resources, AttributeSet attributeSet, Resources.Theme theme, XmlPullParser xmlPullParser) {
            TypedArray typedArrayK = k.k(resources, theme, attributeSet, androidx.vectordrawable.graphics.drawable.a.f4223b);
            e(typedArrayK, xmlPullParser);
            typedArrayK.recycle();
        }

        public String getGroupName() {
            return this.f4286m;
        }

        public Matrix getLocalMatrix() {
            return this.f4283j;
        }

        public float getPivotX() {
            return this.f4277d;
        }

        public float getPivotY() {
            return this.f4278e;
        }

        public float getRotation() {
            return this.f4276c;
        }

        public float getScaleX() {
            return this.f4279f;
        }

        public float getScaleY() {
            return this.f4280g;
        }

        public float getTranslateX() {
            return this.f4281h;
        }

        public float getTranslateY() {
            return this.f4282i;
        }

        public void setPivotX(float f10) {
            if (f10 != this.f4277d) {
                this.f4277d = f10;
                d();
            }
        }

        public void setPivotY(float f10) {
            if (f10 != this.f4278e) {
                this.f4278e = f10;
                d();
            }
        }

        public void setRotation(float f10) {
            if (f10 != this.f4276c) {
                this.f4276c = f10;
                d();
            }
        }

        public void setScaleX(float f10) {
            if (f10 != this.f4279f) {
                this.f4279f = f10;
                d();
            }
        }

        public void setScaleY(float f10) {
            if (f10 != this.f4280g) {
                this.f4280g = f10;
                d();
            }
        }

        public void setTranslateX(float f10) {
            if (f10 != this.f4281h) {
                this.f4281h = f10;
                d();
            }
        }

        public void setTranslateY(float f10) {
            if (f10 != this.f4282i) {
                this.f4282i = f10;
                d();
            }
        }

        public d() {
            super();
            this.f4274a = new Matrix();
            this.f4275b = new ArrayList<>();
            this.f4276c = 0.0f;
            this.f4277d = 0.0f;
            this.f4278e = 0.0f;
            this.f4279f = 1.0f;
            this.f4280g = 1.0f;
            this.f4281h = 0.0f;
            this.f4282i = 0.0f;
            this.f4283j = new Matrix();
            this.f4286m = null;
        }
    }
}
