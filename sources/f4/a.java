package f4;

import android.R;
import android.app.Dialog;
import android.graphics.Rect;
import android.graphics.RectF;
import android.os.Build;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;

/* JADX INFO: compiled from: InsetDialogOnTouchListener.java */
/* JADX INFO: loaded from: classes2.dex */
public class a implements View.OnTouchListener {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final Dialog f29254o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final int f29255p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final int f29256q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private final int f29257r;

    public a(Dialog dialog, Rect rect) {
        this.f29254o = dialog;
        this.f29255p = rect.left;
        this.f29256q = rect.top;
        this.f29257r = ViewConfiguration.get(dialog.getContext()).getScaledWindowTouchSlop();
    }

    @Override // android.view.View.OnTouchListener
    public boolean onTouch(View view, MotionEvent motionEvent) {
        View viewFindViewById = view.findViewById(R.id.content);
        int left = this.f29255p + viewFindViewById.getLeft();
        int width = viewFindViewById.getWidth() + left;
        if (new RectF(left, this.f29256q + viewFindViewById.getTop(), width, viewFindViewById.getHeight() + r3).contains(motionEvent.getX(), motionEvent.getY())) {
            return false;
        }
        MotionEvent motionEventObtain = MotionEvent.obtain(motionEvent);
        if (motionEvent.getAction() == 1) {
            motionEventObtain.setAction(4);
        }
        if (Build.VERSION.SDK_INT < 28) {
            motionEventObtain.setAction(0);
            int i10 = this.f29257r;
            motionEventObtain.setLocation((-i10) - 1, (-i10) - 1);
        }
        view.performClick();
        return this.f29254o.onTouchEvent(motionEventObtain);
    }
}
