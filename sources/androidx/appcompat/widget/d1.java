package androidx.appcompat.widget;

import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.Resources;
import android.graphics.Rect;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.TextView;

/* JADX INFO: compiled from: TooltipPopup.java */
/* JADX INFO: loaded from: classes.dex */
class d1 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Context f1007a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final View f1008b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final TextView f1009c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final WindowManager.LayoutParams f1010d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Rect f1011e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final int[] f1012f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final int[] f1013g;

    d1(Context context) {
        WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams();
        this.f1010d = layoutParams;
        this.f1011e = new Rect();
        this.f1012f = new int[2];
        this.f1013g = new int[2];
        this.f1007a = context;
        View viewInflate = LayoutInflater.from(context).inflate(f.g.f29097s, (ViewGroup) null);
        this.f1008b = viewInflate;
        this.f1009c = (TextView) viewInflate.findViewById(f.f.f29071s);
        layoutParams.setTitle(getClass().getSimpleName());
        layoutParams.packageName = context.getPackageName();
        layoutParams.type = 1002;
        layoutParams.width = -2;
        layoutParams.height = -2;
        layoutParams.format = -3;
        layoutParams.windowAnimations = f.i.f29111a;
        layoutParams.flags = 24;
    }

    private void a(View view, int i10, int i11, boolean z10, WindowManager.LayoutParams layoutParams) {
        int height;
        int i12;
        layoutParams.token = view.getApplicationWindowToken();
        int dimensionPixelOffset = this.f1007a.getResources().getDimensionPixelOffset(f.d.f29024m);
        if (view.getWidth() < dimensionPixelOffset) {
            i10 = view.getWidth() / 2;
        }
        if (view.getHeight() >= dimensionPixelOffset) {
            int dimensionPixelOffset2 = this.f1007a.getResources().getDimensionPixelOffset(f.d.f29023l);
            height = i11 + dimensionPixelOffset2;
            i12 = i11 - dimensionPixelOffset2;
        } else {
            height = view.getHeight();
            i12 = 0;
        }
        layoutParams.gravity = 49;
        int dimensionPixelOffset3 = this.f1007a.getResources().getDimensionPixelOffset(z10 ? f.d.f29026o : f.d.f29025n);
        View viewB = b(view);
        if (viewB == null) {
            Log.e("TooltipPopup", "Cannot find app view");
            return;
        }
        viewB.getWindowVisibleDisplayFrame(this.f1011e);
        Rect rect = this.f1011e;
        if (rect.left < 0 && rect.top < 0) {
            Resources resources = this.f1007a.getResources();
            int identifier = resources.getIdentifier("status_bar_height", "dimen", "android");
            int dimensionPixelSize = identifier != 0 ? resources.getDimensionPixelSize(identifier) : 0;
            DisplayMetrics displayMetrics = resources.getDisplayMetrics();
            this.f1011e.set(0, dimensionPixelSize, displayMetrics.widthPixels, displayMetrics.heightPixels);
        }
        viewB.getLocationOnScreen(this.f1013g);
        view.getLocationOnScreen(this.f1012f);
        int[] iArr = this.f1012f;
        int i13 = iArr[0];
        int[] iArr2 = this.f1013g;
        iArr[0] = i13 - iArr2[0];
        iArr[1] = iArr[1] - iArr2[1];
        layoutParams.x = (iArr[0] + i10) - (viewB.getWidth() / 2);
        int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(0, 0);
        this.f1008b.measure(iMakeMeasureSpec, iMakeMeasureSpec);
        int measuredHeight = this.f1008b.getMeasuredHeight();
        int[] iArr3 = this.f1012f;
        int i14 = ((iArr3[1] + i12) - dimensionPixelOffset3) - measuredHeight;
        int i15 = iArr3[1] + height + dimensionPixelOffset3;
        if (z10) {
            if (i14 >= 0) {
                layoutParams.y = i14;
                return;
            } else {
                layoutParams.y = i15;
                return;
            }
        }
        if (measuredHeight + i15 <= this.f1011e.height()) {
            layoutParams.y = i15;
        } else {
            layoutParams.y = i14;
        }
    }

    private static View b(View view) {
        View rootView = view.getRootView();
        ViewGroup.LayoutParams layoutParams = rootView.getLayoutParams();
        if ((layoutParams instanceof WindowManager.LayoutParams) && ((WindowManager.LayoutParams) layoutParams).type == 2) {
            return rootView;
        }
        for (Context context = view.getContext(); context instanceof ContextWrapper; context = ((ContextWrapper) context).getBaseContext()) {
            if (context instanceof Activity) {
                return ((Activity) context).getWindow().getDecorView();
            }
        }
        return rootView;
    }

    void c() {
        if (d()) {
            ((WindowManager) this.f1007a.getSystemService("window")).removeView(this.f1008b);
        }
    }

    boolean d() {
        return this.f1008b.getParent() != null;
    }

    void e(View view, int i10, int i11, boolean z10, CharSequence charSequence) {
        if (d()) {
            c();
        }
        this.f1009c.setText(charSequence);
        a(view, i10, i11, z10, this.f1010d);
        ((WindowManager) this.f1007a.getSystemService("window")).addView(this.f1008b, this.f1010d);
    }
}
