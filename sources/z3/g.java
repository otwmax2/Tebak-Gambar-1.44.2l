package z3;

import android.animation.TypeEvaluator;
import android.graphics.Matrix;

/* JADX INFO: compiled from: MatrixEvaluator.java */
/* JADX INFO: loaded from: classes2.dex */
public class g implements TypeEvaluator<Matrix> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final float[] f37209a = new float[9];

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final float[] f37210b = new float[9];

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Matrix f37211c = new Matrix();

    public Matrix a(float f10, Matrix matrix, Matrix matrix2) {
        matrix.getValues(this.f37209a);
        matrix2.getValues(this.f37210b);
        for (int i10 = 0; i10 < 9; i10++) {
            float[] fArr = this.f37210b;
            float f11 = fArr[i10];
            float[] fArr2 = this.f37209a;
            fArr[i10] = fArr2[i10] + ((f11 - fArr2[i10]) * f10);
        }
        this.f37211c.setValues(this.f37210b);
        return this.f37211c;
    }
}
