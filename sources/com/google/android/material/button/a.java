package com.google.android.material.button;

import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.InsetDrawable;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.RippleDrawable;
import android.os.Build;
import androidx.core.view.a0;
import l4.c;
import o4.g;
import o4.k;
import o4.n;
import y3.b;

/* JADX INFO: compiled from: MaterialButtonHelper.java */
/* JADX INFO: loaded from: classes2.dex */
class a {

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private static final boolean f25233t;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final MaterialButton f25234a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private k f25235b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f25236c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f25237d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f25238e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f25239f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f25240g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f25241h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private PorterDuff.Mode f25242i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private ColorStateList f25243j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private ColorStateList f25244k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private ColorStateList f25245l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private Drawable f25246m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private boolean f25247n = false;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private boolean f25248o = false;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private boolean f25249p = false;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private boolean f25250q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private LayerDrawable f25251r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private int f25252s;

    static {
        f25233t = Build.VERSION.SDK_INT >= 21;
    }

    a(MaterialButton materialButton, k kVar) {
        this.f25234a = materialButton;
        this.f25235b = kVar;
    }

    private void E(int i10, int i11) {
        int iJ = a0.J(this.f25234a);
        int paddingTop = this.f25234a.getPaddingTop();
        int I = a0.I(this.f25234a);
        int paddingBottom = this.f25234a.getPaddingBottom();
        int i12 = this.f25238e;
        int i13 = this.f25239f;
        this.f25239f = i11;
        this.f25238e = i10;
        if (!this.f25248o) {
            F();
        }
        a0.D0(this.f25234a, iJ, (paddingTop + i10) - i12, I, (paddingBottom + i11) - i13);
    }

    private void F() {
        this.f25234a.setInternalBackground(a());
        g gVarF = f();
        if (gVarF != null) {
            gVarF.V(this.f25252s);
        }
    }

    private void G(k kVar) {
        if (f() != null) {
            f().setShapeAppearanceModel(kVar);
        }
        if (n() != null) {
            n().setShapeAppearanceModel(kVar);
        }
        if (e() != null) {
            e().setShapeAppearanceModel(kVar);
        }
    }

    private void I() {
        g gVarF = f();
        g gVarN = n();
        if (gVarF != null) {
            gVarF.c0(this.f25241h, this.f25244k);
            if (gVarN != null) {
                gVarN.b0(this.f25241h, this.f25247n ? e4.a.c(this.f25234a, b.f36642l) : 0);
            }
        }
    }

    private InsetDrawable J(Drawable drawable) {
        return new InsetDrawable(drawable, this.f25236c, this.f25238e, this.f25237d, this.f25239f);
    }

    private Drawable a() {
        g gVar = new g(this.f25235b);
        gVar.M(this.f25234a.getContext());
        androidx.core.graphics.drawable.a.o(gVar, this.f25243j);
        PorterDuff.Mode mode = this.f25242i;
        if (mode != null) {
            androidx.core.graphics.drawable.a.p(gVar, mode);
        }
        gVar.c0(this.f25241h, this.f25244k);
        g gVar2 = new g(this.f25235b);
        gVar2.setTint(0);
        gVar2.b0(this.f25241h, this.f25247n ? e4.a.c(this.f25234a, b.f36642l) : 0);
        if (f25233t) {
            g gVar3 = new g(this.f25235b);
            this.f25246m = gVar3;
            androidx.core.graphics.drawable.a.n(gVar3, -1);
            RippleDrawable rippleDrawable = new RippleDrawable(m4.b.a(this.f25245l), J(new LayerDrawable(new Drawable[]{gVar2, gVar})), this.f25246m);
            this.f25251r = rippleDrawable;
            return rippleDrawable;
        }
        m4.a aVar = new m4.a(this.f25235b);
        this.f25246m = aVar;
        androidx.core.graphics.drawable.a.o(aVar, m4.b.a(this.f25245l));
        LayerDrawable layerDrawable = new LayerDrawable(new Drawable[]{gVar2, gVar, this.f25246m});
        this.f25251r = layerDrawable;
        return J(layerDrawable);
    }

    private g g(boolean z10) {
        LayerDrawable layerDrawable = this.f25251r;
        if (layerDrawable == null || layerDrawable.getNumberOfLayers() <= 0) {
            return null;
        }
        return f25233t ? (g) ((LayerDrawable) ((InsetDrawable) this.f25251r.getDrawable(0)).getDrawable()).getDrawable(!z10 ? 1 : 0) : (g) this.f25251r.getDrawable(!z10 ? 1 : 0);
    }

    private g n() {
        return g(true);
    }

    void A(ColorStateList colorStateList) {
        if (this.f25244k != colorStateList) {
            this.f25244k = colorStateList;
            I();
        }
    }

    void B(int i10) {
        if (this.f25241h != i10) {
            this.f25241h = i10;
            I();
        }
    }

    void C(ColorStateList colorStateList) {
        if (this.f25243j != colorStateList) {
            this.f25243j = colorStateList;
            if (f() != null) {
                androidx.core.graphics.drawable.a.o(f(), this.f25243j);
            }
        }
    }

    void D(PorterDuff.Mode mode) {
        if (this.f25242i != mode) {
            this.f25242i = mode;
            if (f() == null || this.f25242i == null) {
                return;
            }
            androidx.core.graphics.drawable.a.p(f(), this.f25242i);
        }
    }

    void H(int i10, int i11) {
        Drawable drawable = this.f25246m;
        if (drawable != null) {
            drawable.setBounds(this.f25236c, this.f25238e, i11 - this.f25237d, i10 - this.f25239f);
        }
    }

    int b() {
        return this.f25240g;
    }

    public int c() {
        return this.f25239f;
    }

    public int d() {
        return this.f25238e;
    }

    public n e() {
        LayerDrawable layerDrawable = this.f25251r;
        if (layerDrawable == null || layerDrawable.getNumberOfLayers() <= 1) {
            return null;
        }
        return this.f25251r.getNumberOfLayers() > 2 ? (n) this.f25251r.getDrawable(2) : (n) this.f25251r.getDrawable(1);
    }

    g f() {
        return g(false);
    }

    ColorStateList h() {
        return this.f25245l;
    }

    k i() {
        return this.f25235b;
    }

    ColorStateList j() {
        return this.f25244k;
    }

    int k() {
        return this.f25241h;
    }

    ColorStateList l() {
        return this.f25243j;
    }

    PorterDuff.Mode m() {
        return this.f25242i;
    }

    boolean o() {
        return this.f25248o;
    }

    boolean p() {
        return this.f25250q;
    }

    void q(TypedArray typedArray) {
        this.f25236c = typedArray.getDimensionPixelOffset(y3.k.P1, 0);
        this.f25237d = typedArray.getDimensionPixelOffset(y3.k.Q1, 0);
        this.f25238e = typedArray.getDimensionPixelOffset(y3.k.R1, 0);
        this.f25239f = typedArray.getDimensionPixelOffset(y3.k.S1, 0);
        int i10 = y3.k.W1;
        if (typedArray.hasValue(i10)) {
            int dimensionPixelSize = typedArray.getDimensionPixelSize(i10, -1);
            this.f25240g = dimensionPixelSize;
            y(this.f25235b.w(dimensionPixelSize));
            this.f25249p = true;
        }
        this.f25241h = typedArray.getDimensionPixelSize(y3.k.f36823g2, 0);
        this.f25242i = com.google.android.material.internal.k.e(typedArray.getInt(y3.k.V1, -1), PorterDuff.Mode.SRC_IN);
        this.f25243j = c.a(this.f25234a.getContext(), typedArray, y3.k.U1);
        this.f25244k = c.a(this.f25234a.getContext(), typedArray, y3.k.f36816f2);
        this.f25245l = c.a(this.f25234a.getContext(), typedArray, y3.k.f36809e2);
        this.f25250q = typedArray.getBoolean(y3.k.T1, false);
        this.f25252s = typedArray.getDimensionPixelSize(y3.k.X1, 0);
        int iJ = a0.J(this.f25234a);
        int paddingTop = this.f25234a.getPaddingTop();
        int I = a0.I(this.f25234a);
        int paddingBottom = this.f25234a.getPaddingBottom();
        if (typedArray.hasValue(y3.k.O1)) {
            s();
        } else {
            F();
        }
        a0.D0(this.f25234a, iJ + this.f25236c, paddingTop + this.f25238e, I + this.f25237d, paddingBottom + this.f25239f);
    }

    void r(int i10) {
        if (f() != null) {
            f().setTint(i10);
        }
    }

    void s() {
        this.f25248o = true;
        this.f25234a.setSupportBackgroundTintList(this.f25243j);
        this.f25234a.setSupportBackgroundTintMode(this.f25242i);
    }

    void t(boolean z10) {
        this.f25250q = z10;
    }

    void u(int i10) {
        if (this.f25249p && this.f25240g == i10) {
            return;
        }
        this.f25240g = i10;
        this.f25249p = true;
        y(this.f25235b.w(i10));
    }

    public void v(int i10) {
        E(this.f25238e, i10);
    }

    public void w(int i10) {
        E(i10, this.f25239f);
    }

    void x(ColorStateList colorStateList) {
        if (this.f25245l != colorStateList) {
            this.f25245l = colorStateList;
            boolean z10 = f25233t;
            if (z10 && (this.f25234a.getBackground() instanceof RippleDrawable)) {
                ((RippleDrawable) this.f25234a.getBackground()).setColor(m4.b.a(colorStateList));
            } else {
                if (z10 || !(this.f25234a.getBackground() instanceof m4.a)) {
                    return;
                }
                ((m4.a) this.f25234a.getBackground()).setTintList(m4.b.a(colorStateList));
            }
        }
    }

    void y(k kVar) {
        this.f25235b = kVar;
        G(kVar);
    }

    void z(boolean z10) {
        this.f25247n = z10;
        I();
    }
}
