package o8;

import android.view.View;
import android.widget.FrameLayout;
import androidx.databinding.ViewDataBinding;
import com.tebakgambar.component.CustomButton;
import com.tebakgambar.component.CustomListView;
import com.tebakgambar.component.CustomTextView;
import com.tebakgambar.tutorial.ClueEventTutorialActivity;

/* JADX INFO: compiled from: ActivityClueEventTutorialBinding.java */
/* JADX INFO: loaded from: classes2.dex */
public abstract class a extends ViewDataBinding {
    public final CustomButton O;
    public final FrameLayout P;
    public final CustomListView Q;
    public final e0 R;
    public final CustomTextView S;
    protected com.tebakgambar.tutorial.d T;
    protected ClueEventTutorialActivity.a U;

    protected a(Object obj, View view, int i10, CustomButton customButton, FrameLayout frameLayout, CustomListView customListView, e0 e0Var, CustomTextView customTextView) {
        super(obj, view, i10);
        this.O = customButton;
        this.P = frameLayout;
        this.Q = customListView;
        this.R = e0Var;
        this.S = customTextView;
    }

    public abstract void u0(ClueEventTutorialActivity.a aVar);

    public abstract void w0(com.tebakgambar.tutorial.d dVar);
}
