package d0;

import android.os.Build;
import android.util.SparseArray;
import android.view.View;
import java.lang.ref.WeakReference;
import java.util.WeakHashMap;

/* JADX INFO: compiled from: ListenerUtil.java */
/* JADX INFO: loaded from: classes.dex */
public class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final SparseArray<WeakHashMap<View, WeakReference<?>>> f28598a = new SparseArray<>();

    public static <T> T a(View view, T t10, int i10) {
        if (Build.VERSION.SDK_INT >= 14) {
            T t11 = (T) view.getTag(i10);
            view.setTag(i10, t10);
            return t11;
        }
        SparseArray<WeakHashMap<View, WeakReference<?>>> sparseArray = f28598a;
        synchronized (sparseArray) {
            WeakHashMap<View, WeakReference<?>> weakHashMap = sparseArray.get(i10);
            if (weakHashMap == null) {
                weakHashMap = new WeakHashMap<>();
                sparseArray.put(i10, weakHashMap);
            }
            WeakReference<?> weakReferenceRemove = t10 == null ? weakHashMap.remove(view) : weakHashMap.put(view, new WeakReference<>(t10));
            if (weakReferenceRemove == null) {
                return null;
            }
            return (T) weakReferenceRemove.get();
        }
    }
}
