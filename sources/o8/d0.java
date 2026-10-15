package o8;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import androidx.databinding.ViewDataBinding;
import com.tebakgambar.R;
import com.tebakgambar.component.CustomTextView;

/* JADX INFO: compiled from: FragmentHeaderBindingImpl.java */
/* JADX INFO: loaded from: classes2.dex */
public class d0 extends c0 {
    private static final ViewDataBinding.i U = null;
    private static final SparseIntArray V;
    private final FrameLayout S;
    private long T;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        V = sparseIntArray;
        sparseIntArray.put(R.id.linearLayoutWrapperHeart, 1);
        sparseIntArray.put(R.id.imageViewBarBackground, 2);
        sparseIntArray.put(R.id.textViewTimer, 3);
        sparseIntArray.put(R.id.imageViewHeart, 4);
    }

    public d0(androidx.databinding.f fVar, View view) {
        this(fVar, view, ViewDataBinding.d0(fVar, view, 5, U, V));
    }

    @Override // androidx.databinding.ViewDataBinding
    protected void F() {
        synchronized (this) {
            this.T = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean W() {
        synchronized (this) {
            return this.T != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void Z() {
        synchronized (this) {
            this.T = 1L;
        }
        k0();
    }

    @Override // androidx.databinding.ViewDataBinding
    protected boolean e0(int i10, Object obj, int i11) {
        return false;
    }

    private d0(androidx.databinding.f fVar, View view, Object[] objArr) {
        super(fVar, view, 0, (ImageView) objArr[2], (ImageView) objArr[4], (RelativeLayout) objArr[1], (CustomTextView) objArr[3]);
        this.T = -1L;
        FrameLayout frameLayout = (FrameLayout) objArr[0];
        this.S = frameLayout;
        frameLayout.setTag(null);
        p0(view);
        Z();
    }
}
