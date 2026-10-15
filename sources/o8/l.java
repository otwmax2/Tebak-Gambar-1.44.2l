package o8;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.FrameLayout;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.ViewDataBinding;
import androidx.recyclerview.widget.RecyclerView;
import com.tebakgambar.R;

/* JADX INFO: compiled from: ActivityLevelSelectionBindingImpl.java */
/* JADX INFO: loaded from: classes2.dex */
public class l extends k {
    private static final ViewDataBinding.i T = null;
    private static final SparseIntArray U;
    private long S;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        U = sparseIntArray;
        sparseIntArray.put(R.id.frameAds, 1);
        sparseIntArray.put(R.id.recyclerView, 2);
    }

    public l(androidx.databinding.f fVar, View view) {
        this(fVar, view, ViewDataBinding.d0(fVar, view, 3, T, U));
    }

    @Override // androidx.databinding.ViewDataBinding
    protected void F() {
        synchronized (this) {
            this.S = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean W() {
        synchronized (this) {
            return this.S != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void Z() {
        synchronized (this) {
            this.S = 2L;
        }
        k0();
    }

    @Override // androidx.databinding.ViewDataBinding
    protected boolean e0(int i10, Object obj, int i11) {
        return false;
    }

    @Override // o8.k
    public void u0(com.tebakgambar.levelselection.z zVar) {
        this.R = zVar;
    }

    private l(androidx.databinding.f fVar, View view, Object[] objArr) {
        super(fVar, view, 0, (FrameLayout) objArr[1], (ConstraintLayout) objArr[0], (RecyclerView) objArr[2]);
        this.S = -1L;
        this.P.setTag(null);
        p0(view);
        Z();
    }
}
