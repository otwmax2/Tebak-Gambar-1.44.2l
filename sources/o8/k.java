package o8;

import android.view.View;
import android.widget.FrameLayout;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.ViewDataBinding;
import androidx.recyclerview.widget.RecyclerView;

/* JADX INFO: compiled from: ActivityLevelSelectionBinding.java */
/* JADX INFO: loaded from: classes2.dex */
public abstract class k extends ViewDataBinding {
    public final FrameLayout O;
    public final ConstraintLayout P;
    public final RecyclerView Q;
    protected com.tebakgambar.levelselection.z R;

    protected k(Object obj, View view, int i10, FrameLayout frameLayout, ConstraintLayout constraintLayout, RecyclerView recyclerView) {
        super(obj, view, i10);
        this.O = frameLayout;
        this.P = constraintLayout;
        this.Q = recyclerView;
    }

    public abstract void u0(com.tebakgambar.levelselection.z zVar);
}
