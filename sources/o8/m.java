package o8;

import android.view.View;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;
import androidx.databinding.ViewDataBinding;
import androidx.recyclerview.widget.RecyclerView;
import com.tebakgambar.component.CustomButton;
import com.tebakgambar.component.CustomTextView;
import com.tebakgambar.levelselection.QuestionSelectionActivity;

/* JADX INFO: compiled from: ActivityQuestionSelectionBinding.java */
/* JADX INFO: loaded from: classes2.dex */
public abstract class m extends ViewDataBinding {
    public final CustomButton O;
    public final FrameLayout P;
    public final RecyclerView Q;
    public final RelativeLayout R;
    public final CustomTextView S;
    protected com.tebakgambar.levelselection.j0 T;
    protected QuestionSelectionActivity.c U;

    protected m(Object obj, View view, int i10, CustomButton customButton, FrameLayout frameLayout, RecyclerView recyclerView, RelativeLayout relativeLayout, CustomTextView customTextView) {
        super(obj, view, i10);
        this.O = customButton;
        this.P = frameLayout;
        this.Q = recyclerView;
        this.R = relativeLayout;
        this.S = customTextView;
    }

    public abstract void u0(QuestionSelectionActivity.c cVar);

    public abstract void w0(com.tebakgambar.levelselection.j0 j0Var);
}
