package o8;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import androidx.databinding.ViewDataBinding;
import com.google.android.gms.ads.nativead.NativeAdView;
import com.tebakgambar.R;
import com.tebakgambar.component.CustomButton;
import com.tebakgambar.component.CustomTextView;

/* JADX INFO: compiled from: RowItemLevelAdUnifiedBindingImpl.java */
/* JADX INFO: loaded from: classes2.dex */
public class x0 extends w0 {
    private static final ViewDataBinding.i U = null;
    private static final SparseIntArray V;
    private long T;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        V = sparseIntArray;
        sparseIntArray.put(R.id.adView, 1);
        sparseIntArray.put(R.id.imageViewLevelIcon, 2);
        sparseIntArray.put(R.id.textViewTitle, 3);
        sparseIntArray.put(R.id.buttonAction, 4);
    }

    public x0(androidx.databinding.f fVar, View view) {
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

    private x0(androidx.databinding.f fVar, View view, Object[] objArr) {
        super(fVar, view, 0, (NativeAdView) objArr[1], (CustomButton) objArr[4], (ImageView) objArr[2], (RelativeLayout) objArr[0], (CustomTextView) objArr[3]);
        this.T = -1L;
        this.R.setTag(null);
        p0(view);
        Z();
    }
}
