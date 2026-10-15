package androidx.vectordrawable.graphics.drawable;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Path;
import android.graphics.PathMeasure;
import android.util.AttributeSet;
import android.view.InflateException;
import android.view.animation.Interpolator;
import androidx.core.content.res.k;
import org.xmlpull.v1.XmlPullParser;

/* JADX INFO: compiled from: PathInterpolatorCompat.java */
/* JADX INFO: loaded from: classes.dex */
public class f implements Interpolator {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private float[] f4249a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private float[] f4250b;

    public f(Context context, AttributeSet attributeSet, XmlPullParser xmlPullParser) {
        this(context.getResources(), context.getTheme(), attributeSet, xmlPullParser);
    }

    private void a(float f10, float f11, float f12, float f13) {
        Path path = new Path();
        path.moveTo(0.0f, 0.0f);
        path.cubicTo(f10, f11, f12, f13, 1.0f, 1.0f);
        b(path);
    }

    private void b(Path path) {
        int i10 = 0;
        PathMeasure pathMeasure = new PathMeasure(path, false);
        float length = pathMeasure.getLength();
        int iMin = Math.min(3000, ((int) (length / 0.002f)) + 1);
        if (iMin <= 0) {
            throw new IllegalArgumentException("The Path has a invalid length " + length);
        }
        this.f4249a = new float[iMin];
        this.f4250b = new float[iMin];
        float[] fArr = new float[2];
        for (int i11 = 0; i11 < iMin; i11++) {
            pathMeasure.getPosTan((i11 * length) / (iMin - 1), fArr, null);
            this.f4249a[i11] = fArr[0];
            this.f4250b[i11] = fArr[1];
        }
        if (Math.abs(this.f4249a[0]) <= 1.0E-5d && Math.abs(this.f4250b[0]) <= 1.0E-5d) {
            int i12 = iMin - 1;
            if (Math.abs(this.f4249a[i12] - 1.0f) <= 1.0E-5d && Math.abs(this.f4250b[i12] - 1.0f) <= 1.0E-5d) {
                float f10 = 0.0f;
                int i13 = 0;
                while (i10 < iMin) {
                    float[] fArr2 = this.f4249a;
                    int i14 = i13 + 1;
                    float f11 = fArr2[i13];
                    if (f11 < f10) {
                        throw new IllegalArgumentException("The Path cannot loop back on itself, x :" + f11);
                    }
                    fArr2[i10] = f11;
                    i10++;
                    f10 = f11;
                    i13 = i14;
                }
                if (pathMeasure.nextContour()) {
                    throw new IllegalArgumentException("The Path should be continuous, can't have 2+ contours");
                }
                return;
            }
        }
        StringBuilder sb = new StringBuilder();
        sb.append("The Path must start at (0,0) and end at (1,1) start: ");
        sb.append(this.f4249a[0]);
        sb.append(",");
        sb.append(this.f4250b[0]);
        sb.append(" end:");
        int i15 = iMin - 1;
        sb.append(this.f4249a[i15]);
        sb.append(",");
        sb.append(this.f4250b[i15]);
        throw new IllegalArgumentException(sb.toString());
    }

    private void c(float f10, float f11) {
        Path path = new Path();
        path.moveTo(0.0f, 0.0f);
        path.quadTo(f10, f11, 1.0f, 1.0f);
        b(path);
    }

    private void d(TypedArray typedArray, XmlPullParser xmlPullParser) {
        if (k.j(xmlPullParser, "pathData")) {
            String strI = k.i(typedArray, xmlPullParser, "pathData", 4);
            Path pathE = androidx.core.graphics.d.e(strI);
            if (pathE != null) {
                b(pathE);
                return;
            }
            throw new InflateException("The path is null, which is created from " + strI);
        }
        if (!k.j(xmlPullParser, "controlX1")) {
            throw new InflateException("pathInterpolator requires the controlX1 attribute");
        }
        if (!k.j(xmlPullParser, "controlY1")) {
            throw new InflateException("pathInterpolator requires the controlY1 attribute");
        }
        float f10 = k.f(typedArray, xmlPullParser, "controlX1", 0, 0.0f);
        float f11 = k.f(typedArray, xmlPullParser, "controlY1", 1, 0.0f);
        boolean zJ = k.j(xmlPullParser, "controlX2");
        if (zJ != k.j(xmlPullParser, "controlY2")) {
            throw new InflateException("pathInterpolator requires both controlX2 and controlY2 for cubic Beziers.");
        }
        if (zJ) {
            a(f10, f11, k.f(typedArray, xmlPullParser, "controlX2", 2, 0.0f), k.f(typedArray, xmlPullParser, "controlY2", 3, 0.0f));
        } else {
            c(f10, f11);
        }
    }

    @Override // android.animation.TimeInterpolator
    public float getInterpolation(float f10) {
        if (f10 <= 0.0f) {
            return 0.0f;
        }
        if (f10 >= 1.0f) {
            return 1.0f;
        }
        int i10 = 0;
        int length = this.f4249a.length - 1;
        while (length - i10 > 1) {
            int i11 = (i10 + length) / 2;
            if (f10 < this.f4249a[i11]) {
                length = i11;
            } else {
                i10 = i11;
            }
        }
        float[] fArr = this.f4249a;
        float f11 = fArr[length] - fArr[i10];
        if (f11 == 0.0f) {
            return this.f4250b[i10];
        }
        float f12 = (f10 - fArr[i10]) / f11;
        float[] fArr2 = this.f4250b;
        float f13 = fArr2[i10];
        return f13 + (f12 * (fArr2[length] - f13));
    }

    public f(Resources resources, Resources.Theme theme, AttributeSet attributeSet, XmlPullParser xmlPullParser) {
        TypedArray typedArrayK = k.k(resources, theme, attributeSet, a.f4233l);
        d(typedArrayK, xmlPullParser);
        typedArrayK.recycle();
    }
}
