package o8;

import android.view.View;
import android.widget.FrameLayout;
import androidx.databinding.ViewDataBinding;
import androidx.recyclerview.widget.RecyclerView;

/* JADX INFO: compiled from: ActivitySelfieFrameChooserBinding.java */
/* JADX INFO: loaded from: classes2.dex */
public abstract class q extends ViewDataBinding {
    public final FrameLayout O;
    public final RecyclerView P;
    public final e0 Q;
    protected com.tebakgambar.selfie.i R;

    protected q(Object obj, View view, int i10, FrameLayout frameLayout, RecyclerView recyclerView, e0 e0Var) {
        super(obj, view, i10);
        this.O = frameLayout;
        this.P = recyclerView;
        this.Q = e0Var;
    }

    public abstract void u0(com.tebakgambar.selfie.i iVar);
}
