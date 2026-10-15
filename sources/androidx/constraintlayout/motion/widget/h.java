package androidx.constraintlayout.motion.widget;

import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import androidx.constraintlayout.motion.widget.j;
import androidx.constraintlayout.widget.ConstraintLayout;

/* JADX INFO: compiled from: MotionHelper.java */
/* JADX INFO: loaded from: classes.dex */
public class h extends androidx.constraintlayout.widget.b implements j.d {
    protected View[] A;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private boolean f1398x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private boolean f1399y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private float f1400z;

    @Override // androidx.constraintlayout.motion.widget.j.d
    public void a(j jVar, int i10, int i11, float f10) {
    }

    @Override // androidx.constraintlayout.motion.widget.j.d
    public void b(j jVar, int i10, int i11) {
    }

    @Override // androidx.constraintlayout.motion.widget.j.d
    public void c(j jVar, int i10) {
    }

    public float getProgress() {
        return this.f1400z;
    }

    @Override // androidx.constraintlayout.widget.b
    protected void m(AttributeSet attributeSet) {
        super.m(attributeSet);
        if (attributeSet != null) {
            TypedArray typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, androidx.constraintlayout.widget.i.B6);
            int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
            for (int i10 = 0; i10 < indexCount; i10++) {
                int index = typedArrayObtainStyledAttributes.getIndex(i10);
                if (index == androidx.constraintlayout.widget.i.D6) {
                    this.f1398x = typedArrayObtainStyledAttributes.getBoolean(index, this.f1398x);
                } else if (index == androidx.constraintlayout.widget.i.C6) {
                    this.f1399y = typedArrayObtainStyledAttributes.getBoolean(index, this.f1399y);
                }
            }
            typedArrayObtainStyledAttributes.recycle();
        }
    }

    public void setProgress(float f10) {
        this.f1400z = f10;
        int i10 = 0;
        if (this.f1548p > 0) {
            this.A = l((ConstraintLayout) getParent());
            while (i10 < this.f1548p) {
                x(this.A[i10], f10);
                i10++;
            }
            return;
        }
        ViewGroup viewGroup = (ViewGroup) getParent();
        int childCount = viewGroup.getChildCount();
        while (i10 < childCount) {
            View childAt = viewGroup.getChildAt(i10);
            if (!(childAt instanceof h)) {
                x(childAt, f10);
            }
            i10++;
        }
    }

    public boolean t() {
        return false;
    }

    public boolean u() {
        return this.f1399y;
    }

    public boolean v() {
        return this.f1398x;
    }

    public void w(Canvas canvas) {
    }

    public void x(View view, float f10) {
    }
}
