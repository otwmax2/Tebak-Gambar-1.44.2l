package o8;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import androidx.databinding.ViewDataBinding;
import com.framer.FrameView;
import com.tebakgambar.R;
import com.tebakgambar.component.CustomButton;
import com.tebakgambar.component.CustomTextView;

/* JADX INFO: compiled from: ActivityEditFrameBindingImpl.java */
/* JADX INFO: loaded from: classes2.dex */
public class d extends c {

    /* JADX INFO: renamed from: k0, reason: collision with root package name */
    private static final ViewDataBinding.i f33170k0;

    /* JADX INFO: renamed from: l0, reason: collision with root package name */
    private static final SparseIntArray f33171l0;

    /* JADX INFO: renamed from: j0, reason: collision with root package name */
    private long f33172j0;

    static {
        ViewDataBinding.i iVar = new ViewDataBinding.i(21);
        f33170k0 = iVar;
        iVar.a(0, new String[]{"header_normal"}, new int[]{1}, new int[]{R.layout.header_normal});
        SparseIntArray sparseIntArray = new SparseIntArray();
        f33171l0 = sparseIntArray;
        sparseIntArray.put(R.id.relativeLayoutWrapperFrames, 2);
        sparseIntArray.put(R.id.relativeLayoutButtonEvent, 3);
        sparseIntArray.put(R.id.buttonMainLagi, 4);
        sparseIntArray.put(R.id.buttonAturan, 5);
        sparseIntArray.put(R.id.relativeLayoutFrame, 6);
        sparseIntArray.put(R.id.center, 7);
        sparseIntArray.put(R.id.imageViewFrameImageOrang, 8);
        sparseIntArray.put(R.id.frameView, 9);
        sparseIntArray.put(R.id.viewTransparentOverlay, 10);
        sparseIntArray.put(R.id.relativeLayoutSticker, 11);
        sparseIntArray.put(R.id.imageViewStickerSiGam, 12);
        sparseIntArray.put(R.id.relativeLayoutFailed, 13);
        sparseIntArray.put(R.id.buttonTryAgain, 14);
        sparseIntArray.put(R.id.textViewLoading, 15);
        sparseIntArray.put(R.id.buttonTutorial, 16);
        sparseIntArray.put(R.id.buttonGantiGambar, 17);
        sparseIntArray.put(R.id.buttonSimpan, 18);
        sparseIntArray.put(R.id.buttonShare, 19);
        sparseIntArray.put(R.id.frameAds, 20);
    }

    public d(androidx.databinding.f fVar, View view) {
        this(fVar, view, ViewDataBinding.d0(fVar, view, 21, f33170k0, f33171l0));
    }

    private boolean u0(e0 e0Var, int i10) {
        if (i10 != 0) {
            return false;
        }
        synchronized (this) {
            this.f33172j0 |= 1;
        }
        return true;
    }

    @Override // androidx.databinding.ViewDataBinding
    protected void F() {
        synchronized (this) {
            this.f33172j0 = 0L;
        }
        ViewDataBinding.H(this.f33166f0);
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean W() {
        synchronized (this) {
            if (this.f33172j0 != 0) {
                return true;
            }
            return this.f33166f0.W();
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void Z() {
        synchronized (this) {
            this.f33172j0 = 2L;
        }
        this.f33166f0.Z();
        k0();
    }

    @Override // androidx.databinding.ViewDataBinding
    protected boolean e0(int i10, Object obj, int i11) {
        if (i10 != 0) {
            return false;
        }
        return u0((e0) obj, i11);
    }

    private d(androidx.databinding.f fVar, View view, Object[] objArr) {
        super(fVar, view, 1, (CustomButton) objArr[5], (CustomButton) objArr[17], (CustomButton) objArr[4], (CustomButton) objArr[19], (CustomButton) objArr[18], (CustomButton) objArr[14], (CustomButton) objArr[16], (View) objArr[7], (FrameLayout) objArr[20], (FrameView) objArr[9], (ImageView) objArr[8], (ImageView) objArr[12], (RelativeLayout) objArr[3], (RelativeLayout) objArr[13], (RelativeLayout) objArr[6], (RelativeLayout) objArr[0], (RelativeLayout) objArr[11], (e0) objArr[1], (RelativeLayout) objArr[2], (CustomTextView) objArr[15], (View) objArr[10]);
        this.f33172j0 = -1L;
        this.f33164d0.setTag(null);
        o0(this.f33166f0);
        p0(view);
        Z();
    }
}
