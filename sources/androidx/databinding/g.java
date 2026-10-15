package androidx.databinding;

import android.R;
import android.app.Activity;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;

/* JADX INFO: compiled from: DataBindingUtil.java */
/* JADX INFO: loaded from: classes.dex */
public class g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static e f2630a = new DataBinderMapperImpl();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static f f2631b = null;

    public static <T extends ViewDataBinding> T a(View view) {
        return (T) b(view, f2631b);
    }

    public static <T extends ViewDataBinding> T b(View view, f fVar) {
        T t10 = (T) f(view);
        if (t10 != null) {
            return t10;
        }
        Object tag = view.getTag();
        if (!(tag instanceof String)) {
            throw new IllegalArgumentException("View is not a binding layout");
        }
        int iD = f2630a.d((String) tag);
        if (iD != 0) {
            return (T) f2630a.b(fVar, view, iD);
        }
        throw new IllegalArgumentException("View is not a binding layout. Tag: " + tag);
    }

    static <T extends ViewDataBinding> T c(f fVar, View view, int i10) {
        return (T) f2630a.b(fVar, view, i10);
    }

    static <T extends ViewDataBinding> T d(f fVar, View[] viewArr, int i10) {
        return (T) f2630a.c(fVar, viewArr, i10);
    }

    private static <T extends ViewDataBinding> T e(f fVar, ViewGroup viewGroup, int i10, int i11) {
        int childCount = viewGroup.getChildCount();
        int i12 = childCount - i10;
        if (i12 == 1) {
            return (T) c(fVar, viewGroup.getChildAt(childCount - 1), i11);
        }
        View[] viewArr = new View[i12];
        for (int i13 = 0; i13 < i12; i13++) {
            viewArr[i13] = viewGroup.getChildAt(i13 + i10);
        }
        return (T) d(fVar, viewArr, i11);
    }

    public static <T extends ViewDataBinding> T f(View view) {
        return (T) ViewDataBinding.Q(view);
    }

    public static f g() {
        return f2631b;
    }

    public static <T extends ViewDataBinding> T h(LayoutInflater layoutInflater, int i10, ViewGroup viewGroup, boolean z10) {
        return (T) i(layoutInflater, i10, viewGroup, z10, f2631b);
    }

    public static <T extends ViewDataBinding> T i(LayoutInflater layoutInflater, int i10, ViewGroup viewGroup, boolean z10, f fVar) {
        boolean z11 = viewGroup != null && z10;
        return z11 ? (T) e(fVar, viewGroup, z11 ? viewGroup.getChildCount() : 0, i10) : (T) c(fVar, layoutInflater.inflate(i10, viewGroup, z10), i10);
    }

    public static <T extends ViewDataBinding> T j(Activity activity, int i10) {
        return (T) k(activity, i10, f2631b);
    }

    public static <T extends ViewDataBinding> T k(Activity activity, int i10, f fVar) {
        activity.setContentView(i10);
        return (T) e(fVar, (ViewGroup) activity.getWindow().getDecorView().findViewById(R.id.content), 0, i10);
    }
}
