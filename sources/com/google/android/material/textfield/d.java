package com.google.android.material.textfield;

import android.R;
import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.annotation.SuppressLint;
import android.content.res.ColorStateList;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.RippleDrawable;
import android.graphics.drawable.StateListDrawable;
import android.os.Build;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.MotionEvent;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityManager;
import android.widget.AutoCompleteTextView;
import android.widget.EditText;
import android.widget.Spinner;
import androidx.core.view.a0;
import com.google.android.material.textfield.TextInputLayout;
import o4.k;

/* JADX INFO: compiled from: DropdownMenuEndIconDelegate.java */
/* JADX INFO: loaded from: classes2.dex */
class d extends com.google.android.material.textfield.e {

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private static final boolean f25662q;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final TextWatcher f25663d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final View.OnFocusChangeListener f25664e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final TextInputLayout.e f25665f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final TextInputLayout.f f25666g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @SuppressLint({"ClickableViewAccessibility"})
    private final TextInputLayout.g f25667h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private boolean f25668i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private boolean f25669j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private long f25670k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private StateListDrawable f25671l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private o4.g f25672m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private AccessibilityManager f25673n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private ValueAnimator f25674o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private ValueAnimator f25675p;

    /* JADX INFO: compiled from: DropdownMenuEndIconDelegate.java */
    class a extends com.google.android.material.internal.i {

        /* JADX INFO: renamed from: com.google.android.material.textfield.d$a$a, reason: collision with other inner class name */
        /* JADX INFO: compiled from: DropdownMenuEndIconDelegate.java */
        class RunnableC0122a implements Runnable {

            /* JADX INFO: renamed from: o, reason: collision with root package name */
            final /* synthetic */ AutoCompleteTextView f25677o;

            RunnableC0122a(AutoCompleteTextView autoCompleteTextView) {
                this.f25677o = autoCompleteTextView;
            }

            @Override // java.lang.Runnable
            public void run() {
                boolean zIsPopupShowing = this.f25677o.isPopupShowing();
                d.this.E(zIsPopupShowing);
                d.this.f25668i = zIsPopupShowing;
            }
        }

        a() {
        }

        @Override // com.google.android.material.internal.i, android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
            AutoCompleteTextView autoCompleteTextViewY = d.y(d.this.f25691a.getEditText());
            if (d.this.f25673n.isTouchExplorationEnabled() && d.D(autoCompleteTextViewY) && !d.this.f25693c.hasFocus()) {
                autoCompleteTextViewY.dismissDropDown();
            }
            autoCompleteTextViewY.post(new RunnableC0122a(autoCompleteTextViewY));
        }
    }

    /* JADX INFO: compiled from: DropdownMenuEndIconDelegate.java */
    class b implements ValueAnimator.AnimatorUpdateListener {
        b() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            d.this.f25693c.setAlpha(((Float) valueAnimator.getAnimatedValue()).floatValue());
        }
    }

    /* JADX INFO: compiled from: DropdownMenuEndIconDelegate.java */
    class c implements View.OnFocusChangeListener {
        c() {
        }

        @Override // android.view.View.OnFocusChangeListener
        public void onFocusChange(View view, boolean z10) {
            d.this.f25691a.setEndIconActivated(z10);
            if (z10) {
                return;
            }
            d.this.E(false);
            d.this.f25668i = false;
        }
    }

    /* JADX INFO: renamed from: com.google.android.material.textfield.d$d, reason: collision with other inner class name */
    /* JADX INFO: compiled from: DropdownMenuEndIconDelegate.java */
    class C0123d extends TextInputLayout.e {
        C0123d(TextInputLayout textInputLayout) {
            super(textInputLayout);
        }

        @Override // com.google.android.material.textfield.TextInputLayout.e, androidx.core.view.a
        public void g(View view, androidx.core.view.accessibility.c cVar) {
            super.g(view, cVar);
            if (!d.D(d.this.f25691a.getEditText())) {
                cVar.X(Spinner.class.getName());
            }
            if (cVar.K()) {
                cVar.i0(null);
            }
        }

        @Override // androidx.core.view.a
        public void h(View view, AccessibilityEvent accessibilityEvent) {
            super.h(view, accessibilityEvent);
            AutoCompleteTextView autoCompleteTextViewY = d.y(d.this.f25691a.getEditText());
            if (accessibilityEvent.getEventType() == 1 && d.this.f25673n.isTouchExplorationEnabled() && !d.D(d.this.f25691a.getEditText())) {
                d.this.H(autoCompleteTextViewY);
            }
        }
    }

    /* JADX INFO: compiled from: DropdownMenuEndIconDelegate.java */
    class e implements TextInputLayout.f {
        e() {
        }

        @Override // com.google.android.material.textfield.TextInputLayout.f
        public void a(TextInputLayout textInputLayout) {
            AutoCompleteTextView autoCompleteTextViewY = d.y(textInputLayout.getEditText());
            d.this.F(autoCompleteTextViewY);
            d.this.v(autoCompleteTextViewY);
            d.this.G(autoCompleteTextViewY);
            autoCompleteTextViewY.setThreshold(0);
            autoCompleteTextViewY.removeTextChangedListener(d.this.f25663d);
            autoCompleteTextViewY.addTextChangedListener(d.this.f25663d);
            textInputLayout.setEndIconCheckable(true);
            textInputLayout.setErrorIconDrawable((Drawable) null);
            if (!d.D(autoCompleteTextViewY)) {
                a0.A0(d.this.f25693c, 2);
            }
            textInputLayout.setTextInputAccessibilityDelegate(d.this.f25665f);
            textInputLayout.setEndIconVisible(true);
        }
    }

    /* JADX INFO: compiled from: DropdownMenuEndIconDelegate.java */
    class f implements TextInputLayout.g {

        /* JADX INFO: compiled from: DropdownMenuEndIconDelegate.java */
        class a implements Runnable {

            /* JADX INFO: renamed from: o, reason: collision with root package name */
            final /* synthetic */ AutoCompleteTextView f25684o;

            a(AutoCompleteTextView autoCompleteTextView) {
                this.f25684o = autoCompleteTextView;
            }

            @Override // java.lang.Runnable
            public void run() {
                this.f25684o.removeTextChangedListener(d.this.f25663d);
            }
        }

        f() {
        }

        @Override // com.google.android.material.textfield.TextInputLayout.g
        public void a(TextInputLayout textInputLayout, int i10) {
            AutoCompleteTextView autoCompleteTextView = (AutoCompleteTextView) textInputLayout.getEditText();
            if (autoCompleteTextView == null || i10 != 3) {
                return;
            }
            autoCompleteTextView.post(new a(autoCompleteTextView));
            if (autoCompleteTextView.getOnFocusChangeListener() == d.this.f25664e) {
                autoCompleteTextView.setOnFocusChangeListener(null);
            }
            autoCompleteTextView.setOnTouchListener(null);
            if (d.f25662q) {
                autoCompleteTextView.setOnDismissListener(null);
            }
        }
    }

    /* JADX INFO: compiled from: DropdownMenuEndIconDelegate.java */
    class g implements View.OnClickListener {
        g() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            d.this.H((AutoCompleteTextView) d.this.f25691a.getEditText());
        }
    }

    /* JADX INFO: compiled from: DropdownMenuEndIconDelegate.java */
    class h implements View.OnTouchListener {

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        final /* synthetic */ AutoCompleteTextView f25687o;

        h(AutoCompleteTextView autoCompleteTextView) {
            this.f25687o = autoCompleteTextView;
        }

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            if (motionEvent.getAction() == 1) {
                if (d.this.C()) {
                    d.this.f25668i = false;
                }
                d.this.H(this.f25687o);
            }
            return false;
        }
    }

    /* JADX INFO: compiled from: DropdownMenuEndIconDelegate.java */
    class i implements AutoCompleteTextView.OnDismissListener {
        i() {
        }

        @Override // android.widget.AutoCompleteTextView.OnDismissListener
        public void onDismiss() {
            d.this.f25668i = true;
            d.this.f25670k = System.currentTimeMillis();
            d.this.E(false);
        }
    }

    /* JADX INFO: compiled from: DropdownMenuEndIconDelegate.java */
    class j extends AnimatorListenerAdapter {
        j() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            d dVar = d.this;
            dVar.f25693c.setChecked(dVar.f25669j);
            d.this.f25675p.start();
        }
    }

    static {
        f25662q = Build.VERSION.SDK_INT >= 21;
    }

    d(TextInputLayout textInputLayout) {
        super(textInputLayout);
        this.f25663d = new a();
        this.f25664e = new c();
        this.f25665f = new C0123d(this.f25691a);
        this.f25666g = new e();
        this.f25667h = new f();
        this.f25668i = false;
        this.f25669j = false;
        this.f25670k = Long.MAX_VALUE;
    }

    private o4.g A(float f10, float f11, float f12, int i10) {
        k kVarM = k.a().A(f10).E(f10).s(f11).w(f11).m();
        o4.g gVarM = o4.g.m(this.f25692b, f12);
        gVarM.setShapeAppearanceModel(kVarM);
        gVarM.Y(0, i10, 0, i10);
        return gVarM;
    }

    private void B() {
        this.f25675p = z(67, 0.0f, 1.0f);
        ValueAnimator valueAnimatorZ = z(50, 1.0f, 0.0f);
        this.f25674o = valueAnimatorZ;
        valueAnimatorZ.addListener(new j());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean C() {
        long jCurrentTimeMillis = System.currentTimeMillis() - this.f25670k;
        return jCurrentTimeMillis < 0 || jCurrentTimeMillis > 300;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean D(EditText editText) {
        return editText.getKeyListener() != null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void E(boolean z10) {
        if (this.f25669j != z10) {
            this.f25669j = z10;
            this.f25675p.cancel();
            this.f25674o.start();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void F(AutoCompleteTextView autoCompleteTextView) {
        if (f25662q) {
            int boxBackgroundMode = this.f25691a.getBoxBackgroundMode();
            if (boxBackgroundMode == 2) {
                autoCompleteTextView.setDropDownBackgroundDrawable(this.f25672m);
            } else if (boxBackgroundMode == 1) {
                autoCompleteTextView.setDropDownBackgroundDrawable(this.f25671l);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @SuppressLint({"ClickableViewAccessibility"})
    public void G(AutoCompleteTextView autoCompleteTextView) {
        autoCompleteTextView.setOnTouchListener(new h(autoCompleteTextView));
        autoCompleteTextView.setOnFocusChangeListener(this.f25664e);
        if (f25662q) {
            autoCompleteTextView.setOnDismissListener(new i());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void H(AutoCompleteTextView autoCompleteTextView) {
        if (autoCompleteTextView == null) {
            return;
        }
        if (C()) {
            this.f25668i = false;
        }
        if (this.f25668i) {
            this.f25668i = false;
            return;
        }
        if (f25662q) {
            E(!this.f25669j);
        } else {
            this.f25669j = !this.f25669j;
            this.f25693c.toggle();
        }
        if (!this.f25669j) {
            autoCompleteTextView.dismissDropDown();
        } else {
            autoCompleteTextView.requestFocus();
            autoCompleteTextView.showDropDown();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void v(AutoCompleteTextView autoCompleteTextView) {
        if (D(autoCompleteTextView)) {
            return;
        }
        int boxBackgroundMode = this.f25691a.getBoxBackgroundMode();
        o4.g boxBackground = this.f25691a.getBoxBackground();
        int iC = e4.a.c(autoCompleteTextView, y3.b.f36638h);
        int[][] iArr = {new int[]{R.attr.state_pressed}, new int[0]};
        if (boxBackgroundMode == 2) {
            x(autoCompleteTextView, iC, iArr, boxBackground);
        } else if (boxBackgroundMode == 1) {
            w(autoCompleteTextView, iC, iArr, boxBackground);
        }
    }

    private void w(AutoCompleteTextView autoCompleteTextView, int i10, int[][] iArr, o4.g gVar) {
        int boxBackgroundColor = this.f25691a.getBoxBackgroundColor();
        int[] iArr2 = {e4.a.f(i10, boxBackgroundColor, 0.1f), boxBackgroundColor};
        if (f25662q) {
            a0.u0(autoCompleteTextView, new RippleDrawable(new ColorStateList(iArr, iArr2), gVar, gVar));
            return;
        }
        o4.g gVar2 = new o4.g(gVar.C());
        gVar2.W(new ColorStateList(iArr, iArr2));
        LayerDrawable layerDrawable = new LayerDrawable(new Drawable[]{gVar, gVar2});
        int iJ = a0.J(autoCompleteTextView);
        int paddingTop = autoCompleteTextView.getPaddingTop();
        int I = a0.I(autoCompleteTextView);
        int paddingBottom = autoCompleteTextView.getPaddingBottom();
        a0.u0(autoCompleteTextView, layerDrawable);
        a0.D0(autoCompleteTextView, iJ, paddingTop, I, paddingBottom);
    }

    private void x(AutoCompleteTextView autoCompleteTextView, int i10, int[][] iArr, o4.g gVar) {
        LayerDrawable layerDrawable;
        int iC = e4.a.c(autoCompleteTextView, y3.b.f36642l);
        o4.g gVar2 = new o4.g(gVar.C());
        int iF = e4.a.f(i10, iC, 0.1f);
        gVar2.W(new ColorStateList(iArr, new int[]{iF, 0}));
        if (f25662q) {
            gVar2.setTint(iC);
            ColorStateList colorStateList = new ColorStateList(iArr, new int[]{iF, iC});
            o4.g gVar3 = new o4.g(gVar.C());
            gVar3.setTint(-1);
            layerDrawable = new LayerDrawable(new Drawable[]{new RippleDrawable(colorStateList, gVar2, gVar3), gVar});
        } else {
            layerDrawable = new LayerDrawable(new Drawable[]{gVar2, gVar});
        }
        a0.u0(autoCompleteTextView, layerDrawable);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static AutoCompleteTextView y(EditText editText) {
        if (editText instanceof AutoCompleteTextView) {
            return (AutoCompleteTextView) editText;
        }
        throw new RuntimeException("EditText needs to be an AutoCompleteTextView if an Exposed Dropdown Menu is being used.");
    }

    private ValueAnimator z(int i10, float... fArr) {
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(fArr);
        valueAnimatorOfFloat.setInterpolator(z3.a.f37199a);
        valueAnimatorOfFloat.setDuration(i10);
        valueAnimatorOfFloat.addUpdateListener(new b());
        return valueAnimatorOfFloat;
    }

    @Override // com.google.android.material.textfield.e
    void a() {
        float dimensionPixelOffset = this.f25692b.getResources().getDimensionPixelOffset(y3.d.L);
        float dimensionPixelOffset2 = this.f25692b.getResources().getDimensionPixelOffset(y3.d.I);
        int dimensionPixelOffset3 = this.f25692b.getResources().getDimensionPixelOffset(y3.d.J);
        o4.g gVarA = A(dimensionPixelOffset, dimensionPixelOffset, dimensionPixelOffset2, dimensionPixelOffset3);
        o4.g gVarA2 = A(0.0f, dimensionPixelOffset, dimensionPixelOffset2, dimensionPixelOffset3);
        this.f25672m = gVarA;
        StateListDrawable stateListDrawable = new StateListDrawable();
        this.f25671l = stateListDrawable;
        stateListDrawable.addState(new int[]{R.attr.state_above_anchor}, gVarA);
        this.f25671l.addState(new int[0], gVarA2);
        this.f25691a.setEndIconDrawable(g.a.b(this.f25692b, f25662q ? y3.e.f36692d : y3.e.f36693e));
        TextInputLayout textInputLayout = this.f25691a;
        textInputLayout.setEndIconContentDescription(textInputLayout.getResources().getText(y3.i.f36748g));
        this.f25691a.setEndIconOnClickListener(new g());
        this.f25691a.e(this.f25666g);
        this.f25691a.f(this.f25667h);
        B();
        this.f25673n = (AccessibilityManager) this.f25692b.getSystemService("accessibility");
    }

    @Override // com.google.android.material.textfield.e
    boolean b(int i10) {
        return i10 != 0;
    }

    @Override // com.google.android.material.textfield.e
    boolean d() {
        return true;
    }
}
