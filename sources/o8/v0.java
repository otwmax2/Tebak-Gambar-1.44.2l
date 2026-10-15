package o8;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import androidx.databinding.ViewDataBinding;
import com.tebakgambar.R;
import com.tebakgambar.component.CustomTextView;

/* JADX INFO: compiled from: RowItemFrameBindingImpl.java */
/* JADX INFO: loaded from: classes2.dex */
public class v0 extends u0 {
    private static final ViewDataBinding.i W = null;
    private static final SparseIntArray X;
    private final LinearLayout U;
    private long V;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        X = sparseIntArray;
        sparseIntArray.put(R.id.linearLayoutWrapperFrameItem, 1);
        sparseIntArray.put(R.id.relativeLayoutWrapperFrame, 2);
        sparseIntArray.put(R.id.imageViewFrameImageOrang, 3);
        sparseIntArray.put(R.id.imageViewFrameImage, 4);
        sparseIntArray.put(R.id.textViewLoading, 5);
        sparseIntArray.put(R.id.textViewLabelFrame, 6);
    }

    public v0(androidx.databinding.f fVar, View view) {
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

    private v0(androidx.databinding.f fVar, View view, Object[] objArr) {
        super(fVar, view, 0, (ImageView) objArr[4], (ImageView) objArr[3], (LinearLayout) objArr[1], (RelativeLayout) objArr[2], (CustomTextView) objArr[6], (CustomTextView) objArr[5]);
        this.V = -1L;
        LinearLayout linearLayout = (LinearLayout) objArr[0];
        this.U = linearLayout;
        linearLayout.setTag(null);
        p0(view);
        Z();
    }
}
