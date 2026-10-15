package com.google.android.gms.common.internal;

import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.PorterDuff;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.widget.Button;
import com.google.android.gms.common.util.DeviceProperties;

/* JADX INFO: compiled from: com.google.android.gms:play-services-base@@18.0.1 */
/* JADX INFO: loaded from: classes.dex */
public final class zaaa extends Button {
    public zaaa(Context context, AttributeSet attributeSet) {
        super(context, null, R.attr.buttonStyle);
    }

    private static final int b(int i10, int i11, int i12, int i13) {
        if (i10 == 0) {
            return i11;
        }
        if (i10 == 1) {
            return i12;
        }
        if (i10 == 2) {
            return i13;
        }
        StringBuilder sb = new StringBuilder(33);
        sb.append("Unknown color scheme: ");
        sb.append(i10);
        throw new IllegalStateException(sb.toString());
    }

    public final void a(Resources resources, int i10, int i11) {
        setTypeface(Typeface.DEFAULT_BOLD);
        setTextSize(14.0f);
        int i12 = (int) ((resources.getDisplayMetrics().density * 48.0f) + 0.5f);
        setMinHeight(i12);
        setMinWidth(i12);
        int i13 = com.google.android.gms.base.R.drawable.f6813b;
        int i14 = com.google.android.gms.base.R.drawable.f6814c;
        int iB = b(i11, i13, i14, i14);
        int i15 = com.google.android.gms.base.R.drawable.f6815d;
        int i16 = com.google.android.gms.base.R.drawable.f6816e;
        int iB2 = b(i11, i15, i16, i16);
        if (i10 == 0 || i10 == 1) {
            iB = iB2;
        } else if (i10 != 2) {
            StringBuilder sb = new StringBuilder(32);
            sb.append("Unknown button size: ");
            sb.append(i10);
            throw new IllegalStateException(sb.toString());
        }
        Drawable drawableR = androidx.core.graphics.drawable.a.r(resources.getDrawable(iB));
        androidx.core.graphics.drawable.a.o(drawableR, resources.getColorStateList(com.google.android.gms.base.R.color.f6811c));
        androidx.core.graphics.drawable.a.p(drawableR, PorterDuff.Mode.SRC_ATOP);
        setBackgroundDrawable(drawableR);
        int i17 = com.google.android.gms.base.R.color.f6809a;
        int i18 = com.google.android.gms.base.R.color.f6810b;
        setTextColor((ColorStateList) Preconditions.k(resources.getColorStateList(b(i11, i17, i18, i18))));
        if (i10 == 0) {
            setText(resources.getString(com.google.android.gms.base.R.string.f6832p));
        } else if (i10 == 1) {
            setText(resources.getString(com.google.android.gms.base.R.string.f6833q));
        } else {
            if (i10 != 2) {
                StringBuilder sb2 = new StringBuilder(32);
                sb2.append("Unknown button size: ");
                sb2.append(i10);
                throw new IllegalStateException(sb2.toString());
            }
            setText((CharSequence) null);
        }
        setTransformationMethod(null);
        if (DeviceProperties.f(getContext())) {
            setGravity(19);
        }
    }
}
