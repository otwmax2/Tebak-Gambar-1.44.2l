package o8;

import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import androidx.databinding.ViewDataBinding;
import com.tebakgambar.component.CustomButton;
import com.tebakgambar.component.CustomTextView;

/* JADX INFO: compiled from: ActivityStickerCampaignBinding.java */
/* JADX INFO: loaded from: classes2.dex */
public abstract class w extends ViewDataBinding {
    public final RelativeLayout O;
    public final RelativeLayout P;
    public final RelativeLayout Q;
    public final RelativeLayout R;
    public final CustomButton S;
    public final LinearLayout T;
    public final ImageView U;
    public final RelativeLayout V;
    public final RelativeLayout W;
    public final e0 X;
    public final CustomTextView Y;
    public final CustomTextView Z;

    /* JADX INFO: renamed from: a0, reason: collision with root package name */
    public final CustomTextView f33287a0;

    /* JADX INFO: renamed from: b0, reason: collision with root package name */
    public final CustomTextView f33288b0;

    /* JADX INFO: renamed from: c0, reason: collision with root package name */
    protected com.tebakgambar.sticker.n f33289c0;

    protected w(Object obj, View view, int i10, RelativeLayout relativeLayout, RelativeLayout relativeLayout2, RelativeLayout relativeLayout3, RelativeLayout relativeLayout4, CustomButton customButton, LinearLayout linearLayout, ImageView imageView, RelativeLayout relativeLayout5, RelativeLayout relativeLayout6, e0 e0Var, CustomTextView customTextView, CustomTextView customTextView2, CustomTextView customTextView3, CustomTextView customTextView4) {
        super(obj, view, i10);
        this.O = relativeLayout;
        this.P = relativeLayout2;
        this.Q = relativeLayout3;
        this.R = relativeLayout4;
        this.S = customButton;
        this.T = linearLayout;
        this.U = imageView;
        this.V = relativeLayout5;
        this.W = relativeLayout6;
        this.X = e0Var;
        this.Y = customTextView;
        this.Z = customTextView2;
        this.f33287a0 = customTextView3;
        this.f33288b0 = customTextView4;
    }

    public abstract void u0(com.tebakgambar.sticker.n nVar);
}
