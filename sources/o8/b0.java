package o8;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import androidx.databinding.ViewDataBinding;
import com.tebakgambar.R;
import com.tebakgambar.component.CustomButton;
import com.tebakgambar.component.CustomTextView;
import p8.a;

/* JADX INFO: compiled from: DialogFirebaseLoginBindingImpl.java */
/* JADX INFO: loaded from: classes2.dex */
public class b0 extends a0 implements a.InterfaceC0218a {

    /* JADX INFO: renamed from: e0, reason: collision with root package name */
    private static final ViewDataBinding.i f33155e0 = null;

    /* JADX INFO: renamed from: f0, reason: collision with root package name */
    private static final SparseIntArray f33156f0;
    private final RelativeLayout Y;
    private final View.OnClickListener Z;

    /* JADX INFO: renamed from: a0, reason: collision with root package name */
    private final View.OnClickListener f33157a0;

    /* JADX INFO: renamed from: b0, reason: collision with root package name */
    private final View.OnClickListener f33158b0;

    /* JADX INFO: renamed from: c0, reason: collision with root package name */
    private final View.OnClickListener f33159c0;

    /* JADX INFO: renamed from: d0, reason: collision with root package name */
    private long f33160d0;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f33156f0 = sparseIntArray;
        sparseIntArray.put(R.id.relativeLayoutWrapperContent, 6);
        sparseIntArray.put(R.id.frameLayout, 7);
        sparseIntArray.put(R.id.linearLayoutButton, 8);
        sparseIntArray.put(R.id.textViewLoading, 9);
    }

    public b0(androidx.databinding.f fVar, View view) {
        this(fVar, view, ViewDataBinding.d0(fVar, view, 10, f33155e0, f33156f0));
    }

    private boolean w0(androidx.databinding.m<String> mVar, int i10) {
        if (i10 != 0) {
            return false;
        }
        synchronized (this) {
            this.f33160d0 |= 1;
        }
        return true;
    }

    @Override // androidx.databinding.ViewDataBinding
    protected void F() {
        long j10;
        synchronized (this) {
            j10 = this.f33160d0;
            this.f33160d0 = 0L;
        }
        s8.i iVar = this.X;
        long j11 = 7 & j10;
        String strY = null;
        if (j11 != 0) {
            androidx.databinding.m<String> mVar = iVar != null ? iVar.f35031s : null;
            r0(0, mVar);
            if (mVar != null) {
                strY = mVar.y();
            }
        }
        if ((j10 & 4) != 0) {
            this.P.setOnClickListener(this.f33157a0);
            this.S.setOnClickListener(this.f33159c0);
            this.T.setOnClickListener(this.f33158b0);
            this.V.setOnClickListener(this.Z);
        }
        if (j11 != 0) {
            d0.d.c(this.W, strY);
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean W() {
        synchronized (this) {
            return this.f33160d0 != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void Z() {
        synchronized (this) {
            this.f33160d0 = 4L;
        }
        k0();
    }

    @Override // androidx.databinding.ViewDataBinding
    protected boolean e0(int i10, Object obj, int i11) {
        if (i10 != 0) {
            return false;
        }
        return w0((androidx.databinding.m) obj, i11);
    }

    @Override // p8.a.InterfaceC0218a
    public final void t(int i10, View view) {
        if (i10 == 1) {
            s8.i iVar = this.X;
            if (iVar != null) {
                iVar.v();
                return;
            }
            return;
        }
        if (i10 == 2) {
            s8.i iVar2 = this.X;
            if (iVar2 != null) {
                iVar2.u();
                return;
            }
            return;
        }
        if (i10 == 3) {
            s8.i iVar3 = this.X;
            if (iVar3 != null) {
                iVar3.x();
                return;
            }
            return;
        }
        if (i10 != 4) {
            return;
        }
        s8.i iVar4 = this.X;
        if (iVar4 != null) {
            iVar4.s();
        }
    }

    @Override // o8.a0
    public void u0(s8.i iVar) {
        this.X = iVar;
        synchronized (this) {
            this.f33160d0 |= 2;
        }
        x(2);
        super.k0();
    }

    private b0(androidx.databinding.f fVar, View view, Object[] objArr) {
        super(fVar, view, 1, (FrameLayout) objArr[7], (ImageView) objArr[5], (LinearLayout) objArr[8], (RelativeLayout) objArr[6], (CustomButton) objArr[3], (CustomButton) objArr[2], (CustomTextView) objArr[9], (CustomTextView) objArr[4], (CustomTextView) objArr[1]);
        this.f33160d0 = -1L;
        this.P.setTag(null);
        RelativeLayout relativeLayout = (RelativeLayout) objArr[0];
        this.Y = relativeLayout;
        relativeLayout.setTag(null);
        this.S.setTag(null);
        this.T.setTag(null);
        this.V.setTag(null);
        this.W.setTag(null);
        p0(view);
        this.Z = new p8.a(this, 3);
        this.f33157a0 = new p8.a(this, 4);
        this.f33158b0 = new p8.a(this, 1);
        this.f33159c0 = new p8.a(this, 2);
        Z();
    }
}
