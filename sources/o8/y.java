package o8;

import android.view.View;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;
import androidx.databinding.ViewDataBinding;
import androidx.recyclerview.widget.RecyclerView;
import com.tebakgambar.component.CustomButton;
import com.tebakgambar.component.CustomTextView;

/* JADX INFO: compiled from: ActivityStickerCampaignListBinding.java */
/* JADX INFO: loaded from: classes2.dex */
public abstract class y extends ViewDataBinding {
    public final CustomButton O;
    public final FrameLayout P;
    public final RecyclerView Q;
    public final RelativeLayout R;
    public final RelativeLayout S;
    public final e0 T;
    public final CustomTextView U;
    protected com.tebakgambar.sticker.i V;

    protected y(Object obj, View view, int i10, CustomButton customButton, FrameLayout frameLayout, RecyclerView recyclerView, RelativeLayout relativeLayout, RelativeLayout relativeLayout2, e0 e0Var, CustomTextView customTextView) {
        super(obj, view, i10);
        this.O = customButton;
        this.P = frameLayout;
        this.Q = recyclerView;
        this.R = relativeLayout;
        this.S = relativeLayout2;
        this.T = e0Var;
        this.U = customTextView;
    }

    public abstract void u0(com.tebakgambar.sticker.i iVar);
}
