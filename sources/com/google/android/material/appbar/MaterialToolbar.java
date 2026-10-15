package com.google.android.material.appbar;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import androidx.appcompat.widget.Toolbar;
import androidx.core.view.a0;
import o4.g;
import o4.h;
import y3.j;
import y3.k;

/* JADX INFO: loaded from: classes2.dex */
public class MaterialToolbar extends Toolbar {

    /* JADX INFO: renamed from: j0, reason: collision with root package name */
    private static final int f25052j0 = j.f36777t;

    /* JADX INFO: renamed from: i0, reason: collision with root package name */
    private Integer f25053i0;

    public MaterialToolbar(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, y3.b.F);
    }

    private void Q(Context context) {
        Drawable background = getBackground();
        if (background == null || (background instanceof ColorDrawable)) {
            g gVar = new g();
            gVar.W(ColorStateList.valueOf(background != null ? ((ColorDrawable) background).getColor() : 0));
            gVar.M(context);
            gVar.V(a0.y(this));
            a0.u0(this, gVar);
        }
    }

    private Drawable R(Drawable drawable) {
        if (drawable == null || this.f25053i0 == null) {
            return drawable;
        }
        Drawable drawableR = androidx.core.graphics.drawable.a.r(drawable);
        androidx.core.graphics.drawable.a.n(drawableR, this.f25053i0.intValue());
        return drawableR;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        h.e(this);
    }

    @Override // android.view.View
    public void setElevation(float f10) {
        super.setElevation(f10);
        h.d(this, f10);
    }

    @Override // androidx.appcompat.widget.Toolbar
    public void setNavigationIcon(Drawable drawable) {
        super.setNavigationIcon(R(drawable));
    }

    public void setNavigationIconTint(int i10) {
        this.f25053i0 = Integer.valueOf(i10);
        Drawable navigationIcon = getNavigationIcon();
        if (navigationIcon != null) {
            setNavigationIcon(navigationIcon);
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public MaterialToolbar(Context context, AttributeSet attributeSet, int i10) {
        int i11 = f25052j0;
        super(q4.a.c(context, attributeSet, i10, i11), attributeSet, i10);
        Context context2 = getContext();
        TypedArray typedArrayH = com.google.android.material.internal.j.h(context2, attributeSet, k.Y2, i10, i11, new int[0]);
        int i12 = k.Z2;
        if (typedArrayH.hasValue(i12)) {
            setNavigationIconTint(typedArrayH.getColor(i12, -1));
        }
        typedArrayH.recycle();
        Q(context2);
    }
}
