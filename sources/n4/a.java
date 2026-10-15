package n4;

import android.graphics.Canvas;
import android.graphics.LinearGradient;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RadialGradient;
import android.graphics.RectF;
import android.graphics.Region;
import android.graphics.Shader;

/* JADX INFO: compiled from: ShadowRenderer.java */
/* JADX INFO: loaded from: classes2.dex */
public class a {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static final int[] f32435i = new int[3];

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static final float[] f32436j = {0.0f, 0.5f, 1.0f};

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private static final int[] f32437k = new int[4];

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private static final float[] f32438l = {0.0f, 0.0f, 0.5f, 1.0f};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Paint f32439a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Paint f32440b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Paint f32441c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f32442d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f32443e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f32444f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final Path f32445g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private Paint f32446h;

    public a() {
        this(-16777216);
    }

    public void a(Canvas canvas, Matrix matrix, RectF rectF, int i10, float f10, float f11) {
        boolean z10 = f11 < 0.0f;
        Path path = this.f32445g;
        if (z10) {
            int[] iArr = f32437k;
            iArr[0] = 0;
            iArr[1] = this.f32444f;
            iArr[2] = this.f32443e;
            iArr[3] = this.f32442d;
        } else {
            path.rewind();
            path.moveTo(rectF.centerX(), rectF.centerY());
            path.arcTo(rectF, f10, f11);
            path.close();
            float f12 = -i10;
            rectF.inset(f12, f12);
            int[] iArr2 = f32437k;
            iArr2[0] = 0;
            iArr2[1] = this.f32442d;
            iArr2[2] = this.f32443e;
            iArr2[3] = this.f32444f;
        }
        float fWidth = rectF.width() / 2.0f;
        if (fWidth <= 0.0f) {
            return;
        }
        float f13 = 1.0f - (i10 / fWidth);
        float[] fArr = f32438l;
        fArr[1] = f13;
        fArr[2] = ((1.0f - f13) / 2.0f) + f13;
        this.f32440b.setShader(new RadialGradient(rectF.centerX(), rectF.centerY(), fWidth, f32437k, fArr, Shader.TileMode.CLAMP));
        canvas.save();
        canvas.concat(matrix);
        if (!z10) {
            canvas.clipPath(path, Region.Op.DIFFERENCE);
            canvas.drawPath(path, this.f32446h);
        }
        canvas.drawArc(rectF, f10, f11, true, this.f32440b);
        canvas.restore();
    }

    public void b(Canvas canvas, Matrix matrix, RectF rectF, int i10) {
        rectF.bottom += i10;
        rectF.offset(0.0f, -i10);
        int[] iArr = f32435i;
        iArr[0] = this.f32444f;
        iArr[1] = this.f32443e;
        iArr[2] = this.f32442d;
        Paint paint = this.f32441c;
        float f10 = rectF.left;
        paint.setShader(new LinearGradient(f10, rectF.top, f10, rectF.bottom, iArr, f32436j, Shader.TileMode.CLAMP));
        canvas.save();
        canvas.concat(matrix);
        canvas.drawRect(rectF, this.f32441c);
        canvas.restore();
    }

    public Paint c() {
        return this.f32439a;
    }

    public void d(int i10) {
        this.f32442d = androidx.core.graphics.a.f(i10, 68);
        this.f32443e = androidx.core.graphics.a.f(i10, 20);
        this.f32444f = androidx.core.graphics.a.f(i10, 0);
        this.f32439a.setColor(this.f32442d);
    }

    public a(int i10) {
        this.f32445g = new Path();
        this.f32446h = new Paint();
        this.f32439a = new Paint();
        d(i10);
        this.f32446h.setColor(0);
        Paint paint = new Paint(4);
        this.f32440b = paint;
        paint.setStyle(Paint.Style.FILL);
        this.f32441c = new Paint(paint);
    }
}
