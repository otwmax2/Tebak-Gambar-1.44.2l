package o8;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import androidx.databinding.ViewDataBinding;
import androidx.recyclerview.widget.RecyclerView;
import com.tebakgambar.R;
import com.tebakgambar.component.CustomButton;
import com.tebakgambar.component.CustomTextView;
import p8.a;

/* JADX INFO: compiled from: ActivityStickerCampaignListBindingImpl.java */
/* JADX INFO: loaded from: classes2.dex */
public class z extends y implements a.InterfaceC0218a {

    /* JADX INFO: renamed from: a0, reason: collision with root package name */
    private static final ViewDataBinding.i f33300a0;

    /* JADX INFO: renamed from: b0, reason: collision with root package name */
    private static final SparseIntArray f33301b0;
    private final LinearLayout W;
    private final CustomTextView X;
    private final View.OnClickListener Y;
    private long Z;

    static {
        ViewDataBinding.i iVar = new ViewDataBinding.i(9);
        f33300a0 = iVar;
        iVar.a(0, new String[]{"header_normal"}, new int[]{6}, new int[]{R.layout.header_normal});
        SparseIntArray sparseIntArray = new SparseIntArray();
        f33301b0 = sparseIntArray;
        sparseIntArray.put(R.id.recyclerView, 7);
        sparseIntArray.put(R.id.frameAds, 8);
    }

    public z(androidx.databinding.f fVar, View view) {
        this(fVar, view, ViewDataBinding.d0(fVar, view, 9, f33300a0, f33301b0));
    }

    private boolean w0(e0 e0Var, int i10) {
        if (i10 != 0) {
            return false;
        }
        synchronized (this) {
            this.Z |= 4;
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

    private boolean y0(androidx.databinding.l lVar, int i10) {
        if (i10 != 0) {
            return false;
        }
        synchronized (this) {
            this.Z |= 8;
        }
        return true;
    }

    private boolean z0(androidx.databinding.m<String> mVar, int i10) {
        if (i10 != 0) {
            return false;
        }
        synchronized (this) {
            this.Z |= 2;
        }
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:38:0x0068  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x006f  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x0097  */
    @Override // androidx.databinding.ViewDataBinding
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    protected void F() {
        /*
            Method dump skipped, instruction units count: 219
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: o8.z.F():void");
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean W() {
        synchronized (this) {
            if (this.Z != 0) {
                return true;
            }
            return this.T.W();
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void Z() {
        synchronized (this) {
            this.Z = 32L;
        }
        this.T.Z();
        k0();
    }

    @Override // androidx.databinding.ViewDataBinding
    protected boolean e0(int i10, Object obj, int i11) {
        if (i10 == 0) {
            return x0((androidx.databinding.m) obj, i11);
        }
        if (i10 == 1) {
            return z0((androidx.databinding.m) obj, i11);
        }
        if (i10 == 2) {
            return w0((e0) obj, i11);
        }
        if (i10 != 3) {
            return false;
        }
        return y0((androidx.databinding.l) obj, i11);
    }

    @Override // p8.a.InterfaceC0218a
    public final void t(int i10, View view) {
        com.tebakgambar.sticker.i iVar = this.V;
        if (iVar != null) {
            iVar.m();
        }
    }

    @Override // o8.y
    public void u0(com.tebakgambar.sticker.i iVar) {
        this.V = iVar;
        synchronized (this) {
            this.Z |= 16;
        }
        x(2);
        super.k0();
    }

    private z(androidx.databinding.f fVar, View view, Object[] objArr) {
        super(fVar, view, 4, (CustomButton) objArr[5], (FrameLayout) objArr[8], (RecyclerView) objArr[7], (RelativeLayout) objArr[3], (RelativeLayout) objArr[2], (e0) objArr[6], (CustomTextView) objArr[1]);
        this.Z = -1L;
        this.O.setTag(null);
        LinearLayout linearLayout = (LinearLayout) objArr[0];
        this.W = linearLayout;
        linearLayout.setTag(null);
        CustomTextView customTextView = (CustomTextView) objArr[4];
        this.X = customTextView;
        customTextView.setTag(null);
        this.R.setTag(null);
        this.S.setTag(null);
        o0(this.T);
        this.U.setTag(null);
        p0(view);
        this.Y = new p8.a(this, 1);
        Z();
    }
}
