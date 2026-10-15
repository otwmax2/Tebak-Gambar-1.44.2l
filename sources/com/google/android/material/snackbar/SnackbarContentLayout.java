package com.google.android.material.snackbar;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.core.view.a0;
import y3.f;
import y3.k;

/* JADX INFO: loaded from: classes2.dex */
public class SnackbarContentLayout extends LinearLayout {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private TextView f25573o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private Button f25574p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private int f25575q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private int f25576r;

    public SnackbarContentLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, k.M3);
        this.f25575q = typedArrayObtainStyledAttributes.getDimensionPixelSize(k.N3, -1);
        this.f25576r = typedArrayObtainStyledAttributes.getDimensionPixelSize(k.U3, -1);
        typedArrayObtainStyledAttributes.recycle();
    }

    private static void a(View view, int i10, int i11) {
        if (a0.W(view)) {
            a0.D0(view, a0.J(view), i10, a0.I(view), i11);
        } else {
            view.setPadding(view.getPaddingLeft(), i10, view.getPaddingRight(), i11);
        }
    }

    private boolean b(int i10, int i11, int i12) {
        boolean z10;
        if (i10 != getOrientation()) {
            setOrientation(i10);
            z10 = true;
        } else {
            z10 = false;
        }
        if (this.f25573o.getPaddingTop() == i11 && this.f25573o.getPaddingBottom() == i12) {
            return z10;
        }
        a(this.f25573o, i11, i12);
        return true;
    }

    public Button getActionView() {
        return this.f25574p;
    }

    public TextView getMessageView() {
        return this.f25573o;
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        this.f25573o = (TextView) findViewById(f.J);
        this.f25574p = (Button) findViewById(f.I);
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x0060  */
    @Override // android.widget.LinearLayout, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    protected void onMeasure(int r8, int r9) {
        /*
            r7 = this;
            super.onMeasure(r8, r9)
            int r0 = r7.f25575q
            if (r0 <= 0) goto L18
            int r0 = r7.getMeasuredWidth()
            int r1 = r7.f25575q
            if (r0 <= r1) goto L18
            r8 = 1073741824(0x40000000, float:2.0)
            int r8 = android.view.View.MeasureSpec.makeMeasureSpec(r1, r8)
            super.onMeasure(r8, r9)
        L18:
            android.content.res.Resources r0 = r7.getResources()
            int r1 = y3.d.f36669g
            int r0 = r0.getDimensionPixelSize(r1)
            android.content.res.Resources r1 = r7.getResources()
            int r2 = y3.d.f36668f
            int r1 = r1.getDimensionPixelSize(r2)
            android.widget.TextView r2 = r7.f25573o
            android.text.Layout r2 = r2.getLayout()
            int r2 = r2.getLineCount()
            r3 = 0
            r4 = 1
            if (r2 <= r4) goto L3c
            r2 = 1
            goto L3d
        L3c:
            r2 = 0
        L3d:
            if (r2 == 0) goto L56
            int r5 = r7.f25576r
            if (r5 <= 0) goto L56
            android.widget.Button r5 = r7.f25574p
            int r5 = r5.getMeasuredWidth()
            int r6 = r7.f25576r
            if (r5 <= r6) goto L56
            int r1 = r0 - r1
            boolean r0 = r7.b(r4, r0, r1)
            if (r0 == 0) goto L61
            goto L60
        L56:
            if (r2 == 0) goto L59
            goto L5a
        L59:
            r0 = r1
        L5a:
            boolean r0 = r7.b(r3, r0, r0)
            if (r0 == 0) goto L61
        L60:
            r3 = 1
        L61:
            if (r3 == 0) goto L66
            super.onMeasure(r8, r9)
        L66:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.snackbar.SnackbarContentLayout.onMeasure(int, int):void");
    }

    public void setMaxInlineActionWidth(int i10) {
        this.f25576r = i10;
    }
}
