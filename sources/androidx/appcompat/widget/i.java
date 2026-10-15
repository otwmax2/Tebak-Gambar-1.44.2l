package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.AttributeSet;
import android.widget.CompoundButton;

/* JADX INFO: compiled from: AppCompatCompoundButtonHelper.java */
/* JADX INFO: loaded from: classes.dex */
class i {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final CompoundButton f1059a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private ColorStateList f1060b = null;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private PorterDuff.Mode f1061c = null;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f1062d = false;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f1063e = false;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f1064f;

    i(CompoundButton compoundButton) {
        this.f1059a = compoundButton;
    }

    void a() {
        Drawable drawableA = androidx.core.widget.d.a(this.f1059a);
        if (drawableA != null) {
            if (this.f1062d || this.f1063e) {
                Drawable drawableMutate = androidx.core.graphics.drawable.a.r(drawableA).mutate();
                if (this.f1062d) {
                    androidx.core.graphics.drawable.a.o(drawableMutate, this.f1060b);
                }
                if (this.f1063e) {
                    androidx.core.graphics.drawable.a.p(drawableMutate, this.f1061c);
                }
                if (drawableMutate.isStateful()) {
                    drawableMutate.setState(this.f1059a.getDrawableState());
                }
                this.f1059a.setButtonDrawable(drawableMutate);
            }
        }
    }

    int b(int i10) {
        Drawable drawableA;
        return (Build.VERSION.SDK_INT >= 17 || (drawableA = androidx.core.widget.d.a(this.f1059a)) == null) ? i10 : i10 + drawableA.getIntrinsicWidth();
    }

    ColorStateList c() {
        return this.f1060b;
    }

    PorterDuff.Mode d() {
        return this.f1061c;
    }

    void e(AttributeSet attributeSet, int i10) {
        boolean z10;
        int iN;
        int iN2;
        Context context = this.f1059a.getContext();
        int[] iArr = f.j.U0;
        w0 w0VarV = w0.v(context, attributeSet, iArr, i10, 0);
        CompoundButton compoundButton = this.f1059a;
        androidx.core.view.a0.o0(compoundButton, compoundButton.getContext(), iArr, attributeSet, w0VarV.r(), i10, 0);
        try {
            int i11 = f.j.W0;
            if (!w0VarV.s(i11) || (iN2 = w0VarV.n(i11, 0)) == 0) {
                z10 = false;
            } else {
                try {
                    CompoundButton compoundButton2 = this.f1059a;
                    compoundButton2.setButtonDrawable(g.a.b(compoundButton2.getContext(), iN2));
                    z10 = true;
                } catch (Resources.NotFoundException unused) {
                    z10 = false;
                }
            }
            if (!z10) {
                int i12 = f.j.V0;
                if (w0VarV.s(i12) && (iN = w0VarV.n(i12, 0)) != 0) {
                    CompoundButton compoundButton3 = this.f1059a;
                    compoundButton3.setButtonDrawable(g.a.b(compoundButton3.getContext(), iN));
                }
            }
            int i13 = f.j.X0;
            if (w0VarV.s(i13)) {
                androidx.core.widget.d.c(this.f1059a, w0VarV.c(i13));
            }
            int i14 = f.j.Y0;
            if (w0VarV.s(i14)) {
                androidx.core.widget.d.d(this.f1059a, f0.d(w0VarV.k(i14, -1), null));
            }
        } finally {
            w0VarV.w();
        }
    }

    void f() {
        if (this.f1064f) {
            this.f1064f = false;
        } else {
            this.f1064f = true;
            a();
        }
    }

    void g(ColorStateList colorStateList) {
        this.f1060b = colorStateList;
        this.f1062d = true;
        a();
    }

    void h(PorterDuff.Mode mode) {
        this.f1061c = mode;
        this.f1063e = true;
        a();
    }
}
