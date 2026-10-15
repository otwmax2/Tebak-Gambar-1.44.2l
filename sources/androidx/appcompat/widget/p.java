package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.RippleDrawable;
import android.os.Build;
import android.util.AttributeSet;
import android.widget.ImageView;

/* JADX INFO: compiled from: AppCompatImageHelper.java */
/* JADX INFO: loaded from: classes.dex */
public class p {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ImageView f1135a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private u0 f1136b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private u0 f1137c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private u0 f1138d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f1139e = 0;

    public p(ImageView imageView) {
        this.f1135a = imageView;
    }

    private boolean a(Drawable drawable) {
        if (this.f1138d == null) {
            this.f1138d = new u0();
        }
        u0 u0Var = this.f1138d;
        u0Var.a();
        ColorStateList colorStateListA = androidx.core.widget.f.a(this.f1135a);
        if (colorStateListA != null) {
            u0Var.f1197d = true;
            u0Var.f1194a = colorStateListA;
        }
        PorterDuff.Mode modeB = androidx.core.widget.f.b(this.f1135a);
        if (modeB != null) {
            u0Var.f1196c = true;
            u0Var.f1195b = modeB;
        }
        if (!u0Var.f1197d && !u0Var.f1196c) {
            return false;
        }
        j.i(drawable, u0Var, this.f1135a.getDrawableState());
        return true;
    }

    private boolean l() {
        int i10 = Build.VERSION.SDK_INT;
        return i10 > 21 ? this.f1136b != null : i10 == 21;
    }

    void b() {
        if (this.f1135a.getDrawable() != null) {
            this.f1135a.getDrawable().setLevel(this.f1139e);
        }
    }

    void c() {
        Drawable drawable = this.f1135a.getDrawable();
        if (drawable != null) {
            f0.b(drawable);
        }
        if (drawable != null) {
            if (l() && a(drawable)) {
                return;
            }
            u0 u0Var = this.f1137c;
            if (u0Var != null) {
                j.i(drawable, u0Var, this.f1135a.getDrawableState());
                return;
            }
            u0 u0Var2 = this.f1136b;
            if (u0Var2 != null) {
                j.i(drawable, u0Var2, this.f1135a.getDrawableState());
            }
        }
    }

    ColorStateList d() {
        u0 u0Var = this.f1137c;
        if (u0Var != null) {
            return u0Var.f1194a;
        }
        return null;
    }

    PorterDuff.Mode e() {
        u0 u0Var = this.f1137c;
        if (u0Var != null) {
            return u0Var.f1195b;
        }
        return null;
    }

    boolean f() {
        return Build.VERSION.SDK_INT < 21 || !(this.f1135a.getBackground() instanceof RippleDrawable);
    }

    public void g(AttributeSet attributeSet, int i10) {
        int iN;
        Context context = this.f1135a.getContext();
        int[] iArr = f.j.P;
        w0 w0VarV = w0.v(context, attributeSet, iArr, i10, 0);
        ImageView imageView = this.f1135a;
        androidx.core.view.a0.o0(imageView, imageView.getContext(), iArr, attributeSet, w0VarV.r(), i10, 0);
        try {
            Drawable drawable = this.f1135a.getDrawable();
            if (drawable == null && (iN = w0VarV.n(f.j.Q, -1)) != -1 && (drawable = g.a.b(this.f1135a.getContext(), iN)) != null) {
                this.f1135a.setImageDrawable(drawable);
            }
            if (drawable != null) {
                f0.b(drawable);
            }
            int i11 = f.j.R;
            if (w0VarV.s(i11)) {
                androidx.core.widget.f.c(this.f1135a, w0VarV.c(i11));
            }
            int i12 = f.j.S;
            if (w0VarV.s(i12)) {
                androidx.core.widget.f.d(this.f1135a, f0.d(w0VarV.k(i12, -1), null));
            }
        } finally {
            w0VarV.w();
        }
    }

    void h(Drawable drawable) {
        this.f1139e = drawable.getLevel();
    }

    public void i(int i10) {
        if (i10 != 0) {
            Drawable drawableB = g.a.b(this.f1135a.getContext(), i10);
            if (drawableB != null) {
                f0.b(drawableB);
            }
            this.f1135a.setImageDrawable(drawableB);
        } else {
            this.f1135a.setImageDrawable(null);
        }
        c();
    }

    void j(ColorStateList colorStateList) {
        if (this.f1137c == null) {
            this.f1137c = new u0();
        }
        u0 u0Var = this.f1137c;
        u0Var.f1194a = colorStateList;
        u0Var.f1197d = true;
        c();
    }

    void k(PorterDuff.Mode mode) {
        if (this.f1137c == null) {
            this.f1137c = new u0();
        }
        u0 u0Var = this.f1137c;
        u0Var.f1195b = mode;
        u0Var.f1196c = true;
        c();
    }
}
