package com.google.android.material.datepicker;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.InsetDrawable;
import android.graphics.drawable.RippleDrawable;
import android.os.Build;
import android.widget.TextView;
import androidx.core.view.a0;

/* JADX INFO: compiled from: CalendarItemStyle.java */
/* JADX INFO: loaded from: classes2.dex */
final class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Rect f25319a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final ColorStateList f25320b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final ColorStateList f25321c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final ColorStateList f25322d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final int f25323e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final o4.k f25324f;

    private b(ColorStateList colorStateList, ColorStateList colorStateList2, ColorStateList colorStateList3, int i10, o4.k kVar, Rect rect) {
        androidx.core.util.h.c(rect.left);
        androidx.core.util.h.c(rect.top);
        androidx.core.util.h.c(rect.right);
        androidx.core.util.h.c(rect.bottom);
        this.f25319a = rect;
        this.f25320b = colorStateList2;
        this.f25321c = colorStateList;
        this.f25322d = colorStateList3;
        this.f25323e = i10;
        this.f25324f = kVar;
    }

    static b a(Context context, int i10) {
        androidx.core.util.h.a(i10 != 0, "Cannot create a CalendarItemStyle with a styleResId of 0");
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(i10, y3.k.f36921u2);
        Rect rect = new Rect(typedArrayObtainStyledAttributes.getDimensionPixelOffset(y3.k.f36928v2, 0), typedArrayObtainStyledAttributes.getDimensionPixelOffset(y3.k.f36942x2, 0), typedArrayObtainStyledAttributes.getDimensionPixelOffset(y3.k.f36935w2, 0), typedArrayObtainStyledAttributes.getDimensionPixelOffset(y3.k.f36949y2, 0));
        ColorStateList colorStateListA = l4.c.a(context, typedArrayObtainStyledAttributes, y3.k.f36956z2);
        ColorStateList colorStateListA2 = l4.c.a(context, typedArrayObtainStyledAttributes, y3.k.E2);
        ColorStateList colorStateListA3 = l4.c.a(context, typedArrayObtainStyledAttributes, y3.k.C2);
        int dimensionPixelSize = typedArrayObtainStyledAttributes.getDimensionPixelSize(y3.k.D2, 0);
        o4.k kVarM = o4.k.b(context, typedArrayObtainStyledAttributes.getResourceId(y3.k.A2, 0), typedArrayObtainStyledAttributes.getResourceId(y3.k.B2, 0)).m();
        typedArrayObtainStyledAttributes.recycle();
        return new b(colorStateListA, colorStateListA2, colorStateListA3, dimensionPixelSize, kVarM, rect);
    }

    int b() {
        return this.f25319a.bottom;
    }

    int c() {
        return this.f25319a.top;
    }

    void d(TextView textView) {
        o4.g gVar = new o4.g();
        o4.g gVar2 = new o4.g();
        gVar.setShapeAppearanceModel(this.f25324f);
        gVar2.setShapeAppearanceModel(this.f25324f);
        gVar.W(this.f25321c);
        gVar.c0(this.f25323e, this.f25322d);
        textView.setTextColor(this.f25320b);
        Drawable rippleDrawable = Build.VERSION.SDK_INT >= 21 ? new RippleDrawable(this.f25320b.withAlpha(30), gVar, gVar2) : gVar;
        Rect rect = this.f25319a;
        a0.u0(textView, new InsetDrawable(rippleDrawable, rect.left, rect.top, rect.right, rect.bottom));
    }
}
