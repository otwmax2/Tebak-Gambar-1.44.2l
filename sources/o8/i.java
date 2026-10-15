package o8;

import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import androidx.databinding.ViewDataBinding;
import com.tebakgambar.component.CustomButton;
import com.tebakgambar.component.CustomTextView;

/* JADX INFO: compiled from: ActivityLevelLoadingBinding.java */
/* JADX INFO: loaded from: classes2.dex */
public abstract class i extends ViewDataBinding {
    public final CustomButton O;
    public final FrameLayout P;
    public final ImageView Q;
    public final ImageView R;
    public final LinearLayout S;
    public final RelativeLayout T;
    public final e0 U;
    public final CustomTextView V;
    protected com.tebakgambar.levelselection.f W;

    protected i(Object obj, View view, int i10, CustomButton customButton, FrameLayout frameLayout, ImageView imageView, ImageView imageView2, LinearLayout linearLayout, RelativeLayout relativeLayout, e0 e0Var, CustomTextView customTextView) {
        super(obj, view, i10);
        this.O = customButton;
        this.P = frameLayout;
        this.Q = imageView;
        this.R = imageView2;
        this.S = linearLayout;
        this.T = relativeLayout;
        this.U = e0Var;
        this.V = customTextView;
    }

    public abstract void u0(com.tebakgambar.levelselection.f fVar);
}
