package o8;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.FrameLayout;
import androidx.databinding.ViewDataBinding;

/* JADX INFO: compiled from: HeaderNormalBindingImpl.java */
/* JADX INFO: loaded from: classes2.dex */
public class f0 extends e0 {
    private static final ViewDataBinding.i Q = null;
    private static final SparseIntArray R = null;
    private final FrameLayout O;
    private long P;

    public f0(androidx.databinding.f fVar, View view) {
        this(fVar, view, ViewDataBinding.d0(fVar, view, 1, Q, R));
    }

    @Override // androidx.databinding.ViewDataBinding
    protected void F() {
        synchronized (this) {
            this.P = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean W() {
        synchronized (this) {
            return this.P != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void Z() {
        synchronized (this) {
            this.P = 1L;
        }
        k0();
    }

    @Override // androidx.databinding.ViewDataBinding
    protected boolean e0(int i10, Object obj, int i11) {
        return false;
    }

    private f0(androidx.databinding.f fVar, View view, Object[] objArr) {
        super(fVar, view, 0);
        this.P = -1L;
        FrameLayout frameLayout = (FrameLayout) objArr[0];
        this.O = frameLayout;
        frameLayout.setTag(null);
        p0(view);
        Z();
    }
}
