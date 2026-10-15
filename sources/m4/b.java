package m4;

import android.R;
import android.content.res.ColorStateList;
import android.graphics.Color;
import android.os.Build;
import android.util.Log;

/* JADX INFO: compiled from: RippleUtils.java */
/* JADX INFO: loaded from: classes2.dex */
public class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final boolean f32158a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final int[] f32159b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final int[] f32160c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final int[] f32161d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final int[] f32162e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final int[] f32163f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final int[] f32164g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static final int[] f32165h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static final int[] f32166i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static final int[] f32167j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private static final int[] f32168k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    static final String f32169l;

    static {
        f32158a = Build.VERSION.SDK_INT >= 21;
        f32159b = new int[]{R.attr.state_pressed};
        f32160c = new int[]{R.attr.state_hovered, R.attr.state_focused};
        f32161d = new int[]{R.attr.state_focused};
        f32162e = new int[]{R.attr.state_hovered};
        f32163f = new int[]{R.attr.state_selected, R.attr.state_pressed};
        f32164g = new int[]{R.attr.state_selected, R.attr.state_hovered, R.attr.state_focused};
        f32165h = new int[]{R.attr.state_selected, R.attr.state_focused};
        f32166i = new int[]{R.attr.state_selected, R.attr.state_hovered};
        f32167j = new int[]{R.attr.state_selected};
        f32168k = new int[]{R.attr.state_enabled, R.attr.state_pressed};
        f32169l = b.class.getSimpleName();
    }

    private b() {
    }

    public static ColorStateList a(ColorStateList colorStateList) {
        if (colorStateList == null) {
            return ColorStateList.valueOf(0);
        }
        int i10 = Build.VERSION.SDK_INT;
        if (i10 >= 22 && i10 <= 27 && Color.alpha(colorStateList.getDefaultColor()) == 0 && Color.alpha(colorStateList.getColorForState(f32168k, 0)) != 0) {
            Log.w(f32169l, "Use a non-transparent color for the default color as it will be used to finish ripple animations.");
        }
        return colorStateList;
    }

    public static boolean b(int[] iArr) {
        boolean z10 = false;
        boolean z11 = false;
        for (int i10 : iArr) {
            if (i10 == 16842910) {
                z10 = true;
            } else if (i10 == 16842908 || i10 == 16842919 || i10 == 16843623) {
                z11 = true;
            }
        }
        return z10 && z11;
    }
}
