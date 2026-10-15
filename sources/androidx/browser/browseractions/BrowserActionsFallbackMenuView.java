package androidx.browser.browseractions;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.LinearLayout;
import m.a;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
public class BrowserActionsFallbackMenuView extends LinearLayout {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final int f1260o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final int f1261p;

    public BrowserActionsFallbackMenuView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f1260o = getResources().getDimensionPixelOffset(a.f32083b);
        this.f1261p = getResources().getDimensionPixelOffset(a.f32082a);
    }

    @Override // android.widget.LinearLayout, android.view.View
    protected void onMeasure(int i10, int i11) {
        super.onMeasure(View.MeasureSpec.makeMeasureSpec(Math.min(getResources().getDisplayMetrics().widthPixels - (this.f1260o * 2), this.f1261p), 1073741824), i11);
    }
}
