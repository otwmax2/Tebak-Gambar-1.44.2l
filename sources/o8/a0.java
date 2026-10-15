package o8;

import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import androidx.databinding.ViewDataBinding;
import com.tebakgambar.component.CustomButton;
import com.tebakgambar.component.CustomTextView;

/* JADX INFO: compiled from: DialogFirebaseLoginBinding.java */
/* JADX INFO: loaded from: classes2.dex */
public abstract class a0 extends ViewDataBinding {
    public final FrameLayout O;
    public final ImageView P;
    public final LinearLayout Q;
    public final RelativeLayout R;
    public final CustomButton S;
    public final CustomButton T;
    public final CustomTextView U;
    public final CustomTextView V;
    public final CustomTextView W;
    protected s8.i X;

    protected a0(Object obj, View view, int i10, FrameLayout frameLayout, ImageView imageView, LinearLayout linearLayout, RelativeLayout relativeLayout, CustomButton customButton, CustomButton customButton2, CustomTextView customTextView, CustomTextView customTextView2, CustomTextView customTextView3) {
        super(obj, view, i10);
        this.O = frameLayout;
        this.P = imageView;
        this.Q = linearLayout;
        this.R = relativeLayout;
        this.S = customButton;
        this.T = customButton2;
        this.U = customTextView;
        this.V = customTextView2;
        this.W = customTextView3;
    }

    public abstract void u0(s8.i iVar);
}
