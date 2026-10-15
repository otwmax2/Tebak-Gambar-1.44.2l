package com.google.android.material.textview;

import android.R;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import androidx.appcompat.widget.AppCompatTextView;
import l4.b;
import l4.c;
import q4.a;
import y3.k;

/* JADX INFO: loaded from: classes2.dex */
public class MaterialTextView extends AppCompatTextView {
    public MaterialTextView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.textViewStyle);
    }

    private void p(Resources.Theme theme, int i10) {
        TypedArray typedArrayObtainStyledAttributes = theme.obtainStyledAttributes(i10, k.P2);
        int iS = s(getContext(), typedArrayObtainStyledAttributes, k.R2, k.S2);
        typedArrayObtainStyledAttributes.recycle();
        if (iS >= 0) {
            setLineHeight(iS);
        }
    }

    private static boolean q(Context context) {
        return b.b(context, y3.b.C, true);
    }

    private static int r(Resources.Theme theme, AttributeSet attributeSet, int i10, int i11) {
        TypedArray typedArrayObtainStyledAttributes = theme.obtainStyledAttributes(attributeSet, k.T2, i10, i11);
        int resourceId = typedArrayObtainStyledAttributes.getResourceId(k.U2, -1);
        typedArrayObtainStyledAttributes.recycle();
        return resourceId;
    }

    private static int s(Context context, TypedArray typedArray, int... iArr) {
        int iC = -1;
        for (int i10 = 0; i10 < iArr.length && iC < 0; i10++) {
            iC = c.c(context, typedArray, iArr[i10], -1);
        }
        return iC;
    }

    private static boolean t(Context context, Resources.Theme theme, AttributeSet attributeSet, int i10, int i11) {
        TypedArray typedArrayObtainStyledAttributes = theme.obtainStyledAttributes(attributeSet, k.T2, i10, i11);
        int iS = s(context, typedArrayObtainStyledAttributes, k.V2, k.W2);
        typedArrayObtainStyledAttributes.recycle();
        return iS != -1;
    }

    @Override // androidx.appcompat.widget.AppCompatTextView, android.widget.TextView
    public void setTextAppearance(Context context, int i10) {
        super.setTextAppearance(context, i10);
        if (q(context)) {
            p(context.getTheme(), i10);
        }
    }

    public MaterialTextView(Context context, AttributeSet attributeSet, int i10) {
        this(context, attributeSet, i10, 0);
    }

    public MaterialTextView(Context context, AttributeSet attributeSet, int i10, int i11) {
        int iR;
        super(a.c(context, attributeSet, i10, i11), attributeSet, i10);
        Context context2 = getContext();
        if (q(context2)) {
            Resources.Theme theme = context2.getTheme();
            if (t(context2, theme, attributeSet, i10, i11) || (iR = r(theme, attributeSet, i10, i11)) == -1) {
                return;
            }
            p(theme, iR);
        }
    }
}
