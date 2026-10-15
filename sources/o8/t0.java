package o8;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import androidx.databinding.ViewDataBinding;
import com.tebakgambar.R;

/* JADX INFO: compiled from: RowItemCampaignDetailBindingImpl.java */
/* JADX INFO: loaded from: classes2.dex */
public class t0 extends s0 {
    private static final ViewDataBinding.i R = null;
    private static final SparseIntArray S;
    private final FrameLayout P;
    private long Q;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        S = sparseIntArray;
        sparseIntArray.put(R.id.imageView, 1);
    }

    public t0(androidx.databinding.f fVar, View view) {
        this(fVar, view, ViewDataBinding.d0(fVar, view, 2, R, S));
    }

    @Override // androidx.databinding.ViewDataBinding
    protected void F() {
        synchronized (this) {
            this.Q = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean W() {
        synchronized (this) {
            return this.Q != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void Z() {
        synchronized (this) {
            this.Q = 1L;
        }
        k0();
    }

    @Override // androidx.databinding.ViewDataBinding
    protected boolean e0(int i10, Object obj, int i11) {
        return false;
    }

    private t0(androidx.databinding.f fVar, View view, Object[] objArr) {
        super(fVar, view, 0, (ImageView) objArr[1]);
        this.Q = -1L;
        FrameLayout frameLayout = (FrameLayout) objArr[0];
        this.P = frameLayout;
        frameLayout.setTag(null);
        p0(view);
        Z();
    }
}
