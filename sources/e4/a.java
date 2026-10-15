package e4;

import android.content.Context;
import android.graphics.Color;
import android.util.TypedValue;
import android.view.View;
import l4.b;

/* JADX INFO: compiled from: MaterialColors.java */
/* JADX INFO: loaded from: classes2.dex */
public class a {
    public static int a(Context context, int i10, int i11) {
        TypedValue typedValueA = b.a(context, i10);
        return typedValueA != null ? typedValueA.data : i11;
    }

    public static int b(Context context, int i10, String str) {
        return b.c(context, i10, str);
    }

    public static int c(View view, int i10) {
        return b.d(view, i10);
    }

    public static int d(View view, int i10, int i11) {
        return a(view.getContext(), i10, i11);
    }

    public static int e(int i10, int i11) {
        return androidx.core.graphics.a.c(i11, i10);
    }

    public static int f(int i10, int i11, float f10) {
        return e(i10, androidx.core.graphics.a.f(i11, Math.round(Color.alpha(i11) * f10)));
    }

    public static int g(View view, int i10, int i11, float f10) {
        return f(c(view, i10), c(view, i11), f10);
    }
}
