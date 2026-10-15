package o8;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;
import androidx.databinding.ViewDataBinding;
import androidx.recyclerview.widget.RecyclerView;
import com.tebakgambar.R;
import com.tebakgambar.component.CustomButton;
import com.tebakgambar.component.CustomTextView;
import com.tebakgambar.levelselection.QuestionSelectionActivity;
import com.tebakgambar.model.Level;

/* JADX INFO: compiled from: ActivityQuestionSelectionBindingImpl.java */
/* JADX INFO: loaded from: classes2.dex */
public class n extends m {
    private static final ViewDataBinding.i Y = null;
    private static final SparseIntArray Z;
    private final RelativeLayout V;
    private a W;
    private long X;

    /* JADX INFO: compiled from: ActivityQuestionSelectionBindingImpl.java */
    public static class a implements View.OnClickListener {

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        private QuestionSelectionActivity.c f33221o;

        public a a(QuestionSelectionActivity.c cVar) {
            this.f33221o = cVar;
            if (cVar == null) {
                return null;
            }
            return this;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            this.f33221o.a(view);
        }
    }

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        Z = sparseIntArray;
        sparseIntArray.put(R.id.relativeLayoutInfo, 3);
        sparseIntArray.put(R.id.recyclerView, 4);
        sparseIntArray.put(R.id.frameAds, 5);
    }

    public n(androidx.databinding.f fVar, View view) {
        this(fVar, view, ViewDataBinding.d0(fVar, view, 6, Y, Z));
    }

    private boolean x0(androidx.databinding.m<Level> mVar, int i10) {
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
        a aVarA;
        synchronized (this) {
            j10 = this.X;
            this.X = 0L;
        }
        QuestionSelectionActivity.c cVar = this.U;
        com.tebakgambar.levelselection.j0 j0Var = this.T;
        long j11 = 10 & j10;
        String str = null;
        if (j11 == 0 || cVar == null) {
            aVarA = null;
        } else {
            a aVar = this.W;
            if (aVar == null) {
                aVar = new a();
                this.W = aVar;
            }
            aVarA = aVar.a(cVar);
        }
        long j12 = j10 & 13;
        if (j12 != 0) {
            androidx.databinding.m<Level> mVar = j0Var != null ? j0Var.f26953s : null;
            r0(0, mVar);
            Level levelY = mVar != null ? mVar.y() : null;
            str = String.format(this.S.getResources().getString(R.string.text_level), Integer.valueOf(levelY != null ? levelY.id : 0));
        }
        if (j11 != 0) {
            this.O.setOnClickListener(aVarA);
        }
        if (j12 != 0) {
            d0.d.c(this.S, str);
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean W() {
        synchronized (this) {
            return this.X != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void Z() {
        synchronized (this) {
            this.X = 8L;
        }
        k0();
    }

    @Override // androidx.databinding.ViewDataBinding
    protected boolean e0(int i10, Object obj, int i11) {
        if (i10 != 0) {
            return false;
        }
        return x0((androidx.databinding.m) obj, i11);
    }

    @Override // o8.m
    public void u0(QuestionSelectionActivity.c cVar) {
        this.U = cVar;
        synchronized (this) {
            this.X |= 2;
        }
        x(1);
        super.k0();
    }

    @Override // o8.m
    public void w0(com.tebakgambar.levelselection.j0 j0Var) {
        this.T = j0Var;
        synchronized (this) {
            this.X |= 4;
        }
        x(2);
        super.k0();
    }

    private n(androidx.databinding.f fVar, View view, Object[] objArr) {
        super(fVar, view, 1, (CustomButton) objArr[1], (FrameLayout) objArr[5], (RecyclerView) objArr[4], (RelativeLayout) objArr[3], (CustomTextView) objArr[2]);
        this.X = -1L;
        this.O.setTag(null);
        RelativeLayout relativeLayout = (RelativeLayout) objArr[0];
        this.V = relativeLayout;
        relativeLayout.setTag(null);
        this.S.setTag(null);
        p0(view);
        Z();
    }
}
