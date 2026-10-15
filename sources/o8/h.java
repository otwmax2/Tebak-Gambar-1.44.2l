package o8;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;
import android.widget.ScrollView;
import androidx.databinding.ViewDataBinding;
import com.tebakgambar.R;
import com.tebakgambar.component.CustomImageView;
import com.tebakgambar.component.CustomTextView;

/* JADX INFO: compiled from: ActivityHowToPlayBindingImpl.java */
/* JADX INFO: loaded from: classes2.dex */
public class h extends g {

    /* JADX INFO: renamed from: a0, reason: collision with root package name */
    private static final ViewDataBinding.i f33215a0;

    /* JADX INFO: renamed from: b0, reason: collision with root package name */
    private static final SparseIntArray f33216b0;
    private final RelativeLayout Y;
    private long Z;

    static {
        ViewDataBinding.i iVar = new ViewDataBinding.i(10);
        f33215a0 = iVar;
        iVar.a(0, new String[]{"header_normal"}, new int[]{1}, new int[]{R.layout.header_normal});
        SparseIntArray sparseIntArray = new SparseIntArray();
        f33216b0 = sparseIntArray;
        sparseIntArray.put(R.id.scrollViewWrapperInstruction, 2);
        sparseIntArray.put(R.id.textViewTitleCaraMenebakGambar, 3);
        sparseIntArray.put(R.id.textViewAppVersion, 4);
        sparseIntArray.put(R.id.imageViewContoh, 5);
        sparseIntArray.put(R.id.textViewLabelAturanPermainan, 6);
        sparseIntArray.put(R.id.textViewLabelAturanKuisSelfie, 7);
        sparseIntArray.put(R.id.textViewAturanSelfie_1, 8);
        sparseIntArray.put(R.id.frameAds, 9);
    }

    public h(androidx.databinding.f fVar, View view) {
        this(fVar, view, ViewDataBinding.d0(fVar, view, 10, f33215a0, f33216b0));
    }

    private boolean w0(e0 e0Var, int i10) {
        if (i10 != 0) {
            return false;
        }
        synchronized (this) {
            this.Z |= 1;
        }
        return true;
    }

    @Override // androidx.databinding.ViewDataBinding
    protected void F() {
        synchronized (this) {
            this.Z = 0L;
        }
        ViewDataBinding.H(this.Q);
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean W() {
        synchronized (this) {
            if (this.Z != 0) {
                return true;
            }
            return this.Q.W();
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void Z() {
        synchronized (this) {
            this.Z = 4L;
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

    @Override // o8.g
    public void u0(r8.b bVar) {
        this.X = bVar;
    }

    private h(androidx.databinding.f fVar, View view, Object[] objArr) {
        super(fVar, view, 1, (FrameLayout) objArr[9], (CustomImageView) objArr[5], (e0) objArr[1], (ScrollView) objArr[2], (CustomTextView) objArr[4], (CustomTextView) objArr[8], (CustomTextView) objArr[7], (CustomTextView) objArr[6], (CustomTextView) objArr[3]);
        this.Z = -1L;
        RelativeLayout relativeLayout = (RelativeLayout) objArr[0];
        this.Y = relativeLayout;
        relativeLayout.setTag(null);
        o0(this.Q);
        p0(view);
        Z();
    }
}
