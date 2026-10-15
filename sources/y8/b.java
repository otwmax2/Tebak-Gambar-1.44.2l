package y8;

import android.graphics.drawable.Drawable;
import android.widget.ImageView;

/* JADX INFO: compiled from: BindingAdapters.java */
/* JADX INFO: loaded from: classes2.dex */
public class b {
    public static void a(ImageView imageView, String str, Drawable drawable) {
        v1.d<String> dVarX = v1.g.v(imageView.getContext()).x(str);
        if (drawable != null) {
            dVarX.R(drawable).K(drawable);
        }
        dVarX.I().j(b2.b.ALL).p(imageView);
    }
}
