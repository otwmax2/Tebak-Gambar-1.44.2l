package g1;

import android.annotation.SuppressLint;
import android.graphics.Matrix;
import android.view.View;

/* JADX INFO: compiled from: ViewUtilsApi21.java */
/* JADX INFO: loaded from: classes.dex */
class e0 extends d0 {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static boolean f29699f = true;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static boolean f29700g = true;

    e0() {
    }

    @Override // g1.i0
    @SuppressLint({"NewApi"})
    public void h(View view, Matrix matrix) {
        if (f29699f) {
            try {
                view.transformMatrixToGlobal(matrix);
            } catch (NoSuchMethodError unused) {
                f29699f = false;
            }
        }
    }

    @Override // g1.i0
    @SuppressLint({"NewApi"})
    public void i(View view, Matrix matrix) {
        if (f29700g) {
            try {
                view.transformMatrixToLocal(matrix);
            } catch (NoSuchMethodError unused) {
                f29700g = false;
            }
        }
    }
}
