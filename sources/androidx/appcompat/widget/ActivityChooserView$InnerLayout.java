package androidx.appcompat.widget;

import android.R;
import android.content.Context;
import android.util.AttributeSet;
import android.widget.LinearLayout;

/* JADX INFO: loaded from: classes.dex */
public class ActivityChooserView$InnerLayout extends LinearLayout {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private static final int[] f805o = {R.attr.background};

    public ActivityChooserView$InnerLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        w0 w0VarU = w0.u(context, attributeSet, f805o);
        setBackgroundDrawable(w0VarU.g(0));
        w0VarU.w();
    }
}
