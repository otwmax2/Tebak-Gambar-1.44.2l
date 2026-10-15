package g1;

import android.graphics.Matrix;
import android.view.View;

/* JADX INFO: compiled from: ViewUtilsApi29.java */
/* JADX INFO: loaded from: classes.dex */
class h0 extends g0 {
    h0() {
    }

    @Override // g1.d0, g1.i0
    public float c(View view) {
        return view.getTransitionAlpha();
    }

    @Override // g1.f0, g1.i0
    public void e(View view, int i10, int i11, int i12, int i13) {
        view.setLeftTopRightBottom(i10, i11, i12, i13);
    }

    @Override // g1.d0, g1.i0
    public void f(View view, float f10) {
        view.setTransitionAlpha(f10);
    }

    @Override // g1.g0, g1.i0
    public void g(View view, int i10) {
        view.setTransitionVisibility(i10);
    }

    @Override // g1.e0, g1.i0
    public void h(View view, Matrix matrix) {
        view.transformMatrixToGlobal(matrix);
    }

    @Override // g1.e0, g1.i0
    public void i(View view, Matrix matrix) {
        view.transformMatrixToLocal(matrix);
    }
}
