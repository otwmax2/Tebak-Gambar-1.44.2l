package com.google.android.material.chip;

import android.R;
import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Outline;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PointF;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.RippleDrawable;
import android.graphics.drawable.ShapeDrawable;
import android.graphics.drawable.shapes.OvalShape;
import android.text.TextUtils;
import android.util.AttributeSet;
import com.google.android.material.internal.h;
import com.google.android.material.internal.j;
import com.google.android.material.internal.k;
import com.vungle.mediation.BuildConfig;
import java.lang.ref.WeakReference;
import java.util.Arrays;
import l4.c;
import l4.d;
import m4.b;
import o4.g;

/* JADX INFO: compiled from: ChipDrawable.java */
/* JADX INFO: loaded from: classes2.dex */
public class a extends g implements Drawable.Callback, h.b {
    private static final int[] W0 = {R.attr.state_enabled};
    private static final ShapeDrawable X0 = new ShapeDrawable(new OvalShape());
    private final h A0;
    private int B0;
    private int C0;
    private int D0;
    private int E0;
    private int F0;
    private int G0;
    private boolean H0;
    private int I0;
    private int J0;
    private ColorFilter K0;
    private PorterDuffColorFilter L0;
    private ColorStateList M;
    private ColorStateList M0;
    private ColorStateList N;
    private PorterDuff.Mode N0;
    private float O;
    private int[] O0;
    private float P;
    private boolean P0;
    private ColorStateList Q;
    private ColorStateList Q0;
    private float R;
    private WeakReference<InterfaceC0115a> R0;
    private ColorStateList S;
    private TextUtils.TruncateAt S0;
    private CharSequence T;
    private boolean T0;
    private boolean U;
    private int U0;
    private Drawable V;
    private boolean V0;
    private ColorStateList W;
    private float X;
    private boolean Y;
    private boolean Z;

    /* JADX INFO: renamed from: a0, reason: collision with root package name */
    private Drawable f25278a0;

    /* JADX INFO: renamed from: b0, reason: collision with root package name */
    private Drawable f25279b0;

    /* JADX INFO: renamed from: c0, reason: collision with root package name */
    private ColorStateList f25280c0;

    /* JADX INFO: renamed from: d0, reason: collision with root package name */
    private float f25281d0;

    /* JADX INFO: renamed from: e0, reason: collision with root package name */
    private CharSequence f25282e0;

    /* JADX INFO: renamed from: f0, reason: collision with root package name */
    private boolean f25283f0;

    /* JADX INFO: renamed from: g0, reason: collision with root package name */
    private boolean f25284g0;

    /* JADX INFO: renamed from: h0, reason: collision with root package name */
    private Drawable f25285h0;

    /* JADX INFO: renamed from: i0, reason: collision with root package name */
    private ColorStateList f25286i0;

    /* JADX INFO: renamed from: j0, reason: collision with root package name */
    private z3.h f25287j0;

    /* JADX INFO: renamed from: k0, reason: collision with root package name */
    private z3.h f25288k0;

    /* JADX INFO: renamed from: l0, reason: collision with root package name */
    private float f25289l0;

    /* JADX INFO: renamed from: m0, reason: collision with root package name */
    private float f25290m0;

    /* JADX INFO: renamed from: n0, reason: collision with root package name */
    private float f25291n0;

    /* JADX INFO: renamed from: o0, reason: collision with root package name */
    private float f25292o0;

    /* JADX INFO: renamed from: p0, reason: collision with root package name */
    private float f25293p0;

    /* JADX INFO: renamed from: q0, reason: collision with root package name */
    private float f25294q0;

    /* JADX INFO: renamed from: r0, reason: collision with root package name */
    private float f25295r0;

    /* JADX INFO: renamed from: s0, reason: collision with root package name */
    private float f25296s0;

    /* JADX INFO: renamed from: t0, reason: collision with root package name */
    private final Context f25297t0;

    /* JADX INFO: renamed from: u0, reason: collision with root package name */
    private final Paint f25298u0;

    /* JADX INFO: renamed from: v0, reason: collision with root package name */
    private final Paint f25299v0;

    /* JADX INFO: renamed from: w0, reason: collision with root package name */
    private final Paint.FontMetrics f25300w0;

    /* JADX INFO: renamed from: x0, reason: collision with root package name */
    private final RectF f25301x0;

    /* JADX INFO: renamed from: y0, reason: collision with root package name */
    private final PointF f25302y0;

    /* JADX INFO: renamed from: z0, reason: collision with root package name */
    private final Path f25303z0;

    /* JADX INFO: renamed from: com.google.android.material.chip.a$a, reason: collision with other inner class name */
    /* JADX INFO: compiled from: ChipDrawable.java */
    public interface InterfaceC0115a {
        void a();
    }

    private a(Context context, AttributeSet attributeSet, int i10, int i11) {
        super(context, attributeSet, i10, i11);
        this.P = -1.0f;
        this.f25298u0 = new Paint(1);
        this.f25300w0 = new Paint.FontMetrics();
        this.f25301x0 = new RectF();
        this.f25302y0 = new PointF();
        this.f25303z0 = new Path();
        this.J0 = 255;
        this.N0 = PorterDuff.Mode.SRC_IN;
        this.R0 = new WeakReference<>(null);
        M(context);
        this.f25297t0 = context;
        h hVar = new h(this);
        this.A0 = hVar;
        this.T = BuildConfig.FLAVOR;
        hVar.e().density = context.getResources().getDisplayMetrics().density;
        this.f25299v0 = null;
        int[] iArr = W0;
        setState(iArr);
        j2(iArr);
        this.T0 = true;
        if (b.f32158a) {
            X0.setTint(-1);
        }
    }

    private void A0(Canvas canvas, Rect rect) {
        this.f25298u0.setColor(this.F0);
        this.f25298u0.setStyle(Paint.Style.FILL);
        this.f25301x0.set(rect);
        if (!this.V0) {
            canvas.drawRoundRect(this.f25301x0, G0(), G0(), this.f25298u0);
        } else {
            h(new RectF(rect), this.f25303z0);
            super.p(canvas, this.f25298u0, this.f25303z0, u());
        }
    }

    private void B0(Canvas canvas, Rect rect) {
        Paint paint = this.f25299v0;
        if (paint != null) {
            paint.setColor(androidx.core.graphics.a.f(-16777216, 127));
            canvas.drawRect(rect, this.f25299v0);
            if (L2() || K2()) {
                j0(rect, this.f25301x0);
                canvas.drawRect(this.f25301x0, this.f25299v0);
            }
            if (this.T != null) {
                canvas.drawLine(rect.left, rect.exactCenterY(), rect.right, rect.exactCenterY(), this.f25299v0);
            }
            if (M2()) {
                m0(rect, this.f25301x0);
                canvas.drawRect(this.f25301x0, this.f25299v0);
            }
            this.f25299v0.setColor(androidx.core.graphics.a.f(-65536, 127));
            l0(rect, this.f25301x0);
            canvas.drawRect(this.f25301x0, this.f25299v0);
            this.f25299v0.setColor(androidx.core.graphics.a.f(-16711936, 127));
            n0(rect, this.f25301x0);
            canvas.drawRect(this.f25301x0, this.f25299v0);
        }
    }

    private void C0(Canvas canvas, Rect rect) {
        if (this.T != null) {
            Paint.Align alignR0 = r0(rect, this.f25302y0);
            p0(rect, this.f25301x0);
            if (this.A0.d() != null) {
                this.A0.e().drawableState = getState();
                this.A0.j(this.f25297t0);
            }
            this.A0.e().setTextAlign(alignR0);
            int iSave = 0;
            boolean z10 = Math.round(this.A0.f(f1().toString())) > Math.round(this.f25301x0.width());
            if (z10) {
                iSave = canvas.save();
                canvas.clipRect(this.f25301x0);
            }
            CharSequence charSequenceEllipsize = this.T;
            if (z10 && this.S0 != null) {
                charSequenceEllipsize = TextUtils.ellipsize(charSequenceEllipsize, this.A0.e(), this.f25301x0.width(), this.S0);
            }
            CharSequence charSequence = charSequenceEllipsize;
            int length = charSequence.length();
            PointF pointF = this.f25302y0;
            canvas.drawText(charSequence, 0, length, pointF.x, pointF.y, this.A0.e());
            if (z10) {
                canvas.restoreToCount(iSave);
            }
        }
    }

    private boolean K2() {
        return this.f25284g0 && this.f25285h0 != null && this.H0;
    }

    private boolean L2() {
        return this.U && this.V != null;
    }

    private boolean M2() {
        return this.Z && this.f25278a0 != null;
    }

    private void N2(Drawable drawable) {
        if (drawable != null) {
            drawable.setCallback(null);
        }
    }

    private void O2() {
        this.Q0 = this.P0 ? b.a(this.S) : null;
    }

    @TargetApi(21)
    private void P2() {
        this.f25279b0 = new RippleDrawable(b.a(d1()), this.f25278a0, X0);
    }

    private float X0() {
        Drawable drawable = this.H0 ? this.f25285h0 : this.V;
        float fCeil = this.X;
        if (fCeil <= 0.0f && drawable != null) {
            fCeil = (float) Math.ceil(k.b(this.f25297t0, 24));
            if (drawable.getIntrinsicHeight() <= fCeil) {
                return drawable.getIntrinsicHeight();
            }
        }
        return fCeil;
    }

    private float Y0() {
        Drawable drawable = this.H0 ? this.f25285h0 : this.V;
        float f10 = this.X;
        return (f10 > 0.0f || drawable == null) ? f10 : drawable.getIntrinsicWidth();
    }

    private void Z1(ColorStateList colorStateList) {
        if (this.M != colorStateList) {
            this.M = colorStateList;
            onStateChange(getState());
        }
    }

    private void i0(Drawable drawable) {
        if (drawable == null) {
            return;
        }
        drawable.setCallback(this);
        androidx.core.graphics.drawable.a.m(drawable, androidx.core.graphics.drawable.a.f(this));
        drawable.setLevel(getLevel());
        drawable.setVisible(isVisible(), false);
        if (drawable == this.f25278a0) {
            if (drawable.isStateful()) {
                drawable.setState(U0());
            }
            androidx.core.graphics.drawable.a.o(drawable, this.f25280c0);
            return;
        }
        if (drawable.isStateful()) {
            drawable.setState(getState());
        }
        Drawable drawable2 = this.V;
        if (drawable == drawable2 && this.Y) {
            androidx.core.graphics.drawable.a.o(drawable2, this.W);
        }
    }

    private void j0(Rect rect, RectF rectF) {
        rectF.setEmpty();
        if (L2() || K2()) {
            float f10 = this.f25289l0 + this.f25290m0;
            float fY0 = Y0();
            if (androidx.core.graphics.drawable.a.f(this) == 0) {
                float f11 = rect.left + f10;
                rectF.left = f11;
                rectF.right = f11 + fY0;
            } else {
                float f12 = rect.right - f10;
                rectF.right = f12;
                rectF.left = f12 - fY0;
            }
            float fX0 = X0();
            float fExactCenterY = rect.exactCenterY() - (fX0 / 2.0f);
            rectF.top = fExactCenterY;
            rectF.bottom = fExactCenterY + fX0;
        }
    }

    private ColorFilter j1() {
        ColorFilter colorFilter = this.K0;
        return colorFilter != null ? colorFilter : this.L0;
    }

    private void l0(Rect rect, RectF rectF) {
        rectF.set(rect);
        if (M2()) {
            float f10 = this.f25296s0 + this.f25295r0 + this.f25281d0 + this.f25294q0 + this.f25293p0;
            if (androidx.core.graphics.drawable.a.f(this) == 0) {
                rectF.right = rect.right - f10;
            } else {
                rectF.left = rect.left + f10;
            }
        }
    }

    private static boolean l1(int[] iArr, int i10) {
        if (iArr == null) {
            return false;
        }
        for (int i11 : iArr) {
            if (i11 == i10) {
                return true;
            }
        }
        return false;
    }

    private void m0(Rect rect, RectF rectF) {
        rectF.setEmpty();
        if (M2()) {
            float f10 = this.f25296s0 + this.f25295r0;
            if (androidx.core.graphics.drawable.a.f(this) == 0) {
                float f11 = rect.right - f10;
                rectF.right = f11;
                rectF.left = f11 - this.f25281d0;
            } else {
                float f12 = rect.left + f10;
                rectF.left = f12;
                rectF.right = f12 + this.f25281d0;
            }
            float fExactCenterY = rect.exactCenterY();
            float f13 = this.f25281d0;
            float f14 = fExactCenterY - (f13 / 2.0f);
            rectF.top = f14;
            rectF.bottom = f14 + f13;
        }
    }

    private void n0(Rect rect, RectF rectF) {
        rectF.setEmpty();
        if (M2()) {
            float f10 = this.f25296s0 + this.f25295r0 + this.f25281d0 + this.f25294q0 + this.f25293p0;
            if (androidx.core.graphics.drawable.a.f(this) == 0) {
                float f11 = rect.right;
                rectF.right = f11;
                rectF.left = f11 - f10;
            } else {
                int i10 = rect.left;
                rectF.left = i10;
                rectF.right = i10 + f10;
            }
            rectF.top = rect.top;
            rectF.bottom = rect.bottom;
        }
    }

    private void p0(Rect rect, RectF rectF) {
        rectF.setEmpty();
        if (this.T != null) {
            float fK0 = this.f25289l0 + k0() + this.f25292o0;
            float fO0 = this.f25296s0 + o0() + this.f25293p0;
            if (androidx.core.graphics.drawable.a.f(this) == 0) {
                rectF.left = rect.left + fK0;
                rectF.right = rect.right - fO0;
            } else {
                rectF.left = rect.left + fO0;
                rectF.right = rect.right - fK0;
            }
            rectF.top = rect.top;
            rectF.bottom = rect.bottom;
        }
    }

    private static boolean p1(ColorStateList colorStateList) {
        return colorStateList != null && colorStateList.isStateful();
    }

    private float q0() {
        this.A0.e().getFontMetrics(this.f25300w0);
        Paint.FontMetrics fontMetrics = this.f25300w0;
        return (fontMetrics.descent + fontMetrics.ascent) / 2.0f;
    }

    private static boolean q1(Drawable drawable) {
        return drawable != null && drawable.isStateful();
    }

    private static boolean r1(d dVar) {
        ColorStateList colorStateList;
        return (dVar == null || (colorStateList = dVar.f31970a) == null || !colorStateList.isStateful()) ? false : true;
    }

    private boolean s0() {
        return this.f25284g0 && this.f25285h0 != null && this.f25283f0;
    }

    private void s1(AttributeSet attributeSet, int i10, int i11) {
        TypedArray typedArrayH = j.h(this.f25297t0, attributeSet, y3.k.N, i10, i11, new int[0]);
        this.V0 = typedArrayH.hasValue(y3.k.f36954z0);
        Z1(c.a(this.f25297t0, typedArrayH, y3.k.f36863m0));
        D1(c.a(this.f25297t0, typedArrayH, y3.k.Z));
        R1(typedArrayH.getDimension(y3.k.f36828h0, 0.0f));
        int i12 = y3.k.f36779a0;
        if (typedArrayH.hasValue(i12)) {
            F1(typedArrayH.getDimension(i12, 0.0f));
        }
        V1(c.a(this.f25297t0, typedArrayH, y3.k.f36849k0));
        X1(typedArrayH.getDimension(y3.k.f36856l0, 0.0f));
        w2(c.a(this.f25297t0, typedArrayH, y3.k.f36947y0));
        B2(typedArrayH.getText(y3.k.T));
        d dVarF = c.f(this.f25297t0, typedArrayH, y3.k.O);
        dVarF.f31983n = typedArrayH.getDimension(y3.k.P, dVarF.f31983n);
        C2(dVarF);
        int i13 = typedArrayH.getInt(y3.k.R, 0);
        if (i13 == 1) {
            o2(TextUtils.TruncateAt.START);
        } else if (i13 == 2) {
            o2(TextUtils.TruncateAt.MIDDLE);
        } else if (i13 == 3) {
            o2(TextUtils.TruncateAt.END);
        }
        Q1(typedArrayH.getBoolean(y3.k.f36821g0, false));
        if (attributeSet != null && attributeSet.getAttributeValue("http://schemas.android.com/apk/res-auto", "chipIconEnabled") != null && attributeSet.getAttributeValue("http://schemas.android.com/apk/res-auto", "chipIconVisible") == null) {
            Q1(typedArrayH.getBoolean(y3.k.f36800d0, false));
        }
        J1(c.d(this.f25297t0, typedArrayH, y3.k.f36793c0));
        int i14 = y3.k.f36814f0;
        if (typedArrayH.hasValue(i14)) {
            N1(c.a(this.f25297t0, typedArrayH, i14));
        }
        L1(typedArrayH.getDimension(y3.k.f36807e0, -1.0f));
        m2(typedArrayH.getBoolean(y3.k.f36912t0, false));
        if (attributeSet != null && attributeSet.getAttributeValue("http://schemas.android.com/apk/res-auto", "closeIconEnabled") != null && attributeSet.getAttributeValue("http://schemas.android.com/apk/res-auto", "closeIconVisible") == null) {
            m2(typedArrayH.getBoolean(y3.k.f36877o0, false));
        }
        a2(c.d(this.f25297t0, typedArrayH, y3.k.f36870n0));
        k2(c.a(this.f25297t0, typedArrayH, y3.k.f36905s0));
        f2(typedArrayH.getDimension(y3.k.f36891q0, 0.0f));
        v1(typedArrayH.getBoolean(y3.k.U, false));
        C1(typedArrayH.getBoolean(y3.k.Y, false));
        if (attributeSet != null && attributeSet.getAttributeValue("http://schemas.android.com/apk/res-auto", "checkedIconEnabled") != null && attributeSet.getAttributeValue("http://schemas.android.com/apk/res-auto", "checkedIconVisible") == null) {
            C1(typedArrayH.getBoolean(y3.k.W, false));
        }
        x1(c.d(this.f25297t0, typedArrayH, y3.k.V));
        int i15 = y3.k.X;
        if (typedArrayH.hasValue(i15)) {
            z1(c.a(this.f25297t0, typedArrayH, i15));
        }
        z2(z3.h.b(this.f25297t0, typedArrayH, y3.k.A0));
        p2(z3.h.b(this.f25297t0, typedArrayH, y3.k.f36926v0));
        T1(typedArrayH.getDimension(y3.k.f36842j0, 0.0f));
        t2(typedArrayH.getDimension(y3.k.f36940x0, 0.0f));
        r2(typedArrayH.getDimension(y3.k.f36933w0, 0.0f));
        G2(typedArrayH.getDimension(y3.k.C0, 0.0f));
        E2(typedArrayH.getDimension(y3.k.B0, 0.0f));
        h2(typedArrayH.getDimension(y3.k.f36898r0, 0.0f));
        c2(typedArrayH.getDimension(y3.k.f36884p0, 0.0f));
        H1(typedArrayH.getDimension(y3.k.f36786b0, 0.0f));
        v2(typedArrayH.getDimensionPixelSize(y3.k.S, Integer.MAX_VALUE));
        typedArrayH.recycle();
    }

    public static a t0(Context context, AttributeSet attributeSet, int i10, int i11) {
        a aVar = new a(context, attributeSet, i10, i11);
        aVar.s1(attributeSet, i10, i11);
        return aVar;
    }

    private void u0(Canvas canvas, Rect rect) {
        if (K2()) {
            j0(rect, this.f25301x0);
            RectF rectF = this.f25301x0;
            float f10 = rectF.left;
            float f11 = rectF.top;
            canvas.translate(f10, f11);
            this.f25285h0.setBounds(0, 0, (int) this.f25301x0.width(), (int) this.f25301x0.height());
            this.f25285h0.draw(canvas);
            canvas.translate(-f10, -f11);
        }
    }

    private boolean u1(int[] iArr, int[] iArr2) {
        boolean z10;
        boolean zOnStateChange = super.onStateChange(iArr);
        ColorStateList colorStateList = this.M;
        int iL = l(colorStateList != null ? colorStateList.getColorForState(iArr, this.B0) : 0);
        boolean state = true;
        if (this.B0 != iL) {
            this.B0 = iL;
            zOnStateChange = true;
        }
        ColorStateList colorStateList2 = this.N;
        int iL2 = l(colorStateList2 != null ? colorStateList2.getColorForState(iArr, this.C0) : 0);
        if (this.C0 != iL2) {
            this.C0 = iL2;
            zOnStateChange = true;
        }
        int iE = e4.a.e(iL, iL2);
        if ((this.D0 != iE) | (x() == null)) {
            this.D0 = iE;
            W(ColorStateList.valueOf(iE));
            zOnStateChange = true;
        }
        ColorStateList colorStateList3 = this.Q;
        int colorForState = colorStateList3 != null ? colorStateList3.getColorForState(iArr, this.E0) : 0;
        if (this.E0 != colorForState) {
            this.E0 = colorForState;
            zOnStateChange = true;
        }
        int colorForState2 = (this.Q0 == null || !b.b(iArr)) ? 0 : this.Q0.getColorForState(iArr, this.F0);
        if (this.F0 != colorForState2) {
            this.F0 = colorForState2;
            if (this.P0) {
                zOnStateChange = true;
            }
        }
        int colorForState3 = (this.A0.d() == null || this.A0.d().f31970a == null) ? 0 : this.A0.d().f31970a.getColorForState(iArr, this.G0);
        if (this.G0 != colorForState3) {
            this.G0 = colorForState3;
            zOnStateChange = true;
        }
        boolean z11 = l1(getState(), R.attr.state_checked) && this.f25283f0;
        if (this.H0 == z11 || this.f25285h0 == null) {
            z10 = false;
        } else {
            float fK0 = k0();
            this.H0 = z11;
            if (fK0 != k0()) {
                zOnStateChange = true;
                z10 = true;
            } else {
                zOnStateChange = true;
                z10 = false;
            }
        }
        ColorStateList colorStateList4 = this.M0;
        int colorForState4 = colorStateList4 != null ? colorStateList4.getColorForState(iArr, this.I0) : 0;
        if (this.I0 != colorForState4) {
            this.I0 = colorForState4;
            this.L0 = g4.a.a(this, this.M0, this.N0);
        } else {
            state = zOnStateChange;
        }
        if (q1(this.V)) {
            state |= this.V.setState(iArr);
        }
        if (q1(this.f25285h0)) {
            state |= this.f25285h0.setState(iArr);
        }
        if (q1(this.f25278a0)) {
            int[] iArr3 = new int[iArr.length + iArr2.length];
            System.arraycopy(iArr, 0, iArr3, 0, iArr.length);
            System.arraycopy(iArr2, 0, iArr3, iArr.length, iArr2.length);
            state |= this.f25278a0.setState(iArr3);
        }
        if (b.f32158a && q1(this.f25279b0)) {
            state |= this.f25279b0.setState(iArr2);
        }
        if (state) {
            invalidateSelf();
        }
        if (z10) {
            t1();
        }
        return state;
    }

    private void v0(Canvas canvas, Rect rect) {
        if (this.V0) {
            return;
        }
        this.f25298u0.setColor(this.C0);
        this.f25298u0.setStyle(Paint.Style.FILL);
        this.f25298u0.setColorFilter(j1());
        this.f25301x0.set(rect);
        canvas.drawRoundRect(this.f25301x0, G0(), G0(), this.f25298u0);
    }

    private void w0(Canvas canvas, Rect rect) {
        if (L2()) {
            j0(rect, this.f25301x0);
            RectF rectF = this.f25301x0;
            float f10 = rectF.left;
            float f11 = rectF.top;
            canvas.translate(f10, f11);
            this.V.setBounds(0, 0, (int) this.f25301x0.width(), (int) this.f25301x0.height());
            this.V.draw(canvas);
            canvas.translate(-f10, -f11);
        }
    }

    private void x0(Canvas canvas, Rect rect) {
        if (this.R <= 0.0f || this.V0) {
            return;
        }
        this.f25298u0.setColor(this.E0);
        this.f25298u0.setStyle(Paint.Style.STROKE);
        if (!this.V0) {
            this.f25298u0.setColorFilter(j1());
        }
        RectF rectF = this.f25301x0;
        float f10 = rect.left;
        float f11 = this.R;
        rectF.set(f10 + (f11 / 2.0f), rect.top + (f11 / 2.0f), rect.right - (f11 / 2.0f), rect.bottom - (f11 / 2.0f));
        float f12 = this.P - (this.R / 2.0f);
        canvas.drawRoundRect(this.f25301x0, f12, f12, this.f25298u0);
    }

    private void y0(Canvas canvas, Rect rect) {
        if (this.V0) {
            return;
        }
        this.f25298u0.setColor(this.B0);
        this.f25298u0.setStyle(Paint.Style.FILL);
        this.f25301x0.set(rect);
        canvas.drawRoundRect(this.f25301x0, G0(), G0(), this.f25298u0);
    }

    private void z0(Canvas canvas, Rect rect) {
        if (M2()) {
            m0(rect, this.f25301x0);
            RectF rectF = this.f25301x0;
            float f10 = rectF.left;
            float f11 = rectF.top;
            canvas.translate(f10, f11);
            this.f25278a0.setBounds(0, 0, (int) this.f25301x0.width(), (int) this.f25301x0.height());
            if (b.f32158a) {
                this.f25279b0.setBounds(this.f25278a0.getBounds());
                this.f25279b0.jumpToCurrentState();
                this.f25279b0.draw(canvas);
            } else {
                this.f25278a0.draw(canvas);
            }
            canvas.translate(-f10, -f11);
        }
    }

    public void A1(int i10) {
        z1(g.a.a(this.f25297t0, i10));
    }

    public void A2(int i10) {
        z2(z3.h.c(this.f25297t0, i10));
    }

    public void B1(int i10) {
        C1(this.f25297t0.getResources().getBoolean(i10));
    }

    public void B2(CharSequence charSequence) {
        if (charSequence == null) {
            charSequence = BuildConfig.FLAVOR;
        }
        if (TextUtils.equals(this.T, charSequence)) {
            return;
        }
        this.T = charSequence;
        this.A0.i(true);
        invalidateSelf();
        t1();
    }

    public void C1(boolean z10) {
        if (this.f25284g0 != z10) {
            boolean zK2 = K2();
            this.f25284g0 = z10;
            boolean zK22 = K2();
            if (zK2 != zK22) {
                if (zK22) {
                    i0(this.f25285h0);
                } else {
                    N2(this.f25285h0);
                }
                invalidateSelf();
                t1();
            }
        }
    }

    public void C2(d dVar) {
        this.A0.h(dVar, this.f25297t0);
    }

    public Drawable D0() {
        return this.f25285h0;
    }

    public void D1(ColorStateList colorStateList) {
        if (this.N != colorStateList) {
            this.N = colorStateList;
            onStateChange(getState());
        }
    }

    public void D2(int i10) {
        C2(new d(this.f25297t0, i10));
    }

    public ColorStateList E0() {
        return this.f25286i0;
    }

    public void E1(int i10) {
        D1(g.a.a(this.f25297t0, i10));
    }

    public void E2(float f10) {
        if (this.f25293p0 != f10) {
            this.f25293p0 = f10;
            invalidateSelf();
            t1();
        }
    }

    public ColorStateList F0() {
        return this.N;
    }

    @Deprecated
    public void F1(float f10) {
        if (this.P != f10) {
            this.P = f10;
            setShapeAppearanceModel(C().w(f10));
        }
    }

    public void F2(int i10) {
        E2(this.f25297t0.getResources().getDimension(i10));
    }

    public float G0() {
        return this.V0 ? F() : this.P;
    }

    @Deprecated
    public void G1(int i10) {
        F1(this.f25297t0.getResources().getDimension(i10));
    }

    public void G2(float f10) {
        if (this.f25292o0 != f10) {
            this.f25292o0 = f10;
            invalidateSelf();
            t1();
        }
    }

    public float H0() {
        return this.f25296s0;
    }

    public void H1(float f10) {
        if (this.f25296s0 != f10) {
            this.f25296s0 = f10;
            invalidateSelf();
            t1();
        }
    }

    public void H2(int i10) {
        G2(this.f25297t0.getResources().getDimension(i10));
    }

    public Drawable I0() {
        Drawable drawable = this.V;
        if (drawable != null) {
            return androidx.core.graphics.drawable.a.q(drawable);
        }
        return null;
    }

    public void I1(int i10) {
        H1(this.f25297t0.getResources().getDimension(i10));
    }

    public void I2(boolean z10) {
        if (this.P0 != z10) {
            this.P0 = z10;
            O2();
            onStateChange(getState());
        }
    }

    public float J0() {
        return this.X;
    }

    public void J1(Drawable drawable) {
        Drawable drawableI0 = I0();
        if (drawableI0 != drawable) {
            float fK0 = k0();
            this.V = drawable != null ? androidx.core.graphics.drawable.a.r(drawable).mutate() : null;
            float fK02 = k0();
            N2(drawableI0);
            if (L2()) {
                i0(this.V);
            }
            invalidateSelf();
            if (fK0 != fK02) {
                t1();
            }
        }
    }

    boolean J2() {
        return this.T0;
    }

    public ColorStateList K0() {
        return this.W;
    }

    public void K1(int i10) {
        J1(g.a.b(this.f25297t0, i10));
    }

    public float L0() {
        return this.O;
    }

    public void L1(float f10) {
        if (this.X != f10) {
            float fK0 = k0();
            this.X = f10;
            float fK02 = k0();
            invalidateSelf();
            if (fK0 != fK02) {
                t1();
            }
        }
    }

    public float M0() {
        return this.f25289l0;
    }

    public void M1(int i10) {
        L1(this.f25297t0.getResources().getDimension(i10));
    }

    public ColorStateList N0() {
        return this.Q;
    }

    public void N1(ColorStateList colorStateList) {
        this.Y = true;
        if (this.W != colorStateList) {
            this.W = colorStateList;
            if (L2()) {
                androidx.core.graphics.drawable.a.o(this.V, colorStateList);
            }
            onStateChange(getState());
        }
    }

    public float O0() {
        return this.R;
    }

    public void O1(int i10) {
        N1(g.a.a(this.f25297t0, i10));
    }

    public Drawable P0() {
        Drawable drawable = this.f25278a0;
        if (drawable != null) {
            return androidx.core.graphics.drawable.a.q(drawable);
        }
        return null;
    }

    public void P1(int i10) {
        Q1(this.f25297t0.getResources().getBoolean(i10));
    }

    public CharSequence Q0() {
        return this.f25282e0;
    }

    public void Q1(boolean z10) {
        if (this.U != z10) {
            boolean zL2 = L2();
            this.U = z10;
            boolean zL22 = L2();
            if (zL2 != zL22) {
                if (zL22) {
                    i0(this.V);
                } else {
                    N2(this.V);
                }
                invalidateSelf();
                t1();
            }
        }
    }

    public float R0() {
        return this.f25295r0;
    }

    public void R1(float f10) {
        if (this.O != f10) {
            this.O = f10;
            invalidateSelf();
            t1();
        }
    }

    public float S0() {
        return this.f25281d0;
    }

    public void S1(int i10) {
        R1(this.f25297t0.getResources().getDimension(i10));
    }

    public float T0() {
        return this.f25294q0;
    }

    public void T1(float f10) {
        if (this.f25289l0 != f10) {
            this.f25289l0 = f10;
            invalidateSelf();
            t1();
        }
    }

    public int[] U0() {
        return this.O0;
    }

    public void U1(int i10) {
        T1(this.f25297t0.getResources().getDimension(i10));
    }

    public ColorStateList V0() {
        return this.f25280c0;
    }

    public void V1(ColorStateList colorStateList) {
        if (this.Q != colorStateList) {
            this.Q = colorStateList;
            if (this.V0) {
                d0(colorStateList);
            }
            onStateChange(getState());
        }
    }

    public void W0(RectF rectF) {
        n0(getBounds(), rectF);
    }

    public void W1(int i10) {
        V1(g.a.a(this.f25297t0, i10));
    }

    public void X1(float f10) {
        if (this.R != f10) {
            this.R = f10;
            this.f25298u0.setStrokeWidth(f10);
            if (this.V0) {
                super.e0(f10);
            }
            invalidateSelf();
        }
    }

    public void Y1(int i10) {
        X1(this.f25297t0.getResources().getDimension(i10));
    }

    public TextUtils.TruncateAt Z0() {
        return this.S0;
    }

    @Override // com.google.android.material.internal.h.b
    public void a() {
        t1();
        invalidateSelf();
    }

    public z3.h a1() {
        return this.f25288k0;
    }

    public void a2(Drawable drawable) {
        Drawable drawableP0 = P0();
        if (drawableP0 != drawable) {
            float fO0 = o0();
            this.f25278a0 = drawable != null ? androidx.core.graphics.drawable.a.r(drawable).mutate() : null;
            if (b.f32158a) {
                P2();
            }
            float fO02 = o0();
            N2(drawableP0);
            if (M2()) {
                i0(this.f25278a0);
            }
            invalidateSelf();
            if (fO0 != fO02) {
                t1();
            }
        }
    }

    public float b1() {
        return this.f25291n0;
    }

    public void b2(CharSequence charSequence) {
        if (this.f25282e0 != charSequence) {
            this.f25282e0 = androidx.core.text.a.c().h(charSequence);
            invalidateSelf();
        }
    }

    public float c1() {
        return this.f25290m0;
    }

    public void c2(float f10) {
        if (this.f25295r0 != f10) {
            this.f25295r0 = f10;
            invalidateSelf();
            if (M2()) {
                t1();
            }
        }
    }

    public ColorStateList d1() {
        return this.S;
    }

    public void d2(int i10) {
        c2(this.f25297t0.getResources().getDimension(i10));
    }

    @Override // o4.g, android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        Rect bounds = getBounds();
        if (bounds.isEmpty() || getAlpha() == 0) {
            return;
        }
        int i10 = this.J0;
        int iA = i10 < 255 ? a4.a.a(canvas, bounds.left, bounds.top, bounds.right, bounds.bottom, i10) : 0;
        y0(canvas, bounds);
        v0(canvas, bounds);
        if (this.V0) {
            super.draw(canvas);
        }
        x0(canvas, bounds);
        A0(canvas, bounds);
        w0(canvas, bounds);
        u0(canvas, bounds);
        if (this.T0) {
            C0(canvas, bounds);
        }
        z0(canvas, bounds);
        B0(canvas, bounds);
        if (this.J0 < 255) {
            canvas.restoreToCount(iA);
        }
    }

    public z3.h e1() {
        return this.f25287j0;
    }

    public void e2(int i10) {
        a2(g.a.b(this.f25297t0, i10));
    }

    public CharSequence f1() {
        return this.T;
    }

    public void f2(float f10) {
        if (this.f25281d0 != f10) {
            this.f25281d0 = f10;
            invalidateSelf();
            if (M2()) {
                t1();
            }
        }
    }

    public d g1() {
        return this.A0.d();
    }

    public void g2(int i10) {
        f2(this.f25297t0.getResources().getDimension(i10));
    }

    @Override // android.graphics.drawable.Drawable
    public int getAlpha() {
        return this.J0;
    }

    @Override // android.graphics.drawable.Drawable
    public ColorFilter getColorFilter() {
        return this.K0;
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        return (int) this.O;
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        return Math.min(Math.round(this.f25289l0 + k0() + this.f25292o0 + this.A0.f(f1().toString()) + this.f25293p0 + o0() + this.f25296s0), this.U0);
    }

    @Override // o4.g, android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    @Override // o4.g, android.graphics.drawable.Drawable
    @TargetApi(21)
    public void getOutline(Outline outline) {
        if (this.V0) {
            super.getOutline(outline);
            return;
        }
        Rect bounds = getBounds();
        if (bounds.isEmpty()) {
            outline.setRoundRect(0, 0, getIntrinsicWidth(), getIntrinsicHeight(), this.P);
        } else {
            outline.setRoundRect(bounds, this.P);
        }
        outline.setAlpha(getAlpha() / 255.0f);
    }

    public float h1() {
        return this.f25293p0;
    }

    public void h2(float f10) {
        if (this.f25294q0 != f10) {
            this.f25294q0 = f10;
            invalidateSelf();
            if (M2()) {
                t1();
            }
        }
    }

    public float i1() {
        return this.f25292o0;
    }

    public void i2(int i10) {
        h2(this.f25297t0.getResources().getDimension(i10));
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void invalidateDrawable(Drawable drawable) {
        Drawable.Callback callback = getCallback();
        if (callback != null) {
            callback.invalidateDrawable(this);
        }
    }

    @Override // o4.g, android.graphics.drawable.Drawable
    public boolean isStateful() {
        return p1(this.M) || p1(this.N) || p1(this.Q) || (this.P0 && p1(this.Q0)) || r1(this.A0.d()) || s0() || q1(this.V) || q1(this.f25285h0) || p1(this.M0);
    }

    public boolean j2(int[] iArr) {
        if (Arrays.equals(this.O0, iArr)) {
            return false;
        }
        this.O0 = iArr;
        if (M2()) {
            return u1(getState(), iArr);
        }
        return false;
    }

    float k0() {
        if (L2() || K2()) {
            return this.f25290m0 + Y0() + this.f25291n0;
        }
        return 0.0f;
    }

    public boolean k1() {
        return this.P0;
    }

    public void k2(ColorStateList colorStateList) {
        if (this.f25280c0 != colorStateList) {
            this.f25280c0 = colorStateList;
            if (M2()) {
                androidx.core.graphics.drawable.a.o(this.f25278a0, colorStateList);
            }
            onStateChange(getState());
        }
    }

    public void l2(int i10) {
        k2(g.a.a(this.f25297t0, i10));
    }

    public boolean m1() {
        return this.f25283f0;
    }

    public void m2(boolean z10) {
        if (this.Z != z10) {
            boolean zM2 = M2();
            this.Z = z10;
            boolean zM22 = M2();
            if (zM2 != zM22) {
                if (zM22) {
                    i0(this.f25278a0);
                } else {
                    N2(this.f25278a0);
                }
                invalidateSelf();
                t1();
            }
        }
    }

    public boolean n1() {
        return q1(this.f25278a0);
    }

    public void n2(InterfaceC0115a interfaceC0115a) {
        this.R0 = new WeakReference<>(interfaceC0115a);
    }

    float o0() {
        if (M2()) {
            return this.f25294q0 + this.f25281d0 + this.f25295r0;
        }
        return 0.0f;
    }

    public boolean o1() {
        return this.Z;
    }

    public void o2(TextUtils.TruncateAt truncateAt) {
        this.S0 = truncateAt;
    }

    @Override // android.graphics.drawable.Drawable
    public boolean onLayoutDirectionChanged(int i10) {
        boolean zOnLayoutDirectionChanged = super.onLayoutDirectionChanged(i10);
        if (L2()) {
            zOnLayoutDirectionChanged |= androidx.core.graphics.drawable.a.m(this.V, i10);
        }
        if (K2()) {
            zOnLayoutDirectionChanged |= androidx.core.graphics.drawable.a.m(this.f25285h0, i10);
        }
        if (M2()) {
            zOnLayoutDirectionChanged |= androidx.core.graphics.drawable.a.m(this.f25278a0, i10);
        }
        if (!zOnLayoutDirectionChanged) {
            return true;
        }
        invalidateSelf();
        return true;
    }

    @Override // android.graphics.drawable.Drawable
    protected boolean onLevelChange(int i10) {
        boolean zOnLevelChange = super.onLevelChange(i10);
        if (L2()) {
            zOnLevelChange |= this.V.setLevel(i10);
        }
        if (K2()) {
            zOnLevelChange |= this.f25285h0.setLevel(i10);
        }
        if (M2()) {
            zOnLevelChange |= this.f25278a0.setLevel(i10);
        }
        if (zOnLevelChange) {
            invalidateSelf();
        }
        return zOnLevelChange;
    }

    @Override // o4.g, android.graphics.drawable.Drawable, com.google.android.material.internal.h.b
    public boolean onStateChange(int[] iArr) {
        if (this.V0) {
            super.onStateChange(iArr);
        }
        return u1(iArr, U0());
    }

    public void p2(z3.h hVar) {
        this.f25288k0 = hVar;
    }

    public void q2(int i10) {
        p2(z3.h.c(this.f25297t0, i10));
    }

    Paint.Align r0(Rect rect, PointF pointF) {
        pointF.set(0.0f, 0.0f);
        Paint.Align align = Paint.Align.LEFT;
        if (this.T != null) {
            float fK0 = this.f25289l0 + k0() + this.f25292o0;
            if (androidx.core.graphics.drawable.a.f(this) == 0) {
                pointF.x = rect.left + fK0;
                align = Paint.Align.LEFT;
            } else {
                pointF.x = rect.right - fK0;
                align = Paint.Align.RIGHT;
            }
            pointF.y = rect.centerY() - q0();
        }
        return align;
    }

    public void r2(float f10) {
        if (this.f25291n0 != f10) {
            float fK0 = k0();
            this.f25291n0 = f10;
            float fK02 = k0();
            invalidateSelf();
            if (fK0 != fK02) {
                t1();
            }
        }
    }

    public void s2(int i10) {
        r2(this.f25297t0.getResources().getDimension(i10));
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void scheduleDrawable(Drawable drawable, Runnable runnable, long j10) {
        Drawable.Callback callback = getCallback();
        if (callback != null) {
            callback.scheduleDrawable(this, runnable, j10);
        }
    }

    @Override // o4.g, android.graphics.drawable.Drawable
    public void setAlpha(int i10) {
        if (this.J0 != i10) {
            this.J0 = i10;
            invalidateSelf();
        }
    }

    @Override // o4.g, android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        if (this.K0 != colorFilter) {
            this.K0 = colorFilter;
            invalidateSelf();
        }
    }

    @Override // o4.g, android.graphics.drawable.Drawable, androidx.core.graphics.drawable.e
    public void setTintList(ColorStateList colorStateList) {
        if (this.M0 != colorStateList) {
            this.M0 = colorStateList;
            onStateChange(getState());
        }
    }

    @Override // o4.g, android.graphics.drawable.Drawable, androidx.core.graphics.drawable.e
    public void setTintMode(PorterDuff.Mode mode) {
        if (this.N0 != mode) {
            this.N0 = mode;
            this.L0 = g4.a.a(this, this.M0, mode);
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public boolean setVisible(boolean z10, boolean z11) {
        boolean visible = super.setVisible(z10, z11);
        if (L2()) {
            visible |= this.V.setVisible(z10, z11);
        }
        if (K2()) {
            visible |= this.f25285h0.setVisible(z10, z11);
        }
        if (M2()) {
            visible |= this.f25278a0.setVisible(z10, z11);
        }
        if (visible) {
            invalidateSelf();
        }
        return visible;
    }

    protected void t1() {
        InterfaceC0115a interfaceC0115a = this.R0.get();
        if (interfaceC0115a != null) {
            interfaceC0115a.a();
        }
    }

    public void t2(float f10) {
        if (this.f25290m0 != f10) {
            float fK0 = k0();
            this.f25290m0 = f10;
            float fK02 = k0();
            invalidateSelf();
            if (fK0 != fK02) {
                t1();
            }
        }
    }

    public void u2(int i10) {
        t2(this.f25297t0.getResources().getDimension(i10));
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void unscheduleDrawable(Drawable drawable, Runnable runnable) {
        Drawable.Callback callback = getCallback();
        if (callback != null) {
            callback.unscheduleDrawable(this, runnable);
        }
    }

    public void v1(boolean z10) {
        if (this.f25283f0 != z10) {
            this.f25283f0 = z10;
            float fK0 = k0();
            if (!z10 && this.H0) {
                this.H0 = false;
            }
            float fK02 = k0();
            invalidateSelf();
            if (fK0 != fK02) {
                t1();
            }
        }
    }

    public void v2(int i10) {
        this.U0 = i10;
    }

    public void w1(int i10) {
        v1(this.f25297t0.getResources().getBoolean(i10));
    }

    public void w2(ColorStateList colorStateList) {
        if (this.S != colorStateList) {
            this.S = colorStateList;
            O2();
            onStateChange(getState());
        }
    }

    public void x1(Drawable drawable) {
        if (this.f25285h0 != drawable) {
            float fK0 = k0();
            this.f25285h0 = drawable;
            float fK02 = k0();
            N2(this.f25285h0);
            i0(this.f25285h0);
            invalidateSelf();
            if (fK0 != fK02) {
                t1();
            }
        }
    }

    public void x2(int i10) {
        w2(g.a.a(this.f25297t0, i10));
    }

    public void y1(int i10) {
        x1(g.a.b(this.f25297t0, i10));
    }

    void y2(boolean z10) {
        this.T0 = z10;
    }

    public void z1(ColorStateList colorStateList) {
        if (this.f25286i0 != colorStateList) {
            this.f25286i0 = colorStateList;
            if (s0()) {
                androidx.core.graphics.drawable.a.o(this.f25285h0, colorStateList);
            }
            onStateChange(getState());
        }
    }

    public void z2(z3.h hVar) {
        this.f25287j0 = hVar;
    }
}
