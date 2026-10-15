package com.tebakgambar.component;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.ImageView;

/* JADX INFO: loaded from: classes2.dex */
public class CustomImageView extends ImageView {
    public CustomImageView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onMeasure(int i10, int i11) {
        if (getDrawable() == null) {
            super.onMeasure(i10, i11);
        } else {
            setMeasuredDimension(View.MeasureSpec.getSize(i10), (int) Math.ceil((r3 * r0.getIntrinsicHeight()) / r0.getIntrinsicWidth()));
        }
    }
}
