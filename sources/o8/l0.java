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

/* JADX INFO: compiled from: LayoutDialogNewShareBindingImpl.java */
/* JADX INFO: loaded from: classes2.dex */
public class l0 extends k0 {

    /* JADX INFO: renamed from: c0, reason: collision with root package name */
    private static final ViewDataBinding.i f33217c0 = null;

    /* JADX INFO: renamed from: d0, reason: collision with root package name */
    private static final SparseIntArray f33218d0;

    /* JADX INFO: renamed from: a0, reason: collision with root package name */
    private final RelativeLayout f33219a0;

    /* JADX INFO: renamed from: b0, reason: collision with root package name */
    private long f33220b0;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f33218d0 = sparseIntArray;
        sparseIntArray.put(R.id.relativeLayoutWrapperContent, 1);
        sparseIntArray.put(R.id.textViewQuestion, 2);
        sparseIntArray.put(R.id.linearLayoutWrapperImage, 3);
        sparseIntArray.put(R.id.relativeLayoutImageViewFacebook, 4);
        sparseIntArray.put(R.id.imageViewFacebook, 5);
        sparseIntArray.put(R.id.relativeLayoutImageViewTwitter, 6);
        sparseIntArray.put(R.id.imageViewTwitter, 7);
        sparseIntArray.put(R.id.relativeLayoutImageViewInstagram, 8);
        sparseIntArray.put(R.id.imageViewInstagram, 9);
        sparseIntArray.put(R.id.relativeLayoutImageViewOther, 10);
        sparseIntArray.put(R.id.imageViewOther, 11);
        sparseIntArray.put(R.id.buttonClose, 12);
    }

    public l0(androidx.databinding.f fVar, View view) {
        this(fVar, view, ViewDataBinding.d0(fVar, view, 13, f33217c0, f33218d0));
    }

    @Override // androidx.databinding.ViewDataBinding
    protected void F() {
        synchronized (this) {
            this.f33220b0 = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean W() {
        synchronized (this) {
            return this.f33220b0 != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void Z() {
        synchronized (this) {
            this.f33220b0 = 1L;
        }
        k0();
    }

    @Override // androidx.databinding.ViewDataBinding
    protected boolean e0(int i10, Object obj, int i11) {
        return false;
    }

    private l0(androidx.databinding.f fVar, View view, Object[] objArr) {
        super(fVar, view, 0, (CustomButton) objArr[12], (ImageView) objArr[5], (ImageView) objArr[9], (ImageView) objArr[11], (ImageView) objArr[7], (LinearLayout) objArr[3], (RelativeLayout) objArr[4], (RelativeLayout) objArr[8], (RelativeLayout) objArr[10], (RelativeLayout) objArr[6], (RelativeLayout) objArr[1], (CustomTextView) objArr[2]);
        this.f33220b0 = -1L;
        RelativeLayout relativeLayout = (RelativeLayout) objArr[0];
        this.f33219a0 = relativeLayout;
        relativeLayout.setTag(null);
        p0(view);
        Z();
    }
}
