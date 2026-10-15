package g1;

import android.annotation.SuppressLint;
import android.view.View;

/* JADX INFO: compiled from: ViewUtilsApi22.java */
/* JADX INFO: loaded from: classes.dex */
class f0 extends e0 {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static boolean f29701h = true;

    f0() {
    }

    @Override // g1.i0
    @SuppressLint({"NewApi"})
    public void e(View view, int i10, int i11, int i12, int i13) {
        if (f29701h) {
            try {
                view.setLeftTopRightBottom(i10, i11, i12, i13);
            } catch (NoSuchMethodError unused) {
                f29701h = false;
            }
        }
    }
}
