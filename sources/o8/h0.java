package o8;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.LinearLayout;
import androidx.databinding.ViewDataBinding;
import com.tebakgambar.R;
import com.tebakgambar.component.CustomTextView;

/* JADX INFO: compiled from: HeaderSelfieFrameChooserBindingImpl.java */
/* JADX INFO: loaded from: classes2.dex */
public class h0 extends g0 {
    private static final ViewDataBinding.i R = null;
    private static final SparseIntArray S;
    private final LinearLayout P;
    private long Q;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        S = sparseIntArray;
        sparseIntArray.put(R.id.textViewCaraBermain, 1);
    }

    public h0(androidx.databinding.f fVar, View view) {
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

    private h0(androidx.databinding.f fVar, View view, Object[] objArr) {
        super(fVar, view, 0, (CustomTextView) objArr[1]);
        this.Q = -1L;
        LinearLayout linearLayout = (LinearLayout) objArr[0];
        this.P = linearLayout;
        linearLayout.setTag(null);
        p0(view);
        Z();
    }
}
