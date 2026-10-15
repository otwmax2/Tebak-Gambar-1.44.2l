package androidx.cardview.widget;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.LinearGradient;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RadialGradient;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.drawable.Drawable;

/* JADX INFO: compiled from: RoundRectDrawableWithShadow.java */
/* JADX INFO: loaded from: classes.dex */
class g extends Drawable {

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private static final double f1318q = Math.cos(Math.toRadians(45.0d));

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    static a f1319r;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f1320a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Paint f1322c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Paint f1323d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final RectF f1324e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private float f1325f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private Path f1326g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private float f1327h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private float f1328i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private float f1329j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private ColorStateList f1330k;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private final int f1332m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private final int f1333n;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private boolean f1331l = true;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private boolean f1334o = true;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private boolean f1335p = false;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Paint f1321b = new Paint(5);

    /* JADX INFO: compiled from: RoundRectDrawableWithShadow.java */
    interface a {
        void a(Canvas canvas, RectF rectF, float f10, Paint paint);
    }

    g(Resources resources, ColorStateList colorStateList, float f10, float f11, float f12) {
        this.f1332m = resources.getColor(n.b.f32282d);
        this.f1333n = resources.getColor(n.b.f32281c);
        this.f1320a = resources.getDimensionPixelSize(n.c.f32283a);
        n(colorStateList);
        Paint paint = new Paint(5);
        this.f1322c = paint;
        paint.setStyle(Paint.Style.FILL);
        this.f1325f = (int) (f10 + 0.5f);
        this.f1324e = new RectF();
        Paint paint2 = new Paint(this.f1322c);
        this.f1323d = paint2;
        paint2.setAntiAlias(false);
        s(f11, f12);
    }

    private void a(Rect rect) {
        float f10 = this.f1327h;
        float f11 = 1.5f * f10;
        this.f1324e.set(rect.left + f10, rect.top + f11, rect.right - f10, rect.bottom - f11);
        b();
    }

    private void b() {
        float f10 = this.f1325f;
        RectF rectF = new RectF(-f10, -f10, f10, f10);
        RectF rectF2 = new RectF(rectF);
        float f11 = this.f1328i;
        rectF2.inset(-f11, -f11);
        Path path = this.f1326g;
        if (path == null) {
            this.f1326g = new Path();
        } else {
            path.reset();
        }
        this.f1326g.setFillType(Path.FillType.EVEN_ODD);
        this.f1326g.moveTo(-this.f1325f, 0.0f);
        this.f1326g.rLineTo(-this.f1328i, 0.0f);
        this.f1326g.arcTo(rectF2, 180.0f, 90.0f, false);
        this.f1326g.arcTo(rectF, 270.0f, -90.0f, false);
        this.f1326g.close();
        float f12 = this.f1325f;
        float f13 = f12 / (this.f1328i + f12);
        Paint paint = this.f1322c;
        float f14 = this.f1325f + this.f1328i;
        int i10 = this.f1332m;
        paint.setShader(new RadialGradient(0.0f, 0.0f, f14, new int[]{i10, i10, this.f1333n}, new float[]{0.0f, f13, 1.0f}, Shader.TileMode.CLAMP));
        Paint paint2 = this.f1323d;
        float f15 = this.f1325f;
        float f16 = this.f1328i;
        int i11 = this.f1332m;
        paint2.setShader(new LinearGradient(0.0f, (-f15) + f16, 0.0f, (-f15) - f16, new int[]{i11, i11, this.f1333n}, new float[]{0.0f, 0.5f, 1.0f}, Shader.TileMode.CLAMP));
        this.f1323d.setAntiAlias(false);
    }

    static float c(float f10, float f11, boolean z10) {
        if (!z10) {
            return f10;
        }
        double d10 = f10;
        double d11 = 1.0d - f1318q;
        double d12 = f11;
        Double.isNaN(d12);
        Double.isNaN(d10);
        return (float) (d10 + (d11 * d12));
    }

    static float d(float f10, float f11, boolean z10) {
        if (!z10) {
            return f10 * 1.5f;
        }
        double d10 = f10 * 1.5f;
        double d11 = 1.0d - f1318q;
        double d12 = f11;
        Double.isNaN(d12);
        Double.isNaN(d10);
        return (float) (d10 + (d11 * d12));
    }

    private void e(Canvas canvas) {
        float f10 = this.f1325f;
        float f11 = (-f10) - this.f1328i;
        float f12 = f10 + this.f1320a + (this.f1329j / 2.0f);
        float f13 = f12 * 2.0f;
        boolean z10 = this.f1324e.width() - f13 > 0.0f;
        boolean z11 = this.f1324e.height() - f13 > 0.0f;
        int iSave = canvas.save();
        RectF rectF = this.f1324e;
        canvas.translate(rectF.left + f12, rectF.top + f12);
        canvas.drawPath(this.f1326g, this.f1322c);
        if (z10) {
            canvas.drawRect(0.0f, f11, this.f1324e.width() - f13, -this.f1325f, this.f1323d);
        }
        canvas.restoreToCount(iSave);
        int iSave2 = canvas.save();
        RectF rectF2 = this.f1324e;
        canvas.translate(rectF2.right - f12, rectF2.bottom - f12);
        canvas.rotate(180.0f);
        canvas.drawPath(this.f1326g, this.f1322c);
        if (z10) {
            canvas.drawRect(0.0f, f11, this.f1324e.width() - f13, (-this.f1325f) + this.f1328i, this.f1323d);
        }
        canvas.restoreToCount(iSave2);
        int iSave3 = canvas.save();
        RectF rectF3 = this.f1324e;
        canvas.translate(rectF3.left + f12, rectF3.bottom - f12);
        canvas.rotate(270.0f);
        canvas.drawPath(this.f1326g, this.f1322c);
        if (z11) {
            canvas.drawRect(0.0f, f11, this.f1324e.height() - f13, -this.f1325f, this.f1323d);
        }
        canvas.restoreToCount(iSave3);
        int iSave4 = canvas.save();
        RectF rectF4 = this.f1324e;
        canvas.translate(rectF4.right - f12, rectF4.top + f12);
        canvas.rotate(90.0f);
        canvas.drawPath(this.f1326g, this.f1322c);
        if (z11) {
            canvas.drawRect(0.0f, f11, this.f1324e.height() - f13, -this.f1325f, this.f1323d);
        }
        canvas.restoreToCount(iSave4);
    }

    private void n(ColorStateList colorStateList) {
        if (colorStateList == null) {
            colorStateList = ColorStateList.valueOf(0);
        }
        this.f1330k = colorStateList;
        this.f1321b.setColor(colorStateList.getColorForState(getState(), this.f1330k.getDefaultColor()));
    }

    private void s(float f10, float f11) {
        if (f10 < 0.0f) {
            throw new IllegalArgumentException("Invalid shadow size " + f10 + ". Must be >= 0");
        }
        if (f11 < 0.0f) {
            throw new IllegalArgumentException("Invalid max shadow size " + f11 + ". Must be >= 0");
        }
        float fT = t(f10);
        float fT2 = t(f11);
        if (fT > fT2) {
            if (!this.f1335p) {
                this.f1335p = true;
            }
            fT = fT2;
        }
        if (this.f1329j == fT && this.f1327h == fT2) {
            return;
        }
        this.f1329j = fT;
        this.f1327h = fT2;
        this.f1328i = (int) ((fT * 1.5f) + this.f1320a + 0.5f);
        this.f1331l = true;
        invalidateSelf();
    }

    private int t(float f10) {
        int i10 = (int) (f10 + 0.5f);
        return i10 % 2 == 1 ? i10 - 1 : i10;
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        if (this.f1331l) {
            a(getBounds());
            this.f1331l = false;
        }
        canvas.translate(0.0f, this.f1329j / 2.0f);
        e(canvas);
        canvas.translate(0.0f, (-this.f1329j) / 2.0f);
        f1319r.a(canvas, this.f1324e, this.f1325f, this.f1321b);
    }

    ColorStateList f() {
        return this.f1330k;
    }

    float g() {
        return this.f1325f;
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    @Override // android.graphics.drawable.Drawable
    public boolean getPadding(Rect rect) {
        int iCeil = (int) Math.ceil(d(this.f1327h, this.f1325f, this.f1334o));
        int iCeil2 = (int) Math.ceil(c(this.f1327h, this.f1325f, this.f1334o));
        rect.set(iCeil2, iCeil, iCeil2, iCeil);
        return true;
    }

    void h(Rect rect) {
        getPadding(rect);
    }

    float i() {
        return this.f1327h;
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isStateful() {
        ColorStateList colorStateList = this.f1330k;
        return (colorStateList != null && colorStateList.isStateful()) || super.isStateful();
    }

    float j() {
        float f10 = this.f1327h;
        return (Math.max(f10, this.f1325f + this.f1320a + ((f10 * 1.5f) / 2.0f)) * 2.0f) + (((this.f1327h * 1.5f) + this.f1320a) * 2.0f);
    }

    float k() {
        float f10 = this.f1327h;
        return (Math.max(f10, this.f1325f + this.f1320a + (f10 / 2.0f)) * 2.0f) + ((this.f1327h + this.f1320a) * 2.0f);
    }

    float l() {
        return this.f1329j;
    }

    void m(boolean z10) {
        this.f1334o = z10;
        invalidateSelf();
    }

    void o(ColorStateList colorStateList) {
        n(colorStateList);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    protected void onBoundsChange(Rect rect) {
        super.onBoundsChange(rect);
        this.f1331l = true;
    }

    @Override // android.graphics.drawable.Drawable
    protected boolean onStateChange(int[] iArr) {
        ColorStateList colorStateList = this.f1330k;
        int colorForState = colorStateList.getColorForState(iArr, colorStateList.getDefaultColor());
        if (this.f1321b.getColor() == colorForState) {
            return false;
        }
        this.f1321b.setColor(colorForState);
        this.f1331l = true;
        invalidateSelf();
        return true;
    }

    void p(float f10) {
        if (f10 < 0.0f) {
            throw new IllegalArgumentException("Invalid radius " + f10 + ". Must be >= 0");
        }
        float f11 = (int) (f10 + 0.5f);
        if (this.f1325f == f11) {
            return;
        }
        this.f1325f = f11;
        this.f1331l = true;
        invalidateSelf();
    }

    void q(float f10) {
        s(this.f1329j, f10);
    }

    void r(float f10) {
        s(f10, this.f1327h);
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i10) {
        this.f1321b.setAlpha(i10);
        this.f1322c.setAlpha(i10);
        this.f1323d.setAlpha(i10);
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.f1321b.setColorFilter(colorFilter);
    }
}
