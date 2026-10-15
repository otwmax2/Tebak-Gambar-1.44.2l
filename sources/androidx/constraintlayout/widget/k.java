package androidx.constraintlayout.widget;

import android.content.res.TypedArray;
import android.os.Build;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewParent;

/* JADX INFO: compiled from: VirtualLayout.java */
/* JADX INFO: loaded from: classes.dex */
public abstract class k extends b {

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private boolean f1922x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private boolean f1923y;

    @Override // androidx.constraintlayout.widget.b
    protected void i(ConstraintLayout constraintLayout) {
        h(constraintLayout);
    }

    @Override // androidx.constraintlayout.widget.b
    protected void m(AttributeSet attributeSet) {
        super.m(attributeSet);
        if (attributeSet != null) {
            TypedArray typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, i.f1805n1);
            int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
            for (int i10 = 0; i10 < indexCount; i10++) {
                int index = typedArrayObtainStyledAttributes.getIndex(i10);
                if (index == i.f1823p1) {
                    this.f1922x = true;
                } else if (index == i.f1868u1) {
                    this.f1923y = true;
                }
            }
            typedArrayObtainStyledAttributes.recycle();
        }
    }

    @Override // androidx.constraintlayout.widget.b, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (this.f1922x || this.f1923y) {
            ViewParent parent = getParent();
            if (parent instanceof ConstraintLayout) {
                ConstraintLayout constraintLayout = (ConstraintLayout) parent;
                int visibility = getVisibility();
                float elevation = Build.VERSION.SDK_INT >= 21 ? getElevation() : 0.0f;
                for (int i10 = 0; i10 < this.f1548p; i10++) {
                    View viewI = constraintLayout.i(this.f1547o[i10]);
                    if (viewI != null) {
                        if (this.f1922x) {
                            viewI.setVisibility(visibility);
                        }
                        if (this.f1923y && elevation > 0.0f && Build.VERSION.SDK_INT >= 21) {
                            viewI.setTranslationZ(viewI.getTranslationZ() + elevation);
                        }
                    }
                }
            }
        }
    }

    @Override // android.view.View
    public void setElevation(float f10) {
        super.setElevation(f10);
        g();
    }

    @Override // android.view.View
    public void setVisibility(int i10) {
        super.setVisibility(i10);
        g();
    }

    public void t(s.k kVar, int i10, int i11) {
    }
}
