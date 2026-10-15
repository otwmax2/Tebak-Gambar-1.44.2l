package com.google.android.material.datepicker;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Paint;

/* JADX INFO: compiled from: CalendarStyle.java */
/* JADX INFO: loaded from: classes2.dex */
final class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final b f25325a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final b f25326b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final b f25327c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final b f25328d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    final b f25329e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    final b f25330f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    final b f25331g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    final Paint f25332h;

    c(Context context) {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(l4.b.c(context, y3.b.f36649s, h.class.getCanonicalName()), y3.k.f36858l2);
        this.f25325a = b.a(context, typedArrayObtainStyledAttributes.getResourceId(y3.k.f36879o2, 0));
        this.f25331g = b.a(context, typedArrayObtainStyledAttributes.getResourceId(y3.k.f36865m2, 0));
        this.f25326b = b.a(context, typedArrayObtainStyledAttributes.getResourceId(y3.k.f36872n2, 0));
        this.f25327c = b.a(context, typedArrayObtainStyledAttributes.getResourceId(y3.k.f36886p2, 0));
        ColorStateList colorStateListA = l4.c.a(context, typedArrayObtainStyledAttributes, y3.k.f36893q2);
        this.f25328d = b.a(context, typedArrayObtainStyledAttributes.getResourceId(y3.k.f36907s2, 0));
        this.f25329e = b.a(context, typedArrayObtainStyledAttributes.getResourceId(y3.k.f36900r2, 0));
        this.f25330f = b.a(context, typedArrayObtainStyledAttributes.getResourceId(y3.k.f36914t2, 0));
        Paint paint = new Paint();
        this.f25332h = paint;
        paint.setColor(colorStateListA.getDefaultColor());
        typedArrayObtainStyledAttributes.recycle();
    }
}
