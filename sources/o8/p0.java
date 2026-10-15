package o8;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.appcompat.widget.AppCompatButton;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.databinding.ViewDataBinding;
import com.tebakgambar.R;
import p8.a;

/* JADX INFO: compiled from: LayoutDialogTgFreeAnswerBindingImpl.java */
/* JADX INFO: loaded from: classes2.dex */
public class p0 extends o0 implements a.InterfaceC0218a {

    /* JADX INFO: renamed from: a0, reason: collision with root package name */
    private static final ViewDataBinding.i f33254a0 = null;

    /* JADX INFO: renamed from: b0, reason: collision with root package name */
    private static final SparseIntArray f33255b0;
    private final CoordinatorLayout V;
    private final ImageView W;
    private final View.OnClickListener X;
    private final View.OnClickListener Y;
    private long Z;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f33255b0 = sparseIntArray;
        sparseIntArray.put(R.id.contentContainer, 6);
        sparseIntArray.put(R.id.bottomContainer, 7);
    }

    public p0(androidx.databinding.f fVar, View view) {
        this(fVar, view, ViewDataBinding.d0(fVar, view, 8, f33254a0, f33255b0));
    }

    private boolean B0(androidx.databinding.l lVar, int i10) {
        if (i10 != 0) {
            return false;
        }
        synchronized (this) {
            this.Z |= 32;
        }
        return true;
    }

    private boolean E0(androidx.databinding.l lVar, int i10) {
        if (i10 != 0) {
            return false;
        }
        synchronized (this) {
            this.Z |= 2;
        }
        return true;
    }

    private boolean F0(androidx.databinding.n nVar, int i10) {
        if (i10 != 0) {
            return false;
        }
        synchronized (this) {
            this.Z |= 8;
        }
        return true;
    }

    private boolean x0(androidx.databinding.m<String> mVar, int i10) {
        if (i10 != 0) {
            return false;
        }
        synchronized (this) {
            this.Z |= 1;
        }
        return true;
    }

    private boolean y0(androidx.databinding.m<String> mVar, int i10) {
        if (i10 != 0) {
            return false;
        }
        synchronized (this) {
            this.Z |= 16;
        }
        return true;
    }

    private boolean z0(androidx.databinding.m<String> mVar, int i10) {
        if (i10 != 0) {
            return false;
        }
        synchronized (this) {
            this.Z |= 4;
        }
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0036  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x003d  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0062 A[PHI: r2
      0x0062: PHI (r2v3 long) = (r2v0 long), (r2v8 long) binds: [B:18:0x003b, B:32:0x005c] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:38:0x0069  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x007c  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x0083  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x0094  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x009b  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x00ae  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x00b7  */
    /* JADX WARN: Removed duplicated region for block: B:82:0x00e0  */
    @Override // androidx.databinding.ViewDataBinding
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    protected void F() {
        /*
            Method dump skipped, instruction units count: 333
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: o8.p0.F():void");
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean W() {
        synchronized (this) {
            return this.Z != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void Z() {
        synchronized (this) {
            this.Z = 128L;
        }
        k0();
    }

    @Override // androidx.databinding.ViewDataBinding
    protected boolean e0(int i10, Object obj, int i11) {
        if (i10 == 0) {
            return x0((androidx.databinding.m) obj, i11);
        }
        if (i10 == 1) {
            return E0((androidx.databinding.l) obj, i11);
        }
        if (i10 == 2) {
            return z0((androidx.databinding.m) obj, i11);
        }
        if (i10 == 3) {
            return F0((androidx.databinding.n) obj, i11);
        }
        if (i10 == 4) {
            return y0((androidx.databinding.m) obj, i11);
        }
        if (i10 != 5) {
            return false;
        }
        return B0((androidx.databinding.l) obj, i11);
    }

    @Override // p8.a.InterfaceC0218a
    public final void t(int i10, View view) {
        if (i10 == 1) {
            k8.d dVar = this.U;
            if (dVar != null) {
                dVar.E();
                return;
            }
            return;
        }
        if (i10 != 2) {
            return;
        }
        k8.d dVar2 = this.U;
        if (dVar2 != null) {
            dVar2.K();
        }
    }

    @Override // o8.o0
    public void w0(k8.d dVar) {
        this.U = dVar;
        synchronized (this) {
            this.Z |= 64;
        }
        x(2);
        super.k0();
    }

    private p0(androidx.databinding.f fVar, View view, Object[] objArr) {
        super(fVar, view, 6, (LinearLayout) objArr[7], (AppCompatButton) objArr[5], (LinearLayout) objArr[6], (ImageView) objArr[4], (AppCompatTextView) objArr[2], (AppCompatTextView) objArr[3]);
        this.Z = -1L;
        this.P.setTag(null);
        this.R.setTag(null);
        CoordinatorLayout coordinatorLayout = (CoordinatorLayout) objArr[0];
        this.V = coordinatorLayout;
        coordinatorLayout.setTag(null);
        ImageView imageView = (ImageView) objArr[1];
        this.W = imageView;
        imageView.setTag(null);
        this.S.setTag(null);
        this.T.setTag(null);
        p0(view);
        this.X = new p8.a(this, 2);
        this.Y = new p8.a(this, 1);
        Z();
    }
}
