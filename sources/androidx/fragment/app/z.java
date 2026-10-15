package androidx.fragment.app;

import android.annotation.SuppressLint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.view.View;
import android.view.ViewGroup;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/* JADX INFO: compiled from: FragmentTransitionImpl.java */
/* JADX INFO: loaded from: classes.dex */
@SuppressLint({"UnknownNullness"})
public abstract class z {

    /* JADX INFO: compiled from: FragmentTransitionImpl.java */
    class a implements Runnable {

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        final /* synthetic */ int f3445o;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        final /* synthetic */ ArrayList f3446p;

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        final /* synthetic */ ArrayList f3447q;

        /* JADX INFO: renamed from: r, reason: collision with root package name */
        final /* synthetic */ ArrayList f3448r;

        /* JADX INFO: renamed from: s, reason: collision with root package name */
        final /* synthetic */ ArrayList f3449s;

        a(int i10, ArrayList arrayList, ArrayList arrayList2, ArrayList arrayList3, ArrayList arrayList4) {
            this.f3445o = i10;
            this.f3446p = arrayList;
            this.f3447q = arrayList2;
            this.f3448r = arrayList3;
            this.f3449s = arrayList4;
        }

        @Override // java.lang.Runnable
        public void run() {
            for (int i10 = 0; i10 < this.f3445o; i10++) {
                androidx.core.view.a0.G0((View) this.f3446p.get(i10), (String) this.f3447q.get(i10));
                androidx.core.view.a0.G0((View) this.f3448r.get(i10), (String) this.f3449s.get(i10));
            }
        }
    }

    /* JADX INFO: compiled from: FragmentTransitionImpl.java */
    class b implements Runnable {

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        final /* synthetic */ ArrayList f3451o;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        final /* synthetic */ Map f3452p;

        b(ArrayList arrayList, Map map) {
            this.f3451o = arrayList;
            this.f3452p = map;
        }

        @Override // java.lang.Runnable
        public void run() {
            int size = this.f3451o.size();
            for (int i10 = 0; i10 < size; i10++) {
                View view = (View) this.f3451o.get(i10);
                String strM = androidx.core.view.a0.M(view);
                if (strM != null) {
                    androidx.core.view.a0.G0(view, z.i(this.f3452p, strM));
                }
            }
        }
    }

    /* JADX INFO: compiled from: FragmentTransitionImpl.java */
    class c implements Runnable {

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        final /* synthetic */ ArrayList f3454o;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        final /* synthetic */ Map f3455p;

        c(ArrayList arrayList, Map map) {
            this.f3454o = arrayList;
            this.f3455p = map;
        }

        @Override // java.lang.Runnable
        public void run() {
            int size = this.f3454o.size();
            for (int i10 = 0; i10 < size; i10++) {
                View view = (View) this.f3454o.get(i10);
                androidx.core.view.a0.G0(view, (String) this.f3455p.get(androidx.core.view.a0.M(view)));
            }
        }
    }

    protected static void d(List<View> list, View view) {
        int size = list.size();
        if (h(list, view, size)) {
            return;
        }
        if (androidx.core.view.a0.M(view) != null) {
            list.add(view);
        }
        for (int i10 = size; i10 < list.size(); i10++) {
            View view2 = list.get(i10);
            if (view2 instanceof ViewGroup) {
                ViewGroup viewGroup = (ViewGroup) view2;
                int childCount = viewGroup.getChildCount();
                for (int i11 = 0; i11 < childCount; i11++) {
                    View childAt = viewGroup.getChildAt(i11);
                    if (!h(list, childAt, size) && androidx.core.view.a0.M(childAt) != null) {
                        list.add(childAt);
                    }
                }
            }
        }
    }

    private static boolean h(List<View> list, View view, int i10) {
        for (int i11 = 0; i11 < i10; i11++) {
            if (list.get(i11) == view) {
                return true;
            }
        }
        return false;
    }

    static String i(Map<String, String> map, String str) {
        for (Map.Entry<String, String> entry : map.entrySet()) {
            if (str.equals(entry.getValue())) {
                return entry.getKey();
            }
        }
        return null;
    }

    protected static boolean l(List list) {
        return list == null || list.isEmpty();
    }

    public abstract void A(Object obj, ArrayList<View> arrayList, ArrayList<View> arrayList2);

    public abstract Object B(Object obj);

    public abstract void a(Object obj, View view);

    public abstract void b(Object obj, ArrayList<View> arrayList);

    public abstract void c(ViewGroup viewGroup, Object obj);

    public abstract boolean e(Object obj);

    void f(ArrayList<View> arrayList, View view) {
        if (view.getVisibility() == 0) {
            if (!(view instanceof ViewGroup)) {
                arrayList.add(view);
                return;
            }
            ViewGroup viewGroup = (ViewGroup) view;
            if (androidx.core.view.d0.a(viewGroup)) {
                arrayList.add(viewGroup);
                return;
            }
            int childCount = viewGroup.getChildCount();
            for (int i10 = 0; i10 < childCount; i10++) {
                f(arrayList, viewGroup.getChildAt(i10));
            }
        }
    }

    public abstract Object g(Object obj);

    void j(Map<String, View> map, View view) {
        if (view.getVisibility() == 0) {
            String strM = androidx.core.view.a0.M(view);
            if (strM != null) {
                map.put(strM, view);
            }
            if (view instanceof ViewGroup) {
                ViewGroup viewGroup = (ViewGroup) view;
                int childCount = viewGroup.getChildCount();
                for (int i10 = 0; i10 < childCount; i10++) {
                    j(map, viewGroup.getChildAt(i10));
                }
            }
        }
    }

    protected void k(View view, Rect rect) {
        if (androidx.core.view.a0.T(view)) {
            RectF rectF = new RectF();
            rectF.set(0.0f, 0.0f, view.getWidth(), view.getHeight());
            view.getMatrix().mapRect(rectF);
            rectF.offset(view.getLeft(), view.getTop());
            Object parent = view.getParent();
            while (parent instanceof View) {
                View view2 = (View) parent;
                rectF.offset(-view2.getScrollX(), -view2.getScrollY());
                view2.getMatrix().mapRect(rectF);
                rectF.offset(view2.getLeft(), view2.getTop());
                parent = view2.getParent();
            }
            view.getRootView().getLocationOnScreen(new int[2]);
            rectF.offset(r1[0], r1[1]);
            rect.set(Math.round(rectF.left), Math.round(rectF.top), Math.round(rectF.right), Math.round(rectF.bottom));
        }
    }

    public abstract Object m(Object obj, Object obj2, Object obj3);

    public abstract Object n(Object obj, Object obj2, Object obj3);

    ArrayList<String> o(ArrayList<View> arrayList) {
        ArrayList<String> arrayList2 = new ArrayList<>();
        int size = arrayList.size();
        for (int i10 = 0; i10 < size; i10++) {
            View view = arrayList.get(i10);
            arrayList2.add(androidx.core.view.a0.M(view));
            androidx.core.view.a0.G0(view, null);
        }
        return arrayList2;
    }

    public abstract void p(Object obj, View view);

    public abstract void q(Object obj, ArrayList<View> arrayList, ArrayList<View> arrayList2);

    public abstract void r(Object obj, View view, ArrayList<View> arrayList);

    void s(ViewGroup viewGroup, ArrayList<View> arrayList, Map<String, String> map) {
        androidx.core.view.x.a(viewGroup, new c(arrayList, map));
    }

    public abstract void t(Object obj, Object obj2, ArrayList<View> arrayList, Object obj3, ArrayList<View> arrayList2, Object obj4, ArrayList<View> arrayList3);

    public abstract void u(Object obj, Rect rect);

    public abstract void v(Object obj, View view);

    public void w(Fragment fragment, Object obj, androidx.core.os.e eVar, Runnable runnable) {
        runnable.run();
    }

    void x(View view, ArrayList<View> arrayList, Map<String, String> map) {
        androidx.core.view.x.a(view, new b(arrayList, map));
    }

    void y(View view, ArrayList<View> arrayList, ArrayList<View> arrayList2, ArrayList<String> arrayList3, Map<String, String> map) {
        int size = arrayList2.size();
        ArrayList arrayList4 = new ArrayList();
        for (int i10 = 0; i10 < size; i10++) {
            View view2 = arrayList.get(i10);
            String strM = androidx.core.view.a0.M(view2);
            arrayList4.add(strM);
            if (strM != null) {
                androidx.core.view.a0.G0(view2, null);
                String str = map.get(strM);
                int i11 = 0;
                while (true) {
                    if (i11 >= size) {
                        break;
                    }
                    if (str.equals(arrayList3.get(i11))) {
                        androidx.core.view.a0.G0(arrayList2.get(i11), strM);
                        break;
                    }
                    i11++;
                }
            }
        }
        androidx.core.view.x.a(view, new a(size, arrayList2, arrayList3, arrayList, arrayList4));
    }

    public abstract void z(Object obj, View view, ArrayList<View> arrayList);
}
