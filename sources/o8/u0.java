package o8;

import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import androidx.databinding.ViewDataBinding;
import com.tebakgambar.component.CustomTextView;

/* JADX INFO: compiled from: RowItemFrameBinding.java */
/* JADX INFO: loaded from: classes2.dex */
public abstract class u0 extends ViewDataBinding {
    public final ImageView O;
    public final ImageView P;
    public final LinearLayout Q;
    public final RelativeLayout R;
    public final CustomTextView S;
    public final CustomTextView T;

    protected u0(Object obj, View view, int i10, ImageView imageView, ImageView imageView2, LinearLayout linearLayout, RelativeLayout relativeLayout, CustomTextView customTextView, CustomTextView customTextView2) {
        super(obj, view, i10);
        this.O = imageView;
        this.P = imageView2;
        this.Q = linearLayout;
        this.R = relativeLayout;
        this.S = customTextView;
        this.T = customTextView2;
    }
}
