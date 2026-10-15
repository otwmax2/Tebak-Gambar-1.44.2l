package o8;

import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.appcompat.widget.AppCompatButton;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.databinding.ViewDataBinding;

/* JADX INFO: compiled from: LayoutDialogTgFreeAnswerBinding.java */
/* JADX INFO: loaded from: classes2.dex */
public abstract class o0 extends ViewDataBinding {
    public final LinearLayout O;
    public final AppCompatButton P;
    public final LinearLayout Q;
    public final ImageView R;
    public final AppCompatTextView S;
    public final AppCompatTextView T;
    protected k8.d U;

    protected o0(Object obj, View view, int i10, LinearLayout linearLayout, AppCompatButton appCompatButton, LinearLayout linearLayout2, ImageView imageView, AppCompatTextView appCompatTextView, AppCompatTextView appCompatTextView2) {
        super(obj, view, i10);
        this.O = linearLayout;
        this.P = appCompatButton;
        this.Q = linearLayout2;
        this.R = imageView;
        this.S = appCompatTextView;
        this.T = appCompatTextView2;
    }

    public k8.d u0() {
        return this.U;
    }

    public abstract void w0(k8.d dVar);
}
