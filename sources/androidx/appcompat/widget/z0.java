package androidx.appcompat.widget;

import android.os.Build;
import android.view.View;

/* JADX INFO: compiled from: TooltipCompat.java */
/* JADX INFO: loaded from: classes.dex */
public class z0 {

    /* JADX INFO: compiled from: TooltipCompat.java */
    static class a {
        static void a(View view, CharSequence charSequence) {
            view.setTooltipText(charSequence);
        }
    }

    public static void a(View view, CharSequence charSequence) {
        if (Build.VERSION.SDK_INT >= 26) {
            a.a(view, charSequence);
        } else {
            c1.h(view, charSequence);
        }
    }
}
