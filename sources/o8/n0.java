package o8;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.ImageView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.ViewDataBinding;
import com.tebakgambar.R;
import com.tebakgambar.component.CustomButton;
import com.tebakgambar.component.CustomTextView;

/* JADX INFO: compiled from: LayoutDialogShareBindingImpl.java */
/* JADX INFO: loaded from: classes2.dex */
public class n0 extends m0 {
    private static final ViewDataBinding.i W = null;
    private static final SparseIntArray X;
    private final ConstraintLayout U;
    private long V;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        X = sparseIntArray;
        sparseIntArray.put(R.id.cl_container, 1);
        sparseIntArray.put(R.id.textViewQuestion, 2);
        sparseIntArray.put(R.id.textViewButton1, 3);
        sparseIntArray.put(R.id.textViewButton2, 4);
        sparseIntArray.put(R.id.textViewButton3, 5);
        sparseIntArray.put(R.id.imageViewClose, 6);
    }

    public n0(androidx.databinding.f fVar, View view) {
        this(fVar, view, ViewDataBinding.d0(fVar, view, 7, W, X));
    }

    @Override // androidx.databinding.ViewDataBinding
    protected void F() {
        synchronized (this) {
            this.V = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean W() {
        synchronized (this) {
            return this.V != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void Z() {
        synchronized (this) {
            this.V = 1L;
        }
        k0();
    }

    @Override // androidx.databinding.ViewDataBinding
    protected boolean e0(int i10, Object obj, int i11) {
        return false;
    }

    private n0(androidx.databinding.f fVar, View view, Object[] objArr) {
        super(fVar, view, 0, (ConstraintLayout) objArr[1], (ImageView) objArr[6], (CustomButton) objArr[3], (CustomButton) objArr[4], (CustomButton) objArr[5], (CustomTextView) objArr[2]);
        this.V = -1L;
        ConstraintLayout constraintLayout = (ConstraintLayout) objArr[0];
        this.U = constraintLayout;
        constraintLayout.setTag(null);
        p0(view);
        Z();
    }
}
