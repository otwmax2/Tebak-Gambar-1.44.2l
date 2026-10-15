package com.google.android.material.textfield;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ValueAnimator;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.View;
import android.widget.EditText;
import com.google.android.material.textfield.TextInputLayout;

/* JADX INFO: compiled from: ClearTextEndIconDelegate.java */
/* JADX INFO: loaded from: classes2.dex */
class a extends com.google.android.material.textfield.e {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final TextWatcher f25645d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final View.OnFocusChangeListener f25646e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final TextInputLayout.f f25647f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final TextInputLayout.g f25648g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private AnimatorSet f25649h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private ValueAnimator f25650i;

    /* JADX INFO: renamed from: com.google.android.material.textfield.a$a, reason: collision with other inner class name */
    /* JADX INFO: compiled from: ClearTextEndIconDelegate.java */
    class C0120a implements TextWatcher {
        C0120a() {
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
            if (a.this.f25691a.getSuffixText() != null) {
                return;
            }
            a.this.i(a.l(editable));
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i10, int i11, int i12) {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i10, int i11, int i12) {
        }
    }

    /* JADX INFO: compiled from: ClearTextEndIconDelegate.java */
    class b implements View.OnFocusChangeListener {
        b() {
        }

        @Override // android.view.View.OnFocusChangeListener
        public void onFocusChange(View view, boolean z10) {
            a.this.i((TextUtils.isEmpty(((EditText) view).getText()) ^ true) && z10);
        }
    }

    /* JADX INFO: compiled from: ClearTextEndIconDelegate.java */
    class c implements TextInputLayout.f {
        c() {
        }

        @Override // com.google.android.material.textfield.TextInputLayout.f
        public void a(TextInputLayout textInputLayout) {
            EditText editText = textInputLayout.getEditText();
            textInputLayout.setEndIconVisible(editText.hasFocus() && a.l(editText.getText()));
            textInputLayout.setEndIconCheckable(false);
            editText.setOnFocusChangeListener(a.this.f25646e);
            editText.removeTextChangedListener(a.this.f25645d);
            editText.addTextChangedListener(a.this.f25645d);
        }
    }

    /* JADX INFO: compiled from: ClearTextEndIconDelegate.java */
    class d implements TextInputLayout.g {

        /* JADX INFO: renamed from: com.google.android.material.textfield.a$d$a, reason: collision with other inner class name */
        /* JADX INFO: compiled from: ClearTextEndIconDelegate.java */
        class RunnableC0121a implements Runnable {

            /* JADX INFO: renamed from: o, reason: collision with root package name */
            final /* synthetic */ EditText f25655o;

            RunnableC0121a(EditText editText) {
                this.f25655o = editText;
            }

            @Override // java.lang.Runnable
            public void run() {
                this.f25655o.removeTextChangedListener(a.this.f25645d);
            }
        }

        d() {
        }

        @Override // com.google.android.material.textfield.TextInputLayout.g
        public void a(TextInputLayout textInputLayout, int i10) {
            EditText editText = textInputLayout.getEditText();
            if (editText == null || i10 != 2) {
                return;
            }
            editText.post(new RunnableC0121a(editText));
            if (editText.getOnFocusChangeListener() == a.this.f25646e) {
                editText.setOnFocusChangeListener(null);
            }
        }
    }

    /* JADX INFO: compiled from: ClearTextEndIconDelegate.java */
    class e implements View.OnClickListener {
        e() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            Editable text = a.this.f25691a.getEditText().getText();
            if (text != null) {
                text.clear();
            }
            a.this.f25691a.V();
        }
    }

    /* JADX INFO: compiled from: ClearTextEndIconDelegate.java */
    class f extends AnimatorListenerAdapter {
        f() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            a.this.f25691a.setEndIconVisible(true);
        }
    }

    /* JADX INFO: compiled from: ClearTextEndIconDelegate.java */
    class g extends AnimatorListenerAdapter {
        g() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            a.this.f25691a.setEndIconVisible(false);
        }
    }

    /* JADX INFO: compiled from: ClearTextEndIconDelegate.java */
    class h implements ValueAnimator.AnimatorUpdateListener {
        h() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            a.this.f25693c.setAlpha(((Float) valueAnimator.getAnimatedValue()).floatValue());
        }
    }

    /* JADX INFO: compiled from: ClearTextEndIconDelegate.java */
    class i implements ValueAnimator.AnimatorUpdateListener {
        i() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            a.this.f25693c.setScaleX(fFloatValue);
            a.this.f25693c.setScaleY(fFloatValue);
        }
    }

    a(TextInputLayout textInputLayout) {
        super(textInputLayout);
        this.f25645d = new C0120a();
        this.f25646e = new b();
        this.f25647f = new c();
        this.f25648g = new d();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void i(boolean z10) {
        boolean z11 = this.f25691a.K() == z10;
        if (z10 && !this.f25649h.isRunning()) {
            this.f25650i.cancel();
            this.f25649h.start();
            if (z11) {
                this.f25649h.end();
                return;
            }
            return;
        }
        if (z10) {
            return;
        }
        this.f25649h.cancel();
        this.f25650i.start();
        if (z11) {
            this.f25650i.end();
        }
    }

    private ValueAnimator j(float... fArr) {
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(fArr);
        valueAnimatorOfFloat.setInterpolator(z3.a.f37199a);
        valueAnimatorOfFloat.setDuration(100L);
        valueAnimatorOfFloat.addUpdateListener(new h());
        return valueAnimatorOfFloat;
    }

    private ValueAnimator k() {
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.8f, 1.0f);
        valueAnimatorOfFloat.setInterpolator(z3.a.f37202d);
        valueAnimatorOfFloat.setDuration(150L);
        valueAnimatorOfFloat.addUpdateListener(new i());
        return valueAnimatorOfFloat;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean l(Editable editable) {
        return editable.length() > 0;
    }

    private void m() {
        ValueAnimator valueAnimatorK = k();
        ValueAnimator valueAnimatorJ = j(0.0f, 1.0f);
        AnimatorSet animatorSet = new AnimatorSet();
        this.f25649h = animatorSet;
        animatorSet.playTogether(valueAnimatorK, valueAnimatorJ);
        this.f25649h.addListener(new f());
        ValueAnimator valueAnimatorJ2 = j(1.0f, 0.0f);
        this.f25650i = valueAnimatorJ2;
        valueAnimatorJ2.addListener(new g());
    }

    @Override // com.google.android.material.textfield.e
    void a() {
        this.f25691a.setEndIconDrawable(g.a.b(this.f25692b, y3.e.f36694f));
        TextInputLayout textInputLayout = this.f25691a;
        textInputLayout.setEndIconContentDescription(textInputLayout.getResources().getText(y3.i.f36746e));
        this.f25691a.setEndIconOnClickListener(new e());
        this.f25691a.e(this.f25647f);
        this.f25691a.f(this.f25648g);
        m();
    }

    @Override // com.google.android.material.textfield.e
    void c(boolean z10) {
        if (this.f25691a.getSuffixText() == null) {
            return;
        }
        i(z10);
    }
}
