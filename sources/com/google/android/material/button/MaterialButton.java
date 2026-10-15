package com.google.android.material.button;

import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextPaint;
import android.util.AttributeSet;
import android.util.Log;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.Button;
import android.widget.Checkable;
import android.widget.CompoundButton;
import androidx.appcompat.widget.AppCompatButton;
import androidx.core.view.a0;
import java.util.Iterator;
import java.util.LinkedHashSet;
import o4.h;
import o4.k;
import o4.n;
import y3.j;

/* JADX INFO: loaded from: classes2.dex */
public class MaterialButton extends AppCompatButton implements Checkable, n {
    private static final int[] E = {R.attr.state_checkable};
    private static final int[] F = {R.attr.state_checked};
    private static final int G = j.f36767j;
    private int A;
    private boolean B;
    private boolean C;
    private int D;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private final com.google.android.material.button.a f25202r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private final LinkedHashSet<a> f25203s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private b f25204t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private PorterDuff.Mode f25205u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private ColorStateList f25206v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private Drawable f25207w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private int f25208x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private int f25209y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private int f25210z;

    public interface a {
        void a(MaterialButton materialButton, boolean z10);
    }

    interface b {
        void a(MaterialButton materialButton, boolean z10);
    }

    static class c extends b0.a {
        public static final Parcelable.Creator<c> CREATOR = new a();

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        boolean f25211q;

        static class a implements Parcelable.ClassLoaderCreator<c> {
            a() {
            }

            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public c createFromParcel(Parcel parcel) {
                return new c(parcel, null);
            }

            @Override // android.os.Parcelable.ClassLoaderCreator
            /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
            public c createFromParcel(Parcel parcel, ClassLoader classLoader) {
                return new c(parcel, classLoader);
            }

            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
            public c[] newArray(int i10) {
                return new c[i10];
            }
        }

        public c(Parcelable parcelable) {
            super(parcelable);
        }

        private void t(Parcel parcel) {
            this.f25211q = parcel.readInt() == 1;
        }

        @Override // b0.a, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i10) {
            super.writeToParcel(parcel, i10);
            parcel.writeInt(this.f25211q ? 1 : 0);
        }

        public c(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            if (classLoader == null) {
                getClass().getClassLoader();
            }
            t(parcel);
        }
    }

    public MaterialButton(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, y3.b.f36647q);
    }

    private boolean c() {
        int i10 = this.D;
        return i10 == 3 || i10 == 4;
    }

    private boolean d() {
        int i10 = this.D;
        return i10 == 1 || i10 == 2;
    }

    private boolean e() {
        int i10 = this.D;
        return i10 == 16 || i10 == 32;
    }

    private boolean f() {
        return a0.E(this) == 1;
    }

    private boolean g() {
        com.google.android.material.button.a aVar = this.f25202r;
        return (aVar == null || aVar.o()) ? false : true;
    }

    private String getA11yClassName() {
        return (b() ? CompoundButton.class : Button.class).getName();
    }

    private int getTextHeight() {
        TextPaint paint = getPaint();
        String string = getText().toString();
        if (getTransformationMethod() != null) {
            string = getTransformationMethod().getTransformation(string, this).toString();
        }
        Rect rect = new Rect();
        paint.getTextBounds(string, 0, string.length(), rect);
        return Math.min(rect.height(), getLayout().getHeight());
    }

    private int getTextWidth() {
        TextPaint paint = getPaint();
        String string = getText().toString();
        if (getTransformationMethod() != null) {
            string = getTransformationMethod().getTransformation(string, this).toString();
        }
        return Math.min((int) paint.measureText(string), getLayout().getEllipsizedWidth());
    }

    private void i() {
        if (d()) {
            androidx.core.widget.j.i(this, this.f25207w, null, null, null);
        } else if (c()) {
            androidx.core.widget.j.i(this, null, null, this.f25207w, null);
        } else if (e()) {
            androidx.core.widget.j.i(this, null, this.f25207w, null, null);
        }
    }

    private void j(boolean z10) {
        Drawable drawable = this.f25207w;
        if (drawable != null) {
            Drawable drawableMutate = androidx.core.graphics.drawable.a.r(drawable).mutate();
            this.f25207w = drawableMutate;
            androidx.core.graphics.drawable.a.o(drawableMutate, this.f25206v);
            PorterDuff.Mode mode = this.f25205u;
            if (mode != null) {
                androidx.core.graphics.drawable.a.p(this.f25207w, mode);
            }
            int intrinsicWidth = this.f25208x;
            if (intrinsicWidth == 0) {
                intrinsicWidth = this.f25207w.getIntrinsicWidth();
            }
            int intrinsicHeight = this.f25208x;
            if (intrinsicHeight == 0) {
                intrinsicHeight = this.f25207w.getIntrinsicHeight();
            }
            Drawable drawable2 = this.f25207w;
            int i10 = this.f25209y;
            int i11 = this.f25210z;
            drawable2.setBounds(i10, i11, intrinsicWidth + i10, intrinsicHeight + i11);
        }
        if (z10) {
            i();
            return;
        }
        Drawable[] drawableArrA = androidx.core.widget.j.a(this);
        boolean z11 = false;
        Drawable drawable3 = drawableArrA[0];
        Drawable drawable4 = drawableArrA[1];
        Drawable drawable5 = drawableArrA[2];
        if ((d() && drawable3 != this.f25207w) || ((c() && drawable5 != this.f25207w) || (e() && drawable4 != this.f25207w))) {
            z11 = true;
        }
        if (z11) {
            i();
        }
    }

    private void k(int i10, int i11) {
        if (this.f25207w == null || getLayout() == null) {
            return;
        }
        if (!d() && !c()) {
            if (e()) {
                this.f25209y = 0;
                if (this.D == 16) {
                    this.f25210z = 0;
                    j(false);
                    return;
                }
                int intrinsicHeight = this.f25208x;
                if (intrinsicHeight == 0) {
                    intrinsicHeight = this.f25207w.getIntrinsicHeight();
                }
                int textHeight = (((((i11 - getTextHeight()) - getPaddingTop()) - intrinsicHeight) - this.A) - getPaddingBottom()) / 2;
                if (this.f25210z != textHeight) {
                    this.f25210z = textHeight;
                    j(false);
                    return;
                }
                return;
            }
            return;
        }
        this.f25210z = 0;
        int i12 = this.D;
        if (i12 == 1 || i12 == 3) {
            this.f25209y = 0;
            j(false);
            return;
        }
        int intrinsicWidth = this.f25208x;
        if (intrinsicWidth == 0) {
            intrinsicWidth = this.f25207w.getIntrinsicWidth();
        }
        int textWidth = (((((i10 - getTextWidth()) - a0.I(this)) - intrinsicWidth) - this.A) - a0.J(this)) / 2;
        if (f() != (this.D == 4)) {
            textWidth = -textWidth;
        }
        if (this.f25209y != textWidth) {
            this.f25209y = textWidth;
            j(false);
        }
    }

    public void a(a aVar) {
        this.f25203s.add(aVar);
    }

    public boolean b() {
        com.google.android.material.button.a aVar = this.f25202r;
        return aVar != null && aVar.p();
    }

    @Override // android.view.View
    public ColorStateList getBackgroundTintList() {
        return getSupportBackgroundTintList();
    }

    @Override // android.view.View
    public PorterDuff.Mode getBackgroundTintMode() {
        return getSupportBackgroundTintMode();
    }

    public int getCornerRadius() {
        if (g()) {
            return this.f25202r.b();
        }
        return 0;
    }

    public Drawable getIcon() {
        return this.f25207w;
    }

    public int getIconGravity() {
        return this.D;
    }

    public int getIconPadding() {
        return this.A;
    }

    public int getIconSize() {
        return this.f25208x;
    }

    public ColorStateList getIconTint() {
        return this.f25206v;
    }

    public PorterDuff.Mode getIconTintMode() {
        return this.f25205u;
    }

    public int getInsetBottom() {
        return this.f25202r.c();
    }

    public int getInsetTop() {
        return this.f25202r.d();
    }

    public ColorStateList getRippleColor() {
        if (g()) {
            return this.f25202r.h();
        }
        return null;
    }

    public k getShapeAppearanceModel() {
        if (g()) {
            return this.f25202r.i();
        }
        throw new IllegalStateException("Attempted to get ShapeAppearanceModel from a MaterialButton which has an overwritten background.");
    }

    public ColorStateList getStrokeColor() {
        if (g()) {
            return this.f25202r.j();
        }
        return null;
    }

    public int getStrokeWidth() {
        if (g()) {
            return this.f25202r.k();
        }
        return 0;
    }

    @Override // androidx.appcompat.widget.AppCompatButton, androidx.core.view.y
    public ColorStateList getSupportBackgroundTintList() {
        return g() ? this.f25202r.l() : super.getSupportBackgroundTintList();
    }

    @Override // androidx.appcompat.widget.AppCompatButton, androidx.core.view.y
    public PorterDuff.Mode getSupportBackgroundTintMode() {
        return g() ? this.f25202r.m() : super.getSupportBackgroundTintMode();
    }

    public void h(a aVar) {
        this.f25203s.remove(aVar);
    }

    @Override // android.widget.Checkable
    public boolean isChecked() {
        return this.B;
    }

    @Override // android.widget.TextView, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (g()) {
            h.f(this, this.f25202r.f());
        }
    }

    @Override // android.widget.TextView, android.view.View
    protected int[] onCreateDrawableState(int i10) {
        int[] iArrOnCreateDrawableState = super.onCreateDrawableState(i10 + 2);
        if (b()) {
            Button.mergeDrawableStates(iArrOnCreateDrawableState, E);
        }
        if (isChecked()) {
            Button.mergeDrawableStates(iArrOnCreateDrawableState, F);
        }
        return iArrOnCreateDrawableState;
    }

    @Override // androidx.appcompat.widget.AppCompatButton, android.view.View
    public void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        accessibilityEvent.setClassName(getA11yClassName());
        accessibilityEvent.setChecked(isChecked());
    }

    @Override // androidx.appcompat.widget.AppCompatButton, android.view.View
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setClassName(getA11yClassName());
        accessibilityNodeInfo.setCheckable(b());
        accessibilityNodeInfo.setChecked(isChecked());
        accessibilityNodeInfo.setClickable(isClickable());
    }

    @Override // androidx.appcompat.widget.AppCompatButton, android.widget.TextView, android.view.View
    protected void onLayout(boolean z10, int i10, int i11, int i12, int i13) {
        com.google.android.material.button.a aVar;
        super.onLayout(z10, i10, i11, i12, i13);
        if (Build.VERSION.SDK_INT != 21 || (aVar = this.f25202r) == null) {
            return;
        }
        aVar.H(i13 - i11, i12 - i10);
    }

    @Override // android.widget.TextView, android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof c)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        c cVar = (c) parcelable;
        super.onRestoreInstanceState(cVar.h());
        setChecked(cVar.f25211q);
    }

    @Override // android.widget.TextView, android.view.View
    public Parcelable onSaveInstanceState() {
        c cVar = new c(super.onSaveInstanceState());
        cVar.f25211q = this.B;
        return cVar;
    }

    @Override // android.view.View
    protected void onSizeChanged(int i10, int i11, int i12, int i13) {
        super.onSizeChanged(i10, i11, i12, i13);
        k(i10, i11);
    }

    @Override // androidx.appcompat.widget.AppCompatButton, android.widget.TextView
    protected void onTextChanged(CharSequence charSequence, int i10, int i11, int i12) {
        super.onTextChanged(charSequence, i10, i11, i12);
        k(getMeasuredWidth(), getMeasuredHeight());
    }

    @Override // android.view.View
    public boolean performClick() {
        toggle();
        return super.performClick();
    }

    @Override // android.view.View
    public void setBackground(Drawable drawable) {
        setBackgroundDrawable(drawable);
    }

    @Override // android.view.View
    public void setBackgroundColor(int i10) {
        if (g()) {
            this.f25202r.r(i10);
        } else {
            super.setBackgroundColor(i10);
        }
    }

    @Override // androidx.appcompat.widget.AppCompatButton, android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        if (!g()) {
            super.setBackgroundDrawable(drawable);
        } else {
            if (drawable == getBackground()) {
                getBackground().setState(drawable.getState());
                return;
            }
            Log.w("MaterialButton", "MaterialButton manages its own background to control elevation, shape, color and states. Consider using backgroundTint, shapeAppearance and other attributes where available. A custom background will ignore these attributes and you should consider handling interaction states such as pressed, focused and disabled");
            this.f25202r.s();
            super.setBackgroundDrawable(drawable);
        }
    }

    @Override // androidx.appcompat.widget.AppCompatButton, android.view.View
    public void setBackgroundResource(int i10) {
        setBackgroundDrawable(i10 != 0 ? g.a.b(getContext(), i10) : null);
    }

    @Override // android.view.View
    public void setBackgroundTintList(ColorStateList colorStateList) {
        setSupportBackgroundTintList(colorStateList);
    }

    @Override // android.view.View
    public void setBackgroundTintMode(PorterDuff.Mode mode) {
        setSupportBackgroundTintMode(mode);
    }

    public void setCheckable(boolean z10) {
        if (g()) {
            this.f25202r.t(z10);
        }
    }

    @Override // android.widget.Checkable
    public void setChecked(boolean z10) {
        if (b() && isEnabled() && this.B != z10) {
            this.B = z10;
            refreshDrawableState();
            if (this.C) {
                return;
            }
            this.C = true;
            Iterator<a> it = this.f25203s.iterator();
            while (it.hasNext()) {
                it.next().a(this, this.B);
            }
            this.C = false;
        }
    }

    public void setCornerRadius(int i10) {
        if (g()) {
            this.f25202r.u(i10);
        }
    }

    public void setCornerRadiusResource(int i10) {
        if (g()) {
            setCornerRadius(getResources().getDimensionPixelSize(i10));
        }
    }

    @Override // android.view.View
    public void setElevation(float f10) {
        super.setElevation(f10);
        if (g()) {
            this.f25202r.f().V(f10);
        }
    }

    public void setIcon(Drawable drawable) {
        if (this.f25207w != drawable) {
            this.f25207w = drawable;
            j(true);
            k(getMeasuredWidth(), getMeasuredHeight());
        }
    }

    public void setIconGravity(int i10) {
        if (this.D != i10) {
            this.D = i10;
            k(getMeasuredWidth(), getMeasuredHeight());
        }
    }

    public void setIconPadding(int i10) {
        if (this.A != i10) {
            this.A = i10;
            setCompoundDrawablePadding(i10);
        }
    }

    public void setIconResource(int i10) {
        setIcon(i10 != 0 ? g.a.b(getContext(), i10) : null);
    }

    public void setIconSize(int i10) {
        if (i10 < 0) {
            throw new IllegalArgumentException("iconSize cannot be less than 0");
        }
        if (this.f25208x != i10) {
            this.f25208x = i10;
            j(true);
        }
    }

    public void setIconTint(ColorStateList colorStateList) {
        if (this.f25206v != colorStateList) {
            this.f25206v = colorStateList;
            j(false);
        }
    }

    public void setIconTintMode(PorterDuff.Mode mode) {
        if (this.f25205u != mode) {
            this.f25205u = mode;
            j(false);
        }
    }

    public void setIconTintResource(int i10) {
        setIconTint(g.a.a(getContext(), i10));
    }

    public void setInsetBottom(int i10) {
        this.f25202r.v(i10);
    }

    public void setInsetTop(int i10) {
        this.f25202r.w(i10);
    }

    void setInternalBackground(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
    }

    void setOnPressedChangeListenerInternal(b bVar) {
        this.f25204t = bVar;
    }

    @Override // android.view.View
    public void setPressed(boolean z10) {
        b bVar = this.f25204t;
        if (bVar != null) {
            bVar.a(this, z10);
        }
        super.setPressed(z10);
    }

    public void setRippleColor(ColorStateList colorStateList) {
        if (g()) {
            this.f25202r.x(colorStateList);
        }
    }

    public void setRippleColorResource(int i10) {
        if (g()) {
            setRippleColor(g.a.a(getContext(), i10));
        }
    }

    @Override // o4.n
    public void setShapeAppearanceModel(k kVar) {
        if (!g()) {
            throw new IllegalStateException("Attempted to set ShapeAppearanceModel on a MaterialButton which has an overwritten background.");
        }
        this.f25202r.y(kVar);
    }

    void setShouldDrawSurfaceColorStroke(boolean z10) {
        if (g()) {
            this.f25202r.z(z10);
        }
    }

    public void setStrokeColor(ColorStateList colorStateList) {
        if (g()) {
            this.f25202r.A(colorStateList);
        }
    }

    public void setStrokeColorResource(int i10) {
        if (g()) {
            setStrokeColor(g.a.a(getContext(), i10));
        }
    }

    public void setStrokeWidth(int i10) {
        if (g()) {
            this.f25202r.B(i10);
        }
    }

    public void setStrokeWidthResource(int i10) {
        if (g()) {
            setStrokeWidth(getResources().getDimensionPixelSize(i10));
        }
    }

    @Override // androidx.appcompat.widget.AppCompatButton, androidx.core.view.y
    public void setSupportBackgroundTintList(ColorStateList colorStateList) {
        if (g()) {
            this.f25202r.C(colorStateList);
        } else {
            super.setSupportBackgroundTintList(colorStateList);
        }
    }

    @Override // androidx.appcompat.widget.AppCompatButton, androidx.core.view.y
    public void setSupportBackgroundTintMode(PorterDuff.Mode mode) {
        if (g()) {
            this.f25202r.D(mode);
        } else {
            super.setSupportBackgroundTintMode(mode);
        }
    }

    @Override // android.widget.Checkable
    public void toggle() {
        setChecked(!this.B);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public MaterialButton(Context context, AttributeSet attributeSet, int i10) {
        int i11 = G;
        super(q4.a.c(context, attributeSet, i10, i11), attributeSet, i10);
        this.f25203s = new LinkedHashSet<>();
        this.B = false;
        this.C = false;
        Context context2 = getContext();
        TypedArray typedArrayH = com.google.android.material.internal.j.h(context2, attributeSet, y3.k.N1, i10, i11, new int[0]);
        this.A = typedArrayH.getDimensionPixelSize(y3.k.f36781a2, 0);
        this.f25205u = com.google.android.material.internal.k.e(typedArrayH.getInt(y3.k.f36802d2, -1), PorterDuff.Mode.SRC_IN);
        this.f25206v = l4.c.a(getContext(), typedArrayH, y3.k.f36795c2);
        this.f25207w = l4.c.d(getContext(), typedArrayH, y3.k.Y1);
        this.D = typedArrayH.getInteger(y3.k.Z1, 1);
        this.f25208x = typedArrayH.getDimensionPixelSize(y3.k.f36788b2, 0);
        com.google.android.material.button.a aVar = new com.google.android.material.button.a(this, k.e(context2, attributeSet, i10, i11).m());
        this.f25202r = aVar;
        aVar.q(typedArrayH);
        typedArrayH.recycle();
        setCompoundDrawablePadding(this.A);
        j(this.f25207w != null);
    }
}
