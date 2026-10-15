package com.google.android.material.chip;

import android.R;
import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Outline;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.InsetDrawable;
import android.graphics.drawable.RippleDrawable;
import android.os.Build;
import android.os.Bundle;
import android.text.TextPaint;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.PointerIcon;
import android.view.View;
import android.view.ViewOutlineProvider;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.TextView;
import androidx.appcompat.widget.f;
import androidx.core.view.a0;
import androidx.core.view.accessibility.c;
import com.google.android.material.chip.a;
import com.vungle.mediation.BuildConfig;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.List;
import l4.d;
import o4.n;
import y3.i;
import y3.j;
import y3.k;
import z3.h;

/* JADX INFO: loaded from: classes2.dex */
public class Chip extends f implements a.InterfaceC0115a, n {
    private static final int I = j.f36770m;
    private static final Rect J = new Rect();
    private static final int[] K = {R.attr.state_selected};
    private static final int[] L = {R.attr.state_checkable};
    private boolean A;
    private boolean B;
    private int C;
    private int D;
    private final c E;
    private final Rect F;
    private final RectF G;
    private final l4.f H;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private com.google.android.material.chip.a f25256s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private InsetDrawable f25257t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private RippleDrawable f25258u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private View.OnClickListener f25259v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private CompoundButton.OnCheckedChangeListener f25260w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private boolean f25261x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private boolean f25262y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private boolean f25263z;

    class a extends l4.f {
        a() {
        }

        @Override // l4.f
        public void a(int i10) {
        }

        @Override // l4.f
        public void b(Typeface typeface, boolean z10) {
            Chip chip = Chip.this;
            chip.setText(chip.f25256s.J2() ? Chip.this.f25256s.f1() : Chip.this.getText());
            Chip.this.requestLayout();
            Chip.this.invalidate();
        }
    }

    class b extends ViewOutlineProvider {
        b() {
        }

        @Override // android.view.ViewOutlineProvider
        @TargetApi(21)
        public void getOutline(View view, Outline outline) {
            if (Chip.this.f25256s != null) {
                Chip.this.f25256s.getOutline(outline);
            } else {
                outline.setAlpha(0.0f);
            }
        }
    }

    private class c extends c0.a {
        c(Chip chip) {
            super(chip);
        }

        @Override // c0.a
        protected int B(float f10, float f11) {
            return (Chip.this.n() && Chip.this.getCloseIconTouchBounds().contains(f10, f11)) ? 1 : 0;
        }

        @Override // c0.a
        protected void C(List<Integer> list) {
            list.add(0);
            if (Chip.this.n() && Chip.this.s() && Chip.this.f25259v != null) {
                list.add(1);
            }
        }

        @Override // c0.a
        protected boolean J(int i10, int i11, Bundle bundle) {
            if (i11 != 16) {
                return false;
            }
            if (i10 == 0) {
                return Chip.this.performClick();
            }
            if (i10 == 1) {
                return Chip.this.t();
            }
            return false;
        }

        @Override // c0.a
        protected void M(androidx.core.view.accessibility.c cVar) {
            cVar.V(Chip.this.r());
            cVar.Y(Chip.this.isClickable());
            if (Chip.this.r() || Chip.this.isClickable()) {
                cVar.X(Chip.this.r() ? "android.widget.CompoundButton" : "android.widget.Button");
            } else {
                cVar.X("android.view.View");
            }
            CharSequence text = Chip.this.getText();
            if (Build.VERSION.SDK_INT >= 23) {
                cVar.t0(text);
            } else {
                cVar.b0(text);
            }
        }

        @Override // c0.a
        protected void N(int i10, androidx.core.view.accessibility.c cVar) {
            CharSequence charSequence = BuildConfig.FLAVOR;
            if (i10 != 1) {
                cVar.b0(BuildConfig.FLAVOR);
                cVar.T(Chip.J);
                return;
            }
            CharSequence closeIconContentDescription = Chip.this.getCloseIconContentDescription();
            if (closeIconContentDescription != null) {
                cVar.b0(closeIconContentDescription);
            } else {
                CharSequence text = Chip.this.getText();
                Context context = Chip.this.getContext();
                int i11 = i.f36749h;
                Object[] objArr = new Object[1];
                if (!TextUtils.isEmpty(text)) {
                    charSequence = text;
                }
                objArr[0] = charSequence;
                cVar.b0(context.getString(i11, objArr).trim());
            }
            cVar.T(Chip.this.getCloseIconTouchBoundsInt());
            cVar.b(c.a.f2429i);
            cVar.d0(Chip.this.isEnabled());
        }

        @Override // c0.a
        protected void O(int i10, boolean z10) {
            if (i10 == 1) {
                Chip.this.A = z10;
                Chip.this.refreshDrawableState();
            }
        }
    }

    public Chip(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, y3.b.f36636f);
    }

    private void A() {
        com.google.android.material.chip.a aVar;
        if (TextUtils.isEmpty(getText()) || (aVar = this.f25256s) == null) {
            return;
        }
        int iH0 = (int) (aVar.H0() + this.f25256s.h1() + this.f25256s.o0());
        int iM0 = (int) (this.f25256s.M0() + this.f25256s.i1() + this.f25256s.k0());
        if (this.f25257t != null) {
            Rect rect = new Rect();
            this.f25257t.getPadding(rect);
            iM0 += rect.left;
            iH0 += rect.right;
        }
        a0.D0(this, iM0, getPaddingTop(), iH0, getPaddingBottom());
    }

    private void B() {
        TextPaint paint = getPaint();
        com.google.android.material.chip.a aVar = this.f25256s;
        if (aVar != null) {
            paint.drawableState = aVar.getState();
        }
        d textAppearance = getTextAppearance();
        if (textAppearance != null) {
            textAppearance.j(getContext(), paint, this.H);
        }
    }

    private void C(AttributeSet attributeSet) {
        if (attributeSet == null) {
            return;
        }
        if (attributeSet.getAttributeValue("http://schemas.android.com/apk/res/android", "background") != null) {
            Log.w("Chip", "Do not set the background; Chip manages its own background drawable.");
        }
        if (attributeSet.getAttributeValue("http://schemas.android.com/apk/res/android", "drawableLeft") != null) {
            throw new UnsupportedOperationException("Please set left drawable using R.attr#chipIcon.");
        }
        if (attributeSet.getAttributeValue("http://schemas.android.com/apk/res/android", "drawableStart") != null) {
            throw new UnsupportedOperationException("Please set start drawable using R.attr#chipIcon.");
        }
        if (attributeSet.getAttributeValue("http://schemas.android.com/apk/res/android", "drawableEnd") != null) {
            throw new UnsupportedOperationException("Please set end drawable using R.attr#closeIcon.");
        }
        if (attributeSet.getAttributeValue("http://schemas.android.com/apk/res/android", "drawableRight") != null) {
            throw new UnsupportedOperationException("Please set end drawable using R.attr#closeIcon.");
        }
        if (!attributeSet.getAttributeBooleanValue("http://schemas.android.com/apk/res/android", "singleLine", true) || attributeSet.getAttributeIntValue("http://schemas.android.com/apk/res/android", "lines", 1) != 1 || attributeSet.getAttributeIntValue("http://schemas.android.com/apk/res/android", "minLines", 1) != 1 || attributeSet.getAttributeIntValue("http://schemas.android.com/apk/res/android", "maxLines", 1) != 1) {
            throw new UnsupportedOperationException("Chip does not support multi-line text");
        }
        if (attributeSet.getAttributeIntValue("http://schemas.android.com/apk/res/android", "gravity", 8388627) != 8388627) {
            Log.w("Chip", "Chip text must be vertically center and start aligned");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public RectF getCloseIconTouchBounds() {
        this.G.setEmpty();
        if (n() && this.f25259v != null) {
            this.f25256s.W0(this.G);
        }
        return this.G;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Rect getCloseIconTouchBoundsInt() {
        RectF closeIconTouchBounds = getCloseIconTouchBounds();
        this.F.set((int) closeIconTouchBounds.left, (int) closeIconTouchBounds.top, (int) closeIconTouchBounds.right, (int) closeIconTouchBounds.bottom);
        return this.F;
    }

    private d getTextAppearance() {
        com.google.android.material.chip.a aVar = this.f25256s;
        if (aVar != null) {
            return aVar.g1();
        }
        return null;
    }

    private void i(com.google.android.material.chip.a aVar) {
        aVar.n2(this);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0, types: [boolean, int] */
    private int[] j() {
        ?? IsEnabled = isEnabled();
        int i10 = IsEnabled;
        if (this.A) {
            i10 = IsEnabled + 1;
        }
        int i11 = i10;
        if (this.f25263z) {
            i11 = i10 + 1;
        }
        int i12 = i11;
        if (this.f25262y) {
            i12 = i11 + 1;
        }
        int i13 = i12;
        if (isChecked()) {
            i13 = i12 + 1;
        }
        int[] iArr = new int[i13];
        int i14 = 0;
        if (isEnabled()) {
            iArr[0] = 16842910;
            i14 = 1;
        }
        if (this.A) {
            iArr[i14] = 16842908;
            i14++;
        }
        if (this.f25263z) {
            iArr[i14] = 16843623;
            i14++;
        }
        if (this.f25262y) {
            iArr[i14] = 16842919;
            i14++;
        }
        if (isChecked()) {
            iArr[i14] = 16842913;
        }
        return iArr;
    }

    private void l() {
        if (getBackgroundDrawable() == this.f25257t && this.f25256s.getCallback() == null) {
            this.f25256s.setCallback(this.f25257t);
        }
    }

    @SuppressLint({"PrivateApi"})
    private boolean m(MotionEvent motionEvent) {
        if (motionEvent.getAction() == 10) {
            try {
                Field declaredField = c0.a.class.getDeclaredField("m");
                declaredField.setAccessible(true);
                if (((Integer) declaredField.get(this.E)).intValue() != Integer.MIN_VALUE) {
                    Method declaredMethod = c0.a.class.getDeclaredMethod("V", Integer.TYPE);
                    declaredMethod.setAccessible(true);
                    declaredMethod.invoke(this.E, Integer.MIN_VALUE);
                    return true;
                }
            } catch (IllegalAccessException e10) {
                Log.e("Chip", "Unable to send Accessibility Exit event", e10);
            } catch (NoSuchFieldException e11) {
                Log.e("Chip", "Unable to send Accessibility Exit event", e11);
            } catch (NoSuchMethodException e12) {
                Log.e("Chip", "Unable to send Accessibility Exit event", e12);
            } catch (InvocationTargetException e13) {
                Log.e("Chip", "Unable to send Accessibility Exit event", e13);
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean n() {
        com.google.android.material.chip.a aVar = this.f25256s;
        return (aVar == null || aVar.P0() == null) ? false : true;
    }

    private void o(Context context, AttributeSet attributeSet, int i10) {
        TypedArray typedArrayH = com.google.android.material.internal.j.h(context, attributeSet, k.N, i10, I, new int[0]);
        this.B = typedArrayH.getBoolean(k.f36919u0, false);
        this.D = (int) Math.ceil(typedArrayH.getDimension(k.f36835i0, (float) Math.ceil(com.google.android.material.internal.k.b(getContext(), 48))));
        typedArrayH.recycle();
    }

    private void p() {
        if (Build.VERSION.SDK_INT >= 21) {
            setOutlineProvider(new b());
        }
    }

    private void q(int i10, int i11, int i12, int i13) {
        this.f25257t = new InsetDrawable((Drawable) this.f25256s, i10, i11, i12, i13);
    }

    private void setCloseIconHovered(boolean z10) {
        if (this.f25263z != z10) {
            this.f25263z = z10;
            refreshDrawableState();
        }
    }

    private void setCloseIconPressed(boolean z10) {
        if (this.f25262y != z10) {
            this.f25262y = z10;
            refreshDrawableState();
        }
    }

    private void u() {
        if (this.f25257t != null) {
            this.f25257t = null;
            setMinWidth(0);
            setMinHeight((int) getChipMinHeight());
            y();
        }
    }

    private void w(com.google.android.material.chip.a aVar) {
        if (aVar != null) {
            aVar.n2(null);
        }
    }

    private void x() {
        if (n() && s() && this.f25259v != null) {
            a0.q0(this, this.E);
        } else {
            a0.q0(this, null);
        }
    }

    private void y() {
        if (m4.b.f32158a) {
            z();
            return;
        }
        this.f25256s.I2(true);
        a0.u0(this, getBackgroundDrawable());
        A();
        l();
    }

    private void z() {
        this.f25258u = new RippleDrawable(m4.b.a(this.f25256s.d1()), getBackgroundDrawable(), null);
        this.f25256s.I2(false);
        a0.u0(this, this.f25258u);
        A();
    }

    @Override // com.google.android.material.chip.a.InterfaceC0115a
    public void a() {
        k(this.D);
        requestLayout();
        if (Build.VERSION.SDK_INT >= 21) {
            invalidateOutline();
        }
    }

    @Override // android.view.View
    protected boolean dispatchHoverEvent(MotionEvent motionEvent) {
        return m(motionEvent) || this.E.v(motionEvent) || super.dispatchHoverEvent(motionEvent);
    }

    @Override // android.view.View
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        if (!this.E.w(keyEvent) || this.E.A() == Integer.MIN_VALUE) {
            return super.dispatchKeyEvent(keyEvent);
        }
        return true;
    }

    @Override // androidx.appcompat.widget.f, android.widget.CompoundButton, android.widget.TextView, android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        com.google.android.material.chip.a aVar = this.f25256s;
        if ((aVar == null || !aVar.n1()) ? false : this.f25256s.j2(j())) {
            invalidate();
        }
    }

    public Drawable getBackgroundDrawable() {
        InsetDrawable insetDrawable = this.f25257t;
        return insetDrawable == null ? this.f25256s : insetDrawable;
    }

    public Drawable getCheckedIcon() {
        com.google.android.material.chip.a aVar = this.f25256s;
        if (aVar != null) {
            return aVar.D0();
        }
        return null;
    }

    public ColorStateList getCheckedIconTint() {
        com.google.android.material.chip.a aVar = this.f25256s;
        if (aVar != null) {
            return aVar.E0();
        }
        return null;
    }

    public ColorStateList getChipBackgroundColor() {
        com.google.android.material.chip.a aVar = this.f25256s;
        if (aVar != null) {
            return aVar.F0();
        }
        return null;
    }

    public float getChipCornerRadius() {
        com.google.android.material.chip.a aVar = this.f25256s;
        if (aVar != null) {
            return Math.max(0.0f, aVar.G0());
        }
        return 0.0f;
    }

    public Drawable getChipDrawable() {
        return this.f25256s;
    }

    public float getChipEndPadding() {
        com.google.android.material.chip.a aVar = this.f25256s;
        if (aVar != null) {
            return aVar.H0();
        }
        return 0.0f;
    }

    public Drawable getChipIcon() {
        com.google.android.material.chip.a aVar = this.f25256s;
        if (aVar != null) {
            return aVar.I0();
        }
        return null;
    }

    public float getChipIconSize() {
        com.google.android.material.chip.a aVar = this.f25256s;
        if (aVar != null) {
            return aVar.J0();
        }
        return 0.0f;
    }

    public ColorStateList getChipIconTint() {
        com.google.android.material.chip.a aVar = this.f25256s;
        if (aVar != null) {
            return aVar.K0();
        }
        return null;
    }

    public float getChipMinHeight() {
        com.google.android.material.chip.a aVar = this.f25256s;
        if (aVar != null) {
            return aVar.L0();
        }
        return 0.0f;
    }

    public float getChipStartPadding() {
        com.google.android.material.chip.a aVar = this.f25256s;
        if (aVar != null) {
            return aVar.M0();
        }
        return 0.0f;
    }

    public ColorStateList getChipStrokeColor() {
        com.google.android.material.chip.a aVar = this.f25256s;
        if (aVar != null) {
            return aVar.N0();
        }
        return null;
    }

    public float getChipStrokeWidth() {
        com.google.android.material.chip.a aVar = this.f25256s;
        if (aVar != null) {
            return aVar.O0();
        }
        return 0.0f;
    }

    @Deprecated
    public CharSequence getChipText() {
        return getText();
    }

    public Drawable getCloseIcon() {
        com.google.android.material.chip.a aVar = this.f25256s;
        if (aVar != null) {
            return aVar.P0();
        }
        return null;
    }

    public CharSequence getCloseIconContentDescription() {
        com.google.android.material.chip.a aVar = this.f25256s;
        if (aVar != null) {
            return aVar.Q0();
        }
        return null;
    }

    public float getCloseIconEndPadding() {
        com.google.android.material.chip.a aVar = this.f25256s;
        if (aVar != null) {
            return aVar.R0();
        }
        return 0.0f;
    }

    public float getCloseIconSize() {
        com.google.android.material.chip.a aVar = this.f25256s;
        if (aVar != null) {
            return aVar.S0();
        }
        return 0.0f;
    }

    public float getCloseIconStartPadding() {
        com.google.android.material.chip.a aVar = this.f25256s;
        if (aVar != null) {
            return aVar.T0();
        }
        return 0.0f;
    }

    public ColorStateList getCloseIconTint() {
        com.google.android.material.chip.a aVar = this.f25256s;
        if (aVar != null) {
            return aVar.V0();
        }
        return null;
    }

    @Override // android.widget.TextView
    public TextUtils.TruncateAt getEllipsize() {
        com.google.android.material.chip.a aVar = this.f25256s;
        if (aVar != null) {
            return aVar.Z0();
        }
        return null;
    }

    @Override // android.widget.TextView, android.view.View
    public void getFocusedRect(Rect rect) {
        if (this.E.A() == 1 || this.E.x() == 1) {
            rect.set(getCloseIconTouchBoundsInt());
        } else {
            super.getFocusedRect(rect);
        }
    }

    public h getHideMotionSpec() {
        com.google.android.material.chip.a aVar = this.f25256s;
        if (aVar != null) {
            return aVar.a1();
        }
        return null;
    }

    public float getIconEndPadding() {
        com.google.android.material.chip.a aVar = this.f25256s;
        if (aVar != null) {
            return aVar.b1();
        }
        return 0.0f;
    }

    public float getIconStartPadding() {
        com.google.android.material.chip.a aVar = this.f25256s;
        if (aVar != null) {
            return aVar.c1();
        }
        return 0.0f;
    }

    public ColorStateList getRippleColor() {
        com.google.android.material.chip.a aVar = this.f25256s;
        if (aVar != null) {
            return aVar.d1();
        }
        return null;
    }

    public o4.k getShapeAppearanceModel() {
        return this.f25256s.C();
    }

    public h getShowMotionSpec() {
        com.google.android.material.chip.a aVar = this.f25256s;
        if (aVar != null) {
            return aVar.e1();
        }
        return null;
    }

    public float getTextEndPadding() {
        com.google.android.material.chip.a aVar = this.f25256s;
        if (aVar != null) {
            return aVar.h1();
        }
        return 0.0f;
    }

    public float getTextStartPadding() {
        com.google.android.material.chip.a aVar = this.f25256s;
        if (aVar != null) {
            return aVar.i1();
        }
        return 0.0f;
    }

    public boolean k(int i10) {
        this.D = i10;
        if (!v()) {
            if (this.f25257t != null) {
                u();
            } else {
                y();
            }
            return false;
        }
        int iMax = Math.max(0, i10 - this.f25256s.getIntrinsicHeight());
        int iMax2 = Math.max(0, i10 - this.f25256s.getIntrinsicWidth());
        if (iMax2 <= 0 && iMax <= 0) {
            if (this.f25257t != null) {
                u();
            } else {
                y();
            }
            return false;
        }
        int i11 = iMax2 > 0 ? iMax2 / 2 : 0;
        int i12 = iMax > 0 ? iMax / 2 : 0;
        if (this.f25257t != null) {
            Rect rect = new Rect();
            this.f25257t.getPadding(rect);
            if (rect.top == i12 && rect.bottom == i12 && rect.left == i11 && rect.right == i11) {
                y();
                return true;
            }
        }
        if (Build.VERSION.SDK_INT >= 16) {
            if (getMinHeight() != i10) {
                setMinHeight(i10);
            }
            if (getMinWidth() != i10) {
                setMinWidth(i10);
            }
        } else {
            setMinHeight(i10);
            setMinWidth(i10);
        }
        q(i11, i12, i11, i12);
        y();
        return true;
    }

    @Override // android.widget.TextView, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        o4.h.f(this, this.f25256s);
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    protected int[] onCreateDrawableState(int i10) {
        int[] iArrOnCreateDrawableState = super.onCreateDrawableState(i10 + 2);
        if (isChecked()) {
            CheckBox.mergeDrawableStates(iArrOnCreateDrawableState, K);
        }
        if (r()) {
            CheckBox.mergeDrawableStates(iArrOnCreateDrawableState, L);
        }
        return iArrOnCreateDrawableState;
    }

    @Override // android.widget.TextView, android.view.View
    protected void onFocusChanged(boolean z10, int i10, Rect rect) {
        super.onFocusChanged(z10, i10, rect);
        this.E.I(z10, i10, rect);
    }

    @Override // android.view.View
    public boolean onHoverEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 7) {
            setCloseIconHovered(getCloseIconTouchBounds().contains(motionEvent.getX(), motionEvent.getY()));
        } else if (actionMasked == 10) {
            setCloseIconHovered(false);
        }
        return super.onHoverEvent(motionEvent);
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        if (r() || isClickable()) {
            accessibilityNodeInfo.setClassName(r() ? "android.widget.CompoundButton" : "android.widget.Button");
        } else {
            accessibilityNodeInfo.setClassName("android.view.View");
        }
        accessibilityNodeInfo.setCheckable(r());
        accessibilityNodeInfo.setClickable(isClickable());
        if (getParent() instanceof ChipGroup) {
            ChipGroup chipGroup = (ChipGroup) getParent();
            androidx.core.view.accessibility.c.x0(accessibilityNodeInfo).a0(c.C0039c.a(chipGroup.b(this), 1, chipGroup.c() ? chipGroup.o(this) : -1, 1, false, isChecked()));
        }
    }

    @Override // android.widget.Button, android.widget.TextView, android.view.View
    @TargetApi(24)
    public PointerIcon onResolvePointerIcon(MotionEvent motionEvent, int i10) {
        if (getCloseIconTouchBounds().contains(motionEvent.getX(), motionEvent.getY()) && isEnabled()) {
            return PointerIcon.getSystemIcon(getContext(), 1002);
        }
        return null;
    }

    @Override // android.widget.TextView, android.view.View
    @TargetApi(17)
    public void onRtlPropertiesChanged(int i10) {
        super.onRtlPropertiesChanged(i10);
        if (this.C != i10) {
            this.C = i10;
            A();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:8:0x001e, code lost:
    
        if (r0 != 3) goto L22;
     */
    @Override // android.widget.TextView, android.view.View
    @android.annotation.SuppressLint({"ClickableViewAccessibility"})
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public boolean onTouchEvent(android.view.MotionEvent r6) {
        /*
            r5 = this;
            int r0 = r6.getActionMasked()
            android.graphics.RectF r1 = r5.getCloseIconTouchBounds()
            float r2 = r6.getX()
            float r3 = r6.getY()
            boolean r1 = r1.contains(r2, r3)
            r2 = 0
            r3 = 1
            if (r0 == 0) goto L39
            if (r0 == r3) goto L2b
            r4 = 2
            if (r0 == r4) goto L21
            r1 = 3
            if (r0 == r1) goto L34
            goto L40
        L21:
            boolean r0 = r5.f25262y
            if (r0 == 0) goto L40
            if (r1 != 0) goto L3e
            r5.setCloseIconPressed(r2)
            goto L3e
        L2b:
            boolean r0 = r5.f25262y
            if (r0 == 0) goto L34
            r5.t()
            r0 = 1
            goto L35
        L34:
            r0 = 0
        L35:
            r5.setCloseIconPressed(r2)
            goto L41
        L39:
            if (r1 == 0) goto L40
            r5.setCloseIconPressed(r3)
        L3e:
            r0 = 1
            goto L41
        L40:
            r0 = 0
        L41:
            if (r0 != 0) goto L49
            boolean r6 = super.onTouchEvent(r6)
            if (r6 == 0) goto L4a
        L49:
            r2 = 1
        L4a:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.chip.Chip.onTouchEvent(android.view.MotionEvent):boolean");
    }

    public boolean r() {
        com.google.android.material.chip.a aVar = this.f25256s;
        return aVar != null && aVar.m1();
    }

    public boolean s() {
        com.google.android.material.chip.a aVar = this.f25256s;
        return aVar != null && aVar.o1();
    }

    @Override // android.view.View
    public void setBackground(Drawable drawable) {
        if (drawable == getBackgroundDrawable() || drawable == this.f25258u) {
            super.setBackground(drawable);
        } else {
            Log.w("Chip", "Do not set the background; Chip manages its own background drawable.");
        }
    }

    @Override // android.view.View
    public void setBackgroundColor(int i10) {
        Log.w("Chip", "Do not set the background color; Chip manages its own background drawable.");
    }

    @Override // androidx.appcompat.widget.f, android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        if (drawable == getBackgroundDrawable() || drawable == this.f25258u) {
            super.setBackgroundDrawable(drawable);
        } else {
            Log.w("Chip", "Do not set the background drawable; Chip manages its own background drawable.");
        }
    }

    @Override // androidx.appcompat.widget.f, android.view.View
    public void setBackgroundResource(int i10) {
        Log.w("Chip", "Do not set the background resource; Chip manages its own background drawable.");
    }

    @Override // android.view.View
    public void setBackgroundTintList(ColorStateList colorStateList) {
        Log.w("Chip", "Do not set the background tint list; Chip manages its own background drawable.");
    }

    @Override // android.view.View
    public void setBackgroundTintMode(PorterDuff.Mode mode) {
        Log.w("Chip", "Do not set the background tint mode; Chip manages its own background drawable.");
    }

    public void setCheckable(boolean z10) {
        com.google.android.material.chip.a aVar = this.f25256s;
        if (aVar != null) {
            aVar.v1(z10);
        }
    }

    public void setCheckableResource(int i10) {
        com.google.android.material.chip.a aVar = this.f25256s;
        if (aVar != null) {
            aVar.w1(i10);
        }
    }

    @Override // android.widget.CompoundButton, android.widget.Checkable
    public void setChecked(boolean z10) {
        CompoundButton.OnCheckedChangeListener onCheckedChangeListener;
        com.google.android.material.chip.a aVar = this.f25256s;
        if (aVar == null) {
            this.f25261x = z10;
            return;
        }
        if (aVar.m1()) {
            boolean zIsChecked = isChecked();
            super.setChecked(z10);
            if (zIsChecked == z10 || (onCheckedChangeListener = this.f25260w) == null) {
                return;
            }
            onCheckedChangeListener.onCheckedChanged(this, z10);
        }
    }

    public void setCheckedIcon(Drawable drawable) {
        com.google.android.material.chip.a aVar = this.f25256s;
        if (aVar != null) {
            aVar.x1(drawable);
        }
    }

    @Deprecated
    public void setCheckedIconEnabled(boolean z10) {
        setCheckedIconVisible(z10);
    }

    @Deprecated
    public void setCheckedIconEnabledResource(int i10) {
        setCheckedIconVisible(i10);
    }

    public void setCheckedIconResource(int i10) {
        com.google.android.material.chip.a aVar = this.f25256s;
        if (aVar != null) {
            aVar.y1(i10);
        }
    }

    public void setCheckedIconTint(ColorStateList colorStateList) {
        com.google.android.material.chip.a aVar = this.f25256s;
        if (aVar != null) {
            aVar.z1(colorStateList);
        }
    }

    public void setCheckedIconTintResource(int i10) {
        com.google.android.material.chip.a aVar = this.f25256s;
        if (aVar != null) {
            aVar.A1(i10);
        }
    }

    public void setCheckedIconVisible(int i10) {
        com.google.android.material.chip.a aVar = this.f25256s;
        if (aVar != null) {
            aVar.B1(i10);
        }
    }

    public void setChipBackgroundColor(ColorStateList colorStateList) {
        com.google.android.material.chip.a aVar = this.f25256s;
        if (aVar != null) {
            aVar.D1(colorStateList);
        }
    }

    public void setChipBackgroundColorResource(int i10) {
        com.google.android.material.chip.a aVar = this.f25256s;
        if (aVar != null) {
            aVar.E1(i10);
        }
    }

    @Deprecated
    public void setChipCornerRadius(float f10) {
        com.google.android.material.chip.a aVar = this.f25256s;
        if (aVar != null) {
            aVar.F1(f10);
        }
    }

    @Deprecated
    public void setChipCornerRadiusResource(int i10) {
        com.google.android.material.chip.a aVar = this.f25256s;
        if (aVar != null) {
            aVar.G1(i10);
        }
    }

    public void setChipDrawable(com.google.android.material.chip.a aVar) {
        com.google.android.material.chip.a aVar2 = this.f25256s;
        if (aVar2 != aVar) {
            w(aVar2);
            this.f25256s = aVar;
            aVar.y2(false);
            i(this.f25256s);
            k(this.D);
        }
    }

    public void setChipEndPadding(float f10) {
        com.google.android.material.chip.a aVar = this.f25256s;
        if (aVar != null) {
            aVar.H1(f10);
        }
    }

    public void setChipEndPaddingResource(int i10) {
        com.google.android.material.chip.a aVar = this.f25256s;
        if (aVar != null) {
            aVar.I1(i10);
        }
    }

    public void setChipIcon(Drawable drawable) {
        com.google.android.material.chip.a aVar = this.f25256s;
        if (aVar != null) {
            aVar.J1(drawable);
        }
    }

    @Deprecated
    public void setChipIconEnabled(boolean z10) {
        setChipIconVisible(z10);
    }

    @Deprecated
    public void setChipIconEnabledResource(int i10) {
        setChipIconVisible(i10);
    }

    public void setChipIconResource(int i10) {
        com.google.android.material.chip.a aVar = this.f25256s;
        if (aVar != null) {
            aVar.K1(i10);
        }
    }

    public void setChipIconSize(float f10) {
        com.google.android.material.chip.a aVar = this.f25256s;
        if (aVar != null) {
            aVar.L1(f10);
        }
    }

    public void setChipIconSizeResource(int i10) {
        com.google.android.material.chip.a aVar = this.f25256s;
        if (aVar != null) {
            aVar.M1(i10);
        }
    }

    public void setChipIconTint(ColorStateList colorStateList) {
        com.google.android.material.chip.a aVar = this.f25256s;
        if (aVar != null) {
            aVar.N1(colorStateList);
        }
    }

    public void setChipIconTintResource(int i10) {
        com.google.android.material.chip.a aVar = this.f25256s;
        if (aVar != null) {
            aVar.O1(i10);
        }
    }

    public void setChipIconVisible(int i10) {
        com.google.android.material.chip.a aVar = this.f25256s;
        if (aVar != null) {
            aVar.P1(i10);
        }
    }

    public void setChipMinHeight(float f10) {
        com.google.android.material.chip.a aVar = this.f25256s;
        if (aVar != null) {
            aVar.R1(f10);
        }
    }

    public void setChipMinHeightResource(int i10) {
        com.google.android.material.chip.a aVar = this.f25256s;
        if (aVar != null) {
            aVar.S1(i10);
        }
    }

    public void setChipStartPadding(float f10) {
        com.google.android.material.chip.a aVar = this.f25256s;
        if (aVar != null) {
            aVar.T1(f10);
        }
    }

    public void setChipStartPaddingResource(int i10) {
        com.google.android.material.chip.a aVar = this.f25256s;
        if (aVar != null) {
            aVar.U1(i10);
        }
    }

    public void setChipStrokeColor(ColorStateList colorStateList) {
        com.google.android.material.chip.a aVar = this.f25256s;
        if (aVar != null) {
            aVar.V1(colorStateList);
        }
    }

    public void setChipStrokeColorResource(int i10) {
        com.google.android.material.chip.a aVar = this.f25256s;
        if (aVar != null) {
            aVar.W1(i10);
        }
    }

    public void setChipStrokeWidth(float f10) {
        com.google.android.material.chip.a aVar = this.f25256s;
        if (aVar != null) {
            aVar.X1(f10);
        }
    }

    public void setChipStrokeWidthResource(int i10) {
        com.google.android.material.chip.a aVar = this.f25256s;
        if (aVar != null) {
            aVar.Y1(i10);
        }
    }

    @Deprecated
    public void setChipText(CharSequence charSequence) {
        setText(charSequence);
    }

    @Deprecated
    public void setChipTextResource(int i10) {
        setText(getResources().getString(i10));
    }

    public void setCloseIcon(Drawable drawable) {
        com.google.android.material.chip.a aVar = this.f25256s;
        if (aVar != null) {
            aVar.a2(drawable);
        }
        x();
    }

    public void setCloseIconContentDescription(CharSequence charSequence) {
        com.google.android.material.chip.a aVar = this.f25256s;
        if (aVar != null) {
            aVar.b2(charSequence);
        }
    }

    @Deprecated
    public void setCloseIconEnabled(boolean z10) {
        setCloseIconVisible(z10);
    }

    @Deprecated
    public void setCloseIconEnabledResource(int i10) {
        setCloseIconVisible(i10);
    }

    public void setCloseIconEndPadding(float f10) {
        com.google.android.material.chip.a aVar = this.f25256s;
        if (aVar != null) {
            aVar.c2(f10);
        }
    }

    public void setCloseIconEndPaddingResource(int i10) {
        com.google.android.material.chip.a aVar = this.f25256s;
        if (aVar != null) {
            aVar.d2(i10);
        }
    }

    public void setCloseIconResource(int i10) {
        com.google.android.material.chip.a aVar = this.f25256s;
        if (aVar != null) {
            aVar.e2(i10);
        }
        x();
    }

    public void setCloseIconSize(float f10) {
        com.google.android.material.chip.a aVar = this.f25256s;
        if (aVar != null) {
            aVar.f2(f10);
        }
    }

    public void setCloseIconSizeResource(int i10) {
        com.google.android.material.chip.a aVar = this.f25256s;
        if (aVar != null) {
            aVar.g2(i10);
        }
    }

    public void setCloseIconStartPadding(float f10) {
        com.google.android.material.chip.a aVar = this.f25256s;
        if (aVar != null) {
            aVar.h2(f10);
        }
    }

    public void setCloseIconStartPaddingResource(int i10) {
        com.google.android.material.chip.a aVar = this.f25256s;
        if (aVar != null) {
            aVar.i2(i10);
        }
    }

    public void setCloseIconTint(ColorStateList colorStateList) {
        com.google.android.material.chip.a aVar = this.f25256s;
        if (aVar != null) {
            aVar.k2(colorStateList);
        }
    }

    public void setCloseIconTintResource(int i10) {
        com.google.android.material.chip.a aVar = this.f25256s;
        if (aVar != null) {
            aVar.l2(i10);
        }
    }

    public void setCloseIconVisible(int i10) {
        setCloseIconVisible(getResources().getBoolean(i10));
    }

    @Override // androidx.appcompat.widget.f, android.widget.TextView
    public void setCompoundDrawables(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        if (drawable != null) {
            throw new UnsupportedOperationException("Please set start drawable using R.attr#chipIcon.");
        }
        if (drawable3 != null) {
            throw new UnsupportedOperationException("Please set end drawable using R.attr#closeIcon.");
        }
        super.setCompoundDrawables(drawable, drawable2, drawable3, drawable4);
    }

    @Override // androidx.appcompat.widget.f, android.widget.TextView
    public void setCompoundDrawablesRelative(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        if (drawable != null) {
            throw new UnsupportedOperationException("Please set start drawable using R.attr#chipIcon.");
        }
        if (drawable3 != null) {
            throw new UnsupportedOperationException("Please set end drawable using R.attr#closeIcon.");
        }
        super.setCompoundDrawablesRelative(drawable, drawable2, drawable3, drawable4);
    }

    @Override // android.widget.TextView
    public void setCompoundDrawablesRelativeWithIntrinsicBounds(int i10, int i11, int i12, int i13) {
        if (i10 != 0) {
            throw new UnsupportedOperationException("Please set start drawable using R.attr#chipIcon.");
        }
        if (i12 != 0) {
            throw new UnsupportedOperationException("Please set end drawable using R.attr#closeIcon.");
        }
        super.setCompoundDrawablesRelativeWithIntrinsicBounds(i10, i11, i12, i13);
    }

    @Override // android.widget.TextView
    public void setCompoundDrawablesWithIntrinsicBounds(int i10, int i11, int i12, int i13) {
        if (i10 != 0) {
            throw new UnsupportedOperationException("Please set start drawable using R.attr#chipIcon.");
        }
        if (i12 != 0) {
            throw new UnsupportedOperationException("Please set end drawable using R.attr#closeIcon.");
        }
        super.setCompoundDrawablesWithIntrinsicBounds(i10, i11, i12, i13);
    }

    @Override // android.view.View
    public void setElevation(float f10) {
        super.setElevation(f10);
        com.google.android.material.chip.a aVar = this.f25256s;
        if (aVar != null) {
            aVar.V(f10);
        }
    }

    @Override // android.widget.TextView
    public void setEllipsize(TextUtils.TruncateAt truncateAt) {
        if (this.f25256s == null) {
            return;
        }
        if (truncateAt == TextUtils.TruncateAt.MARQUEE) {
            throw new UnsupportedOperationException("Text within a chip are not allowed to scroll.");
        }
        super.setEllipsize(truncateAt);
        com.google.android.material.chip.a aVar = this.f25256s;
        if (aVar != null) {
            aVar.o2(truncateAt);
        }
    }

    public void setEnsureMinTouchTargetSize(boolean z10) {
        this.B = z10;
        k(this.D);
    }

    @Override // android.widget.TextView
    public void setGravity(int i10) {
        if (i10 != 8388627) {
            Log.w("Chip", "Chip text must be vertically center and start aligned");
        } else {
            super.setGravity(i10);
        }
    }

    public void setHideMotionSpec(h hVar) {
        com.google.android.material.chip.a aVar = this.f25256s;
        if (aVar != null) {
            aVar.p2(hVar);
        }
    }

    public void setHideMotionSpecResource(int i10) {
        com.google.android.material.chip.a aVar = this.f25256s;
        if (aVar != null) {
            aVar.q2(i10);
        }
    }

    public void setIconEndPadding(float f10) {
        com.google.android.material.chip.a aVar = this.f25256s;
        if (aVar != null) {
            aVar.r2(f10);
        }
    }

    public void setIconEndPaddingResource(int i10) {
        com.google.android.material.chip.a aVar = this.f25256s;
        if (aVar != null) {
            aVar.s2(i10);
        }
    }

    public void setIconStartPadding(float f10) {
        com.google.android.material.chip.a aVar = this.f25256s;
        if (aVar != null) {
            aVar.t2(f10);
        }
    }

    public void setIconStartPaddingResource(int i10) {
        com.google.android.material.chip.a aVar = this.f25256s;
        if (aVar != null) {
            aVar.u2(i10);
        }
    }

    @Override // android.view.View
    public void setLayoutDirection(int i10) {
        if (this.f25256s != null && Build.VERSION.SDK_INT >= 17) {
            super.setLayoutDirection(i10);
        }
    }

    @Override // android.widget.TextView
    public void setLines(int i10) {
        if (i10 > 1) {
            throw new UnsupportedOperationException("Chip does not support multi-line text");
        }
        super.setLines(i10);
    }

    @Override // android.widget.TextView
    public void setMaxLines(int i10) {
        if (i10 > 1) {
            throw new UnsupportedOperationException("Chip does not support multi-line text");
        }
        super.setMaxLines(i10);
    }

    @Override // android.widget.TextView
    public void setMaxWidth(int i10) {
        super.setMaxWidth(i10);
        com.google.android.material.chip.a aVar = this.f25256s;
        if (aVar != null) {
            aVar.v2(i10);
        }
    }

    @Override // android.widget.TextView
    public void setMinLines(int i10) {
        if (i10 > 1) {
            throw new UnsupportedOperationException("Chip does not support multi-line text");
        }
        super.setMinLines(i10);
    }

    void setOnCheckedChangeListenerInternal(CompoundButton.OnCheckedChangeListener onCheckedChangeListener) {
        this.f25260w = onCheckedChangeListener;
    }

    public void setOnCloseIconClickListener(View.OnClickListener onClickListener) {
        this.f25259v = onClickListener;
        x();
    }

    public void setRippleColor(ColorStateList colorStateList) {
        com.google.android.material.chip.a aVar = this.f25256s;
        if (aVar != null) {
            aVar.w2(colorStateList);
        }
        if (this.f25256s.k1()) {
            return;
        }
        z();
    }

    public void setRippleColorResource(int i10) {
        com.google.android.material.chip.a aVar = this.f25256s;
        if (aVar != null) {
            aVar.x2(i10);
            if (this.f25256s.k1()) {
                return;
            }
            z();
        }
    }

    @Override // o4.n
    public void setShapeAppearanceModel(o4.k kVar) {
        this.f25256s.setShapeAppearanceModel(kVar);
    }

    public void setShowMotionSpec(h hVar) {
        com.google.android.material.chip.a aVar = this.f25256s;
        if (aVar != null) {
            aVar.z2(hVar);
        }
    }

    public void setShowMotionSpecResource(int i10) {
        com.google.android.material.chip.a aVar = this.f25256s;
        if (aVar != null) {
            aVar.A2(i10);
        }
    }

    @Override // android.widget.TextView
    public void setSingleLine(boolean z10) {
        if (!z10) {
            throw new UnsupportedOperationException("Chip does not support multi-line text");
        }
        super.setSingleLine(z10);
    }

    @Override // android.widget.TextView
    public void setText(CharSequence charSequence, TextView.BufferType bufferType) {
        com.google.android.material.chip.a aVar = this.f25256s;
        if (aVar == null) {
            return;
        }
        if (charSequence == null) {
            charSequence = BuildConfig.FLAVOR;
        }
        super.setText(aVar.J2() ? null : charSequence, bufferType);
        com.google.android.material.chip.a aVar2 = this.f25256s;
        if (aVar2 != null) {
            aVar2.B2(charSequence);
        }
    }

    public void setTextAppearance(d dVar) {
        com.google.android.material.chip.a aVar = this.f25256s;
        if (aVar != null) {
            aVar.C2(dVar);
        }
        B();
    }

    public void setTextAppearanceResource(int i10) {
        setTextAppearance(getContext(), i10);
    }

    public void setTextEndPadding(float f10) {
        com.google.android.material.chip.a aVar = this.f25256s;
        if (aVar != null) {
            aVar.E2(f10);
        }
    }

    public void setTextEndPaddingResource(int i10) {
        com.google.android.material.chip.a aVar = this.f25256s;
        if (aVar != null) {
            aVar.F2(i10);
        }
    }

    public void setTextStartPadding(float f10) {
        com.google.android.material.chip.a aVar = this.f25256s;
        if (aVar != null) {
            aVar.G2(f10);
        }
    }

    public void setTextStartPaddingResource(int i10) {
        com.google.android.material.chip.a aVar = this.f25256s;
        if (aVar != null) {
            aVar.H2(i10);
        }
    }

    public boolean t() {
        boolean z10 = false;
        playSoundEffect(0);
        View.OnClickListener onClickListener = this.f25259v;
        if (onClickListener != null) {
            onClickListener.onClick(this);
            z10 = true;
        }
        this.E.U(1, 1);
        return z10;
    }

    public boolean v() {
        return this.B;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public Chip(Context context, AttributeSet attributeSet, int i10) {
        int i11 = I;
        super(q4.a.c(context, attributeSet, i10, i11), attributeSet, i10);
        this.F = new Rect();
        this.G = new RectF();
        this.H = new a();
        Context context2 = getContext();
        C(attributeSet);
        com.google.android.material.chip.a aVarT0 = com.google.android.material.chip.a.t0(context2, attributeSet, i10, i11);
        o(context2, attributeSet, i10);
        setChipDrawable(aVarT0);
        aVarT0.V(a0.y(this));
        TypedArray typedArrayH = com.google.android.material.internal.j.h(context2, attributeSet, k.N, i10, i11, new int[0]);
        if (Build.VERSION.SDK_INT < 23) {
            setTextColor(l4.c.a(context2, typedArrayH, k.Q));
        }
        boolean zHasValue = typedArrayH.hasValue(k.f36954z0);
        typedArrayH.recycle();
        this.E = new c(this);
        x();
        if (!zHasValue) {
            p();
        }
        setChecked(this.f25261x);
        setText(aVarT0.f1());
        setEllipsize(aVarT0.Z0());
        B();
        if (!this.f25256s.J2()) {
            setLines(1);
            setHorizontallyScrolling(true);
        }
        setGravity(8388627);
        A();
        if (v()) {
            setMinHeight(this.D);
        }
        this.C = a0.E(this);
    }

    public void setCloseIconVisible(boolean z10) {
        com.google.android.material.chip.a aVar = this.f25256s;
        if (aVar != null) {
            aVar.m2(z10);
        }
        x();
    }

    public void setCheckedIconVisible(boolean z10) {
        com.google.android.material.chip.a aVar = this.f25256s;
        if (aVar != null) {
            aVar.C1(z10);
        }
    }

    public void setChipIconVisible(boolean z10) {
        com.google.android.material.chip.a aVar = this.f25256s;
        if (aVar != null) {
            aVar.Q1(z10);
        }
    }

    @Override // android.widget.TextView
    public void setCompoundDrawablesRelativeWithIntrinsicBounds(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        if (drawable != null) {
            throw new UnsupportedOperationException("Please set start drawable using R.attr#chipIcon.");
        }
        if (drawable3 == null) {
            super.setCompoundDrawablesRelativeWithIntrinsicBounds(drawable, drawable2, drawable3, drawable4);
            return;
        }
        throw new UnsupportedOperationException("Please set end drawable using R.attr#closeIcon.");
    }

    @Override // android.widget.TextView
    public void setCompoundDrawablesWithIntrinsicBounds(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        if (drawable != null) {
            throw new UnsupportedOperationException("Please set left drawable using R.attr#chipIcon.");
        }
        if (drawable3 == null) {
            super.setCompoundDrawablesWithIntrinsicBounds(drawable, drawable2, drawable3, drawable4);
            return;
        }
        throw new UnsupportedOperationException("Please set right drawable using R.attr#closeIcon.");
    }

    @Override // android.widget.TextView
    public void setTextAppearance(Context context, int i10) {
        super.setTextAppearance(context, i10);
        com.google.android.material.chip.a aVar = this.f25256s;
        if (aVar != null) {
            aVar.D2(i10);
        }
        B();
    }

    @Override // android.widget.TextView
    public void setTextAppearance(int i10) {
        super.setTextAppearance(i10);
        com.google.android.material.chip.a aVar = this.f25256s;
        if (aVar != null) {
            aVar.D2(i10);
        }
        B();
    }
}
