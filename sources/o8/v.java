package o8;

import android.graphics.drawable.Drawable;
import android.util.SparseIntArray;
import android.view.View;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import androidx.databinding.ViewDataBinding;
import com.tebakgambar.component.CustomButton;

/* JADX INFO: compiled from: ActivitySliderBindingImpl.java */
/* JADX INFO: loaded from: classes2.dex */
public class v extends u {
    private static final ViewDataBinding.i T = null;
    private static final SparseIntArray U = null;
    private final RelativeLayout Q;
    private final ImageView R;
    private long S;

    public v(androidx.databinding.f fVar, View view) {
        this(fVar, view, ViewDataBinding.d0(fVar, view, 3, T, U));
    }

    private boolean B0(androidx.databinding.m<String> mVar, int i10) {
        if (i10 != 0) {
            return false;
        }
        synchronized (this) {
            this.S |= 1;
        }
        return true;
    }

    private boolean w0(androidx.databinding.m<Drawable> mVar, int i10) {
        if (i10 != 0) {
            return false;
        }
        synchronized (this) {
            this.S |= 4;
        }
        return true;
    }

    private boolean x0(androidx.databinding.m<Drawable> mVar, int i10) {
        if (i10 != 0) {
            return false;
        }
        synchronized (this) {
            this.S |= 8;
        }
        return true;
    }

    private boolean y0(androidx.databinding.m<String> mVar, int i10) {
        if (i10 != 0) {
            return false;
        }
        synchronized (this) {
            this.S |= 16;
        }
        return true;
    }

    private boolean z0(androidx.databinding.n nVar, int i10) {
        if (i10 != 0) {
            return false;
        }
        synchronized (this) {
            this.S |= 2;
        }
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0034  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x003b  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x004c  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0053  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0066  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x006d  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x0080  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x0089  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x009c  */
    @Override // androidx.databinding.ViewDataBinding
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    protected void F() {
        /*
            Method dump skipped, instruction units count: 223
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: o8.v.F():void");
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean W() {
        synchronized (this) {
            return this.S != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void Z() {
        synchronized (this) {
            this.S = 64L;
        }
        k0();
    }

    @Override // androidx.databinding.ViewDataBinding
    protected boolean e0(int i10, Object obj, int i11) {
        if (i10 == 0) {
            return B0((androidx.databinding.m) obj, i11);
        }
        if (i10 == 1) {
            return z0((androidx.databinding.n) obj, i11);
        }
        if (i10 == 2) {
            return w0((androidx.databinding.m) obj, i11);
        }
        if (i10 == 3) {
            return x0((androidx.databinding.m) obj, i11);
        }
        if (i10 != 4) {
            return false;
        }
        return y0((androidx.databinding.m) obj, i11);
    }

    @Override // o8.u
    public void u0(com.tebakgambar.levelselection.p0 p0Var) {
        this.P = p0Var;
        synchronized (this) {
            this.S |= 32;
        }
        x(2);
        super.k0();
    }

    private v(androidx.databinding.f fVar, View view, Object[] objArr) {
        super(fVar, view, 5, (CustomButton) objArr[2]);
        this.S = -1L;
        this.O.setTag(null);
        RelativeLayout relativeLayout = (RelativeLayout) objArr[0];
        this.Q = relativeLayout;
        relativeLayout.setTag(null);
        ImageView imageView = (ImageView) objArr[1];
        this.R = imageView;
        imageView.setTag(null);
        p0(view);
        Z();
    }
}
