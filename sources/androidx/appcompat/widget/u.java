package androidx.appcompat.widget;

import android.content.Context;
import android.graphics.Bitmap;
import android.util.AttributeSet;
import android.view.View;
import android.widget.RatingBar;

/* JADX INFO: compiled from: AppCompatRatingBar.java */
/* JADX INFO: loaded from: classes.dex */
public class u extends RatingBar {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final s f1193o;

    public u(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, f.a.H);
    }

    @Override // android.widget.RatingBar, android.widget.AbsSeekBar, android.widget.ProgressBar, android.view.View
    protected synchronized void onMeasure(int i10, int i11) {
        super.onMeasure(i10, i11);
        Bitmap bitmapB = this.f1193o.b();
        if (bitmapB != null) {
            setMeasuredDimension(View.resolveSizeAndState(bitmapB.getWidth() * getNumStars(), i10, 0), getMeasuredHeight());
        }
    }

    public u(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        r0.a(this, getContext());
        s sVar = new s(this);
        this.f1193o = sVar;
        sVar.c(attributeSet, i10);
    }
}
