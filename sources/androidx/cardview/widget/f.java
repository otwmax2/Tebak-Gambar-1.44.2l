package androidx.cardview.widget;

import android.content.res.ColorStateList;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Outline;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;

/* JADX INFO: compiled from: RoundRectDrawable.java */
/* JADX INFO: loaded from: classes.dex */
class f extends Drawable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private float f1307a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final RectF f1309c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Rect f1310d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private float f1311e;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private ColorStateList f1314h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private PorterDuffColorFilter f1315i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private ColorStateList f1316j;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f1312f = false;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private boolean f1313g = true;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private PorterDuff.Mode f1317k = PorterDuff.Mode.SRC_IN;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Paint f1308b = new Paint(5);

    f(ColorStateList colorStateList, float f10) {
        this.f1307a = f10;
        e(colorStateList);
        this.f1309c = new RectF();
        this.f1310d = new Rect();
    }

    private PorterDuffColorFilter a(ColorStateList colorStateList, PorterDuff.Mode mode) {
        if (colorStateList == null || mode == null) {
            return null;
        }
        return new PorterDuffColorFilter(colorStateList.getColorForState(getState(), 0), mode);
    }

    private void e(ColorStateList colorStateList) {
        if (colorStateList == null) {
            colorStateList = ColorStateList.valueOf(0);
        }
        this.f1314h = colorStateList;
        this.f1308b.setColor(colorStateList.getColorForState(getState(), this.f1314h.getDefaultColor()));
    }

    private void i(Rect rect) {
        if (rect == null) {
            rect = getBounds();
        }
        this.f1309c.set(rect.left, rect.top, rect.right, rect.bottom);
        this.f1310d.set(rect);
        if (this.f1312f) {
            this.f1310d.inset((int) Math.ceil(g.c(this.f1311e, this.f1307a, this.f1313g)), (int) Math.ceil(g.d(this.f1311e, this.f1307a, this.f1313g)));
            this.f1309c.set(this.f1310d);
        }
    }

    public ColorStateList b() {
        return this.f1314h;
    }

    float c() {
        return this.f1311e;
    }

    public float d() {
        return this.f1307a;
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        boolean z10;
        Paint paint = this.f1308b;
        if (this.f1315i == null || paint.getColorFilter() != null) {
            z10 = false;
        } else {
            paint.setColorFilter(this.f1315i);
            z10 = true;
        }
        RectF rectF = this.f1309c;
        float f10 = this.f1307a;
        canvas.drawRoundRect(rectF, f10, f10, paint);
        if (z10) {
            paint.setColorFilter(null);
        }
    }

    public void f(ColorStateList colorStateList) {
        e(colorStateList);
        invalidateSelf();
    }

    void g(float f10, boolean z10, boolean z11) {
        if (f10 == this.f1311e && this.f1312f == z10 && this.f1313g == z11) {
            return;
        }
        this.f1311e = f10;
        this.f1312f = z10;
        this.f1313g = z11;
        i(null);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    @Override // android.graphics.drawable.Drawable
    public void getOutline(Outline outline) {
        outline.setRoundRect(this.f1310d, this.f1307a);
    }

    void h(float f10) {
        if (f10 == this.f1307a) {
            return;
        }
        this.f1307a = f10;
        i(null);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isStateful() {
        ColorStateList colorStateList;
        ColorStateList colorStateList2 = this.f1316j;
        return (colorStateList2 != null && colorStateList2.isStateful()) || ((colorStateList = this.f1314h) != null && colorStateList.isStateful()) || super.isStateful();
    }

    @Override // android.graphics.drawable.Drawable
    protected void onBoundsChange(Rect rect) {
        super.onBoundsChange(rect);
        i(rect);
    }

    @Override // android.graphics.drawable.Drawable
    protected boolean onStateChange(int[] iArr) {
        PorterDuff.Mode mode;
        ColorStateList colorStateList = this.f1314h;
        int colorForState = colorStateList.getColorForState(iArr, colorStateList.getDefaultColor());
        boolean z10 = colorForState != this.f1308b.getColor();
        if (z10) {
            this.f1308b.setColor(colorForState);
        }
        ColorStateList colorStateList2 = this.f1316j;
        if (colorStateList2 == null || (mode = this.f1317k) == null) {
            return z10;
        }
        this.f1315i = a(colorStateList2, mode);
        return true;
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i10) {
        this.f1308b.setAlpha(i10);
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.f1308b.setColorFilter(colorFilter);
    }

    @Override // android.graphics.drawable.Drawable
    public void setTintList(ColorStateList colorStateList) {
        this.f1316j = colorStateList;
        this.f1315i = a(colorStateList, this.f1317k);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public void setTintMode(PorterDuff.Mode mode) {
        this.f1317k = mode;
        this.f1315i = a(this.f1316j, mode);
        invalidateSelf();
    }
}
