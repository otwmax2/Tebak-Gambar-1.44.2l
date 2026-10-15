package com.google.android.material.textfield;

import android.R;
import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Canvas;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Typeface;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewStructure;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.appcompat.widget.f0;
import androidx.appcompat.widget.w0;
import androidx.core.view.a0;
import com.google.android.material.internal.CheckableImageButton;
import com.vungle.mediation.BuildConfig;
import java.util.Arrays;
import java.util.Iterator;
import java.util.LinkedHashSet;
import o4.k;
import y3.j;

/* JADX INFO: loaded from: classes2.dex */
public class TextInputLayout extends LinearLayout {
    private static final int X0 = j.f36765h;
    private int A;
    private Drawable A0;
    private CharSequence B;
    private View.OnLongClickListener B0;
    private boolean C;
    private View.OnLongClickListener C0;
    private TextView D;
    private final CheckableImageButton D0;
    private ColorStateList E;
    private ColorStateList E0;
    private int F;
    private ColorStateList F0;
    private ColorStateList G;
    private ColorStateList G0;
    private ColorStateList H;
    private int H0;
    private CharSequence I;
    private int I0;
    private final TextView J;
    private int J0;
    private CharSequence K;
    private ColorStateList K0;
    private final TextView L;
    private int L0;
    private boolean M;
    private int M0;
    private CharSequence N;
    private int N0;
    private boolean O;
    private int O0;
    private o4.g P;
    private int P0;
    private o4.g Q;
    private boolean Q0;
    private k R;
    final com.google.android.material.internal.a R0;
    private final int S;
    private boolean S0;
    private int T;
    private boolean T0;
    private int U;
    private ValueAnimator U0;
    private int V;
    private boolean V0;
    private int W;
    private boolean W0;

    /* JADX INFO: renamed from: a0, reason: collision with root package name */
    private int f25597a0;

    /* JADX INFO: renamed from: b0, reason: collision with root package name */
    private int f25598b0;

    /* JADX INFO: renamed from: c0, reason: collision with root package name */
    private int f25599c0;

    /* JADX INFO: renamed from: d0, reason: collision with root package name */
    private final Rect f25600d0;

    /* JADX INFO: renamed from: e0, reason: collision with root package name */
    private final Rect f25601e0;

    /* JADX INFO: renamed from: f0, reason: collision with root package name */
    private final RectF f25602f0;

    /* JADX INFO: renamed from: g0, reason: collision with root package name */
    private Typeface f25603g0;

    /* JADX INFO: renamed from: h0, reason: collision with root package name */
    private final CheckableImageButton f25604h0;

    /* JADX INFO: renamed from: i0, reason: collision with root package name */
    private ColorStateList f25605i0;

    /* JADX INFO: renamed from: j0, reason: collision with root package name */
    private boolean f25606j0;

    /* JADX INFO: renamed from: k0, reason: collision with root package name */
    private PorterDuff.Mode f25607k0;

    /* JADX INFO: renamed from: l0, reason: collision with root package name */
    private boolean f25608l0;

    /* JADX INFO: renamed from: m0, reason: collision with root package name */
    private Drawable f25609m0;

    /* JADX INFO: renamed from: n0, reason: collision with root package name */
    private int f25610n0;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final FrameLayout f25611o;

    /* JADX INFO: renamed from: o0, reason: collision with root package name */
    private View.OnLongClickListener f25612o0;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final LinearLayout f25613p;

    /* JADX INFO: renamed from: p0, reason: collision with root package name */
    private final LinkedHashSet<f> f25614p0;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final LinearLayout f25615q;

    /* JADX INFO: renamed from: q0, reason: collision with root package name */
    private int f25616q0;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private final FrameLayout f25617r;

    /* JADX INFO: renamed from: r0, reason: collision with root package name */
    private final SparseArray<com.google.android.material.textfield.e> f25618r0;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    EditText f25619s;

    /* JADX INFO: renamed from: s0, reason: collision with root package name */
    private final CheckableImageButton f25620s0;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private CharSequence f25621t;

    /* JADX INFO: renamed from: t0, reason: collision with root package name */
    private final LinkedHashSet<g> f25622t0;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private final com.google.android.material.textfield.f f25623u;

    /* JADX INFO: renamed from: u0, reason: collision with root package name */
    private ColorStateList f25624u0;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    boolean f25625v;

    /* JADX INFO: renamed from: v0, reason: collision with root package name */
    private boolean f25626v0;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private int f25627w;

    /* JADX INFO: renamed from: w0, reason: collision with root package name */
    private PorterDuff.Mode f25628w0;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private boolean f25629x;

    /* JADX INFO: renamed from: x0, reason: collision with root package name */
    private boolean f25630x0;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private TextView f25631y;

    /* JADX INFO: renamed from: y0, reason: collision with root package name */
    private Drawable f25632y0;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private int f25633z;

    /* JADX INFO: renamed from: z0, reason: collision with root package name */
    private int f25634z0;

    class a implements TextWatcher {
        a() {
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
            TextInputLayout.this.u0(!r0.W0);
            TextInputLayout textInputLayout = TextInputLayout.this;
            if (textInputLayout.f25625v) {
                textInputLayout.n0(editable.length());
            }
            if (TextInputLayout.this.C) {
                TextInputLayout.this.y0(editable.length());
            }
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i10, int i11, int i12) {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i10, int i11, int i12) {
        }
    }

    class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            TextInputLayout.this.f25620s0.performClick();
            TextInputLayout.this.f25620s0.jumpDrawablesToCurrentState();
        }
    }

    class c implements Runnable {
        c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            TextInputLayout.this.f25619s.requestLayout();
        }
    }

    class d implements ValueAnimator.AnimatorUpdateListener {
        d() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            TextInputLayout.this.R0.V(((Float) valueAnimator.getAnimatedValue()).floatValue());
        }
    }

    public static class e extends androidx.core.view.a {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final TextInputLayout f25639d;

        public e(TextInputLayout textInputLayout) {
            this.f25639d = textInputLayout;
        }

        @Override // androidx.core.view.a
        public void g(View view, androidx.core.view.accessibility.c cVar) {
            super.g(view, cVar);
            EditText editText = this.f25639d.getEditText();
            CharSequence text = editText != null ? editText.getText() : null;
            CharSequence hint = this.f25639d.getHint();
            CharSequence error = this.f25639d.getError();
            CharSequence placeholderText = this.f25639d.getPlaceholderText();
            int counterMaxLength = this.f25639d.getCounterMaxLength();
            CharSequence counterOverflowDescription = this.f25639d.getCounterOverflowDescription();
            boolean z10 = !TextUtils.isEmpty(text);
            boolean z11 = !TextUtils.isEmpty(hint);
            boolean z12 = !this.f25639d.N();
            boolean z13 = !TextUtils.isEmpty(error);
            boolean z14 = z13 || !TextUtils.isEmpty(counterOverflowDescription);
            String string = z11 ? hint.toString() : BuildConfig.FLAVOR;
            if (z10) {
                cVar.t0(text);
            } else if (!TextUtils.isEmpty(string)) {
                cVar.t0(string);
                if (z12 && placeholderText != null) {
                    cVar.t0(string + ", " + ((Object) placeholderText));
                }
            } else if (placeholderText != null) {
                cVar.t0(placeholderText);
            }
            if (!TextUtils.isEmpty(string)) {
                if (Build.VERSION.SDK_INT >= 26) {
                    cVar.i0(string);
                } else {
                    if (z10) {
                        string = ((Object) text) + ", " + string;
                    }
                    cVar.t0(string);
                }
                cVar.q0(!z10);
            }
            if (text == null || text.length() != counterMaxLength) {
                counterMaxLength = -1;
            }
            cVar.j0(counterMaxLength);
            if (z14) {
                if (!z13) {
                    error = counterOverflowDescription;
                }
                cVar.e0(error);
            }
            if (Build.VERSION.SDK_INT < 17 || editText == null) {
                return;
            }
            editText.setLabelFor(y3.f.N);
        }
    }

    public interface f {
        void a(TextInputLayout textInputLayout);
    }

    public interface g {
        void a(TextInputLayout textInputLayout, int i10);
    }

    static class h extends b0.a {
        public static final Parcelable.Creator<h> CREATOR = new a();

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        CharSequence f25640q;

        /* JADX INFO: renamed from: r, reason: collision with root package name */
        boolean f25641r;

        /* JADX INFO: renamed from: s, reason: collision with root package name */
        CharSequence f25642s;

        /* JADX INFO: renamed from: t, reason: collision with root package name */
        CharSequence f25643t;

        /* JADX INFO: renamed from: u, reason: collision with root package name */
        CharSequence f25644u;

        static class a implements Parcelable.ClassLoaderCreator<h> {
            a() {
            }

            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public h createFromParcel(Parcel parcel) {
                return new h(parcel, null);
            }

            @Override // android.os.Parcelable.ClassLoaderCreator
            /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
            public h createFromParcel(Parcel parcel, ClassLoader classLoader) {
                return new h(parcel, classLoader);
            }

            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
            public h[] newArray(int i10) {
                return new h[i10];
            }
        }

        h(Parcelable parcelable) {
            super(parcelable);
        }

        public String toString() {
            return "TextInputLayout.SavedState{" + Integer.toHexString(System.identityHashCode(this)) + " error=" + ((Object) this.f25640q) + " hint=" + ((Object) this.f25642s) + " helperText=" + ((Object) this.f25643t) + " placeholderText=" + ((Object) this.f25644u) + "}";
        }

        @Override // b0.a, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i10) {
            super.writeToParcel(parcel, i10);
            TextUtils.writeToParcel(this.f25640q, parcel, i10);
            parcel.writeInt(this.f25641r ? 1 : 0);
            TextUtils.writeToParcel(this.f25642s, parcel, i10);
            TextUtils.writeToParcel(this.f25643t, parcel, i10);
            TextUtils.writeToParcel(this.f25644u, parcel, i10);
        }

        h(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            this.f25640q = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
            this.f25641r = parcel.readInt() == 1;
            this.f25642s = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
            this.f25643t = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
            this.f25644u = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
        }
    }

    public TextInputLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, y3.b.D);
    }

    private boolean A() {
        return this.M && !TextUtils.isEmpty(this.N) && (this.P instanceof com.google.android.material.textfield.c);
    }

    private void A0() {
        this.J.setVisibility((this.I == null || N()) ? 8 : 0);
        q0();
    }

    private void B() {
        Iterator<f> it = this.f25614p0.iterator();
        while (it.hasNext()) {
            it.next().a(this);
        }
    }

    private void B0(boolean z10, boolean z11) {
        int defaultColor = this.K0.getDefaultColor();
        int colorForState = this.K0.getColorForState(new int[]{R.attr.state_hovered, R.attr.state_enabled}, defaultColor);
        int colorForState2 = this.K0.getColorForState(new int[]{R.attr.state_activated, R.attr.state_enabled}, defaultColor);
        if (z10) {
            this.f25598b0 = colorForState2;
        } else if (z11) {
            this.f25598b0 = colorForState;
        } else {
            this.f25598b0 = defaultColor;
        }
    }

    private void C(int i10) {
        Iterator<g> it = this.f25622t0.iterator();
        while (it.hasNext()) {
            it.next().a(this, i10);
        }
    }

    private void C0() {
        if (this.f25619s == null) {
            return;
        }
        a0.D0(this.L, getContext().getResources().getDimensionPixelSize(y3.d.f36683u), this.f25619s.getPaddingTop(), (K() || L()) ? 0 : a0.I(this.f25619s), this.f25619s.getPaddingBottom());
    }

    private void D(Canvas canvas) {
        o4.g gVar = this.Q;
        if (gVar != null) {
            Rect bounds = gVar.getBounds();
            bounds.top = bounds.bottom - this.V;
            this.Q.draw(canvas);
        }
    }

    private void D0() {
        int visibility = this.L.getVisibility();
        boolean z10 = (this.K == null || N()) ? false : true;
        this.L.setVisibility(z10 ? 0 : 8);
        if (visibility != this.L.getVisibility()) {
            getEndIconDelegate().c(z10);
        }
        q0();
    }

    private void E(Canvas canvas) {
        if (this.M) {
            this.R0.j(canvas);
        }
    }

    private void F(boolean z10) {
        ValueAnimator valueAnimator = this.U0;
        if (valueAnimator != null && valueAnimator.isRunning()) {
            this.U0.cancel();
        }
        if (z10 && this.T0) {
            i(0.0f);
        } else {
            this.R0.V(0.0f);
        }
        if (A() && ((com.google.android.material.textfield.c) this.P).i0()) {
            y();
        }
        this.Q0 = true;
        J();
        A0();
        D0();
    }

    private int G(int i10, boolean z10) {
        int compoundPaddingLeft = i10 + this.f25619s.getCompoundPaddingLeft();
        return (this.I == null || z10) ? compoundPaddingLeft : (compoundPaddingLeft - this.J.getMeasuredWidth()) + this.J.getPaddingLeft();
    }

    private int H(int i10, boolean z10) {
        int compoundPaddingRight = i10 - this.f25619s.getCompoundPaddingRight();
        return (this.I == null || !z10) ? compoundPaddingRight : compoundPaddingRight + (this.J.getMeasuredWidth() - this.J.getPaddingRight());
    }

    private boolean I() {
        return this.f25616q0 != 0;
    }

    private void J() {
        TextView textView = this.D;
        if (textView == null || !this.C) {
            return;
        }
        textView.setText((CharSequence) null);
        this.D.setVisibility(4);
    }

    private boolean L() {
        return this.D0.getVisibility() == 0;
    }

    private boolean P() {
        return this.T == 1 && (Build.VERSION.SDK_INT < 16 || this.f25619s.getMinLines() <= 1);
    }

    private int[] R(CheckableImageButton checkableImageButton) {
        int[] drawableState = getDrawableState();
        int[] drawableState2 = checkableImageButton.getDrawableState();
        int length = drawableState.length;
        int[] iArrCopyOf = Arrays.copyOf(drawableState, drawableState.length + drawableState2.length);
        System.arraycopy(drawableState2, 0, iArrCopyOf, length, drawableState2.length);
        return iArrCopyOf;
    }

    private void S() {
        p();
        a0();
        E0();
        k0();
        h();
        if (this.T != 0) {
            t0();
        }
    }

    private void T() {
        if (A()) {
            RectF rectF = this.f25602f0;
            this.R0.m(rectF, this.f25619s.getWidth(), this.f25619s.getGravity());
            l(rectF);
            rectF.offset(-getPaddingLeft(), -getPaddingTop());
            ((com.google.android.material.textfield.c) this.P).o0(rectF);
        }
    }

    private static void U(ViewGroup viewGroup, boolean z10) {
        int childCount = viewGroup.getChildCount();
        for (int i10 = 0; i10 < childCount; i10++) {
            View childAt = viewGroup.getChildAt(i10);
            childAt.setEnabled(z10);
            if (childAt instanceof ViewGroup) {
                U((ViewGroup) childAt, z10);
            }
        }
    }

    private void X(CheckableImageButton checkableImageButton, ColorStateList colorStateList) {
        Drawable drawable = checkableImageButton.getDrawable();
        if (checkableImageButton.getDrawable() == null || colorStateList == null || !colorStateList.isStateful()) {
            return;
        }
        int colorForState = colorStateList.getColorForState(R(checkableImageButton), colorStateList.getDefaultColor());
        Drawable drawableMutate = androidx.core.graphics.drawable.a.r(drawable).mutate();
        androidx.core.graphics.drawable.a.o(drawableMutate, ColorStateList.valueOf(colorForState));
        checkableImageButton.setImageDrawable(drawableMutate);
    }

    private void Z() {
        TextView textView = this.D;
        if (textView != null) {
            textView.setVisibility(8);
        }
    }

    private void a0() {
        if (h0()) {
            a0.u0(this.f25619s, this.P);
        }
    }

    private static void b0(CheckableImageButton checkableImageButton, View.OnLongClickListener onLongClickListener) {
        boolean zP = a0.P(checkableImageButton);
        boolean z10 = onLongClickListener != null;
        boolean z11 = zP || z10;
        checkableImageButton.setFocusable(z11);
        checkableImageButton.setClickable(zP);
        checkableImageButton.setPressable(zP);
        checkableImageButton.setLongClickable(z10);
        a0.A0(checkableImageButton, z11 ? 1 : 2);
    }

    private static void c0(CheckableImageButton checkableImageButton, View.OnClickListener onClickListener, View.OnLongClickListener onLongClickListener) {
        checkableImageButton.setOnClickListener(onClickListener);
        b0(checkableImageButton, onLongClickListener);
    }

    private static void d0(CheckableImageButton checkableImageButton, View.OnLongClickListener onLongClickListener) {
        checkableImageButton.setOnLongClickListener(onLongClickListener);
        b0(checkableImageButton, onLongClickListener);
    }

    private boolean f0() {
        return (this.D0.getVisibility() == 0 || ((I() && K()) || this.K != null)) && this.f25615q.getMeasuredWidth() > 0;
    }

    private void g() {
        TextView textView = this.D;
        if (textView != null) {
            this.f25611o.addView(textView);
            this.D.setVisibility(0);
        }
    }

    private boolean g0() {
        return !(getStartIconDrawable() == null && this.I == null) && this.f25613p.getMeasuredWidth() > 0;
    }

    private com.google.android.material.textfield.e getEndIconDelegate() {
        com.google.android.material.textfield.e eVar = this.f25618r0.get(this.f25616q0);
        return eVar != null ? eVar : this.f25618r0.get(0);
    }

    private CheckableImageButton getEndIconToUpdateDummyDrawable() {
        if (this.D0.getVisibility() == 0) {
            return this.D0;
        }
        if (I() && K()) {
            return this.f25620s0;
        }
        return null;
    }

    private void h() {
        if (this.f25619s == null || this.T != 1) {
            return;
        }
        if (l4.c.h(getContext())) {
            EditText editText = this.f25619s;
            a0.D0(editText, a0.J(editText), getResources().getDimensionPixelSize(y3.d.f36677o), a0.I(this.f25619s), getResources().getDimensionPixelSize(y3.d.f36676n));
        } else if (l4.c.g(getContext())) {
            EditText editText2 = this.f25619s;
            a0.D0(editText2, a0.J(editText2), getResources().getDimensionPixelSize(y3.d.f36675m), a0.I(this.f25619s), getResources().getDimensionPixelSize(y3.d.f36674l));
        }
    }

    private boolean h0() {
        EditText editText = this.f25619s;
        return (editText == null || this.P == null || editText.getBackground() != null || this.T == 0) ? false : true;
    }

    private void i0() {
        TextView textView = this.D;
        if (textView == null || !this.C) {
            return;
        }
        textView.setText(this.B);
        this.D.setVisibility(0);
        this.D.bringToFront();
    }

    private void j() {
        o4.g gVar = this.P;
        if (gVar == null) {
            return;
        }
        gVar.setShapeAppearanceModel(this.R);
        if (w()) {
            this.P.b0(this.V, this.f25598b0);
        }
        int iQ = q();
        this.f25599c0 = iQ;
        this.P.W(ColorStateList.valueOf(iQ));
        if (this.f25616q0 == 3) {
            this.f25619s.getBackground().invalidateSelf();
        }
        k();
        invalidate();
    }

    private void j0(boolean z10) {
        if (!z10 || getEndIconDrawable() == null) {
            m();
            return;
        }
        Drawable drawableMutate = androidx.core.graphics.drawable.a.r(getEndIconDrawable()).mutate();
        androidx.core.graphics.drawable.a.n(drawableMutate, this.f25623u.o());
        this.f25620s0.setImageDrawable(drawableMutate);
    }

    private void k() {
        if (this.Q == null) {
            return;
        }
        if (x()) {
            this.Q.W(ColorStateList.valueOf(this.f25598b0));
        }
        invalidate();
    }

    private void k0() {
        if (this.T == 1) {
            if (l4.c.h(getContext())) {
                this.U = getResources().getDimensionPixelSize(y3.d.f36679q);
            } else if (l4.c.g(getContext())) {
                this.U = getResources().getDimensionPixelSize(y3.d.f36678p);
            }
        }
    }

    private void l(RectF rectF) {
        float f10 = rectF.left;
        int i10 = this.S;
        rectF.left = f10 - i10;
        rectF.top -= i10;
        rectF.right += i10;
        rectF.bottom += i10;
    }

    private void l0(Rect rect) {
        o4.g gVar = this.Q;
        if (gVar != null) {
            int i10 = rect.bottom;
            gVar.setBounds(rect.left, i10 - this.f25597a0, rect.right, i10);
        }
    }

    private void m() {
        n(this.f25620s0, this.f25626v0, this.f25624u0, this.f25630x0, this.f25628w0);
    }

    private void m0() {
        if (this.f25631y != null) {
            EditText editText = this.f25619s;
            n0(editText == null ? 0 : editText.getText().length());
        }
    }

    private void n(CheckableImageButton checkableImageButton, boolean z10, ColorStateList colorStateList, boolean z11, PorterDuff.Mode mode) {
        Drawable drawable = checkableImageButton.getDrawable();
        if (drawable != null && (z10 || z11)) {
            drawable = androidx.core.graphics.drawable.a.r(drawable).mutate();
            if (z10) {
                androidx.core.graphics.drawable.a.o(drawable, colorStateList);
            }
            if (z11) {
                androidx.core.graphics.drawable.a.p(drawable, mode);
            }
        }
        if (checkableImageButton.getDrawable() != drawable) {
            checkableImageButton.setImageDrawable(drawable);
        }
    }

    private void o() {
        n(this.f25604h0, this.f25606j0, this.f25605i0, this.f25608l0, this.f25607k0);
    }

    private static void o0(Context context, TextView textView, int i10, int i11, boolean z10) {
        textView.setContentDescription(context.getString(z10 ? y3.i.f36744c : y3.i.f36743b, Integer.valueOf(i10), Integer.valueOf(i11)));
    }

    private void p() {
        int i10 = this.T;
        if (i10 == 0) {
            this.P = null;
            this.Q = null;
            return;
        }
        if (i10 == 1) {
            this.P = new o4.g(this.R);
            this.Q = new o4.g();
        } else {
            if (i10 != 2) {
                throw new IllegalArgumentException(this.T + " is illegal; only @BoxBackgroundMode constants are supported.");
            }
            if (!this.M || (this.P instanceof com.google.android.material.textfield.c)) {
                this.P = new o4.g(this.R);
            } else {
                this.P = new com.google.android.material.textfield.c(this.R);
            }
            this.Q = null;
        }
    }

    private void p0() {
        ColorStateList colorStateList;
        ColorStateList colorStateList2;
        TextView textView = this.f25631y;
        if (textView != null) {
            e0(textView, this.f25629x ? this.f25633z : this.A);
            if (!this.f25629x && (colorStateList2 = this.G) != null) {
                this.f25631y.setTextColor(colorStateList2);
            }
            if (!this.f25629x || (colorStateList = this.H) == null) {
                return;
            }
            this.f25631y.setTextColor(colorStateList);
        }
    }

    private int q() {
        return this.T == 1 ? e4.a.e(e4.a.d(this, y3.b.f36642l, 0), this.f25599c0) : this.f25599c0;
    }

    private boolean q0() {
        boolean z10;
        if (this.f25619s == null) {
            return false;
        }
        boolean z11 = true;
        if (g0()) {
            int measuredWidth = this.f25613p.getMeasuredWidth() - this.f25619s.getPaddingLeft();
            if (this.f25609m0 == null || this.f25610n0 != measuredWidth) {
                ColorDrawable colorDrawable = new ColorDrawable();
                this.f25609m0 = colorDrawable;
                this.f25610n0 = measuredWidth;
                colorDrawable.setBounds(0, 0, measuredWidth, 1);
            }
            Drawable[] drawableArrA = androidx.core.widget.j.a(this.f25619s);
            Drawable drawable = drawableArrA[0];
            Drawable drawable2 = this.f25609m0;
            if (drawable != drawable2) {
                androidx.core.widget.j.i(this.f25619s, drawable2, drawableArrA[1], drawableArrA[2], drawableArrA[3]);
                z10 = true;
            }
            z10 = false;
        } else {
            if (this.f25609m0 != null) {
                Drawable[] drawableArrA2 = androidx.core.widget.j.a(this.f25619s);
                androidx.core.widget.j.i(this.f25619s, null, drawableArrA2[1], drawableArrA2[2], drawableArrA2[3]);
                this.f25609m0 = null;
                z10 = true;
            }
            z10 = false;
        }
        if (f0()) {
            int measuredWidth2 = this.L.getMeasuredWidth() - this.f25619s.getPaddingRight();
            CheckableImageButton endIconToUpdateDummyDrawable = getEndIconToUpdateDummyDrawable();
            if (endIconToUpdateDummyDrawable != null) {
                measuredWidth2 = measuredWidth2 + endIconToUpdateDummyDrawable.getMeasuredWidth() + androidx.core.view.h.b((ViewGroup.MarginLayoutParams) endIconToUpdateDummyDrawable.getLayoutParams());
            }
            Drawable[] drawableArrA3 = androidx.core.widget.j.a(this.f25619s);
            Drawable drawable3 = this.f25632y0;
            if (drawable3 == null || this.f25634z0 == measuredWidth2) {
                if (drawable3 == null) {
                    ColorDrawable colorDrawable2 = new ColorDrawable();
                    this.f25632y0 = colorDrawable2;
                    this.f25634z0 = measuredWidth2;
                    colorDrawable2.setBounds(0, 0, measuredWidth2, 1);
                }
                Drawable drawable4 = drawableArrA3[2];
                Drawable drawable5 = this.f25632y0;
                if (drawable4 != drawable5) {
                    this.A0 = drawableArrA3[2];
                    androidx.core.widget.j.i(this.f25619s, drawableArrA3[0], drawableArrA3[1], drawable5, drawableArrA3[3]);
                } else {
                    z11 = z10;
                }
            } else {
                this.f25634z0 = measuredWidth2;
                drawable3.setBounds(0, 0, measuredWidth2, 1);
                androidx.core.widget.j.i(this.f25619s, drawableArrA3[0], drawableArrA3[1], this.f25632y0, drawableArrA3[3]);
            }
        } else {
            if (this.f25632y0 == null) {
                return z10;
            }
            Drawable[] drawableArrA4 = androidx.core.widget.j.a(this.f25619s);
            if (drawableArrA4[2] == this.f25632y0) {
                androidx.core.widget.j.i(this.f25619s, drawableArrA4[0], drawableArrA4[1], this.A0, drawableArrA4[3]);
            } else {
                z11 = z10;
            }
            this.f25632y0 = null;
        }
        return z11;
    }

    private Rect r(Rect rect) {
        if (this.f25619s == null) {
            throw new IllegalStateException();
        }
        Rect rect2 = this.f25601e0;
        boolean z10 = a0.E(this) == 1;
        rect2.bottom = rect.bottom;
        int i10 = this.T;
        if (i10 == 1) {
            rect2.left = G(rect.left, z10);
            rect2.top = rect.top + this.U;
            rect2.right = H(rect.right, z10);
            return rect2;
        }
        if (i10 != 2) {
            rect2.left = G(rect.left, z10);
            rect2.top = getPaddingTop();
            rect2.right = H(rect.right, z10);
            return rect2;
        }
        rect2.left = rect.left + this.f25619s.getPaddingLeft();
        rect2.top = rect.top - v();
        rect2.right = rect.right - this.f25619s.getPaddingRight();
        return rect2;
    }

    private int s(Rect rect, Rect rect2, float f10) {
        return P() ? (int) (rect2.top + f10) : rect.bottom - this.f25619s.getCompoundPaddingBottom();
    }

    private boolean s0() {
        int iMax;
        if (this.f25619s == null || this.f25619s.getMeasuredHeight() >= (iMax = Math.max(this.f25615q.getMeasuredHeight(), this.f25613p.getMeasuredHeight()))) {
            return false;
        }
        this.f25619s.setMinimumHeight(iMax);
        return true;
    }

    private void setEditText(EditText editText) {
        if (this.f25619s != null) {
            throw new IllegalArgumentException("We already have an EditText, can only have one");
        }
        if (this.f25616q0 != 3 && !(editText instanceof TextInputEditText)) {
            Log.i("TextInputLayout", "EditText added is not a TextInputEditText. Please switch to using that class instead.");
        }
        this.f25619s = editText;
        S();
        setTextInputAccessibilityDelegate(new e(this));
        this.R0.b0(this.f25619s.getTypeface());
        this.R0.T(this.f25619s.getTextSize());
        int gravity = this.f25619s.getGravity();
        this.R0.L((gravity & (-113)) | 48);
        this.R0.S(gravity);
        this.f25619s.addTextChangedListener(new a());
        if (this.F0 == null) {
            this.F0 = this.f25619s.getHintTextColors();
        }
        if (this.M) {
            if (TextUtils.isEmpty(this.N)) {
                CharSequence hint = this.f25619s.getHint();
                this.f25621t = hint;
                setHint(hint);
                this.f25619s.setHint((CharSequence) null);
            }
            this.O = true;
        }
        if (this.f25631y != null) {
            n0(this.f25619s.getText().length());
        }
        r0();
        this.f25623u.e();
        this.f25613p.bringToFront();
        this.f25615q.bringToFront();
        this.f25617r.bringToFront();
        this.D0.bringToFront();
        B();
        z0();
        C0();
        if (!isEnabled()) {
            editText.setEnabled(false);
        }
        v0(false, true);
    }

    private void setErrorIconVisible(boolean z10) {
        this.D0.setVisibility(z10 ? 0 : 8);
        this.f25617r.setVisibility(z10 ? 8 : 0);
        C0();
        if (I()) {
            return;
        }
        q0();
    }

    private void setHintInternal(CharSequence charSequence) {
        if (TextUtils.equals(charSequence, this.N)) {
            return;
        }
        this.N = charSequence;
        this.R0.Z(charSequence);
        if (this.Q0) {
            return;
        }
        T();
    }

    private void setPlaceholderTextEnabled(boolean z10) {
        if (this.C == z10) {
            return;
        }
        if (z10) {
            AppCompatTextView appCompatTextView = new AppCompatTextView(getContext());
            this.D = appCompatTextView;
            appCompatTextView.setId(y3.f.O);
            a0.s0(this.D, 1);
            setPlaceholderTextAppearance(this.F);
            setPlaceholderTextColor(this.E);
            g();
        } else {
            Z();
            this.D = null;
        }
        this.C = z10;
    }

    private int t(Rect rect, float f10) {
        return P() ? (int) (rect.centerY() - (f10 / 2.0f)) : rect.top + this.f25619s.getCompoundPaddingTop();
    }

    private void t0() {
        if (this.T != 1) {
            LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) this.f25611o.getLayoutParams();
            int iV = v();
            if (iV != layoutParams.topMargin) {
                layoutParams.topMargin = iV;
                this.f25611o.requestLayout();
            }
        }
    }

    private Rect u(Rect rect) {
        if (this.f25619s == null) {
            throw new IllegalStateException();
        }
        Rect rect2 = this.f25601e0;
        float fU = this.R0.u();
        rect2.left = rect.left + this.f25619s.getCompoundPaddingLeft();
        rect2.top = t(rect, fU);
        rect2.right = rect.right - this.f25619s.getCompoundPaddingRight();
        rect2.bottom = s(rect, rect2, fU);
        return rect2;
    }

    private int v() {
        float fO;
        if (!this.M) {
            return 0;
        }
        int i10 = this.T;
        if (i10 == 0 || i10 == 1) {
            fO = this.R0.o();
        } else {
            if (i10 != 2) {
                return 0;
            }
            fO = this.R0.o() / 2.0f;
        }
        return (int) fO;
    }

    private void v0(boolean z10, boolean z11) {
        ColorStateList colorStateList;
        TextView textView;
        boolean zIsEnabled = isEnabled();
        EditText editText = this.f25619s;
        boolean z12 = (editText == null || TextUtils.isEmpty(editText.getText())) ? false : true;
        EditText editText2 = this.f25619s;
        boolean z13 = editText2 != null && editText2.hasFocus();
        boolean zK = this.f25623u.k();
        ColorStateList colorStateList2 = this.F0;
        if (colorStateList2 != null) {
            this.R0.K(colorStateList2);
            this.R0.R(this.F0);
        }
        if (!zIsEnabled) {
            ColorStateList colorStateList3 = this.F0;
            int colorForState = colorStateList3 != null ? colorStateList3.getColorForState(new int[]{-16842910}, this.P0) : this.P0;
            this.R0.K(ColorStateList.valueOf(colorForState));
            this.R0.R(ColorStateList.valueOf(colorForState));
        } else if (zK) {
            this.R0.K(this.f25623u.p());
        } else if (this.f25629x && (textView = this.f25631y) != null) {
            this.R0.K(textView.getTextColors());
        } else if (z13 && (colorStateList = this.G0) != null) {
            this.R0.K(colorStateList);
        }
        if (z12 || !this.S0 || (isEnabled() && z13)) {
            if (z11 || this.Q0) {
                z(z10);
                return;
            }
            return;
        }
        if (z11 || !this.Q0) {
            F(z10);
        }
    }

    private boolean w() {
        return this.T == 2 && x();
    }

    private void w0() {
        EditText editText;
        if (this.D == null || (editText = this.f25619s) == null) {
            return;
        }
        this.D.setGravity(editText.getGravity());
        this.D.setPadding(this.f25619s.getCompoundPaddingLeft(), this.f25619s.getCompoundPaddingTop(), this.f25619s.getCompoundPaddingRight(), this.f25619s.getCompoundPaddingBottom());
    }

    private boolean x() {
        return this.V > -1 && this.f25598b0 != 0;
    }

    private void x0() {
        EditText editText = this.f25619s;
        y0(editText == null ? 0 : editText.getText().length());
    }

    private void y() {
        if (A()) {
            ((com.google.android.material.textfield.c) this.P).l0();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void y0(int i10) {
        if (i10 != 0 || this.Q0) {
            J();
        } else {
            i0();
        }
    }

    private void z(boolean z10) {
        ValueAnimator valueAnimator = this.U0;
        if (valueAnimator != null && valueAnimator.isRunning()) {
            this.U0.cancel();
        }
        if (z10 && this.T0) {
            i(1.0f);
        } else {
            this.R0.V(1.0f);
        }
        this.Q0 = false;
        if (A()) {
            T();
        }
        x0();
        A0();
        D0();
    }

    private void z0() {
        if (this.f25619s == null) {
            return;
        }
        a0.D0(this.J, Q() ? 0 : a0.J(this.f25619s), this.f25619s.getCompoundPaddingTop(), getContext().getResources().getDimensionPixelSize(y3.d.f36683u), this.f25619s.getCompoundPaddingBottom());
    }

    void E0() {
        TextView textView;
        EditText editText;
        EditText editText2;
        if (this.P == null || this.T == 0) {
            return;
        }
        boolean z10 = false;
        boolean z11 = isFocused() || ((editText2 = this.f25619s) != null && editText2.hasFocus());
        boolean z12 = isHovered() || ((editText = this.f25619s) != null && editText.isHovered());
        if (!isEnabled()) {
            this.f25598b0 = this.P0;
        } else if (this.f25623u.k()) {
            if (this.K0 != null) {
                B0(z11, z12);
            } else {
                this.f25598b0 = this.f25623u.o();
            }
        } else if (!this.f25629x || (textView = this.f25631y) == null) {
            if (z11) {
                this.f25598b0 = this.J0;
            } else if (z12) {
                this.f25598b0 = this.I0;
            } else {
                this.f25598b0 = this.H0;
            }
        } else if (this.K0 != null) {
            B0(z11, z12);
        } else {
            this.f25598b0 = textView.getCurrentTextColor();
        }
        if (getErrorIconDrawable() != null && this.f25623u.x() && this.f25623u.k()) {
            z10 = true;
        }
        setErrorIconVisible(z10);
        W();
        Y();
        V();
        if (getEndIconDelegate().d()) {
            j0(this.f25623u.k());
        }
        if (z11 && isEnabled()) {
            this.V = this.f25597a0;
        } else {
            this.V = this.W;
        }
        if (this.T == 1) {
            if (!isEnabled()) {
                this.f25599c0 = this.M0;
            } else if (z12 && !z11) {
                this.f25599c0 = this.O0;
            } else if (z11) {
                this.f25599c0 = this.N0;
            } else {
                this.f25599c0 = this.L0;
            }
        }
        j();
    }

    public boolean K() {
        return this.f25617r.getVisibility() == 0 && this.f25620s0.getVisibility() == 0;
    }

    public boolean M() {
        return this.f25623u.y();
    }

    final boolean N() {
        return this.Q0;
    }

    public boolean O() {
        return this.O;
    }

    public boolean Q() {
        return this.f25604h0.getVisibility() == 0;
    }

    public void V() {
        X(this.f25620s0, this.f25624u0);
    }

    public void W() {
        X(this.D0, this.E0);
    }

    public void Y() {
        X(this.f25604h0, this.f25605i0);
    }

    @Override // android.view.ViewGroup
    public void addView(View view, int i10, ViewGroup.LayoutParams layoutParams) {
        if (!(view instanceof EditText)) {
            super.addView(view, i10, layoutParams);
            return;
        }
        FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(layoutParams);
        layoutParams2.gravity = (layoutParams2.gravity & (-113)) | 16;
        this.f25611o.addView(view, layoutParams2);
        this.f25611o.setLayoutParams(layoutParams);
        t0();
        setEditText((EditText) view);
    }

    @Override // android.view.ViewGroup, android.view.View
    @TargetApi(26)
    public void dispatchProvideAutofillStructure(ViewStructure viewStructure, int i10) {
        EditText editText = this.f25619s;
        if (editText == null) {
            super.dispatchProvideAutofillStructure(viewStructure, i10);
            return;
        }
        if (this.f25621t != null) {
            boolean z10 = this.O;
            this.O = false;
            CharSequence hint = editText.getHint();
            this.f25619s.setHint(this.f25621t);
            try {
                super.dispatchProvideAutofillStructure(viewStructure, i10);
                return;
            } finally {
                this.f25619s.setHint(hint);
                this.O = z10;
            }
        }
        viewStructure.setAutofillId(getAutofillId());
        onProvideAutofillStructure(viewStructure, i10);
        onProvideAutofillVirtualStructure(viewStructure, i10);
        viewStructure.setChildCount(this.f25611o.getChildCount());
        for (int i11 = 0; i11 < this.f25611o.getChildCount(); i11++) {
            View childAt = this.f25611o.getChildAt(i11);
            ViewStructure viewStructureNewChild = viewStructure.newChild(i11);
            childAt.dispatchProvideAutofillStructure(viewStructureNewChild, i10);
            if (childAt == this.f25619s) {
                viewStructureNewChild.setHint(getHint());
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void dispatchRestoreInstanceState(SparseArray<Parcelable> sparseArray) {
        this.W0 = true;
        super.dispatchRestoreInstanceState(sparseArray);
        this.W0 = false;
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        super.draw(canvas);
        E(canvas);
        D(canvas);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void drawableStateChanged() {
        if (this.V0) {
            return;
        }
        this.V0 = true;
        super.drawableStateChanged();
        int[] drawableState = getDrawableState();
        com.google.android.material.internal.a aVar = this.R0;
        boolean zY = aVar != null ? aVar.Y(drawableState) | false : false;
        if (this.f25619s != null) {
            u0(a0.U(this) && isEnabled());
        }
        r0();
        E0();
        if (zY) {
            invalidate();
        }
        this.V0 = false;
    }

    public void e(f fVar) {
        this.f25614p0.add(fVar);
        if (this.f25619s != null) {
            fVar.a(this);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:9:0x0018  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    void e0(android.widget.TextView r3, int r4) {
        /*
            r2 = this;
            r0 = 1
            androidx.core.widget.j.n(r3, r4)     // Catch: java.lang.Exception -> L1b
            int r4 = android.os.Build.VERSION.SDK_INT     // Catch: java.lang.Exception -> L1b
            r1 = 23
            if (r4 < r1) goto L18
            android.content.res.ColorStateList r4 = r3.getTextColors()     // Catch: java.lang.Exception -> L1b
            int r4 = r4.getDefaultColor()     // Catch: java.lang.Exception -> L1b
            r1 = -65281(0xffffffffffff00ff, float:NaN)
            if (r4 != r1) goto L18
            goto L1c
        L18:
            r4 = 0
            r0 = 0
            goto L1c
        L1b:
        L1c:
            if (r0 == 0) goto L30
            int r4 = y3.j.f36758a
            androidx.core.widget.j.n(r3, r4)
            android.content.Context r4 = r2.getContext()
            int r0 = y3.c.f36657a
            int r4 = androidx.core.content.a.d(r4, r0)
            r3.setTextColor(r4)
        L30:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.textfield.TextInputLayout.e0(android.widget.TextView, int):void");
    }

    public void f(g gVar) {
        this.f25622t0.add(gVar);
    }

    @Override // android.widget.LinearLayout, android.view.View
    public int getBaseline() {
        EditText editText = this.f25619s;
        return editText != null ? editText.getBaseline() + getPaddingTop() + v() : super.getBaseline();
    }

    o4.g getBoxBackground() {
        int i10 = this.T;
        if (i10 == 1 || i10 == 2) {
            return this.P;
        }
        throw new IllegalStateException();
    }

    public int getBoxBackgroundColor() {
        return this.f25599c0;
    }

    public int getBoxBackgroundMode() {
        return this.T;
    }

    public float getBoxCornerRadiusBottomEnd() {
        return this.P.s();
    }

    public float getBoxCornerRadiusBottomStart() {
        return this.P.t();
    }

    public float getBoxCornerRadiusTopEnd() {
        return this.P.G();
    }

    public float getBoxCornerRadiusTopStart() {
        return this.P.F();
    }

    public int getBoxStrokeColor() {
        return this.J0;
    }

    public ColorStateList getBoxStrokeErrorColor() {
        return this.K0;
    }

    public int getBoxStrokeWidth() {
        return this.W;
    }

    public int getBoxStrokeWidthFocused() {
        return this.f25597a0;
    }

    public int getCounterMaxLength() {
        return this.f25627w;
    }

    CharSequence getCounterOverflowDescription() {
        TextView textView;
        if (this.f25625v && this.f25629x && (textView = this.f25631y) != null) {
            return textView.getContentDescription();
        }
        return null;
    }

    public ColorStateList getCounterOverflowTextColor() {
        return this.G;
    }

    public ColorStateList getCounterTextColor() {
        return this.G;
    }

    public ColorStateList getDefaultHintTextColor() {
        return this.F0;
    }

    public EditText getEditText() {
        return this.f25619s;
    }

    public CharSequence getEndIconContentDescription() {
        return this.f25620s0.getContentDescription();
    }

    public Drawable getEndIconDrawable() {
        return this.f25620s0.getDrawable();
    }

    public int getEndIconMode() {
        return this.f25616q0;
    }

    CheckableImageButton getEndIconView() {
        return this.f25620s0;
    }

    public CharSequence getError() {
        if (this.f25623u.x()) {
            return this.f25623u.n();
        }
        return null;
    }

    public CharSequence getErrorContentDescription() {
        return this.f25623u.m();
    }

    public int getErrorCurrentTextColors() {
        return this.f25623u.o();
    }

    public Drawable getErrorIconDrawable() {
        return this.D0.getDrawable();
    }

    final int getErrorTextCurrentColor() {
        return this.f25623u.o();
    }

    public CharSequence getHelperText() {
        if (this.f25623u.y()) {
            return this.f25623u.q();
        }
        return null;
    }

    public int getHelperTextCurrentTextColor() {
        return this.f25623u.r();
    }

    public CharSequence getHint() {
        if (this.M) {
            return this.N;
        }
        return null;
    }

    final float getHintCollapsedTextHeight() {
        return this.R0.o();
    }

    final int getHintCurrentCollapsedTextColor() {
        return this.R0.r();
    }

    public ColorStateList getHintTextColor() {
        return this.G0;
    }

    @Deprecated
    public CharSequence getPasswordVisibilityToggleContentDescription() {
        return this.f25620s0.getContentDescription();
    }

    @Deprecated
    public Drawable getPasswordVisibilityToggleDrawable() {
        return this.f25620s0.getDrawable();
    }

    public CharSequence getPlaceholderText() {
        if (this.C) {
            return this.B;
        }
        return null;
    }

    public int getPlaceholderTextAppearance() {
        return this.F;
    }

    public ColorStateList getPlaceholderTextColor() {
        return this.E;
    }

    public CharSequence getPrefixText() {
        return this.I;
    }

    public ColorStateList getPrefixTextColor() {
        return this.J.getTextColors();
    }

    public TextView getPrefixTextView() {
        return this.J;
    }

    public CharSequence getStartIconContentDescription() {
        return this.f25604h0.getContentDescription();
    }

    public Drawable getStartIconDrawable() {
        return this.f25604h0.getDrawable();
    }

    public CharSequence getSuffixText() {
        return this.K;
    }

    public ColorStateList getSuffixTextColor() {
        return this.L.getTextColors();
    }

    public TextView getSuffixTextView() {
        return this.L;
    }

    public Typeface getTypeface() {
        return this.f25603g0;
    }

    void i(float f10) {
        if (this.R0.v() == f10) {
            return;
        }
        if (this.U0 == null) {
            ValueAnimator valueAnimator = new ValueAnimator();
            this.U0 = valueAnimator;
            valueAnimator.setInterpolator(z3.a.f37200b);
            this.U0.setDuration(167L);
            this.U0.addUpdateListener(new d());
        }
        this.U0.setFloatValues(this.R0.v(), f10);
        this.U0.start();
    }

    void n0(int i10) {
        boolean z10 = this.f25629x;
        int i11 = this.f25627w;
        if (i11 == -1) {
            this.f25631y.setText(String.valueOf(i10));
            this.f25631y.setContentDescription(null);
            this.f25629x = false;
        } else {
            this.f25629x = i10 > i11;
            o0(getContext(), this.f25631y, i10, this.f25627w, this.f25629x);
            if (z10 != this.f25629x) {
                p0();
            }
            this.f25631y.setText(androidx.core.text.a.c().j(getContext().getString(y3.i.f36745d, Integer.valueOf(i10), Integer.valueOf(this.f25627w))));
        }
        if (this.f25619s == null || z10 == this.f25629x) {
            return;
        }
        u0(false);
        E0();
        r0();
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z10, int i10, int i11, int i12, int i13) {
        super.onLayout(z10, i10, i11, i12, i13);
        EditText editText = this.f25619s;
        if (editText != null) {
            Rect rect = this.f25600d0;
            com.google.android.material.internal.b.a(this, editText, rect);
            l0(rect);
            if (this.M) {
                this.R0.T(this.f25619s.getTextSize());
                int gravity = this.f25619s.getGravity();
                this.R0.L((gravity & (-113)) | 48);
                this.R0.S(gravity);
                this.R0.H(r(rect));
                this.R0.P(u(rect));
                this.R0.E();
                if (!A() || this.Q0) {
                    return;
                }
                T();
            }
        }
    }

    @Override // android.widget.LinearLayout, android.view.View
    protected void onMeasure(int i10, int i11) {
        super.onMeasure(i10, i11);
        boolean zS0 = s0();
        boolean zQ0 = q0();
        if (zS0 || zQ0) {
            this.f25619s.post(new c());
        }
        w0();
        z0();
        C0();
    }

    @Override // android.view.View
    protected void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof h)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        h hVar = (h) parcelable;
        super.onRestoreInstanceState(hVar.h());
        setError(hVar.f25640q);
        if (hVar.f25641r) {
            this.f25620s0.post(new b());
        }
        setHint(hVar.f25642s);
        setHelperText(hVar.f25643t);
        setPlaceholderText(hVar.f25644u);
        requestLayout();
    }

    @Override // android.view.View
    public Parcelable onSaveInstanceState() {
        h hVar = new h(super.onSaveInstanceState());
        if (this.f25623u.k()) {
            hVar.f25640q = getError();
        }
        hVar.f25641r = I() && this.f25620s0.isChecked();
        hVar.f25642s = getHint();
        hVar.f25643t = getHelperText();
        hVar.f25644u = getPlaceholderText();
        return hVar;
    }

    void r0() {
        Drawable background;
        TextView textView;
        EditText editText = this.f25619s;
        if (editText == null || this.T != 0 || (background = editText.getBackground()) == null) {
            return;
        }
        if (f0.a(background)) {
            background = background.mutate();
        }
        if (this.f25623u.k()) {
            background.setColorFilter(androidx.appcompat.widget.j.e(this.f25623u.o(), PorterDuff.Mode.SRC_IN));
        } else if (this.f25629x && (textView = this.f25631y) != null) {
            background.setColorFilter(androidx.appcompat.widget.j.e(textView.getCurrentTextColor(), PorterDuff.Mode.SRC_IN));
        } else {
            androidx.core.graphics.drawable.a.c(background);
            this.f25619s.refreshDrawableState();
        }
    }

    public void setBoxBackgroundColor(int i10) {
        if (this.f25599c0 != i10) {
            this.f25599c0 = i10;
            this.L0 = i10;
            this.N0 = i10;
            this.O0 = i10;
            j();
        }
    }

    public void setBoxBackgroundColorResource(int i10) {
        setBoxBackgroundColor(androidx.core.content.a.d(getContext(), i10));
    }

    public void setBoxBackgroundColorStateList(ColorStateList colorStateList) {
        int defaultColor = colorStateList.getDefaultColor();
        this.L0 = defaultColor;
        this.f25599c0 = defaultColor;
        this.M0 = colorStateList.getColorForState(new int[]{-16842910}, -1);
        this.N0 = colorStateList.getColorForState(new int[]{R.attr.state_focused, R.attr.state_enabled}, -1);
        this.O0 = colorStateList.getColorForState(new int[]{R.attr.state_hovered, R.attr.state_enabled}, -1);
        j();
    }

    public void setBoxBackgroundMode(int i10) {
        if (i10 == this.T) {
            return;
        }
        this.T = i10;
        if (this.f25619s != null) {
            S();
        }
    }

    public void setBoxStrokeColor(int i10) {
        if (this.J0 != i10) {
            this.J0 = i10;
            E0();
        }
    }

    public void setBoxStrokeColorStateList(ColorStateList colorStateList) {
        if (colorStateList.isStateful()) {
            this.H0 = colorStateList.getDefaultColor();
            this.P0 = colorStateList.getColorForState(new int[]{-16842910}, -1);
            this.I0 = colorStateList.getColorForState(new int[]{R.attr.state_hovered, R.attr.state_enabled}, -1);
            this.J0 = colorStateList.getColorForState(new int[]{R.attr.state_focused, R.attr.state_enabled}, -1);
        } else if (this.J0 != colorStateList.getDefaultColor()) {
            this.J0 = colorStateList.getDefaultColor();
        }
        E0();
    }

    public void setBoxStrokeErrorColor(ColorStateList colorStateList) {
        if (this.K0 != colorStateList) {
            this.K0 = colorStateList;
            E0();
        }
    }

    public void setBoxStrokeWidth(int i10) {
        this.W = i10;
        E0();
    }

    public void setBoxStrokeWidthFocused(int i10) {
        this.f25597a0 = i10;
        E0();
    }

    public void setBoxStrokeWidthFocusedResource(int i10) {
        setBoxStrokeWidthFocused(getResources().getDimensionPixelSize(i10));
    }

    public void setBoxStrokeWidthResource(int i10) {
        setBoxStrokeWidth(getResources().getDimensionPixelSize(i10));
    }

    public void setCounterEnabled(boolean z10) {
        if (this.f25625v != z10) {
            if (z10) {
                AppCompatTextView appCompatTextView = new AppCompatTextView(getContext());
                this.f25631y = appCompatTextView;
                appCompatTextView.setId(y3.f.L);
                Typeface typeface = this.f25603g0;
                if (typeface != null) {
                    this.f25631y.setTypeface(typeface);
                }
                this.f25631y.setMaxLines(1);
                this.f25623u.d(this.f25631y, 2);
                androidx.core.view.h.d((ViewGroup.MarginLayoutParams) this.f25631y.getLayoutParams(), getResources().getDimensionPixelOffset(y3.d.Q));
                p0();
                m0();
            } else {
                this.f25623u.z(this.f25631y, 2);
                this.f25631y = null;
            }
            this.f25625v = z10;
        }
    }

    public void setCounterMaxLength(int i10) {
        if (this.f25627w != i10) {
            if (i10 > 0) {
                this.f25627w = i10;
            } else {
                this.f25627w = -1;
            }
            if (this.f25625v) {
                m0();
            }
        }
    }

    public void setCounterOverflowTextAppearance(int i10) {
        if (this.f25633z != i10) {
            this.f25633z = i10;
            p0();
        }
    }

    public void setCounterOverflowTextColor(ColorStateList colorStateList) {
        if (this.H != colorStateList) {
            this.H = colorStateList;
            p0();
        }
    }

    public void setCounterTextAppearance(int i10) {
        if (this.A != i10) {
            this.A = i10;
            p0();
        }
    }

    public void setCounterTextColor(ColorStateList colorStateList) {
        if (this.G != colorStateList) {
            this.G = colorStateList;
            p0();
        }
    }

    public void setDefaultHintTextColor(ColorStateList colorStateList) {
        this.F0 = colorStateList;
        this.G0 = colorStateList;
        if (this.f25619s != null) {
            u0(false);
        }
    }

    @Override // android.view.View
    public void setEnabled(boolean z10) {
        U(this, z10);
        super.setEnabled(z10);
    }

    public void setEndIconActivated(boolean z10) {
        this.f25620s0.setActivated(z10);
    }

    public void setEndIconCheckable(boolean z10) {
        this.f25620s0.setCheckable(z10);
    }

    public void setEndIconContentDescription(int i10) {
        setEndIconContentDescription(i10 != 0 ? getResources().getText(i10) : null);
    }

    public void setEndIconDrawable(int i10) {
        setEndIconDrawable(i10 != 0 ? g.a.b(getContext(), i10) : null);
    }

    public void setEndIconMode(int i10) {
        int i11 = this.f25616q0;
        this.f25616q0 = i10;
        C(i11);
        setEndIconVisible(i10 != 0);
        if (getEndIconDelegate().b(this.T)) {
            getEndIconDelegate().a();
            m();
            return;
        }
        throw new IllegalStateException("The current box background mode " + this.T + " is not supported by the end icon mode " + i10);
    }

    public void setEndIconOnClickListener(View.OnClickListener onClickListener) {
        c0(this.f25620s0, onClickListener, this.B0);
    }

    public void setEndIconOnLongClickListener(View.OnLongClickListener onLongClickListener) {
        this.B0 = onLongClickListener;
        d0(this.f25620s0, onLongClickListener);
    }

    public void setEndIconTintList(ColorStateList colorStateList) {
        if (this.f25624u0 != colorStateList) {
            this.f25624u0 = colorStateList;
            this.f25626v0 = true;
            m();
        }
    }

    public void setEndIconTintMode(PorterDuff.Mode mode) {
        if (this.f25628w0 != mode) {
            this.f25628w0 = mode;
            this.f25630x0 = true;
            m();
        }
    }

    public void setEndIconVisible(boolean z10) {
        if (K() != z10) {
            this.f25620s0.setVisibility(z10 ? 0 : 8);
            C0();
            q0();
        }
    }

    public void setError(CharSequence charSequence) {
        if (!this.f25623u.x()) {
            if (TextUtils.isEmpty(charSequence)) {
                return;
            } else {
                setErrorEnabled(true);
            }
        }
        if (TextUtils.isEmpty(charSequence)) {
            this.f25623u.t();
        } else {
            this.f25623u.M(charSequence);
        }
    }

    public void setErrorContentDescription(CharSequence charSequence) {
        this.f25623u.B(charSequence);
    }

    public void setErrorEnabled(boolean z10) {
        this.f25623u.C(z10);
    }

    public void setErrorIconDrawable(int i10) {
        setErrorIconDrawable(i10 != 0 ? g.a.b(getContext(), i10) : null);
        W();
    }

    public void setErrorIconOnClickListener(View.OnClickListener onClickListener) {
        c0(this.D0, onClickListener, this.C0);
    }

    public void setErrorIconOnLongClickListener(View.OnLongClickListener onLongClickListener) {
        this.C0 = onLongClickListener;
        d0(this.D0, onLongClickListener);
    }

    public void setErrorIconTintList(ColorStateList colorStateList) {
        this.E0 = colorStateList;
        Drawable drawable = this.D0.getDrawable();
        if (drawable != null) {
            drawable = androidx.core.graphics.drawable.a.r(drawable).mutate();
            androidx.core.graphics.drawable.a.o(drawable, colorStateList);
        }
        if (this.D0.getDrawable() != drawable) {
            this.D0.setImageDrawable(drawable);
        }
    }

    public void setErrorIconTintMode(PorterDuff.Mode mode) {
        Drawable drawable = this.D0.getDrawable();
        if (drawable != null) {
            drawable = androidx.core.graphics.drawable.a.r(drawable).mutate();
            androidx.core.graphics.drawable.a.p(drawable, mode);
        }
        if (this.D0.getDrawable() != drawable) {
            this.D0.setImageDrawable(drawable);
        }
    }

    public void setErrorTextAppearance(int i10) {
        this.f25623u.D(i10);
    }

    public void setErrorTextColor(ColorStateList colorStateList) {
        this.f25623u.E(colorStateList);
    }

    public void setExpandedHintEnabled(boolean z10) {
        if (this.S0 != z10) {
            this.S0 = z10;
            u0(false);
        }
    }

    public void setHelperText(CharSequence charSequence) {
        if (TextUtils.isEmpty(charSequence)) {
            if (M()) {
                setHelperTextEnabled(false);
            }
        } else {
            if (!M()) {
                setHelperTextEnabled(true);
            }
            this.f25623u.N(charSequence);
        }
    }

    public void setHelperTextColor(ColorStateList colorStateList) {
        this.f25623u.H(colorStateList);
    }

    public void setHelperTextEnabled(boolean z10) {
        this.f25623u.G(z10);
    }

    public void setHelperTextTextAppearance(int i10) {
        this.f25623u.F(i10);
    }

    public void setHint(CharSequence charSequence) {
        if (this.M) {
            setHintInternal(charSequence);
            sendAccessibilityEvent(2048);
        }
    }

    public void setHintAnimationEnabled(boolean z10) {
        this.T0 = z10;
    }

    public void setHintEnabled(boolean z10) {
        if (z10 != this.M) {
            this.M = z10;
            if (z10) {
                CharSequence hint = this.f25619s.getHint();
                if (!TextUtils.isEmpty(hint)) {
                    if (TextUtils.isEmpty(this.N)) {
                        setHint(hint);
                    }
                    this.f25619s.setHint((CharSequence) null);
                }
                this.O = true;
            } else {
                this.O = false;
                if (!TextUtils.isEmpty(this.N) && TextUtils.isEmpty(this.f25619s.getHint())) {
                    this.f25619s.setHint(this.N);
                }
                setHintInternal(null);
            }
            if (this.f25619s != null) {
                t0();
            }
        }
    }

    public void setHintTextAppearance(int i10) {
        this.R0.I(i10);
        this.G0 = this.R0.n();
        if (this.f25619s != null) {
            u0(false);
            t0();
        }
    }

    public void setHintTextColor(ColorStateList colorStateList) {
        if (this.G0 != colorStateList) {
            if (this.F0 == null) {
                this.R0.K(colorStateList);
            }
            this.G0 = colorStateList;
            if (this.f25619s != null) {
                u0(false);
            }
        }
    }

    @Deprecated
    public void setPasswordVisibilityToggleContentDescription(int i10) {
        setPasswordVisibilityToggleContentDescription(i10 != 0 ? getResources().getText(i10) : null);
    }

    @Deprecated
    public void setPasswordVisibilityToggleDrawable(int i10) {
        setPasswordVisibilityToggleDrawable(i10 != 0 ? g.a.b(getContext(), i10) : null);
    }

    @Deprecated
    public void setPasswordVisibilityToggleEnabled(boolean z10) {
        if (z10 && this.f25616q0 != 1) {
            setEndIconMode(1);
        } else {
            if (z10) {
                return;
            }
            setEndIconMode(0);
        }
    }

    @Deprecated
    public void setPasswordVisibilityToggleTintList(ColorStateList colorStateList) {
        this.f25624u0 = colorStateList;
        this.f25626v0 = true;
        m();
    }

    @Deprecated
    public void setPasswordVisibilityToggleTintMode(PorterDuff.Mode mode) {
        this.f25628w0 = mode;
        this.f25630x0 = true;
        m();
    }

    public void setPlaceholderText(CharSequence charSequence) {
        if (this.C && TextUtils.isEmpty(charSequence)) {
            setPlaceholderTextEnabled(false);
        } else {
            if (!this.C) {
                setPlaceholderTextEnabled(true);
            }
            this.B = charSequence;
        }
        x0();
    }

    public void setPlaceholderTextAppearance(int i10) {
        this.F = i10;
        TextView textView = this.D;
        if (textView != null) {
            androidx.core.widget.j.n(textView, i10);
        }
    }

    public void setPlaceholderTextColor(ColorStateList colorStateList) {
        if (this.E != colorStateList) {
            this.E = colorStateList;
            TextView textView = this.D;
            if (textView == null || colorStateList == null) {
                return;
            }
            textView.setTextColor(colorStateList);
        }
    }

    public void setPrefixText(CharSequence charSequence) {
        this.I = TextUtils.isEmpty(charSequence) ? null : charSequence;
        this.J.setText(charSequence);
        A0();
    }

    public void setPrefixTextAppearance(int i10) {
        androidx.core.widget.j.n(this.J, i10);
    }

    public void setPrefixTextColor(ColorStateList colorStateList) {
        this.J.setTextColor(colorStateList);
    }

    public void setStartIconCheckable(boolean z10) {
        this.f25604h0.setCheckable(z10);
    }

    public void setStartIconContentDescription(int i10) {
        setStartIconContentDescription(i10 != 0 ? getResources().getText(i10) : null);
    }

    public void setStartIconDrawable(int i10) {
        setStartIconDrawable(i10 != 0 ? g.a.b(getContext(), i10) : null);
    }

    public void setStartIconOnClickListener(View.OnClickListener onClickListener) {
        c0(this.f25604h0, onClickListener, this.f25612o0);
    }

    public void setStartIconOnLongClickListener(View.OnLongClickListener onLongClickListener) {
        this.f25612o0 = onLongClickListener;
        d0(this.f25604h0, onLongClickListener);
    }

    public void setStartIconTintList(ColorStateList colorStateList) {
        if (this.f25605i0 != colorStateList) {
            this.f25605i0 = colorStateList;
            this.f25606j0 = true;
            o();
        }
    }

    public void setStartIconTintMode(PorterDuff.Mode mode) {
        if (this.f25607k0 != mode) {
            this.f25607k0 = mode;
            this.f25608l0 = true;
            o();
        }
    }

    public void setStartIconVisible(boolean z10) {
        if (Q() != z10) {
            this.f25604h0.setVisibility(z10 ? 0 : 8);
            z0();
            q0();
        }
    }

    public void setSuffixText(CharSequence charSequence) {
        this.K = TextUtils.isEmpty(charSequence) ? null : charSequence;
        this.L.setText(charSequence);
        D0();
    }

    public void setSuffixTextAppearance(int i10) {
        androidx.core.widget.j.n(this.L, i10);
    }

    public void setSuffixTextColor(ColorStateList colorStateList) {
        this.L.setTextColor(colorStateList);
    }

    public void setTextInputAccessibilityDelegate(e eVar) {
        EditText editText = this.f25619s;
        if (editText != null) {
            a0.q0(editText, eVar);
        }
    }

    public void setTypeface(Typeface typeface) {
        if (typeface != this.f25603g0) {
            this.f25603g0 = typeface;
            this.R0.b0(typeface);
            this.f25623u.J(typeface);
            TextView textView = this.f25631y;
            if (textView != null) {
                textView.setTypeface(typeface);
            }
        }
    }

    void u0(boolean z10) {
        v0(z10, false);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v103 */
    /* JADX WARN: Type inference failed for: r2v44 */
    /* JADX WARN: Type inference failed for: r2v45, types: [boolean, int] */
    public TextInputLayout(Context context, AttributeSet attributeSet, int i10) {
        ?? r22;
        int i11 = X0;
        super(q4.a.c(context, attributeSet, i10, i11), attributeSet, i10);
        this.f25623u = new com.google.android.material.textfield.f(this);
        this.f25600d0 = new Rect();
        this.f25601e0 = new Rect();
        this.f25602f0 = new RectF();
        this.f25614p0 = new LinkedHashSet<>();
        this.f25616q0 = 0;
        SparseArray<com.google.android.material.textfield.e> sparseArray = new SparseArray<>();
        this.f25618r0 = sparseArray;
        this.f25622t0 = new LinkedHashSet<>();
        com.google.android.material.internal.a aVar = new com.google.android.material.internal.a(this);
        this.R0 = aVar;
        Context context2 = getContext();
        setOrientation(1);
        setWillNotDraw(false);
        setAddStatesFromChildren(true);
        FrameLayout frameLayout = new FrameLayout(context2);
        this.f25611o = frameLayout;
        frameLayout.setAddStatesFromChildren(true);
        addView(frameLayout);
        LinearLayout linearLayout = new LinearLayout(context2);
        this.f25613p = linearLayout;
        linearLayout.setOrientation(0);
        linearLayout.setLayoutParams(new FrameLayout.LayoutParams(-2, -1, 8388611));
        frameLayout.addView(linearLayout);
        LinearLayout linearLayout2 = new LinearLayout(context2);
        this.f25615q = linearLayout2;
        linearLayout2.setOrientation(0);
        linearLayout2.setLayoutParams(new FrameLayout.LayoutParams(-2, -1, 8388613));
        frameLayout.addView(linearLayout2);
        FrameLayout frameLayout2 = new FrameLayout(context2);
        this.f25617r = frameLayout2;
        frameLayout2.setLayoutParams(new FrameLayout.LayoutParams(-2, -1));
        TimeInterpolator timeInterpolator = z3.a.f37199a;
        aVar.a0(timeInterpolator);
        aVar.X(timeInterpolator);
        aVar.L(8388659);
        int[] iArr = y3.k.f36923u4;
        int i12 = y3.k.N4;
        int i13 = y3.k.L4;
        int i14 = y3.k.f36784a5;
        int i15 = y3.k.f36819f5;
        int i16 = y3.k.f36847j5;
        w0 w0VarI = com.google.android.material.internal.j.i(context2, attributeSet, iArr, i10, i11, i12, i13, i14, i15, i16);
        this.M = w0VarI.a(y3.k.f36840i5, true);
        setHint(w0VarI.p(y3.k.f36944x4));
        this.T0 = w0VarI.a(y3.k.f36833h5, true);
        this.S0 = w0VarI.a(y3.k.f36798c5, true);
        this.R = k.e(context2, attributeSet, i10, i11).m();
        this.S = context2.getResources().getDimensionPixelOffset(y3.d.N);
        this.U = w0VarI.e(y3.k.A4, 0);
        this.W = w0VarI.f(y3.k.H4, context2.getResources().getDimensionPixelSize(y3.d.O));
        this.f25597a0 = w0VarI.f(y3.k.I4, context2.getResources().getDimensionPixelSize(y3.d.P));
        this.V = this.W;
        float fD = w0VarI.d(y3.k.E4, -1.0f);
        float fD2 = w0VarI.d(y3.k.D4, -1.0f);
        float fD3 = w0VarI.d(y3.k.B4, -1.0f);
        float fD4 = w0VarI.d(y3.k.C4, -1.0f);
        k.b bVarV = this.R.v();
        if (fD >= 0.0f) {
            bVarV.A(fD);
        }
        if (fD2 >= 0.0f) {
            bVarV.E(fD2);
        }
        if (fD3 >= 0.0f) {
            bVarV.w(fD3);
        }
        if (fD4 >= 0.0f) {
            bVarV.s(fD4);
        }
        this.R = bVarV.m();
        ColorStateList colorStateListB = l4.c.b(context2, w0VarI, y3.k.f36951y4);
        if (colorStateListB != null) {
            int defaultColor = colorStateListB.getDefaultColor();
            this.L0 = defaultColor;
            this.f25599c0 = defaultColor;
            if (colorStateListB.isStateful()) {
                this.M0 = colorStateListB.getColorForState(new int[]{-16842910}, -1);
                this.N0 = colorStateListB.getColorForState(new int[]{R.attr.state_focused, R.attr.state_enabled}, -1);
                this.O0 = colorStateListB.getColorForState(new int[]{R.attr.state_hovered, R.attr.state_enabled}, -1);
            } else {
                this.N0 = this.L0;
                ColorStateList colorStateListA = g.a.a(context2, y3.c.f36659c);
                this.M0 = colorStateListA.getColorForState(new int[]{-16842910}, -1);
                this.O0 = colorStateListA.getColorForState(new int[]{R.attr.state_hovered}, -1);
            }
        } else {
            this.f25599c0 = 0;
            this.L0 = 0;
            this.M0 = 0;
            this.N0 = 0;
            this.O0 = 0;
        }
        int i17 = y3.k.f36937w4;
        if (w0VarI.s(i17)) {
            ColorStateList colorStateListC = w0VarI.c(i17);
            this.G0 = colorStateListC;
            this.F0 = colorStateListC;
        }
        int i18 = y3.k.F4;
        ColorStateList colorStateListB2 = l4.c.b(context2, w0VarI, i18);
        this.J0 = w0VarI.b(i18, 0);
        this.H0 = androidx.core.content.a.d(context2, y3.c.f36660d);
        this.P0 = androidx.core.content.a.d(context2, y3.c.f36661e);
        this.I0 = androidx.core.content.a.d(context2, y3.c.f36662f);
        if (colorStateListB2 != null) {
            setBoxStrokeColorStateList(colorStateListB2);
        }
        int i19 = y3.k.G4;
        if (w0VarI.s(i19)) {
            setBoxStrokeErrorColor(l4.c.b(context2, w0VarI, i19));
        }
        if (w0VarI.n(i16, -1) != -1) {
            r22 = 0;
            setHintTextAppearance(w0VarI.n(i16, 0));
        } else {
            r22 = 0;
        }
        int iN = w0VarI.n(i14, r22);
        CharSequence charSequenceP = w0VarI.p(y3.k.V4);
        boolean zA = w0VarI.a(y3.k.W4, r22);
        LayoutInflater layoutInflaterFrom = LayoutInflater.from(getContext());
        int i20 = y3.h.f36726c;
        CheckableImageButton checkableImageButton = (CheckableImageButton) layoutInflaterFrom.inflate(i20, linearLayout2, (boolean) r22);
        this.D0 = checkableImageButton;
        checkableImageButton.setId(y3.f.K);
        checkableImageButton.setVisibility(8);
        if (l4.c.g(context2)) {
            androidx.core.view.h.d((ViewGroup.MarginLayoutParams) checkableImageButton.getLayoutParams(), r22);
        }
        int i21 = y3.k.X4;
        if (w0VarI.s(i21)) {
            setErrorIconDrawable(w0VarI.g(i21));
        }
        int i22 = y3.k.Y4;
        if (w0VarI.s(i22)) {
            setErrorIconTintList(l4.c.b(context2, w0VarI, i22));
        }
        int i23 = y3.k.Z4;
        if (w0VarI.s(i23)) {
            setErrorIconTintMode(com.google.android.material.internal.k.e(w0VarI.k(i23, -1), null));
        }
        checkableImageButton.setContentDescription(getResources().getText(y3.i.f36747f));
        a0.A0(checkableImageButton, 2);
        checkableImageButton.setClickable(false);
        checkableImageButton.setPressable(false);
        checkableImageButton.setFocusable(false);
        int iN2 = w0VarI.n(i15, 0);
        boolean zA2 = w0VarI.a(y3.k.f36812e5, false);
        CharSequence charSequenceP2 = w0VarI.p(y3.k.f36805d5);
        int iN3 = w0VarI.n(y3.k.f36903r5, 0);
        CharSequence charSequenceP3 = w0VarI.p(y3.k.f36896q5);
        int iN4 = w0VarI.n(y3.k.f36924u5, 0);
        CharSequence charSequenceP4 = w0VarI.p(y3.k.f36917t5);
        int iN5 = w0VarI.n(y3.k.C5, 0);
        CharSequence charSequenceP5 = w0VarI.p(y3.k.B5);
        boolean zA3 = w0VarI.a(y3.k.J4, false);
        setCounterMaxLength(w0VarI.k(y3.k.K4, -1));
        this.A = w0VarI.n(i12, 0);
        this.f25633z = w0VarI.n(i13, 0);
        CheckableImageButton checkableImageButton2 = (CheckableImageButton) LayoutInflater.from(getContext()).inflate(y3.h.f36727d, (ViewGroup) linearLayout, false);
        this.f25604h0 = checkableImageButton2;
        checkableImageButton2.setVisibility(8);
        if (l4.c.g(context2)) {
            androidx.core.view.h.c((ViewGroup.MarginLayoutParams) checkableImageButton2.getLayoutParams(), 0);
        }
        setStartIconOnClickListener(null);
        setStartIconOnLongClickListener(null);
        int i24 = y3.k.f36952y5;
        if (w0VarI.s(i24)) {
            setStartIconDrawable(w0VarI.g(i24));
            int i25 = y3.k.f36945x5;
            if (w0VarI.s(i25)) {
                setStartIconContentDescription(w0VarI.p(i25));
            }
            setStartIconCheckable(w0VarI.a(y3.k.f36938w5, true));
        }
        int i26 = y3.k.f36959z5;
        if (w0VarI.s(i26)) {
            setStartIconTintList(l4.c.b(context2, w0VarI, i26));
        }
        int i27 = y3.k.A5;
        if (w0VarI.s(i27)) {
            setStartIconTintMode(com.google.android.material.internal.k.e(w0VarI.k(i27, -1), null));
        }
        setBoxBackgroundMode(w0VarI.k(y3.k.f36958z4, 0));
        CheckableImageButton checkableImageButton3 = (CheckableImageButton) LayoutInflater.from(getContext()).inflate(i20, (ViewGroup) frameLayout2, false);
        this.f25620s0 = checkableImageButton3;
        frameLayout2.addView(checkableImageButton3);
        checkableImageButton3.setVisibility(8);
        if (l4.c.g(context2)) {
            androidx.core.view.h.d((ViewGroup.MarginLayoutParams) checkableImageButton3.getLayoutParams(), 0);
        }
        sparseArray.append(-1, new com.google.android.material.textfield.b(this));
        sparseArray.append(0, new com.google.android.material.textfield.h(this));
        sparseArray.append(1, new i(this));
        sparseArray.append(2, new com.google.android.material.textfield.a(this));
        sparseArray.append(3, new com.google.android.material.textfield.d(this));
        int i28 = y3.k.S4;
        if (w0VarI.s(i28)) {
            setEndIconMode(w0VarI.k(i28, 0));
            int i29 = y3.k.R4;
            if (w0VarI.s(i29)) {
                setEndIconDrawable(w0VarI.g(i29));
            }
            int i30 = y3.k.Q4;
            if (w0VarI.s(i30)) {
                setEndIconContentDescription(w0VarI.p(i30));
            }
            setEndIconCheckable(w0VarI.a(y3.k.P4, true));
        } else {
            int i31 = y3.k.f36875n5;
            if (w0VarI.s(i31)) {
                setEndIconMode(w0VarI.a(i31, false) ? 1 : 0);
                setEndIconDrawable(w0VarI.g(y3.k.f36868m5));
                setEndIconContentDescription(w0VarI.p(y3.k.f36861l5));
                int i32 = y3.k.f36882o5;
                if (w0VarI.s(i32)) {
                    setEndIconTintList(l4.c.b(context2, w0VarI, i32));
                }
                int i33 = y3.k.f36889p5;
                if (w0VarI.s(i33)) {
                    setEndIconTintMode(com.google.android.material.internal.k.e(w0VarI.k(i33, -1), null));
                }
            }
        }
        if (!w0VarI.s(y3.k.f36875n5)) {
            int i34 = y3.k.T4;
            if (w0VarI.s(i34)) {
                setEndIconTintList(l4.c.b(context2, w0VarI, i34));
            }
            int i35 = y3.k.U4;
            if (w0VarI.s(i35)) {
                setEndIconTintMode(com.google.android.material.internal.k.e(w0VarI.k(i35, -1), null));
            }
        }
        AppCompatTextView appCompatTextView = new AppCompatTextView(context2);
        this.J = appCompatTextView;
        appCompatTextView.setId(y3.f.P);
        appCompatTextView.setLayoutParams(new FrameLayout.LayoutParams(-2, -2));
        a0.s0(appCompatTextView, 1);
        linearLayout.addView(checkableImageButton2);
        linearLayout.addView(appCompatTextView);
        AppCompatTextView appCompatTextView2 = new AppCompatTextView(context2);
        this.L = appCompatTextView2;
        appCompatTextView2.setId(y3.f.Q);
        appCompatTextView2.setLayoutParams(new FrameLayout.LayoutParams(-2, -2, 80));
        a0.s0(appCompatTextView2, 1);
        linearLayout2.addView(appCompatTextView2);
        linearLayout2.addView(checkableImageButton);
        linearLayout2.addView(frameLayout2);
        setHelperTextEnabled(zA2);
        setHelperText(charSequenceP2);
        setHelperTextTextAppearance(iN2);
        setErrorEnabled(zA);
        setErrorTextAppearance(iN);
        setErrorContentDescription(charSequenceP);
        setCounterTextAppearance(this.A);
        setCounterOverflowTextAppearance(this.f25633z);
        setPlaceholderText(charSequenceP3);
        setPlaceholderTextAppearance(iN3);
        setPrefixText(charSequenceP4);
        setPrefixTextAppearance(iN4);
        setSuffixText(charSequenceP5);
        setSuffixTextAppearance(iN5);
        int i36 = y3.k.f36791b5;
        if (w0VarI.s(i36)) {
            setErrorTextColor(w0VarI.c(i36));
        }
        int i37 = y3.k.f36826g5;
        if (w0VarI.s(i37)) {
            setHelperTextColor(w0VarI.c(i37));
        }
        int i38 = y3.k.f36854k5;
        if (w0VarI.s(i38)) {
            setHintTextColor(w0VarI.c(i38));
        }
        int i39 = y3.k.O4;
        if (w0VarI.s(i39)) {
            setCounterTextColor(w0VarI.c(i39));
        }
        int i40 = y3.k.M4;
        if (w0VarI.s(i40)) {
            setCounterOverflowTextColor(w0VarI.c(i40));
        }
        int i41 = y3.k.f36910s5;
        if (w0VarI.s(i41)) {
            setPlaceholderTextColor(w0VarI.c(i41));
        }
        int i42 = y3.k.f36931v5;
        if (w0VarI.s(i42)) {
            setPrefixTextColor(w0VarI.c(i42));
        }
        int i43 = y3.k.D5;
        if (w0VarI.s(i43)) {
            setSuffixTextColor(w0VarI.c(i43));
        }
        setCounterEnabled(zA3);
        setEnabled(w0VarI.a(y3.k.f36930v4, true));
        w0VarI.w();
        a0.A0(this, 2);
        if (Build.VERSION.SDK_INT >= 26) {
            a0.B0(this, 1);
        }
    }

    public void setEndIconContentDescription(CharSequence charSequence) {
        if (getEndIconContentDescription() != charSequence) {
            this.f25620s0.setContentDescription(charSequence);
        }
    }

    public void setEndIconDrawable(Drawable drawable) {
        this.f25620s0.setImageDrawable(drawable);
        V();
    }

    public void setStartIconContentDescription(CharSequence charSequence) {
        if (getStartIconContentDescription() != charSequence) {
            this.f25604h0.setContentDescription(charSequence);
        }
    }

    public void setStartIconDrawable(Drawable drawable) {
        this.f25604h0.setImageDrawable(drawable);
        if (drawable != null) {
            setStartIconVisible(true);
            Y();
        } else {
            setStartIconVisible(false);
            setStartIconOnClickListener(null);
            setStartIconOnLongClickListener(null);
            setStartIconContentDescription((CharSequence) null);
        }
    }

    public void setErrorIconDrawable(Drawable drawable) {
        this.D0.setImageDrawable(drawable);
        setErrorIconVisible(drawable != null && this.f25623u.x());
    }

    @Deprecated
    public void setPasswordVisibilityToggleContentDescription(CharSequence charSequence) {
        this.f25620s0.setContentDescription(charSequence);
    }

    @Deprecated
    public void setPasswordVisibilityToggleDrawable(Drawable drawable) {
        this.f25620s0.setImageDrawable(drawable);
    }

    public void setHint(int i10) {
        setHint(i10 != 0 ? getResources().getText(i10) : null);
    }
}
