package androidx.core.graphics.drawable;

import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.drawable.Drawable;

/* JADX INFO: compiled from: RoundedBitmapDrawable.java */
/* JADX INFO: loaded from: classes.dex */
public abstract class c extends Drawable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final Bitmap f2220a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f2221b;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final BitmapShader f2224e;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private float f2226g;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private boolean f2230k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private int f2231l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private int f2232m;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f2222c = 119;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Paint f2223d = new Paint(3);

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final Matrix f2225f = new Matrix();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    final Rect f2227h = new Rect();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final RectF f2228i = new RectF();

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private boolean f2229j = true;

    c(Resources resources, Bitmap bitmap) {
        this.f2221b = 160;
        if (resources != null) {
            this.f2221b = resources.getDisplayMetrics().densityDpi;
        }
        this.f2220a = bitmap;
        if (bitmap != null) {
            a();
            Shader.TileMode tileMode = Shader.TileMode.CLAMP;
            this.f2224e = new BitmapShader(bitmap, tileMode, tileMode);
        } else {
            this.f2232m = -1;
            this.f2231l = -1;
            this.f2224e = null;
        }
    }

    private void a() {
        this.f2231l = this.f2220a.getScaledWidth(this.f2221b);
        this.f2232m = this.f2220a.getScaledHeight(this.f2221b);
    }

    private static boolean d(float f10) {
        return f10 > 0.05f;
    }

    private void g() {
        this.f2226g = Math.min(this.f2232m, this.f2231l) / 2;
    }

    public float b() {
        return this.f2226g;
    }

    abstract void c(int i10, int i11, int i12, Rect rect, Rect rect2);

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        Bitmap bitmap = this.f2220a;
        if (bitmap == null) {
            return;
        }
        h();
        if (this.f2223d.getShader() == null) {
            canvas.drawBitmap(bitmap, (Rect) null, this.f2227h, this.f2223d);
            return;
        }
        RectF rectF = this.f2228i;
        float f10 = this.f2226g;
        canvas.drawRoundRect(rectF, f10, f10, this.f2223d);
    }

    public void e(boolean z10) {
        this.f2230k = z10;
        this.f2229j = true;
        if (!z10) {
            f(0.0f);
            return;
        }
        g();
        this.f2223d.setShader(this.f2224e);
        invalidateSelf();
    }

    public void f(float f10) {
        if (this.f2226g == f10) {
            return;
        }
        this.f2230k = false;
        if (d(f10)) {
            this.f2223d.setShader(this.f2224e);
        } else {
            this.f2223d.setShader(null);
        }
        this.f2226g = f10;
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public int getAlpha() {
        return this.f2223d.getAlpha();
    }

    @Override // android.graphics.drawable.Drawable
    public ColorFilter getColorFilter() {
        return this.f2223d.getColorFilter();
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        return this.f2232m;
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        return this.f2231l;
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        Bitmap bitmap;
        return (this.f2222c != 119 || this.f2230k || (bitmap = this.f2220a) == null || bitmap.hasAlpha() || this.f2223d.getAlpha() < 255 || d(this.f2226g)) ? -3 : -1;
    }

    void h() {
        if (this.f2229j) {
            if (this.f2230k) {
                int iMin = Math.min(this.f2231l, this.f2232m);
                c(this.f2222c, iMin, iMin, getBounds(), this.f2227h);
                int iMin2 = Math.min(this.f2227h.width(), this.f2227h.height());
                this.f2227h.inset(Math.max(0, (this.f2227h.width() - iMin2) / 2), Math.max(0, (this.f2227h.height() - iMin2) / 2));
                this.f2226g = iMin2 * 0.5f;
            } else {
                c(this.f2222c, this.f2231l, this.f2232m, getBounds(), this.f2227h);
            }
            this.f2228i.set(this.f2227h);
            if (this.f2224e != null) {
                Matrix matrix = this.f2225f;
                RectF rectF = this.f2228i;
                matrix.setTranslate(rectF.left, rectF.top);
                this.f2225f.preScale(this.f2228i.width() / this.f2220a.getWidth(), this.f2228i.height() / this.f2220a.getHeight());
                this.f2224e.setLocalMatrix(this.f2225f);
                this.f2223d.setShader(this.f2224e);
            }
            this.f2229j = false;
        }
    }

    @Override // android.graphics.drawable.Drawable
    protected void onBoundsChange(Rect rect) {
        super.onBoundsChange(rect);
        if (this.f2230k) {
            g();
        }
        this.f2229j = true;
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i10) {
        if (i10 != this.f2223d.getAlpha()) {
            this.f2223d.setAlpha(i10);
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.f2223d.setColorFilter(colorFilter);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public void setDither(boolean z10) {
        this.f2223d.setDither(z10);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public void setFilterBitmap(boolean z10) {
        this.f2223d.setFilterBitmap(z10);
        invalidateSelf();
    }
}
