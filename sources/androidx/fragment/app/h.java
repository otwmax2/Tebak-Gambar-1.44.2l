package androidx.fragment.app;

import android.animation.LayoutTransition;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.os.Build;
import android.os.Bundle;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowInsets;
import android.widget.FrameLayout;
import androidx.core.view.k0;
import com.vungle.mediation.BuildConfig;
import java.util.ArrayList;

/* JADX INFO: compiled from: FragmentContainerView.java */
/* JADX INFO: loaded from: classes.dex */
public final class h extends FrameLayout {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private ArrayList<View> f3253o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private ArrayList<View> f3254p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private View.OnApplyWindowInsetsListener f3255q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private boolean f3256r;

    h(Context context, AttributeSet attributeSet, n nVar) {
        String str;
        super(context, attributeSet);
        this.f3256r = true;
        String classAttribute = attributeSet.getClassAttribute();
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, o0.c.f32877h);
        classAttribute = classAttribute == null ? typedArrayObtainStyledAttributes.getString(o0.c.f32878i) : classAttribute;
        String string = typedArrayObtainStyledAttributes.getString(o0.c.f32879j);
        typedArrayObtainStyledAttributes.recycle();
        int id = getId();
        Fragment fragmentH0 = nVar.h0(id);
        if (classAttribute != null && fragmentH0 == null) {
            if (id <= 0) {
                if (string != null) {
                    str = " with tag " + string;
                } else {
                    str = BuildConfig.FLAVOR;
                }
                throw new IllegalStateException("FragmentContainerView must have an android:id to add Fragment " + classAttribute + str);
            }
            Fragment fragmentA = nVar.q0().a(context.getClassLoader(), classAttribute);
            fragmentA.onInflate(context, attributeSet, (Bundle) null);
            nVar.m().o(true).c(this, fragmentA, string).i();
        }
        nVar.U0(this);
    }

    private void a(View view) {
        ArrayList<View> arrayList = this.f3254p;
        if (arrayList == null || !arrayList.contains(view)) {
            return;
        }
        if (this.f3253o == null) {
            this.f3253o = new ArrayList<>();
        }
        this.f3253o.add(view);
    }

    @Override // android.view.ViewGroup
    public void addView(View view, int i10, ViewGroup.LayoutParams layoutParams) {
        if (n.z0(view) != null) {
            super.addView(view, i10, layoutParams);
            return;
        }
        throw new IllegalStateException("Views added to a FragmentContainerView must be associated with a Fragment. View " + view + " is not associated with a Fragment.");
    }

    @Override // android.view.ViewGroup
    protected boolean addViewInLayout(View view, int i10, ViewGroup.LayoutParams layoutParams, boolean z10) {
        if (n.z0(view) != null) {
            return super.addViewInLayout(view, i10, layoutParams, z10);
        }
        throw new IllegalStateException("Views added to a FragmentContainerView must be associated with a Fragment. View " + view + " is not associated with a Fragment.");
    }

    @Override // android.view.ViewGroup, android.view.View
    public WindowInsets dispatchApplyWindowInsets(WindowInsets windowInsets) {
        k0 k0VarV = k0.v(windowInsets);
        View.OnApplyWindowInsetsListener onApplyWindowInsetsListener = this.f3255q;
        k0 k0VarV2 = onApplyWindowInsetsListener != null ? k0.v(onApplyWindowInsetsListener.onApplyWindowInsets(this, windowInsets)) : androidx.core.view.a0.c0(this, k0VarV);
        if (!k0VarV2.o()) {
            int childCount = getChildCount();
            for (int i10 = 0; i10 < childCount; i10++) {
                androidx.core.view.a0.i(getChildAt(i10), k0VarV2);
            }
        }
        return windowInsets;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void dispatchDraw(Canvas canvas) {
        if (this.f3256r && this.f3253o != null) {
            for (int i10 = 0; i10 < this.f3253o.size(); i10++) {
                super.drawChild(canvas, this.f3253o.get(i10), getDrawingTime());
            }
        }
        super.dispatchDraw(canvas);
    }

    @Override // android.view.ViewGroup
    protected boolean drawChild(Canvas canvas, View view, long j10) {
        ArrayList<View> arrayList;
        if (!this.f3256r || (arrayList = this.f3253o) == null || arrayList.size() <= 0 || !this.f3253o.contains(view)) {
            return super.drawChild(canvas, view, j10);
        }
        return false;
    }

    @Override // android.view.ViewGroup
    public void endViewTransition(View view) {
        ArrayList<View> arrayList = this.f3254p;
        if (arrayList != null) {
            arrayList.remove(view);
            ArrayList<View> arrayList2 = this.f3253o;
            if (arrayList2 != null && arrayList2.remove(view)) {
                this.f3256r = true;
            }
        }
        super.endViewTransition(view);
    }

    @Override // android.view.View
    public WindowInsets onApplyWindowInsets(WindowInsets windowInsets) {
        return windowInsets;
    }

    @Override // android.view.ViewGroup
    public void removeAllViewsInLayout() {
        for (int childCount = getChildCount() - 1; childCount >= 0; childCount--) {
            a(getChildAt(childCount));
        }
        super.removeAllViewsInLayout();
    }

    @Override // android.view.ViewGroup
    protected void removeDetachedView(View view, boolean z10) {
        if (z10) {
            a(view);
        }
        super.removeDetachedView(view, z10);
    }

    @Override // android.view.ViewGroup, android.view.ViewManager
    public void removeView(View view) {
        a(view);
        super.removeView(view);
    }

    @Override // android.view.ViewGroup
    public void removeViewAt(int i10) {
        a(getChildAt(i10));
        super.removeViewAt(i10);
    }

    @Override // android.view.ViewGroup
    public void removeViewInLayout(View view) {
        a(view);
        super.removeViewInLayout(view);
    }

    @Override // android.view.ViewGroup
    public void removeViews(int i10, int i11) {
        for (int i12 = i10; i12 < i10 + i11; i12++) {
            a(getChildAt(i12));
        }
        super.removeViews(i10, i11);
    }

    @Override // android.view.ViewGroup
    public void removeViewsInLayout(int i10, int i11) {
        for (int i12 = i10; i12 < i10 + i11; i12++) {
            a(getChildAt(i12));
        }
        super.removeViewsInLayout(i10, i11);
    }

    void setDrawDisappearingViewsLast(boolean z10) {
        this.f3256r = z10;
    }

    @Override // android.view.ViewGroup
    public void setLayoutTransition(LayoutTransition layoutTransition) {
        if (Build.VERSION.SDK_INT >= 18) {
            throw new UnsupportedOperationException("FragmentContainerView does not support Layout Transitions or animateLayoutChanges=\"true\".");
        }
        super.setLayoutTransition(layoutTransition);
    }

    @Override // android.view.View
    public void setOnApplyWindowInsetsListener(View.OnApplyWindowInsetsListener onApplyWindowInsetsListener) {
        this.f3255q = onApplyWindowInsetsListener;
    }

    @Override // android.view.ViewGroup
    public void startViewTransition(View view) {
        if (view.getParent() == this) {
            if (this.f3254p == null) {
                this.f3254p = new ArrayList<>();
            }
            this.f3254p.add(view);
        }
        super.startViewTransition(view);
    }
}
