package androidx.constraintlayout.motion.widget;

import android.view.View;
import com.facebook.appevents.internal.ViewHierarchyConstants;
import java.util.Arrays;
import java.util.LinkedHashMap;

/* JADX INFO: compiled from: MotionPaths.java */
/* JADX INFO: loaded from: classes.dex */
class k implements Comparable<k> {
    static String[] G = {"position", "x", "y", ViewHierarchyConstants.DIMENSION_WIDTH_KEY, ViewHierarchyConstants.DIMENSION_HEIGHT_KEY, "pathRotate"};
    float A;
    g B;
    LinkedHashMap<String, androidx.constraintlayout.widget.a> C;
    int D;
    double[] E;
    double[] F;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    q.b f1443o;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    float f1445q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    float f1446r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    float f1447s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    float f1448t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    float f1449u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    float f1450v;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    int f1453y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    int f1454z;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    int f1444p = 0;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    float f1451w = Float.NaN;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    float f1452x = Float.NaN;

    public k() {
        int i10 = d.f1370a;
        this.f1453y = i10;
        this.f1454z = i10;
        this.A = Float.NaN;
        this.B = null;
        this.C = new LinkedHashMap<>();
        this.D = 0;
        this.E = new double[18];
        this.F = new double[18];
    }

    @Override // java.lang.Comparable
    /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
    public int compareTo(k kVar) {
        return Float.compare(this.f1446r, kVar.f1446r);
    }

    void e(double d10, int[] iArr, double[] dArr, float[] fArr, double[] dArr2, float[] fArr2) {
        float f10;
        float f11 = this.f1447s;
        float f12 = this.f1448t;
        float f13 = this.f1449u;
        float f14 = this.f1450v;
        float f15 = 0.0f;
        float f16 = 0.0f;
        float f17 = 0.0f;
        float f18 = 0.0f;
        for (int i10 = 0; i10 < iArr.length; i10++) {
            float f19 = (float) dArr[i10];
            float f20 = (float) dArr2[i10];
            int i11 = iArr[i10];
            if (i11 == 1) {
                f11 = f19;
                f15 = f20;
            } else if (i11 == 2) {
                f12 = f19;
                f17 = f20;
            } else if (i11 == 3) {
                f13 = f19;
                f16 = f20;
            } else if (i11 == 4) {
                f14 = f19;
                f18 = f20;
            }
        }
        float f21 = 2.0f;
        float f22 = (f16 / 2.0f) + f15;
        float f23 = (f18 / 2.0f) + f17;
        g gVar = this.B;
        if (gVar != null) {
            float[] fArr3 = new float[2];
            float[] fArr4 = new float[2];
            gVar.b(d10, fArr3, fArr4);
            float f24 = fArr3[0];
            float f25 = fArr3[1];
            float f26 = fArr4[0];
            float f27 = fArr4[1];
            double d11 = f24;
            double d12 = f11;
            double d13 = f12;
            double dSin = Math.sin(d13);
            Double.isNaN(d12);
            Double.isNaN(d11);
            double d14 = d11 + (dSin * d12);
            f10 = f13;
            double d15 = f13 / 2.0f;
            Double.isNaN(d15);
            float f28 = (float) (d14 - d15);
            double d16 = f25;
            double dCos = Math.cos(d13);
            Double.isNaN(d12);
            Double.isNaN(d16);
            double d17 = d16 - (d12 * dCos);
            double d18 = f14 / 2.0f;
            Double.isNaN(d18);
            double d19 = f26;
            double d20 = f15;
            double dSin2 = Math.sin(d13);
            Double.isNaN(d20);
            Double.isNaN(d19);
            double d21 = d19 + (dSin2 * d20);
            double dCos2 = Math.cos(d13);
            double d22 = f17;
            Double.isNaN(d22);
            float f29 = (float) (d21 + (dCos2 * d22));
            double d23 = f27;
            double dCos3 = Math.cos(d13);
            Double.isNaN(d20);
            Double.isNaN(d23);
            double dSin3 = Math.sin(d13);
            Double.isNaN(d22);
            f23 = (float) ((d23 - (d20 * dCos3)) + (dSin3 * d22));
            f22 = f29;
            f11 = f28;
            f12 = (float) (d17 - d18);
            f21 = 2.0f;
        } else {
            f10 = f13;
        }
        fArr[0] = f11 + (f10 / f21) + 0.0f;
        fArr[1] = f12 + (f14 / f21) + 0.0f;
        fArr2[0] = f22;
        fArr2[1] = f23;
    }

    /* JADX WARN: Multi-variable type inference failed */
    void f(float f10, View view, int[] iArr, double[] dArr, double[] dArr2, double[] dArr3, boolean z10) {
        float f11;
        boolean z11;
        float f12;
        float f13 = this.f1447s;
        float f14 = this.f1448t;
        float f15 = this.f1449u;
        float f16 = this.f1450v;
        if (iArr.length != 0 && this.E.length <= iArr[iArr.length - 1]) {
            int i10 = iArr[iArr.length - 1] + 1;
            this.E = new double[i10];
            this.F = new double[i10];
        }
        Arrays.fill(this.E, Double.NaN);
        for (int i11 = 0; i11 < iArr.length; i11++) {
            this.E[iArr[i11]] = dArr[i11];
            this.F[iArr[i11]] = dArr2[i11];
        }
        float f17 = Float.NaN;
        int i12 = 0;
        float f18 = 0.0f;
        float f19 = 0.0f;
        float f20 = 0.0f;
        float f21 = 0.0f;
        while (true) {
            double[] dArr4 = this.E;
            if (i12 >= dArr4.length) {
                break;
            }
            if (Double.isNaN(dArr4[i12]) && (dArr3 == null || dArr3[i12] == 0.0d)) {
                f12 = f17;
            } else {
                double d10 = dArr3 != null ? dArr3[i12] : 0.0d;
                if (!Double.isNaN(this.E[i12])) {
                    d10 = this.E[i12] + d10;
                }
                f12 = f17;
                float f22 = (float) d10;
                float f23 = (float) this.F[i12];
                if (i12 == 1) {
                    f17 = f12;
                    f18 = f23;
                    f13 = f22;
                } else if (i12 == 2) {
                    f17 = f12;
                    f19 = f23;
                    f14 = f22;
                } else if (i12 == 3) {
                    f17 = f12;
                    f20 = f23;
                    f15 = f22;
                } else if (i12 == 4) {
                    f17 = f12;
                    f21 = f23;
                    f16 = f22;
                } else if (i12 == 5) {
                    f17 = f22;
                }
                i12++;
            }
            f17 = f12;
            i12++;
        }
        float f24 = f17;
        g gVar = this.B;
        if (gVar != null) {
            float[] fArr = new float[2];
            float[] fArr2 = new float[2];
            gVar.b(f10, fArr, fArr2);
            float f25 = fArr[0];
            float f26 = fArr[1];
            float f27 = fArr2[0];
            float f28 = fArr2[1];
            double d11 = f25;
            double d12 = f13;
            double d13 = f14;
            double dSin = Math.sin(d13);
            Double.isNaN(d12);
            Double.isNaN(d11);
            double d14 = f15 / 2.0f;
            Double.isNaN(d14);
            float f29 = (float) ((d11 + (dSin * d12)) - d14);
            double d15 = f26;
            double dCos = Math.cos(d13);
            Double.isNaN(d12);
            Double.isNaN(d15);
            double d16 = d15 - (dCos * d12);
            f11 = f16;
            double d17 = f16 / 2.0f;
            Double.isNaN(d17);
            float f30 = (float) (d16 - d17);
            double d18 = f27;
            double d19 = f18;
            double dSin2 = Math.sin(d13);
            Double.isNaN(d19);
            Double.isNaN(d18);
            double d20 = d18 + (dSin2 * d19);
            double dCos2 = Math.cos(d13);
            Double.isNaN(d12);
            double d21 = f19;
            Double.isNaN(d21);
            float f31 = (float) (d20 + (dCos2 * d12 * d21));
            double d22 = f28;
            double dCos3 = Math.cos(d13);
            Double.isNaN(d19);
            Double.isNaN(d22);
            double dSin3 = Math.sin(d13);
            Double.isNaN(d12);
            Double.isNaN(d21);
            float f32 = (float) ((d22 - (d19 * dCos3)) + (d12 * dSin3 * d21));
            if (dArr2.length >= 2) {
                z11 = false;
                dArr2[0] = f31;
                dArr2[1] = f32;
            } else {
                z11 = false;
            }
            if (!Float.isNaN(f24)) {
                double d23 = f24;
                double degrees = Math.toDegrees(Math.atan2(f32, f31));
                Double.isNaN(d23);
                view.setRotation((float) (d23 + degrees));
            }
            f13 = f29;
            f14 = f30;
        } else {
            f11 = f16;
            z11 = false;
            if (!Float.isNaN(f24)) {
                double d24 = 0.0f;
                double d25 = f24;
                double degrees2 = Math.toDegrees(Math.atan2(f19 + (f21 / 2.0f), f18 + (f20 / 2.0f)));
                Double.isNaN(d25);
                Double.isNaN(d24);
                view.setRotation((float) (d24 + d25 + degrees2));
            }
        }
        if (view instanceof c) {
            ((c) view).a(f13, f14, f15 + f13, f14 + f11);
            return;
        }
        float f33 = f13 + 0.5f;
        int i13 = (int) f33;
        float f34 = f14 + 0.5f;
        int i14 = (int) f34;
        int i15 = (int) (f33 + f15);
        int i16 = (int) (f34 + f11);
        int i17 = i15 - i13;
        int i18 = i16 - i14;
        if (i17 != view.getMeasuredWidth() || i18 != view.getMeasuredHeight()) {
            z11 = true;
        }
        if (z11 || z10) {
            view.measure(View.MeasureSpec.makeMeasureSpec(i17, 1073741824), View.MeasureSpec.makeMeasureSpec(i18, 1073741824));
        }
        view.layout(i13, i14, i15, i16);
    }
}
