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

/* JADX INFO: compiled from: ActivityLevelLoadingBindingImpl.java */
/* JADX INFO: loaded from: classes2.dex */
public class j extends i {
    private static final ViewDataBinding.i Y;
    private static final SparseIntArray Z;
    private long X;

    static {
        ViewDataBinding.i iVar = new ViewDataBinding.i(8);
        Y = iVar;
        iVar.a(0, new String[]{"header_normal"}, new int[]{3}, new int[]{R.layout.header_normal});
        SparseIntArray sparseIntArray = new SparseIntArray();
        Z = sparseIntArray;
        sparseIntArray.put(R.id.linearLayoutQuotes, 4);
        sparseIntArray.put(R.id.imageViewTriangleDialog, 5);
        sparseIntArray.put(R.id.imageViewSiGam, 6);
        sparseIntArray.put(R.id.frameAds, 7);
    }

    public j(androidx.databinding.f fVar, View view) {
        this(fVar, view, ViewDataBinding.d0(fVar, view, 8, Y, Z));
    }

    private boolean w0(e0 e0Var, int i10) {
        if (i10 != 0) {
            return false;
        }
        synchronized (this) {
            this.X |= 4;
        }
        return true;
    }

    private boolean x0(androidx.databinding.m<String> mVar, int i10) {
        if (i10 != 0) {
            return false;
        }
        synchronized (this) {
            this.X |= 2;
        }
        return true;
    }

    private boolean y0(androidx.databinding.m<String> mVar, int i10) {
        if (i10 != 0) {
            return false;
        }
        synchronized (this) {
            this.X |= 1;
        }
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x002f  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0036  */
    @Override // androidx.databinding.ViewDataBinding
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    protected void F() {
        /*
            r14 = this;
            monitor-enter(r14)
            long r0 = r14.X     // Catch: java.lang.Throwable -> L68
            r2 = 0
            r14.X = r2     // Catch: java.lang.Throwable -> L68
            monitor-exit(r14)     // Catch: java.lang.Throwable -> L68
            com.tebakgambar.levelselection.f r4 = r14.W
            r5 = 27
            long r5 = r5 & r0
            r7 = 26
            r9 = 25
            r11 = 0
            int r12 = (r5 > r2 ? 1 : (r5 == r2 ? 0 : -1))
            if (r12 == 0) goto L4c
            long r5 = r0 & r9
            int r12 = (r5 > r2 ? 1 : (r5 == r2 ? 0 : -1))
            if (r12 == 0) goto L2f
            if (r4 == 0) goto L21
            androidx.databinding.m<java.lang.String> r5 = r4.f26933t
            goto L22
        L21:
            r5 = r11
        L22:
            r6 = 0
            r14.r0(r6, r5)
            if (r5 == 0) goto L2f
            java.lang.Object r5 = r5.y()
            java.lang.String r5 = (java.lang.String) r5
            goto L30
        L2f:
            r5 = r11
        L30:
            long r12 = r0 & r7
            int r6 = (r12 > r2 ? 1 : (r12 == r2 ? 0 : -1))
            if (r6 == 0) goto L49
            if (r4 == 0) goto L3b
            androidx.databinding.m<java.lang.String> r4 = r4.f26932s
            goto L3c
        L3b:
            r4 = r11
        L3c:
            r6 = 1
            r14.r0(r6, r4)
            if (r4 == 0) goto L49
            java.lang.Object r4 = r4.y()
            r11 = r4
            java.lang.String r11 = (java.lang.String) r11
        L49:
            r4 = r11
            r11 = r5
            goto L4d
        L4c:
            r4 = r11
        L4d:
            long r5 = r0 & r9
            int r9 = (r5 > r2 ? 1 : (r5 == r2 ? 0 : -1))
            if (r9 == 0) goto L58
            com.tebakgambar.component.CustomButton r5 = r14.O
            d0.d.c(r5, r11)
        L58:
            long r0 = r0 & r7
            int r5 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            if (r5 == 0) goto L62
            com.tebakgambar.component.CustomTextView r0 = r14.V
            d0.d.c(r0, r4)
        L62:
            o8.e0 r0 = r14.U
            androidx.databinding.ViewDataBinding.H(r0)
            return
        L68:
            r0 = move-exception
            monitor-exit(r14)     // Catch: java.lang.Throwable -> L68
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: o8.j.F():void");
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean W() {
        synchronized (this) {
            if (this.X != 0) {
                return true;
            }
            return this.U.W();
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void Z() {
        synchronized (this) {
            this.X = 16L;
        }
        this.U.Z();
        k0();
    }

    @Override // androidx.databinding.ViewDataBinding
    protected boolean e0(int i10, Object obj, int i11) {
        if (i10 == 0) {
            return y0((androidx.databinding.m) obj, i11);
        }
        if (i10 == 1) {
            return x0((androidx.databinding.m) obj, i11);
        }
        if (i10 != 2) {
            return false;
        }
        return w0((e0) obj, i11);
    }

    @Override // o8.i
    public void u0(com.tebakgambar.levelselection.f fVar) {
        this.W = fVar;
        synchronized (this) {
            this.X |= 8;
        }
        x(2);
        super.k0();
    }

    private j(androidx.databinding.f fVar, View view, Object[] objArr) {
        super(fVar, view, 3, (CustomButton) objArr[1], (FrameLayout) objArr[7], (ImageView) objArr[6], (ImageView) objArr[5], (LinearLayout) objArr[4], (RelativeLayout) objArr[0], (e0) objArr[3], (CustomTextView) objArr[2]);
        this.X = -1L;
        this.O.setTag(null);
        this.T.setTag(null);
        o0(this.U);
        this.V.setTag(null);
        p0(view);
        Z();
    }
}
