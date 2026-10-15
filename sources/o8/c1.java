package o8;

import android.view.View;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import androidx.databinding.ViewDataBinding;
import com.tebakgambar.component.CustomTextView;

/* JADX INFO: compiled from: RowItemUpcomingLevelBinding.java */
/* JADX INFO: loaded from: classes2.dex */
public abstract class c1 extends ViewDataBinding {
    public final RelativeLayout O;
    public final LinearLayout P;
    public final RelativeLayout Q;
    public final CustomTextView R;
    public final CustomTextView S;

    protected c1(Object obj, View view, int i10, RelativeLayout relativeLayout, LinearLayout linearLayout, RelativeLayout relativeLayout2, CustomTextView customTextView, CustomTextView customTextView2) {
        super(obj, view, i10);
        this.O = relativeLayout;
        this.P = linearLayout;
        this.Q = relativeLayout2;
        this.R = customTextView;
        this.S = customTextView2;
    }
}
