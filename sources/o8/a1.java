package o8;

import android.view.View;
import android.widget.ImageView;
import androidx.databinding.ViewDataBinding;
import com.tebakgambar.component.CustomTextView;

/* JADX INFO: compiled from: RowItemQuestionBinding.java */
/* JADX INFO: loaded from: classes2.dex */
public abstract class a1 extends ViewDataBinding {
    public final ImageView O;
    public final CustomTextView P;

    protected a1(Object obj, View view, int i10, ImageView imageView, CustomTextView customTextView) {
        super(obj, view, i10);
        this.O = imageView;
        this.P = customTextView;
    }
}
