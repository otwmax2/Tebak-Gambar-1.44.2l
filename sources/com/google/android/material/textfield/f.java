package com.google.android.material.textfield;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Typeface;
import android.os.Build;
import android.text.TextUtils;
import android.util.Property;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.core.view.a0;
import androidx.core.widget.j;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: compiled from: IndicatorViewController.java */
/* JADX INFO: loaded from: classes2.dex */
final class f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Context f25694a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final TextInputLayout f25695b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private LinearLayout f25696c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f25697d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private FrameLayout f25698e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private Animator f25699f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final float f25700g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f25701h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private int f25702i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private CharSequence f25703j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private boolean f25704k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private TextView f25705l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private CharSequence f25706m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private int f25707n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private ColorStateList f25708o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private CharSequence f25709p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private boolean f25710q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private TextView f25711r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private int f25712s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private ColorStateList f25713t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private Typeface f25714u;

    /* JADX INFO: compiled from: IndicatorViewController.java */
    class a extends AnimatorListenerAdapter {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ int f25715a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ TextView f25716b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ int f25717c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ TextView f25718d;

        a(int i10, TextView textView, int i11, TextView textView2) {
            this.f25715a = i10;
            this.f25716b = textView;
            this.f25717c = i11;
            this.f25718d = textView2;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            f.this.f25701h = this.f25715a;
            f.this.f25699f = null;
            TextView textView = this.f25716b;
            if (textView != null) {
                textView.setVisibility(4);
                if (this.f25717c == 1 && f.this.f25705l != null) {
                    f.this.f25705l.setText((CharSequence) null);
                }
            }
            TextView textView2 = this.f25718d;
            if (textView2 != null) {
                textView2.setTranslationY(0.0f);
                this.f25718d.setAlpha(1.0f);
            }
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            TextView textView = this.f25718d;
            if (textView != null) {
                textView.setVisibility(0);
            }
        }
    }

    public f(TextInputLayout textInputLayout) {
        this.f25694a = textInputLayout.getContext();
        this.f25695b = textInputLayout;
        this.f25700g = r0.getResources().getDimensionPixelSize(y3.d.f36670h);
    }

    private void A(int i10, int i11) {
        TextView textViewL;
        TextView textViewL2;
        if (i10 == i11) {
            return;
        }
        if (i11 != 0 && (textViewL2 = l(i11)) != null) {
            textViewL2.setVisibility(0);
            textViewL2.setAlpha(1.0f);
        }
        if (i10 != 0 && (textViewL = l(i10)) != null) {
            textViewL.setVisibility(4);
            if (i10 == 1) {
                textViewL.setText((CharSequence) null);
            }
        }
        this.f25701h = i11;
    }

    private void I(TextView textView, Typeface typeface) {
        if (textView != null) {
            textView.setTypeface(typeface);
        }
    }

    private void K(ViewGroup viewGroup, int i10) {
        if (i10 == 0) {
            viewGroup.setVisibility(8);
        }
    }

    private boolean L(TextView textView, CharSequence charSequence) {
        return a0.U(this.f25695b) && this.f25695b.isEnabled() && !(this.f25702i == this.f25701h && textView != null && TextUtils.equals(textView.getText(), charSequence));
    }

    private void O(int i10, int i11, boolean z10) {
        if (i10 == i11) {
            return;
        }
        if (z10) {
            AnimatorSet animatorSet = new AnimatorSet();
            this.f25699f = animatorSet;
            ArrayList arrayList = new ArrayList();
            h(arrayList, this.f25710q, this.f25711r, 2, i10, i11);
            h(arrayList, this.f25704k, this.f25705l, 1, i10, i11);
            z3.b.a(animatorSet, arrayList);
            animatorSet.addListener(new a(i11, l(i10), i10, l(i11)));
            animatorSet.start();
        } else {
            A(i10, i11);
        }
        this.f25695b.r0();
        this.f25695b.u0(z10);
        this.f25695b.E0();
    }

    private boolean f() {
        return (this.f25696c == null || this.f25695b.getEditText() == null) ? false : true;
    }

    private void h(List<Animator> list, boolean z10, TextView textView, int i10, int i11, int i12) {
        if (textView == null || !z10) {
            return;
        }
        if (i10 == i12 || i10 == i11) {
            list.add(i(textView, i12 == i10));
            if (i12 == i10) {
                list.add(j(textView));
            }
        }
    }

    private ObjectAnimator i(TextView textView, boolean z10) {
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(textView, (Property<TextView, Float>) View.ALPHA, z10 ? 1.0f : 0.0f);
        objectAnimatorOfFloat.setDuration(167L);
        objectAnimatorOfFloat.setInterpolator(z3.a.f37199a);
        return objectAnimatorOfFloat;
    }

    private ObjectAnimator j(TextView textView) {
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(textView, (Property<TextView, Float>) View.TRANSLATION_Y, -this.f25700g, 0.0f);
        objectAnimatorOfFloat.setDuration(217L);
        objectAnimatorOfFloat.setInterpolator(z3.a.f37202d);
        return objectAnimatorOfFloat;
    }

    private TextView l(int i10) {
        if (i10 == 1) {
            return this.f25705l;
        }
        if (i10 != 2) {
            return null;
        }
        return this.f25711r;
    }

    private int s(boolean z10, int i10, int i11) {
        return z10 ? this.f25694a.getResources().getDimensionPixelSize(i10) : i11;
    }

    private boolean v(int i10) {
        return (i10 != 1 || this.f25705l == null || TextUtils.isEmpty(this.f25703j)) ? false : true;
    }

    void B(CharSequence charSequence) {
        this.f25706m = charSequence;
        TextView textView = this.f25705l;
        if (textView != null) {
            textView.setContentDescription(charSequence);
        }
    }

    void C(boolean z10) {
        if (this.f25704k == z10) {
            return;
        }
        g();
        if (z10) {
            AppCompatTextView appCompatTextView = new AppCompatTextView(this.f25694a);
            this.f25705l = appCompatTextView;
            appCompatTextView.setId(y3.f.M);
            if (Build.VERSION.SDK_INT >= 17) {
                this.f25705l.setTextAlignment(5);
            }
            Typeface typeface = this.f25714u;
            if (typeface != null) {
                this.f25705l.setTypeface(typeface);
            }
            D(this.f25707n);
            E(this.f25708o);
            B(this.f25706m);
            this.f25705l.setVisibility(4);
            a0.s0(this.f25705l, 1);
            d(this.f25705l, 0);
        } else {
            t();
            z(this.f25705l, 0);
            this.f25705l = null;
            this.f25695b.r0();
            this.f25695b.E0();
        }
        this.f25704k = z10;
    }

    void D(int i10) {
        this.f25707n = i10;
        TextView textView = this.f25705l;
        if (textView != null) {
            this.f25695b.e0(textView, i10);
        }
    }

    void E(ColorStateList colorStateList) {
        this.f25708o = colorStateList;
        TextView textView = this.f25705l;
        if (textView == null || colorStateList == null) {
            return;
        }
        textView.setTextColor(colorStateList);
    }

    void F(int i10) {
        this.f25712s = i10;
        TextView textView = this.f25711r;
        if (textView != null) {
            j.n(textView, i10);
        }
    }

    void G(boolean z10) {
        if (this.f25710q == z10) {
            return;
        }
        g();
        if (z10) {
            AppCompatTextView appCompatTextView = new AppCompatTextView(this.f25694a);
            this.f25711r = appCompatTextView;
            appCompatTextView.setId(y3.f.N);
            if (Build.VERSION.SDK_INT >= 17) {
                this.f25711r.setTextAlignment(5);
            }
            Typeface typeface = this.f25714u;
            if (typeface != null) {
                this.f25711r.setTypeface(typeface);
            }
            this.f25711r.setVisibility(4);
            a0.s0(this.f25711r, 1);
            F(this.f25712s);
            H(this.f25713t);
            d(this.f25711r, 1);
        } else {
            u();
            z(this.f25711r, 1);
            this.f25711r = null;
            this.f25695b.r0();
            this.f25695b.E0();
        }
        this.f25710q = z10;
    }

    void H(ColorStateList colorStateList) {
        this.f25713t = colorStateList;
        TextView textView = this.f25711r;
        if (textView == null || colorStateList == null) {
            return;
        }
        textView.setTextColor(colorStateList);
    }

    void J(Typeface typeface) {
        if (typeface != this.f25714u) {
            this.f25714u = typeface;
            I(this.f25705l, typeface);
            I(this.f25711r, typeface);
        }
    }

    void M(CharSequence charSequence) {
        g();
        this.f25703j = charSequence;
        this.f25705l.setText(charSequence);
        int i10 = this.f25701h;
        if (i10 != 1) {
            this.f25702i = 1;
        }
        O(i10, this.f25702i, L(this.f25705l, charSequence));
    }

    void N(CharSequence charSequence) {
        g();
        this.f25709p = charSequence;
        this.f25711r.setText(charSequence);
        int i10 = this.f25701h;
        if (i10 != 2) {
            this.f25702i = 2;
        }
        O(i10, this.f25702i, L(this.f25711r, charSequence));
    }

    void d(TextView textView, int i10) {
        if (this.f25696c == null && this.f25698e == null) {
            LinearLayout linearLayout = new LinearLayout(this.f25694a);
            this.f25696c = linearLayout;
            linearLayout.setOrientation(0);
            this.f25695b.addView(this.f25696c, -1, -2);
            this.f25698e = new FrameLayout(this.f25694a);
            this.f25696c.addView(this.f25698e, new LinearLayout.LayoutParams(0, -2, 1.0f));
            if (this.f25695b.getEditText() != null) {
                e();
            }
        }
        if (w(i10)) {
            this.f25698e.setVisibility(0);
            this.f25698e.addView(textView);
        } else {
            this.f25696c.addView(textView, new LinearLayout.LayoutParams(-2, -2));
        }
        this.f25696c.setVisibility(0);
        this.f25697d++;
    }

    void e() {
        if (f()) {
            EditText editText = this.f25695b.getEditText();
            boolean zG = l4.c.g(this.f25694a);
            LinearLayout linearLayout = this.f25696c;
            int i10 = y3.d.f36681s;
            a0.D0(linearLayout, s(zG, i10, a0.J(editText)), s(zG, y3.d.f36682t, this.f25694a.getResources().getDimensionPixelSize(y3.d.f36680r)), s(zG, i10, a0.I(editText)), 0);
        }
    }

    void g() {
        Animator animator = this.f25699f;
        if (animator != null) {
            animator.cancel();
        }
    }

    boolean k() {
        return v(this.f25702i);
    }

    CharSequence m() {
        return this.f25706m;
    }

    CharSequence n() {
        return this.f25703j;
    }

    int o() {
        TextView textView = this.f25705l;
        if (textView != null) {
            return textView.getCurrentTextColor();
        }
        return -1;
    }

    ColorStateList p() {
        TextView textView = this.f25705l;
        if (textView != null) {
            return textView.getTextColors();
        }
        return null;
    }

    CharSequence q() {
        return this.f25709p;
    }

    int r() {
        TextView textView = this.f25711r;
        if (textView != null) {
            return textView.getCurrentTextColor();
        }
        return -1;
    }

    void t() {
        this.f25703j = null;
        g();
        if (this.f25701h == 1) {
            if (!this.f25710q || TextUtils.isEmpty(this.f25709p)) {
                this.f25702i = 0;
            } else {
                this.f25702i = 2;
            }
        }
        O(this.f25701h, this.f25702i, L(this.f25705l, null));
    }

    void u() {
        g();
        int i10 = this.f25701h;
        if (i10 == 2) {
            this.f25702i = 0;
        }
        O(i10, this.f25702i, L(this.f25711r, null));
    }

    boolean w(int i10) {
        return i10 == 0 || i10 == 1;
    }

    boolean x() {
        return this.f25704k;
    }

    boolean y() {
        return this.f25710q;
    }

    void z(TextView textView, int i10) {
        FrameLayout frameLayout;
        if (this.f25696c == null) {
            return;
        }
        if (!w(i10) || (frameLayout = this.f25698e) == null) {
            this.f25696c.removeView(textView);
        } else {
            frameLayout.removeView(textView);
        }
        int i11 = this.f25697d - 1;
        this.f25697d = i11;
        K(this.f25696c, i11);
    }
}
