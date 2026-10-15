package o8;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;
import androidx.databinding.ViewDataBinding;
import androidx.recyclerview.widget.RecyclerView;
import com.tebakgambar.R;

/* JADX INFO: compiled from: ActivitySelfieFrameChooserBindingImpl.java */
/* JADX INFO: loaded from: classes2.dex */
public class r extends q {
    private static final ViewDataBinding.i U;
    private static final SparseIntArray V;
    private final RelativeLayout S;
    private long T;

    static {
        ViewDataBinding.i iVar = new ViewDataBinding.i(4);
        U = iVar;
        iVar.a(0, new String[]{"header_normal"}, new int[]{1}, new int[]{R.layout.header_normal});
        SparseIntArray sparseIntArray = new SparseIntArray();
        V = sparseIntArray;
        sparseIntArray.put(R.id.recyclerView, 2);
        sparseIntArray.put(R.id.frameAds, 3);
    }

    public r(androidx.databinding.f fVar, View view) {
        this(fVar, view, ViewDataBinding.d0(fVar, view, 4, U, V));
    }

    private boolean w0(e0 e0Var, int i10) {
        if (i10 != 0) {
            return false;
        }
        synchronized (this) {
            this.T |= 1;
        }
        return true;
    }

    @Override // androidx.databinding.ViewDataBinding
    protected void F() {
        synchronized (this) {
            this.T = 0L;
        }
        ViewDataBinding.H(this.Q);
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean W() {
        synchronized (this) {
            if (this.T != 0) {
                return true;
            }
            return this.Q.W();
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void Z() {
        synchronized (this) {
            this.T = 4L;
        }
        this.Q.Z();
        k0();
    }

    @Override // androidx.databinding.ViewDataBinding
    protected boolean e0(int i10, Object obj, int i11) {
        if (i10 != 0) {
            return false;
        }
        return w0((e0) obj, i11);
    }

    @Override // o8.q
    public void u0(com.tebakgambar.selfie.i iVar) {
        this.R = iVar;
    }

    private r(androidx.databinding.f fVar, View view, Object[] objArr) {
        super(fVar, view, 1, (FrameLayout) objArr[3], (RecyclerView) objArr[2], (e0) objArr[1]);
        this.T = -1L;
        RelativeLayout relativeLayout = (RelativeLayout) objArr[0];
        this.S = relativeLayout;
        relativeLayout.setTag(null);
        o0(this.Q);
        p0(view);
        Z();
    }
}
