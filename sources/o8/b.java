package o8;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;
import androidx.databinding.ViewDataBinding;
import com.tebakgambar.R;
import com.tebakgambar.component.CustomButton;
import com.tebakgambar.component.CustomListView;
import com.tebakgambar.component.CustomTextView;
import com.tebakgambar.tutorial.ClueEventTutorialActivity;

/* JADX INFO: compiled from: ActivityClueEventTutorialBindingImpl.java */
/* JADX INFO: loaded from: classes2.dex */
public class b extends o8.a {
    private static final ViewDataBinding.i Y;
    private static final SparseIntArray Z;
    private final RelativeLayout V;
    private a W;
    private long X;

    /* JADX INFO: compiled from: ActivityClueEventTutorialBindingImpl.java */
    public static class a implements View.OnClickListener {

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        private ClueEventTutorialActivity.a f33154o;

        public a a(ClueEventTutorialActivity.a aVar) {
            this.f33154o = aVar;
            if (aVar == null) {
                return null;
            }
            return this;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            this.f33154o.a(view);
        }
    }

    static {
        ViewDataBinding.i iVar = new ViewDataBinding.i(6);
        Y = iVar;
        iVar.a(0, new String[]{"header_normal"}, new int[]{2}, new int[]{R.layout.header_normal});
        SparseIntArray sparseIntArray = new SparseIntArray();
        Z = sparseIntArray;
        sparseIntArray.put(R.id.textViewTitleCaraMenebakGambar, 3);
        sparseIntArray.put(R.id.listView, 4);
        sparseIntArray.put(R.id.frameAds, 5);
    }

    public b(androidx.databinding.f fVar, View view) {
        this(fVar, view, ViewDataBinding.d0(fVar, view, 6, Y, Z));
    }

    private boolean x0(e0 e0Var, int i10) {
        if (i10 != 0) {
            return false;
        }
        synchronized (this) {
            this.X |= 1;
        }
        return true;
    }

    @Override // androidx.databinding.ViewDataBinding
    protected void F() {
        long j10;
        synchronized (this) {
            j10 = this.X;
            this.X = 0L;
        }
        a aVarA = null;
        ClueEventTutorialActivity.a aVar = this.U;
        long j11 = j10 & 10;
        if (j11 != 0 && aVar != null) {
            a aVar2 = this.W;
            if (aVar2 == null) {
                aVar2 = new a();
                this.W = aVar2;
            }
            aVarA = aVar2.a(aVar);
        }
        if (j11 != 0) {
            this.O.setOnClickListener(aVarA);
        }
        ViewDataBinding.H(this.R);
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean W() {
        synchronized (this) {
            if (this.X != 0) {
                return true;
            }
            return this.R.W();
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void Z() {
        synchronized (this) {
            this.X = 8L;
        }
        this.R.Z();
        k0();
    }

    @Override // androidx.databinding.ViewDataBinding
    protected boolean e0(int i10, Object obj, int i11) {
        if (i10 != 0) {
            return false;
        }
        return x0((e0) obj, i11);
    }

    @Override // o8.a
    public void u0(ClueEventTutorialActivity.a aVar) {
        this.U = aVar;
        synchronized (this) {
            this.X |= 2;
        }
        x(1);
        super.k0();
    }

    @Override // o8.a
    public void w0(com.tebakgambar.tutorial.d dVar) {
        this.T = dVar;
    }

    private b(androidx.databinding.f fVar, View view, Object[] objArr) {
        super(fVar, view, 1, (CustomButton) objArr[1], (FrameLayout) objArr[5], (CustomListView) objArr[4], (e0) objArr[2], (CustomTextView) objArr[3]);
        this.X = -1L;
        this.O.setTag(null);
        RelativeLayout relativeLayout = (RelativeLayout) objArr[0];
        this.V = relativeLayout;
        relativeLayout.setTag(null);
        o0(this.R);
        p0(view);
        Z();
    }
}
