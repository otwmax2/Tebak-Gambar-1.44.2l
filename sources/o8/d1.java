package o8;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import androidx.databinding.ViewDataBinding;
import com.tebakgambar.R;
import com.tebakgambar.component.CustomTextView;

/* JADX INFO: compiled from: RowItemUpcomingLevelBindingImpl.java */
/* JADX INFO: loaded from: classes2.dex */
public class d1 extends c1 {
    private static final ViewDataBinding.i U = null;
    private static final SparseIntArray V;
    private long T;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        V = sparseIntArray;
        sparseIntArray.put(R.id.relativeLayoutWrapperUnlocked, 1);
        sparseIntArray.put(R.id.relativeLayoutUnlocked, 2);
        sparseIntArray.put(R.id.textViewTitle, 3);
        sparseIntArray.put(R.id.textViewSubTitle, 4);
    }

    public d1(androidx.databinding.f fVar, View view) {
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

    private d1(androidx.databinding.f fVar, View view, Object[] objArr) {
        super(fVar, view, 0, (RelativeLayout) objArr[0], (LinearLayout) objArr[2], (RelativeLayout) objArr[1], (CustomTextView) objArr[4], (CustomTextView) objArr[3]);
        this.T = -1L;
        this.O.setTag(null);
        p0(view);
        Z();
    }
}
