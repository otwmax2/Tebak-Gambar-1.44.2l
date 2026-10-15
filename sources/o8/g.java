package o8;

import android.view.View;
import android.widget.FrameLayout;
import android.widget.ScrollView;
import androidx.databinding.ViewDataBinding;
import com.tebakgambar.component.CustomImageView;
import com.tebakgambar.component.CustomTextView;

/* JADX INFO: compiled from: ActivityHowToPlayBinding.java */
/* JADX INFO: loaded from: classes2.dex */
public abstract class g extends ViewDataBinding {
    public final FrameLayout O;
    public final CustomImageView P;
    public final e0 Q;
    public final ScrollView R;
    public final CustomTextView S;
    public final CustomTextView T;
    public final CustomTextView U;
    public final CustomTextView V;
    public final CustomTextView W;
    protected r8.b X;

    protected g(Object obj, View view, int i10, FrameLayout frameLayout, CustomImageView customImageView, e0 e0Var, ScrollView scrollView, CustomTextView customTextView, CustomTextView customTextView2, CustomTextView customTextView3, CustomTextView customTextView4, CustomTextView customTextView5) {
        super(obj, view, i10);
        this.O = frameLayout;
        this.P = customImageView;
        this.Q = e0Var;
        this.R = scrollView;
        this.S = customTextView;
        this.T = customTextView2;
        this.U = customTextView3;
        this.V = customTextView4;
        this.W = customTextView5;
    }

    public abstract void u0(r8.b bVar);
}
