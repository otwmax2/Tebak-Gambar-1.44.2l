package o8;

import android.graphics.drawable.GradientDrawable;
import android.util.SparseIntArray;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import androidx.databinding.ViewDataBinding;
import com.tebakgambar.R;
import com.tebakgambar.component.CustomButton;
import com.tebakgambar.component.CustomTextView;
import p8.a;

/* JADX INFO: compiled from: ActivityStickerCampaignBindingImpl.java */
/* JADX INFO: loaded from: classes2.dex */
public class x extends w implements a.InterfaceC0218a {

    /* JADX INFO: renamed from: i0, reason: collision with root package name */
    private static final ViewDataBinding.i f33290i0;

    /* JADX INFO: renamed from: j0, reason: collision with root package name */
    private static final SparseIntArray f33291j0;

    /* JADX INFO: renamed from: d0, reason: collision with root package name */
    private final RelativeLayout f33292d0;

    /* JADX INFO: renamed from: e0, reason: collision with root package name */
    private final CustomTextView f33293e0;

    /* JADX INFO: renamed from: f0, reason: collision with root package name */
    private final LinearLayout f33294f0;

    /* JADX INFO: renamed from: g0, reason: collision with root package name */
    private final View.OnClickListener f33295g0;

    /* JADX INFO: renamed from: h0, reason: collision with root package name */
    private long f33296h0;

    static {
        ViewDataBinding.i iVar = new ViewDataBinding.i(17);
        f33290i0 = iVar;
        iVar.a(0, new String[]{"header_normal"}, new int[]{13}, new int[]{R.layout.header_normal});
        SparseIntArray sparseIntArray = new SparseIntArray();
        f33291j0 = sparseIntArray;
        sparseIntArray.put(R.id.linearLayoutBottom, 14);
        sparseIntArray.put(R.id.buttonShare, 15);
        sparseIntArray.put(R.id.buttonClaim, 16);
    }

    public x(androidx.databinding.f fVar, View view) {
        this(fVar, view, ViewDataBinding.d0(fVar, view, 17, f33290i0, f33291j0));
    }

    private boolean B0(androidx.databinding.m<String> mVar, int i10) {
        if (i10 != 0) {
            return false;
        }
        synchronized (this) {
            this.f33296h0 |= 128;
        }
        return true;
    }

    private boolean E0(androidx.databinding.n nVar, int i10) {
        if (i10 != 0) {
            return false;
        }
        synchronized (this) {
            this.f33296h0 |= 2048;
        }
        return true;
    }

    private boolean F0(androidx.databinding.m<String> mVar, int i10) {
        if (i10 != 0) {
            return false;
        }
        synchronized (this) {
            this.f33296h0 |= 8192;
        }
        return true;
    }

    private boolean K0(androidx.databinding.n nVar, int i10) {
        if (i10 != 0) {
            return false;
        }
        synchronized (this) {
            this.f33296h0 |= 32;
        }
        return true;
    }

    private boolean L0(androidx.databinding.m<String> mVar, int i10) {
        if (i10 != 0) {
            return false;
        }
        synchronized (this) {
            this.f33296h0 |= 1;
        }
        return true;
    }

    private boolean M0(androidx.databinding.n nVar, int i10) {
        if (i10 != 0) {
            return false;
        }
        synchronized (this) {
            this.f33296h0 |= 2;
        }
        return true;
    }

    private boolean R0(androidx.databinding.l lVar, int i10) {
        if (i10 != 0) {
            return false;
        }
        synchronized (this) {
            this.f33296h0 |= 512;
        }
        return true;
    }

    private boolean S0(androidx.databinding.m<GradientDrawable> mVar, int i10) {
        if (i10 != 0) {
            return false;
        }
        synchronized (this) {
            this.f33296h0 |= 16;
        }
        return true;
    }

    private boolean T0(androidx.databinding.m<String> mVar, int i10) {
        if (i10 != 0) {
            return false;
        }
        synchronized (this) {
            this.f33296h0 |= 1024;
        }
        return true;
    }

    private boolean U0(androidx.databinding.n nVar, int i10) {
        if (i10 != 0) {
            return false;
        }
        synchronized (this) {
            this.f33296h0 |= 256;
        }
        return true;
    }

    private boolean V0(androidx.databinding.m<String> mVar, int i10) {
        if (i10 != 0) {
            return false;
        }
        synchronized (this) {
            this.f33296h0 |= 4096;
        }
        return true;
    }

    private boolean w0(e0 e0Var, int i10) {
        if (i10 != 0) {
            return false;
        }
        synchronized (this) {
            this.f33296h0 |= 8;
        }
        return true;
    }

    private boolean x0(androidx.databinding.n nVar, int i10) {
        if (i10 != 0) {
            return false;
        }
        synchronized (this) {
            this.f33296h0 |= 64;
        }
        return true;
    }

    private boolean y0(androidx.databinding.m<String> mVar, int i10) {
        if (i10 != 0) {
            return false;
        }
        synchronized (this) {
            this.f33296h0 |= 4;
        }
        return true;
    }

    private boolean z0(androidx.databinding.n nVar, int i10) {
        if (i10 != 0) {
            return false;
        }
        synchronized (this) {
            this.f33296h0 |= 16384;
        }
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:114:0x0153  */
    /* JADX WARN: Removed duplicated region for block: B:117:0x0160  */
    /* JADX WARN: Removed duplicated region for block: B:123:0x0174  */
    /* JADX WARN: Removed duplicated region for block: B:126:0x017d  */
    /* JADX WARN: Removed duplicated region for block: B:132:0x018f  */
    /* JADX WARN: Removed duplicated region for block: B:135:0x019b  */
    /* JADX WARN: Removed duplicated region for block: B:141:0x01b3  */
    /* JADX WARN: Removed duplicated region for block: B:145:0x01be  */
    /* JADX WARN: Removed duplicated region for block: B:151:0x01d6  */
    /* JADX WARN: Removed duplicated region for block: B:155:0x01e4  */
    /* JADX WARN: Removed duplicated region for block: B:161:0x0200  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x004e  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0056  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0066  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x006d  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0080  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0087  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x009a  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x00a1  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x00b2  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x00b9  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x00ca  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x00d1  */
    /* JADX WARN: Removed duplicated region for block: B:83:0x0101  */
    /* JADX WARN: Removed duplicated region for block: B:87:0x0109  */
    /* JADX WARN: Removed duplicated region for block: B:93:0x011b  */
    /* JADX WARN: Removed duplicated region for block: B:97:0x0124  */
    @Override // androidx.databinding.ViewDataBinding
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    protected void F() {
        /*
            Method dump skipped, instruction units count: 760
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: o8.x.F():void");
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean W() {
        synchronized (this) {
            if (this.f33296h0 != 0) {
                return true;
            }
            return this.X.W();
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void Z() {
        synchronized (this) {
            this.f33296h0 = 65536L;
        }
        this.X.Z();
        k0();
    }

    @Override // androidx.databinding.ViewDataBinding
    protected boolean e0(int i10, Object obj, int i11) {
        switch (i10) {
            case 0:
                return L0((androidx.databinding.m) obj, i11);
            case 1:
                return M0((androidx.databinding.n) obj, i11);
            case 2:
                return y0((androidx.databinding.m) obj, i11);
            case 3:
                return w0((e0) obj, i11);
            case 4:
                return S0((androidx.databinding.m) obj, i11);
            case 5:
                return K0((androidx.databinding.n) obj, i11);
            case 6:
                return x0((androidx.databinding.n) obj, i11);
            case 7:
                return B0((androidx.databinding.m) obj, i11);
            case 8:
                return U0((androidx.databinding.n) obj, i11);
            case 9:
                return R0((androidx.databinding.l) obj, i11);
            case 10:
                return T0((androidx.databinding.m) obj, i11);
            case 11:
                return E0((androidx.databinding.n) obj, i11);
            case 12:
                return V0((androidx.databinding.m) obj, i11);
            case 13:
                return F0((androidx.databinding.m) obj, i11);
            case 14:
                return z0((androidx.databinding.n) obj, i11);
            default:
                return false;
        }
    }

    @Override // p8.a.InterfaceC0218a
    public final void t(int i10, View view) {
        com.tebakgambar.sticker.n nVar = this.f33289c0;
        if (nVar != null) {
            nVar.S();
        }
    }

    @Override // o8.w
    public void u0(com.tebakgambar.sticker.n nVar) {
        this.f33289c0 = nVar;
        synchronized (this) {
            this.f33296h0 |= 32768;
        }
        x(2);
        super.k0();
    }

    private x(androidx.databinding.f fVar, View view, Object[] objArr) {
        super(fVar, view, 15, (RelativeLayout) objArr[16], (RelativeLayout) objArr[7], (RelativeLayout) objArr[15], (RelativeLayout) objArr[5], (CustomButton) objArr[12], (LinearLayout) objArr[14], (ImageView) objArr[1], (RelativeLayout) objArr[10], (RelativeLayout) objArr[9], (e0) objArr[13], (CustomTextView) objArr[8], (CustomTextView) objArr[6], (CustomTextView) objArr[4], (CustomTextView) objArr[3]);
        this.f33296h0 = -1L;
        this.P.setTag(null);
        this.R.setTag(null);
        this.S.setTag(null);
        this.U.setTag(null);
        RelativeLayout relativeLayout = (RelativeLayout) objArr[0];
        this.f33292d0 = relativeLayout;
        relativeLayout.setTag(null);
        CustomTextView customTextView = (CustomTextView) objArr[11];
        this.f33293e0 = customTextView;
        customTextView.setTag(null);
        LinearLayout linearLayout = (LinearLayout) objArr[2];
        this.f33294f0 = linearLayout;
        linearLayout.setTag(null);
        this.V.setTag(null);
        this.W.setTag(null);
        o0(this.X);
        this.Y.setTag(null);
        this.Z.setTag(null);
        this.f33287a0.setTag(null);
        this.f33288b0.setTag(null);
        p0(view);
        this.f33295g0 = new p8.a(this, 1);
        Z();
    }
}
