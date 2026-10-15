package k2;

import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.view.Gravity;
import java.util.Objects;

/* JADX INFO: compiled from: GlideBitmapDrawable.java */
/* JADX INFO: loaded from: classes.dex */
public class j extends l2.b {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final Rect f31325o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private int f31326p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private int f31327q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private boolean f31328r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private boolean f31329s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private a f31330t;

    /* JADX INFO: compiled from: GlideBitmapDrawable.java */
    static class a extends Drawable.ConstantState {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private static final Paint f31331d = new Paint(6);

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final Bitmap f31332a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        int f31333b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        Paint f31334c;

        public a(Bitmap bitmap) {
            this.f31334c = f31331d;
            this.f31332a = bitmap;
        }

        void a() {
            if (f31331d == this.f31334c) {
                this.f31334c = new Paint(6);
            }
        }

        void b(int i10) {
            a();
            this.f31334c.setAlpha(i10);
        }

        void c(ColorFilter colorFilter) {
            a();
            this.f31334c.setColorFilter(colorFilter);
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public int getChangingConfigurations() {
            return 0;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable() {
            return new j((Resources) null, this);
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable(Resources resources) {
            return new j(resources, this);
        }

        a(a aVar) {
            this(aVar.f31332a);
            this.f31333b = aVar.f31333b;
        }
    }

    public j(Resources resources, Bitmap bitmap) {
        this(resources, new a(bitmap));
    }

    @Override // l2.b
    public boolean b() {
        return false;
    }

    @Override // l2.b
    public void c(int i10) {
    }

    public Bitmap d() {
        return this.f31330t.f31332a;
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        if (this.f31328r) {
            Gravity.apply(119, this.f31326p, this.f31327q, getBounds(), this.f31325o);
            this.f31328r = false;
        }
        a aVar = this.f31330t;
        canvas.drawBitmap(aVar.f31332a, (Rect) null, this.f31325o, aVar.f31334c);
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable.ConstantState getConstantState() {
        return this.f31330t;
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        return this.f31327q;
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        return this.f31326p;
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        Bitmap bitmap = this.f31330t.f31332a;
        return (bitmap == null || bitmap.hasAlpha() || this.f31330t.f31334c.getAlpha() < 255) ? -3 : -1;
    }

    @Override // android.graphics.drawable.Animatable
    public boolean isRunning() {
        return false;
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable mutate() {
        if (!this.f31329s && super.mutate() == this) {
            this.f31330t = new a(this.f31330t);
            this.f31329s = true;
        }
        return this;
    }

    @Override // android.graphics.drawable.Drawable
    protected void onBoundsChange(Rect rect) {
        super.onBoundsChange(rect);
        this.f31328r = true;
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i10) {
        if (this.f31330t.f31334c.getAlpha() != i10) {
            this.f31330t.b(i10);
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.f31330t.c(colorFilter);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Animatable
    public void start() {
    }

    @Override // android.graphics.drawable.Animatable
    public void stop() {
    }

    j(Resources resources, a aVar) {
        int i10;
        this.f31325o = new Rect();
        Objects.requireNonNull(aVar, "BitmapState must not be null");
        this.f31330t = aVar;
        if (resources != null) {
            i10 = resources.getDisplayMetrics().densityDpi;
            i10 = i10 == 0 ? 160 : i10;
            aVar.f31333b = i10;
        } else {
            i10 = aVar.f31333b;
        }
        this.f31326p = aVar.f31332a.getScaledWidth(i10);
        this.f31327q = aVar.f31332a.getScaledHeight(i10);
    }
}
