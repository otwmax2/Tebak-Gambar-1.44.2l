package o8;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import androidx.databinding.ViewDataBinding;
import com.tebakgambar.R;
import com.tebakgambar.component.CustomTextView;

/* JADX INFO: compiled from: RowItemLevelBindingImpl.java */
/* JADX INFO: loaded from: classes2.dex */
public class z0 extends y0 {

    /* JADX INFO: renamed from: e0, reason: collision with root package name */
    private static final ViewDataBinding.i f33302e0 = null;

    /* JADX INFO: renamed from: f0, reason: collision with root package name */
    private static final SparseIntArray f33303f0;

    /* JADX INFO: renamed from: d0, reason: collision with root package name */
    private long f33304d0;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f33303f0 = sparseIntArray;
        sparseIntArray.put(R.id.relativeLayoutWrapperLevel, 1);
        sparseIntArray.put(R.id.relativeLayoutUnlockedEvent, 2);
        sparseIntArray.put(R.id.textViewTitle, 3);
        sparseIntArray.put(R.id.textViewSubTitle, 4);
        sparseIntArray.put(R.id.relativeLayoutWrapperUnlocked, 5);
        sparseIntArray.put(R.id.relativeLayoutUnlocked, 6);
        sparseIntArray.put(R.id.linearLayoutLevelSpecial, 7);
        sparseIntArray.put(R.id.textViewLevelSpecial, 8);
        sparseIntArray.put(R.id.textViewLevelSpecialSub, 9);
        sparseIntArray.put(R.id.imageViewLevelIcon, 10);
        sparseIntArray.put(R.id.textViewLevel, 11);
        sparseIntArray.put(R.id.imageViewRibbon, 12);
        sparseIntArray.put(R.id.relativeLayoutWrapperLocked, 13);
        sparseIntArray.put(R.id.relativeLayoutLocked, 14);
    }

    public z0(androidx.databinding.f fVar, View view) {
        this(fVar, view, ViewDataBinding.d0(fVar, view, 15, f33302e0, f33303f0));
    }

    @Override // androidx.databinding.ViewDataBinding
    protected void F() {
        synchronized (this) {
            this.f33304d0 = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean W() {
        synchronized (this) {
            return this.f33304d0 != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void Z() {
        synchronized (this) {
            this.f33304d0 = 1L;
        }
        k0();
    }

    @Override // androidx.databinding.ViewDataBinding
    protected boolean e0(int i10, Object obj, int i11) {
        return false;
    }

    private z0(androidx.databinding.f fVar, View view, Object[] objArr) {
        super(fVar, view, 0, (ImageView) objArr[10], (ImageView) objArr[12], (LinearLayout) objArr[7], (RelativeLayout) objArr[14], (RelativeLayout) objArr[0], (RelativeLayout) objArr[6], (RelativeLayout) objArr[2], (RelativeLayout) objArr[1], (RelativeLayout) objArr[13], (RelativeLayout) objArr[5], (CustomTextView) objArr[11], (CustomTextView) objArr[8], (CustomTextView) objArr[9], (CustomTextView) objArr[4], (CustomTextView) objArr[3]);
        this.f33304d0 = -1L;
        this.S.setTag(null);
        p0(view);
        Z();
    }
}
