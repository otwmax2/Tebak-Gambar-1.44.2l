package g1;

import android.annotation.SuppressLint;
import android.view.View;

/* JADX INFO: compiled from: ViewUtilsApi19.java */
/* JADX INFO: loaded from: classes.dex */
class d0 extends i0 {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static boolean f29684e = true;

    d0() {
    }

    @Override // g1.i0
    public void a(View view) {
    }

    @Override // g1.i0
    @SuppressLint({"NewApi"})
    public float c(View view) {
        if (f29684e) {
            try {
                return view.getTransitionAlpha();
            } catch (NoSuchMethodError unused) {
                f29684e = false;
            }
        }
        return view.getAlpha();
    }

    @Override // g1.i0
    public void d(View view) {
    }

    @Override // g1.i0
    @SuppressLint({"NewApi"})
    public void f(View view, float f10) {
        if (f29684e) {
            try {
                view.setTransitionAlpha(f10);
                return;
            } catch (NoSuchMethodError unused) {
                f29684e = false;
            }
        }
        view.setAlpha(f10);
    }
}
