package com.google.android.material.timepicker;

import android.R;
import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.RadialGradient;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Shader;
import android.util.AttributeSet;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.TextView;
import androidx.core.view.a0;
import androidx.core.view.accessibility.c;
import com.google.android.material.timepicker.ClockHandView;
import com.vungle.mediation.BuildConfig;
import java.util.Arrays;
import y3.d;
import y3.f;
import y3.h;
import y3.j;
import y3.k;

/* JADX INFO: loaded from: classes2.dex */
class ClockFaceView extends com.google.android.material.timepicker.b implements ClockHandView.d {
    private final ClockHandView P;
    private final Rect Q;
    private final RectF R;
    private final SparseArray<TextView> S;
    private final androidx.core.view.a T;
    private final int[] U;
    private final float[] V;
    private final int W;

    /* JADX INFO: renamed from: a0, reason: collision with root package name */
    private String[] f25739a0;

    /* JADX INFO: renamed from: b0, reason: collision with root package name */
    private float f25740b0;

    /* JADX INFO: renamed from: c0, reason: collision with root package name */
    private final ColorStateList f25741c0;

    class a implements ViewTreeObserver.OnPreDrawListener {
        a() {
        }

        @Override // android.view.ViewTreeObserver.OnPreDrawListener
        public boolean onPreDraw() {
            if (!ClockFaceView.this.isShown()) {
                return true;
            }
            ClockFaceView.this.getViewTreeObserver().removeOnPreDrawListener(this);
            ClockFaceView.this.D(((ClockFaceView.this.getHeight() / 2) - ClockFaceView.this.P.g()) - ClockFaceView.this.W);
            return true;
        }
    }

    class b extends androidx.core.view.a {
        b() {
        }

        @Override // androidx.core.view.a
        public void g(View view, androidx.core.view.accessibility.c cVar) {
            super.g(view, cVar);
            int iIntValue = ((Integer) view.getTag(f.f36711p)).intValue();
            if (iIntValue > 0) {
                cVar.u0((View) ClockFaceView.this.S.get(iIntValue - 1));
            }
            cVar.a0(c.C0039c.a(0, 1, iIntValue, 1, false, view.isSelected()));
        }
    }

    public ClockFaceView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, y3.b.f36650t);
    }

    private void K() {
        RectF rectFD = this.P.d();
        for (int i10 = 0; i10 < this.S.size(); i10++) {
            TextView textView = this.S.get(i10);
            if (textView != null) {
                textView.getDrawingRect(this.Q);
                this.Q.offset(textView.getPaddingLeft(), textView.getPaddingTop());
                offsetDescendantRectToMyCoords(textView, this.Q);
                this.R.set(this.Q);
                textView.getPaint().setShader(L(rectFD, this.R));
                textView.invalidate();
            }
        }
    }

    private RadialGradient L(RectF rectF, RectF rectF2) {
        if (RectF.intersects(rectF, rectF2)) {
            return new RadialGradient(rectF.centerX() - this.R.left, rectF.centerY() - this.R.top, rectF.width() * 0.5f, this.U, this.V, Shader.TileMode.CLAMP);
        }
        return null;
    }

    private void N(int i10) {
        LayoutInflater layoutInflaterFrom = LayoutInflater.from(getContext());
        int size = this.S.size();
        for (int i11 = 0; i11 < Math.max(this.f25739a0.length, size); i11++) {
            TextView textView = this.S.get(i11);
            if (i11 >= this.f25739a0.length) {
                removeView(textView);
                this.S.remove(i11);
            } else {
                if (textView == null) {
                    textView = (TextView) layoutInflaterFrom.inflate(h.f36728e, (ViewGroup) this, false);
                    this.S.put(i11, textView);
                    addView(textView);
                }
                textView.setVisibility(0);
                textView.setText(this.f25739a0[i11]);
                textView.setTag(f.f36711p, Integer.valueOf(i11));
                a0.q0(textView, this.T);
                textView.setTextColor(this.f25741c0);
                if (i10 != 0) {
                    textView.setContentDescription(getResources().getString(i10, this.f25739a0[i11]));
                }
            }
        }
    }

    @Override // com.google.android.material.timepicker.b
    public void D(int i10) {
        if (i10 != C()) {
            super.D(i10);
            this.P.j(C());
        }
    }

    public void M(String[] strArr, int i10) {
        this.f25739a0 = strArr;
        N(i10);
    }

    @Override // com.google.android.material.timepicker.ClockHandView.d
    public void a(float f10, boolean z10) {
        if (Math.abs(this.f25740b0 - f10) > 0.001f) {
            this.f25740b0 = f10;
            K();
        }
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        androidx.core.view.accessibility.c.x0(accessibilityNodeInfo).Z(c.b.a(1, this.f25739a0.length, false, 1));
    }

    @Override // androidx.constraintlayout.widget.ConstraintLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z10, int i10, int i11, int i12, int i13) {
        super.onLayout(z10, i10, i11, i12, i13);
        K();
    }

    @SuppressLint({"ClickableViewAccessibility"})
    public ClockFaceView(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.Q = new Rect();
        this.R = new RectF();
        this.S = new SparseArray<>();
        this.V = new float[]{0.0f, 0.9f, 1.0f};
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, k.M0, i10, j.f36776s);
        Resources resources = getResources();
        ColorStateList colorStateListA = l4.c.a(context, typedArrayObtainStyledAttributes, k.O0);
        this.f25741c0 = colorStateListA;
        LayoutInflater.from(context).inflate(h.f36729f, (ViewGroup) this, true);
        ClockHandView clockHandView = (ClockHandView) findViewById(f.f36705j);
        this.P = clockHandView;
        this.W = resources.getDimensionPixelSize(d.f36672j);
        int colorForState = colorStateListA.getColorForState(new int[]{R.attr.state_selected}, colorStateListA.getDefaultColor());
        this.U = new int[]{colorForState, colorForState, colorStateListA.getDefaultColor()};
        clockHandView.b(this);
        int defaultColor = g.a.a(context, y3.c.f36658b).getDefaultColor();
        ColorStateList colorStateListA2 = l4.c.a(context, typedArrayObtainStyledAttributes, k.N0);
        setBackgroundColor(colorStateListA2 != null ? colorStateListA2.getDefaultColor() : defaultColor);
        getViewTreeObserver().addOnPreDrawListener(new a());
        setFocusable(true);
        typedArrayObtainStyledAttributes.recycle();
        this.T = new b();
        String[] strArr = new String[12];
        Arrays.fill(strArr, BuildConfig.FLAVOR);
        M(strArr, 0);
    }
}
