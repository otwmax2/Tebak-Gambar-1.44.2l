package o8;

import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import androidx.databinding.ViewDataBinding;
import com.tebakgambar.component.CustomButton;
import com.tebakgambar.component.CustomTextView;

/* JADX INFO: compiled from: LayoutDialogIncreaseLifeBinding.java */
/* JADX INFO: loaded from: classes2.dex */
public abstract class i0 extends ViewDataBinding {
    public final CustomButton O;
    public final CustomButton P;
    public final ImageView Q;
    public final LinearLayout R;
    public final RelativeLayout S;
    public final LinearLayout T;
    public final CustomTextView U;
    public final CustomTextView V;

    protected i0(Object obj, View view, int i10, CustomButton customButton, CustomButton customButton2, ImageView imageView, LinearLayout linearLayout, RelativeLayout relativeLayout, LinearLayout linearLayout2, CustomTextView customTextView, CustomTextView customTextView2) {
        super(obj, view, i10);
        this.O = customButton;
        this.P = customButton2;
        this.Q = imageView;
        this.R = linearLayout;
        this.S = relativeLayout;
        this.T = linearLayout2;
        this.U = customTextView;
        this.V = customTextView2;
    }
}
