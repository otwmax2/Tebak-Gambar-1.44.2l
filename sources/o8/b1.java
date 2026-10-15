package o8;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import androidx.databinding.ViewDataBinding;
import com.tebakgambar.R;
import com.tebakgambar.component.CustomTextView;

/* JADX INFO: compiled from: RowItemQuestionBindingImpl.java */
/* JADX INFO: loaded from: classes2.dex */
public class b1 extends a1 {
    private static final ViewDataBinding.i S = null;
    private static final SparseIntArray T;
    private final RelativeLayout Q;
    private long R;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        T = sparseIntArray;
        sparseIntArray.put(R.id.textViewSoal, 1);
        sparseIntArray.put(R.id.imageViewLock, 2);
    }

    public b1(androidx.databinding.f fVar, View view) {
        this(fVar, view, ViewDataBinding.d0(fVar, view, 3, S, T));
    }

    @Override // androidx.databinding.ViewDataBinding
    protected void F() {
        synchronized (this) {
            this.R = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean W() {
        synchronized (this) {
            return this.R != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void Z() {
        synchronized (this) {
            this.R = 1L;
        }
        k0();
    }

    @Override // androidx.databinding.ViewDataBinding
    protected boolean e0(int i10, Object obj, int i11) {
        return false;
    }

    private b1(androidx.databinding.f fVar, View view, Object[] objArr) {
        super(fVar, view, 0, (ImageView) objArr[2], (CustomTextView) objArr[1]);
        this.R = -1L;
        RelativeLayout relativeLayout = (RelativeLayout) objArr[0];
        this.Q = relativeLayout;
        relativeLayout.setTag(null);
        p0(view);
        Z();
    }
}
