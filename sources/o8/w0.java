package o8;

import android.view.View;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import androidx.databinding.ViewDataBinding;
import com.google.android.gms.ads.nativead.NativeAdView;
import com.tebakgambar.component.CustomButton;
import com.tebakgambar.component.CustomTextView;

/* JADX INFO: compiled from: RowItemLevelAdUnifiedBinding.java */
/* JADX INFO: loaded from: classes2.dex */
public abstract class w0 extends ViewDataBinding {
    public final NativeAdView O;
    public final CustomButton P;
    public final ImageView Q;
    public final RelativeLayout R;
    public final CustomTextView S;

    protected w0(Object obj, View view, int i10, NativeAdView nativeAdView, CustomButton customButton, ImageView imageView, RelativeLayout relativeLayout, CustomTextView customTextView) {
        super(obj, view, i10);
        this.O = nativeAdView;
        this.P = customButton;
        this.Q = imageView;
        this.R = relativeLayout;
        this.S = customTextView;
    }
}
