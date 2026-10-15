package o8;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import androidx.databinding.ViewDataBinding;
import com.tebakgambar.R;
import com.tebakgambar.component.CustomButton;
import com.tebakgambar.component.CustomTextView;

/* JADX INFO: compiled from: LayoutDialogIncreaseLifeBindingImpl.java */
/* JADX INFO: loaded from: classes2.dex */
public class j0 extends i0 {
    private static final ViewDataBinding.i X = null;
    private static final SparseIntArray Y;
    private long W;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        Y = sparseIntArray;
        sparseIntArray.put(R.id.lifePopupQuestionWrapper, 1);
        sparseIntArray.put(R.id.textViewQuestion, 2);
        sparseIntArray.put(R.id.textViewTimer, 3);
        sparseIntArray.put(R.id.buttonWatch, 4);
        sparseIntArray.put(R.id.buttonClose, 5);
        sparseIntArray.put(R.id.successIncreaseLifeWrapper, 6);
        sparseIntArray.put(R.id.imageView2, 7);
    }

    public j0(androidx.databinding.f fVar, View view) {
        this(fVar, view, ViewDataBinding.d0(fVar, view, 8, X, Y));
    }

    @Override // androidx.databinding.ViewDataBinding
    protected void F() {
        synchronized (this) {
            this.W = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean W() {
        synchronized (this) {
            return this.W != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void Z() {
        synchronized (this) {
            this.W = 1L;
        }
        k0();
    }

    @Override // androidx.databinding.ViewDataBinding
    protected boolean e0(int i10, Object obj, int i11) {
        return false;
    }

    private j0(androidx.databinding.f fVar, View view, Object[] objArr) {
        super(fVar, view, 0, (CustomButton) objArr[5], (CustomButton) objArr[4], (ImageView) objArr[7], (LinearLayout) objArr[1], (RelativeLayout) objArr[0], (LinearLayout) objArr[6], (CustomTextView) objArr[2], (CustomTextView) objArr[3]);
        this.W = -1L;
        this.S.setTag(null);
        p0(view);
        Z();
    }
}
