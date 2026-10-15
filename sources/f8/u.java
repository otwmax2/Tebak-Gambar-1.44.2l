package f8;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Point;
import android.graphics.Rect;
import android.graphics.drawable.AnimationDrawable;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.SystemClock;
import android.widget.ImageView;
import f8.t;

/* JADX INFO: compiled from: PicassoDrawable.java */
/* JADX INFO: loaded from: classes2.dex */
final class u extends BitmapDrawable {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static final Paint f29456h = new Paint();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final boolean f29457a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final float f29458b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final t.e f29459c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    Drawable f29460d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    long f29461e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    boolean f29462f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    int f29463g;

    u(Context context, Bitmap bitmap, Drawable drawable, t.e eVar, boolean z10, boolean z11) {
        super(context.getResources(), bitmap);
        this.f29463g = 255;
        this.f29457a = z11;
        this.f29458b = context.getResources().getDisplayMetrics().density;
        this.f29459c = eVar;
        if ((eVar == t.e.MEMORY || z10) ? false : true) {
            this.f29460d = drawable;
            this.f29462f = true;
            this.f29461e = SystemClock.uptimeMillis();
        }
    }

    private void a(Canvas canvas) {
        Paint paint = f29456h;
        paint.setColor(-1);
        canvas.drawPath(b(new Point(0, 0), (int) (this.f29458b * 16.0f)), paint);
        paint.setColor(this.f29459c.f29450o);
        canvas.drawPath(b(new Point(0, 0), (int) (this.f29458b * 15.0f)), paint);
    }

    private static Path b(Point point, int i10) {
        Point point2 = new Point(point.x + i10, point.y);
        Point point3 = new Point(point.x, point.y + i10);
        Path path = new Path();
        path.moveTo(point.x, point.y);
        path.lineTo(point2.x, point2.y);
        path.lineTo(point3.x, point3.y);
        return path;
    }

    static void c(ImageView imageView, Context context, Bitmap bitmap, t.e eVar, boolean z10, boolean z11) {
        Drawable drawable = imageView.getDrawable();
        if (drawable instanceof AnimationDrawable) {
            ((AnimationDrawable) drawable).stop();
        }
        imageView.setImageDrawable(new u(context, bitmap, drawable, eVar, z10, z11));
    }

    static void d(ImageView imageView, Drawable drawable) {
        imageView.setImageDrawable(drawable);
        if (imageView.getDrawable() instanceof AnimationDrawable) {
            ((AnimationDrawable) imageView.getDrawable()).start();
        }
    }

    @Override // android.graphics.drawable.BitmapDrawable, android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        if (this.f29462f) {
            float fUptimeMillis = (SystemClock.uptimeMillis() - this.f29461e) / 200.0f;
            if (fUptimeMillis >= 1.0f) {
                this.f29462f = false;
                this.f29460d = null;
                super.draw(canvas);
            } else {
                Drawable drawable = this.f29460d;
                if (drawable != null) {
                    drawable.draw(canvas);
                }
                super.setAlpha((int) (this.f29463g * fUptimeMillis));
                super.draw(canvas);
                super.setAlpha(this.f29463g);
                if (Build.VERSION.SDK_INT <= 10) {
                    invalidateSelf();
                }
            }
        } else {
            super.draw(canvas);
        }
        if (this.f29457a) {
            a(canvas);
        }
    }

    @Override // android.graphics.drawable.BitmapDrawable, android.graphics.drawable.Drawable
    protected void onBoundsChange(Rect rect) {
        Drawable drawable = this.f29460d;
        if (drawable != null) {
            drawable.setBounds(rect);
        }
        super.onBoundsChange(rect);
    }

    @Override // android.graphics.drawable.BitmapDrawable, android.graphics.drawable.Drawable
    public void setAlpha(int i10) {
        this.f29463g = i10;
        Drawable drawable = this.f29460d;
        if (drawable != null) {
            drawable.setAlpha(i10);
        }
        super.setAlpha(i10);
    }

    @Override // android.graphics.drawable.BitmapDrawable, android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        Drawable drawable = this.f29460d;
        if (drawable != null) {
            drawable.setColorFilter(colorFilter);
        }
        super.setColorFilter(colorFilter);
    }
}
