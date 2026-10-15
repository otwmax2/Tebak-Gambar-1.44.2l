package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.widget.CheckedTextView;

/* JADX INFO: compiled from: AppCompatCheckedTextViewHelper.java */
/* JADX INFO: loaded from: classes.dex */
class h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final CheckedTextView f1053a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private ColorStateList f1054b = null;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private PorterDuff.Mode f1055c = null;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f1056d = false;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f1057e = false;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f1058f;

    h(CheckedTextView checkedTextView) {
        this.f1053a = checkedTextView;
    }

    void a() {
        Drawable drawableA = androidx.core.widget.c.a(this.f1053a);
        if (drawableA != null) {
            if (this.f1056d || this.f1057e) {
                Drawable drawableMutate = androidx.core.graphics.drawable.a.r(drawableA).mutate();
                if (this.f1056d) {
                    androidx.core.graphics.drawable.a.o(drawableMutate, this.f1054b);
                }
                if (this.f1057e) {
                    androidx.core.graphics.drawable.a.p(drawableMutate, this.f1055c);
                }
                if (drawableMutate.isStateful()) {
                    drawableMutate.setState(this.f1053a.getDrawableState());
                }
                this.f1053a.setCheckMarkDrawable(drawableMutate);
            }
        }
    }

    ColorStateList b() {
        return this.f1054b;
    }

    PorterDuff.Mode c() {
        return this.f1055c;
    }

    void d(AttributeSet attributeSet, int i10) {
        boolean z10;
        int iN;
        int iN2;
        Context context = this.f1053a.getContext();
        int[] iArr = f.j.P0;
        w0 w0VarV = w0.v(context, attributeSet, iArr, i10, 0);
        CheckedTextView checkedTextView = this.f1053a;
        androidx.core.view.a0.o0(checkedTextView, checkedTextView.getContext(), iArr, attributeSet, w0VarV.r(), i10, 0);
        try {
            int i11 = f.j.R0;
            if (!w0VarV.s(i11) || (iN2 = w0VarV.n(i11, 0)) == 0) {
                z10 = false;
            } else {
                try {
                    CheckedTextView checkedTextView2 = this.f1053a;
                    checkedTextView2.setCheckMarkDrawable(g.a.b(checkedTextView2.getContext(), iN2));
                    z10 = true;
                } catch (Resources.NotFoundException unused) {
                    z10 = false;
                }
            }
            if (!z10) {
                int i12 = f.j.Q0;
                if (w0VarV.s(i12) && (iN = w0VarV.n(i12, 0)) != 0) {
                    CheckedTextView checkedTextView3 = this.f1053a;
                    checkedTextView3.setCheckMarkDrawable(g.a.b(checkedTextView3.getContext(), iN));
                }
            }
            int i13 = f.j.S0;
            if (w0VarV.s(i13)) {
                androidx.core.widget.c.b(this.f1053a, w0VarV.c(i13));
            }
            int i14 = f.j.T0;
            if (w0VarV.s(i14)) {
                androidx.core.widget.c.c(this.f1053a, f0.d(w0VarV.k(i14, -1), null));
            }
        } finally {
            w0VarV.w();
        }
    }

    void e() {
        if (this.f1058f) {
            this.f1058f = false;
        } else {
            this.f1058f = true;
            a();
        }
    }

    void f(ColorStateList colorStateList) {
        this.f1054b = colorStateList;
        this.f1056d = true;
        a();
    }

    void g(PorterDuff.Mode mode) {
        this.f1055c = mode;
        this.f1057e = true;
        a();
    }
}
