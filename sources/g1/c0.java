package g1;

import android.graphics.Matrix;
import android.graphics.Rect;
import android.os.Build;
import android.util.Property;
import android.view.View;

/* JADX INFO: compiled from: ViewUtils.java */
/* JADX INFO: loaded from: classes.dex */
class c0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final i0 f29677a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    static final Property<View, Float> f29678b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    static final Property<View, Rect> f29679c;

    /* JADX INFO: compiled from: ViewUtils.java */
    static class a extends Property<View, Float> {
        a(Class cls, String str) {
            super(cls, str);
        }

        @Override // android.util.Property
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Float get(View view) {
            return Float.valueOf(c0.c(view));
        }

        @Override // android.util.Property
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void set(View view, Float f10) {
            c0.g(view, f10.floatValue());
        }
    }

    /* JADX INFO: compiled from: ViewUtils.java */
    static class b extends Property<View, Rect> {
        b(Class cls, String str) {
            super(cls, str);
        }

        @Override // android.util.Property
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Rect get(View view) {
            return androidx.core.view.a0.w(view);
        }

        @Override // android.util.Property
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void set(View view, Rect rect) {
            androidx.core.view.a0.x0(view, rect);
        }
    }

    static {
        int i10 = Build.VERSION.SDK_INT;
        if (i10 >= 29) {
            f29677a = new h0();
        } else if (i10 >= 23) {
            f29677a = new g0();
        } else if (i10 >= 22) {
            f29677a = new f0();
        } else if (i10 >= 21) {
            f29677a = new e0();
        } else if (i10 >= 19) {
            f29677a = new d0();
        } else {
            f29677a = new i0();
        }
        f29678b = new a(Float.class, "translationAlpha");
        f29679c = new b(Rect.class, "clipBounds");
    }

    static void a(View view) {
        f29677a.a(view);
    }

    static b0 b(View view) {
        return Build.VERSION.SDK_INT >= 18 ? new a0(view) : z.e(view);
    }

    static float c(View view) {
        return f29677a.c(view);
    }

    static m0 d(View view) {
        return Build.VERSION.SDK_INT >= 18 ? new l0(view) : new k0(view.getWindowToken());
    }

    static void e(View view) {
        f29677a.d(view);
    }

    static void f(View view, int i10, int i11, int i12, int i13) {
        f29677a.e(view, i10, i11, i12, i13);
    }

    static void g(View view, float f10) {
        f29677a.f(view, f10);
    }

    static void h(View view, int i10) {
        f29677a.g(view, i10);
    }

    static void i(View view, Matrix matrix) {
        f29677a.h(view, matrix);
    }

    static void j(View view, Matrix matrix) {
        f29677a.i(view, matrix);
    }
}
