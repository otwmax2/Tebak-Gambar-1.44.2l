package o8;

import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RatingBar;
import androidx.appcompat.widget.AppCompatButton;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.databinding.ViewDataBinding;

/* JADX INFO: compiled from: LayoutDialogTgInAppReviewBinding.java */
/* JADX INFO: loaded from: classes2.dex */
public abstract class q0 extends ViewDataBinding {
    public final LinearLayout O;
    public final AppCompatButton P;
    public final LinearLayout Q;
    public final ImageView R;
    public final RatingBar S;
    public final AppCompatTextView T;
    public final AppCompatTextView U;
    public final AppCompatTextView V;
    protected l8.e W;

    protected q0(Object obj, View view, int i10, LinearLayout linearLayout, AppCompatButton appCompatButton, LinearLayout linearLayout2, ImageView imageView, RatingBar ratingBar, AppCompatTextView appCompatTextView, AppCompatTextView appCompatTextView2, AppCompatTextView appCompatTextView3) {
        super(obj, view, i10);
        this.O = linearLayout;
        this.P = appCompatButton;
        this.Q = linearLayout2;
        this.R = imageView;
        this.S = ratingBar;
        this.T = appCompatTextView;
        this.U = appCompatTextView2;
        this.V = appCompatTextView3;
    }

    public l8.e u0() {
        return this.W;
    }

    public abstract void w0(l8.e eVar);
}
