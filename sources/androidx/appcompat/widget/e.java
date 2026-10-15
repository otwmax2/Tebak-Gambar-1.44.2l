package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.AttributeSet;
import android.view.View;

/* JADX INFO: compiled from: AppCompatBackgroundHelper.java */
/* JADX INFO: loaded from: classes.dex */
class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final View f1014a;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private u0 f1017d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private u0 f1018e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private u0 f1019f;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f1016c = -1;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final j f1015b = j.b();

    e(View view) {
        this.f1014a = view;
    }

    private boolean a(Drawable drawable) {
        if (this.f1019f == null) {
            this.f1019f = new u0();
        }
        u0 u0Var = this.f1019f;
        u0Var.a();
        ColorStateList colorStateListU = androidx.core.view.a0.u(this.f1014a);
        if (colorStateListU != null) {
            u0Var.f1197d = true;
            u0Var.f1194a = colorStateListU;
        }
        PorterDuff.Mode modeV = androidx.core.view.a0.v(this.f1014a);
        if (modeV != null) {
            u0Var.f1196c = true;
            u0Var.f1195b = modeV;
        }
        if (!u0Var.f1197d && !u0Var.f1196c) {
            return false;
        }
        j.i(drawable, u0Var, this.f1014a.getDrawableState());
        return true;
    }

    private boolean k() {
        int i10 = Build.VERSION.SDK_INT;
        return i10 > 21 ? this.f1017d != null : i10 == 21;
    }

    void b() {
        Drawable background = this.f1014a.getBackground();
        if (background != null) {
            if (k() && a(background)) {
                return;
            }
            u0 u0Var = this.f1018e;
            if (u0Var != null) {
                j.i(background, u0Var, this.f1014a.getDrawableState());
                return;
            }
            u0 u0Var2 = this.f1017d;
            if (u0Var2 != null) {
                j.i(background, u0Var2, this.f1014a.getDrawableState());
            }
        }
    }

    ColorStateList c() {
        u0 u0Var = this.f1018e;
        if (u0Var != null) {
            return u0Var.f1194a;
        }
        return null;
    }

    PorterDuff.Mode d() {
        u0 u0Var = this.f1018e;
        if (u0Var != null) {
            return u0Var.f1195b;
        }
        return null;
    }

    void e(AttributeSet attributeSet, int i10) {
        Context context = this.f1014a.getContext();
        int[] iArr = f.j.f29239y3;
        w0 w0VarV = w0.v(context, attributeSet, iArr, i10, 0);
        View view = this.f1014a;
        androidx.core.view.a0.o0(view, view.getContext(), iArr, attributeSet, w0VarV.r(), i10, 0);
        try {
            int i11 = f.j.f29244z3;
            if (w0VarV.s(i11)) {
                this.f1016c = w0VarV.n(i11, -1);
                ColorStateList colorStateListF = this.f1015b.f(this.f1014a.getContext(), this.f1016c);
                if (colorStateListF != null) {
                    h(colorStateListF);
                }
            }
            int i12 = f.j.A3;
            if (w0VarV.s(i12)) {
                androidx.core.view.a0.v0(this.f1014a, w0VarV.c(i12));
            }
            int i13 = f.j.B3;
            if (w0VarV.s(i13)) {
                androidx.core.view.a0.w0(this.f1014a, f0.d(w0VarV.k(i13, -1), null));
            }
        } finally {
            w0VarV.w();
        }
    }

    void f(Drawable drawable) {
        this.f1016c = -1;
        h(null);
        b();
    }

    void g(int i10) {
        this.f1016c = i10;
        j jVar = this.f1015b;
        h(jVar != null ? jVar.f(this.f1014a.getContext(), i10) : null);
        b();
    }

    void h(ColorStateList colorStateList) {
        if (colorStateList != null) {
            if (this.f1017d == null) {
                this.f1017d = new u0();
            }
            u0 u0Var = this.f1017d;
            u0Var.f1194a = colorStateList;
            u0Var.f1197d = true;
        } else {
            this.f1017d = null;
        }
        b();
    }

    void i(ColorStateList colorStateList) {
        if (this.f1018e == null) {
            this.f1018e = new u0();
        }
        u0 u0Var = this.f1018e;
        u0Var.f1194a = colorStateList;
        u0Var.f1197d = true;
        b();
    }

    void j(PorterDuff.Mode mode) {
        if (this.f1018e == null) {
            this.f1018e = new u0();
        }
        u0 u0Var = this.f1018e;
        u0Var.f1195b = mode;
        u0Var.f1196c = true;
        b();
    }
}
