package o8;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.ViewDataBinding;
import com.tebakgambar.R;
import com.tebakgambar.component.CustomButton;
import com.tebakgambar.component.CustomTextView;

/* JADX INFO: compiled from: LayoutDialogShareBinding.java */
/* JADX INFO: loaded from: classes2.dex */
public abstract class m0 extends ViewDataBinding {
    public final ConstraintLayout O;
    public final ImageView P;
    public final CustomButton Q;
    public final CustomButton R;
    public final CustomButton S;
    public final CustomTextView T;

    protected m0(Object obj, View view, int i10, ConstraintLayout constraintLayout, ImageView imageView, CustomButton customButton, CustomButton customButton2, CustomButton customButton3, CustomTextView customTextView) {
        super(obj, view, i10);
        this.O = constraintLayout;
        this.P = imageView;
        this.Q = customButton;
        this.R = customButton2;
        this.S = customButton3;
        this.T = customTextView;
    }

    public static m0 u0(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        return w0(layoutInflater, viewGroup, z10, androidx.databinding.g.g());
    }

    @Deprecated
    public static m0 w0(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10, Object obj) {
        return (m0) ViewDataBinding.X(layoutInflater, R.layout.layout_dialog_share, viewGroup, z10, obj);
    }
}
