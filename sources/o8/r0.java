package o8;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RatingBar;
import androidx.appcompat.widget.AppCompatButton;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.databinding.ViewDataBinding;
import com.tebakgambar.R;
import p8.a;

/* JADX INFO: compiled from: LayoutDialogTgInAppReviewBindingImpl.java */
/* JADX INFO: loaded from: classes2.dex */
public class r0 extends q0 implements a.InterfaceC0218a {

    /* JADX INFO: renamed from: c0, reason: collision with root package name */
    private static final ViewDataBinding.i f33256c0 = null;

    /* JADX INFO: renamed from: d0, reason: collision with root package name */
    private static final SparseIntArray f33257d0;
    private final CoordinatorLayout X;
    private final ImageView Y;
    private final View.OnClickListener Z;

    /* JADX INFO: renamed from: a0, reason: collision with root package name */
    private final View.OnClickListener f33258a0;

    /* JADX INFO: renamed from: b0, reason: collision with root package name */
    private long f33259b0;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f33257d0 = sparseIntArray;
        sparseIntArray.put(R.id.contentContainer, 7);
        sparseIntArray.put(R.id.ratingBar, 8);
        sparseIntArray.put(R.id.bottomContainer, 9);
    }

    public r0(androidx.databinding.f fVar, View view) {
        this(fVar, view, ViewDataBinding.d0(fVar, view, 10, f33256c0, f33257d0));
    }

    private boolean B0(androidx.databinding.m<String> mVar, int i10) {
        if (i10 != 0) {
            return false;
        }
        synchronized (this) {
            this.f33259b0 |= 4;
        }
        return true;
    }

    private boolean E0(androidx.databinding.l lVar, int i10) {
        if (i10 != 0) {
            return false;
        }
        synchronized (this) {
            this.f33259b0 |= 64;
        }
        return true;
    }

    private boolean F0(androidx.databinding.l lVar, int i10) {
        if (i10 != 0) {
            return false;
        }
        synchronized (this) {
            this.f33259b0 |= 2;
        }
        return true;
    }

    private boolean K0(androidx.databinding.n nVar, int i10) {
        if (i10 != 0) {
            return false;
        }
        synchronized (this) {
            this.f33259b0 |= 16;
        }
        return true;
    }

    private boolean x0(androidx.databinding.m<String> mVar, int i10) {
        if (i10 != 0) {
            return false;
        }
        synchronized (this) {
            this.f33259b0 |= 1;
        }
        return true;
    }

    private boolean y0(androidx.databinding.m<String> mVar, int i10) {
        if (i10 != 0) {
            return false;
        }
        synchronized (this) {
            this.f33259b0 |= 32;
        }
        return true;
    }

    private boolean z0(androidx.databinding.m<String> mVar, int i10) {
        if (i10 != 0) {
            return false;
        }
        synchronized (this) {
            this.f33259b0 |= 8;
        }
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0038  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x003f  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0064 A[PHI: r2
      0x0064: PHI (r2v3 long) = (r2v0 long), (r2v8 long) binds: [B:18:0x003d, B:32:0x005e] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:38:0x006b  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x007e  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x0085  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x0098  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x009f  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x00b0  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x00b7  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x00ca  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x00d3  */
    /* JADX WARN: Removed duplicated region for block: B:91:0x00ff  */
    @Override // androidx.databinding.ViewDataBinding
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    protected void F() {
        /*
            Method dump skipped, instruction units count: 376
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: o8.r0.F():void");
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean W() {
        synchronized (this) {
            return this.f33259b0 != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void Z() {
        synchronized (this) {
            this.f33259b0 = 256L;
        }
        k0();
    }

    @Override // androidx.databinding.ViewDataBinding
    protected boolean e0(int i10, Object obj, int i11) {
        switch (i10) {
            case 0:
                return x0((androidx.databinding.m) obj, i11);
            case 1:
                return F0((androidx.databinding.l) obj, i11);
            case 2:
                return B0((androidx.databinding.m) obj, i11);
            case 3:
                return z0((androidx.databinding.m) obj, i11);
            case 4:
                return K0((androidx.databinding.n) obj, i11);
            case 5:
                return y0((androidx.databinding.m) obj, i11);
            case 6:
                return E0((androidx.databinding.l) obj, i11);
            default:
                return false;
        }
    }

    @Override // p8.a.InterfaceC0218a
    public final void t(int i10, View view) {
        if (i10 == 1) {
            l8.e eVar = this.W;
            if (eVar != null) {
                eVar.E();
                return;
            }
            return;
        }
        if (i10 != 2) {
            return;
        }
        l8.e eVar2 = this.W;
        if (eVar2 != null) {
            eVar2.L();
        }
    }

    @Override // o8.q0
    public void w0(l8.e eVar) {
        this.W = eVar;
        synchronized (this) {
            this.f33259b0 |= 128;
        }
        x(2);
        super.k0();
    }

    private r0(androidx.databinding.f fVar, View view, Object[] objArr) {
        super(fVar, view, 7, (LinearLayout) objArr[9], (AppCompatButton) objArr[6], (LinearLayout) objArr[7], (ImageView) objArr[5], (RatingBar) objArr[8], (AppCompatTextView) objArr[2], (AppCompatTextView) objArr[3], (AppCompatTextView) objArr[4]);
        this.f33259b0 = -1L;
        this.P.setTag(null);
        this.R.setTag(null);
        CoordinatorLayout coordinatorLayout = (CoordinatorLayout) objArr[0];
        this.X = coordinatorLayout;
        coordinatorLayout.setTag(null);
        ImageView imageView = (ImageView) objArr[1];
        this.Y = imageView;
        imageView.setTag(null);
        this.T.setTag(null);
        this.U.setTag(null);
        this.V.setTag(null);
        p0(view);
        this.Z = new p8.a(this, 2);
        this.f33258a0 = new p8.a(this, 1);
        Z();
    }
}
