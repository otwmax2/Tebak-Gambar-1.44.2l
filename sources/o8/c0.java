package o8;

import android.view.View;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import androidx.databinding.ViewDataBinding;
import com.tebakgambar.component.CustomTextView;

/* JADX INFO: compiled from: FragmentHeaderBinding.java */
/* JADX INFO: loaded from: classes2.dex */
public abstract class c0 extends ViewDataBinding {
    public final ImageView O;
    public final ImageView P;
    public final RelativeLayout Q;
    public final CustomTextView R;

    protected c0(Object obj, View view, int i10, ImageView imageView, ImageView imageView2, RelativeLayout relativeLayout, CustomTextView customTextView) {
        super(obj, view, i10);
        this.O = imageView;
        this.P = imageView2;
        this.Q = relativeLayout;
        this.R = customTextView;
    }
}
