package k4;

import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import androidx.appcompat.widget.t;
import androidx.core.widget.d;
import l4.c;
import y3.b;
import y3.j;
import y3.k;

/* JADX INFO: compiled from: MaterialRadioButton.java */
/* JADX INFO: loaded from: classes2.dex */
public class a extends t {

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private static final int f31507u = j.f36772o;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private static final int[][] f31508v = {new int[]{R.attr.state_enabled, R.attr.state_checked}, new int[]{R.attr.state_enabled, -16842912}, new int[]{-16842910, R.attr.state_checked}, new int[]{-16842910, -16842912}};

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private ColorStateList f31509s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private boolean f31510t;

    public a(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, b.f36653w);
    }

    private ColorStateList getMaterialThemeColorsTintList() {
        if (this.f31509s == null) {
            int iC = e4.a.c(this, b.f36637g);
            int iC2 = e4.a.c(this, b.f36639i);
            int iC3 = e4.a.c(this, b.f36642l);
            int[][] iArr = f31508v;
            int[] iArr2 = new int[iArr.length];
            iArr2[0] = e4.a.f(iC3, iC, 1.0f);
            iArr2[1] = e4.a.f(iC3, iC2, 0.54f);
            iArr2[2] = e4.a.f(iC3, iC2, 0.38f);
            iArr2[3] = e4.a.f(iC3, iC2, 0.38f);
            this.f31509s = new ColorStateList(iArr, iArr2);
        }
        return this.f31509s;
    }

    @Override // android.widget.TextView, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (this.f31510t && d.b(this) == null) {
            setUseMaterialThemeColors(true);
        }
    }

    public void setUseMaterialThemeColors(boolean z10) {
        this.f31510t = z10;
        if (z10) {
            d.c(this, getMaterialThemeColorsTintList());
        } else {
            d.c(this, null);
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public a(Context context, AttributeSet attributeSet, int i10) {
        int i11 = f31507u;
        super(q4.a.c(context, attributeSet, i10, i11), attributeSet, i10);
        Context context2 = getContext();
        TypedArray typedArrayH = com.google.android.material.internal.j.h(context2, attributeSet, k.J2, i10, i11, new int[0]);
        int i12 = k.K2;
        if (typedArrayH.hasValue(i12)) {
            d.c(this, c.a(context2, typedArrayH, i12));
        }
        this.f31510t = typedArrayH.getBoolean(k.L2, false);
        typedArrayH.recycle();
    }
}
