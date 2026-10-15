package androidx.appcompat.widget;

import android.content.Context;
import android.os.Build;
import android.util.AttributeSet;
import android.view.View;
import android.widget.PopupWindow;

/* JADX INFO: compiled from: AppCompatPopupWindow.java */
/* JADX INFO: loaded from: classes.dex */
class r extends PopupWindow {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final boolean f1170b;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private boolean f1171a;

    static {
        f1170b = Build.VERSION.SDK_INT < 21;
    }

    public r(Context context, AttributeSet attributeSet, int i10, int i11) {
        super(context, attributeSet, i10, i11);
        a(context, attributeSet, i10, i11);
    }

    private void a(Context context, AttributeSet attributeSet, int i10, int i11) {
        w0 w0VarV = w0.v(context, attributeSet, f.j.Y1, i10, i11);
        int i12 = f.j.f29118a2;
        if (w0VarV.s(i12)) {
            b(w0VarV.a(i12, false));
        }
        setBackgroundDrawable(w0VarV.g(f.j.Z1));
        w0VarV.w();
    }

    private void b(boolean z10) {
        if (f1170b) {
            this.f1171a = z10;
        } else {
            androidx.core.widget.i.a(this, z10);
        }
    }

    @Override // android.widget.PopupWindow
    public void showAsDropDown(View view, int i10, int i11) {
        if (f1170b && this.f1171a) {
            i11 -= view.getHeight();
        }
        super.showAsDropDown(view, i10, i11);
    }

    @Override // android.widget.PopupWindow
    public void update(View view, int i10, int i11, int i12, int i13) {
        if (f1170b && this.f1171a) {
            i11 -= view.getHeight();
        }
        super.update(view, i10, i11, i12, i13);
    }

    @Override // android.widget.PopupWindow
    public void showAsDropDown(View view, int i10, int i11, int i12) {
        if (f1170b && this.f1171a) {
            i11 -= view.getHeight();
        }
        super.showAsDropDown(view, i10, i11, i12);
    }
}
