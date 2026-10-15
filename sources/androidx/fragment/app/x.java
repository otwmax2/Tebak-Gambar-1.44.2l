package androidx.fragment.app;

import android.content.Context;
import android.graphics.Rect;
import android.os.Build;
import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

/* JADX INFO: compiled from: FragmentTransition.java */
/* JADX INFO: loaded from: classes.dex */
class x {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final int[] f3386a = {0, 3, 0, 1, 5, 4, 7, 6, 9, 8, 10};

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    static final z f3387b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    static final z f3388c;

    /* JADX INFO: compiled from: FragmentTransition.java */
    class a implements Runnable {

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        final /* synthetic */ g f3389o;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        final /* synthetic */ Fragment f3390p;

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        final /* synthetic */ androidx.core.os.e f3391q;

        a(g gVar, Fragment fragment, androidx.core.os.e eVar) {
            this.f3389o = gVar;
            this.f3390p = fragment;
            this.f3391q = eVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f3389o.a(this.f3390p, this.f3391q);
        }
    }

    /* JADX INFO: compiled from: FragmentTransition.java */
    class b implements Runnable {

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        final /* synthetic */ ArrayList f3392o;

        b(ArrayList arrayList) {
            this.f3392o = arrayList;
        }

        @Override // java.lang.Runnable
        public void run() {
            x.A(this.f3392o, 4);
        }
    }

    /* JADX INFO: compiled from: FragmentTransition.java */
    class c implements Runnable {

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        final /* synthetic */ g f3393o;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        final /* synthetic */ Fragment f3394p;

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        final /* synthetic */ androidx.core.os.e f3395q;

        c(g gVar, Fragment fragment, androidx.core.os.e eVar) {
            this.f3393o = gVar;
            this.f3394p = fragment;
            this.f3395q = eVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f3393o.a(this.f3394p, this.f3395q);
        }
    }

    /* JADX INFO: compiled from: FragmentTransition.java */
    class d implements Runnable {

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        final /* synthetic */ Object f3396o;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        final /* synthetic */ z f3397p;

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        final /* synthetic */ View f3398q;

        /* JADX INFO: renamed from: r, reason: collision with root package name */
        final /* synthetic */ Fragment f3399r;

        /* JADX INFO: renamed from: s, reason: collision with root package name */
        final /* synthetic */ ArrayList f3400s;

        /* JADX INFO: renamed from: t, reason: collision with root package name */
        final /* synthetic */ ArrayList f3401t;

        /* JADX INFO: renamed from: u, reason: collision with root package name */
        final /* synthetic */ ArrayList f3402u;

        /* JADX INFO: renamed from: v, reason: collision with root package name */
        final /* synthetic */ Object f3403v;

        d(Object obj, z zVar, View view, Fragment fragment, ArrayList arrayList, ArrayList arrayList2, ArrayList arrayList3, Object obj2) {
            this.f3396o = obj;
            this.f3397p = zVar;
            this.f3398q = view;
            this.f3399r = fragment;
            this.f3400s = arrayList;
            this.f3401t = arrayList2;
            this.f3402u = arrayList3;
            this.f3403v = obj2;
        }

        @Override // java.lang.Runnable
        public void run() {
            Object obj = this.f3396o;
            if (obj != null) {
                this.f3397p.p(obj, this.f3398q);
                this.f3401t.addAll(x.k(this.f3397p, this.f3396o, this.f3399r, this.f3400s, this.f3398q));
            }
            if (this.f3402u != null) {
                if (this.f3403v != null) {
                    ArrayList<View> arrayList = new ArrayList<>();
                    arrayList.add(this.f3398q);
                    this.f3397p.q(this.f3403v, this.f3402u, arrayList);
                }
                this.f3402u.clear();
                this.f3402u.add(this.f3398q);
            }
        }
    }

    /* JADX INFO: compiled from: FragmentTransition.java */
    class e implements Runnable {

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        final /* synthetic */ Fragment f3404o;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        final /* synthetic */ Fragment f3405p;

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        final /* synthetic */ boolean f3406q;

        /* JADX INFO: renamed from: r, reason: collision with root package name */
        final /* synthetic */ o.a f3407r;

        /* JADX INFO: renamed from: s, reason: collision with root package name */
        final /* synthetic */ View f3408s;

        /* JADX INFO: renamed from: t, reason: collision with root package name */
        final /* synthetic */ z f3409t;

        /* JADX INFO: renamed from: u, reason: collision with root package name */
        final /* synthetic */ Rect f3410u;

        e(Fragment fragment, Fragment fragment2, boolean z10, o.a aVar, View view, z zVar, Rect rect) {
            this.f3404o = fragment;
            this.f3405p = fragment2;
            this.f3406q = z10;
            this.f3407r = aVar;
            this.f3408s = view;
            this.f3409t = zVar;
            this.f3410u = rect;
        }

        @Override // java.lang.Runnable
        public void run() {
            x.f(this.f3404o, this.f3405p, this.f3406q, this.f3407r, false);
            View view = this.f3408s;
            if (view != null) {
                this.f3409t.k(view, this.f3410u);
            }
        }
    }

    /* JADX INFO: compiled from: FragmentTransition.java */
    class f implements Runnable {

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        final /* synthetic */ z f3411o;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        final /* synthetic */ o.a f3412p;

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        final /* synthetic */ Object f3413q;

        /* JADX INFO: renamed from: r, reason: collision with root package name */
        final /* synthetic */ h f3414r;

        /* JADX INFO: renamed from: s, reason: collision with root package name */
        final /* synthetic */ ArrayList f3415s;

        /* JADX INFO: renamed from: t, reason: collision with root package name */
        final /* synthetic */ View f3416t;

        /* JADX INFO: renamed from: u, reason: collision with root package name */
        final /* synthetic */ Fragment f3417u;

        /* JADX INFO: renamed from: v, reason: collision with root package name */
        final /* synthetic */ Fragment f3418v;

        /* JADX INFO: renamed from: w, reason: collision with root package name */
        final /* synthetic */ boolean f3419w;

        /* JADX INFO: renamed from: x, reason: collision with root package name */
        final /* synthetic */ ArrayList f3420x;

        /* JADX INFO: renamed from: y, reason: collision with root package name */
        final /* synthetic */ Object f3421y;

        /* JADX INFO: renamed from: z, reason: collision with root package name */
        final /* synthetic */ Rect f3422z;

        f(z zVar, o.a aVar, Object obj, h hVar, ArrayList arrayList, View view, Fragment fragment, Fragment fragment2, boolean z10, ArrayList arrayList2, Object obj2, Rect rect) {
            this.f3411o = zVar;
            this.f3412p = aVar;
            this.f3413q = obj;
            this.f3414r = hVar;
            this.f3415s = arrayList;
            this.f3416t = view;
            this.f3417u = fragment;
            this.f3418v = fragment2;
            this.f3419w = z10;
            this.f3420x = arrayList2;
            this.f3421y = obj2;
            this.f3422z = rect;
        }

        @Override // java.lang.Runnable
        public void run() {
            o.a<String, View> aVarH = x.h(this.f3411o, this.f3412p, this.f3413q, this.f3414r);
            if (aVarH != null) {
                this.f3415s.addAll(aVarH.values());
                this.f3415s.add(this.f3416t);
            }
            x.f(this.f3417u, this.f3418v, this.f3419w, aVarH, false);
            Object obj = this.f3413q;
            if (obj != null) {
                this.f3411o.A(obj, this.f3420x, this.f3415s);
                View viewS = x.s(aVarH, this.f3414r, this.f3421y, this.f3419w);
                if (viewS != null) {
                    this.f3411o.k(viewS, this.f3422z);
                }
            }
        }
    }

    /* JADX INFO: compiled from: FragmentTransition.java */
    interface g {
        void a(Fragment fragment, androidx.core.os.e eVar);

        void b(Fragment fragment, androidx.core.os.e eVar);
    }

    /* JADX INFO: compiled from: FragmentTransition.java */
    static class h {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public Fragment f3423a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public boolean f3424b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public androidx.fragment.app.a f3425c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public Fragment f3426d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public boolean f3427e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public androidx.fragment.app.a f3428f;

        h() {
        }
    }

    static {
        f3387b = Build.VERSION.SDK_INT >= 21 ? new y() : null;
        f3388c = w();
    }

    static void A(ArrayList<View> arrayList, int i10) {
        if (arrayList == null) {
            return;
        }
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            arrayList.get(size).setVisibility(i10);
        }
    }

    static void B(Context context, androidx.fragment.app.g gVar, ArrayList<androidx.fragment.app.a> arrayList, ArrayList<Boolean> arrayList2, int i10, int i11, boolean z10, g gVar2) {
        ViewGroup viewGroup;
        SparseArray sparseArray = new SparseArray();
        for (int i12 = i10; i12 < i11; i12++) {
            androidx.fragment.app.a aVar = arrayList.get(i12);
            if (arrayList2.get(i12).booleanValue()) {
                e(aVar, sparseArray, z10);
            } else {
                c(aVar, sparseArray, z10);
            }
        }
        if (sparseArray.size() != 0) {
            View view = new View(context);
            int size = sparseArray.size();
            for (int i13 = 0; i13 < size; i13++) {
                int iKeyAt = sparseArray.keyAt(i13);
                o.a<String, String> aVarD = d(iKeyAt, arrayList, arrayList2, i10, i11);
                h hVar = (h) sparseArray.valueAt(i13);
                if (gVar.d() && (viewGroup = (ViewGroup) gVar.c(iKeyAt)) != null) {
                    if (z10) {
                        o(viewGroup, hVar, view, aVarD, gVar2);
                    } else {
                        n(viewGroup, hVar, view, aVarD, gVar2);
                    }
                }
            }
        }
    }

    private static void a(ArrayList<View> arrayList, o.a<String, View> aVar, Collection<String> collection) {
        for (int size = aVar.size() - 1; size >= 0; size--) {
            View viewO = aVar.o(size);
            if (collection.contains(androidx.core.view.a0.M(viewO))) {
                arrayList.add(viewO);
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:56:0x006e  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x0070  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x0081  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x0084  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x008c  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x008e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private static void b(androidx.fragment.app.a r8, androidx.fragment.app.w.a r9, android.util.SparseArray<androidx.fragment.app.x.h> r10, boolean r11, boolean r12) {
        /*
            Method dump skipped, instruction units count: 228
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.fragment.app.x.b(androidx.fragment.app.a, androidx.fragment.app.w$a, android.util.SparseArray, boolean, boolean):void");
    }

    public static void c(androidx.fragment.app.a aVar, SparseArray<h> sparseArray, boolean z10) {
        int size = aVar.f3361c.size();
        for (int i10 = 0; i10 < size; i10++) {
            b(aVar, aVar.f3361c.get(i10), sparseArray, false, z10);
        }
    }

    private static o.a<String, String> d(int i10, ArrayList<androidx.fragment.app.a> arrayList, ArrayList<Boolean> arrayList2, int i11, int i12) {
        ArrayList<String> arrayList3;
        ArrayList<String> arrayList4;
        o.a<String, String> aVar = new o.a<>();
        for (int i13 = i12 - 1; i13 >= i11; i13--) {
            androidx.fragment.app.a aVar2 = arrayList.get(i13);
            if (aVar2.x(i10)) {
                boolean zBooleanValue = arrayList2.get(i13).booleanValue();
                ArrayList<String> arrayList5 = aVar2.f3374p;
                if (arrayList5 != null) {
                    int size = arrayList5.size();
                    if (zBooleanValue) {
                        arrayList3 = aVar2.f3374p;
                        arrayList4 = aVar2.f3375q;
                    } else {
                        ArrayList<String> arrayList6 = aVar2.f3374p;
                        arrayList3 = aVar2.f3375q;
                        arrayList4 = arrayList6;
                    }
                    for (int i14 = 0; i14 < size; i14++) {
                        String str = arrayList4.get(i14);
                        String str2 = arrayList3.get(i14);
                        String strRemove = aVar.remove(str2);
                        if (strRemove != null) {
                            aVar.put(str, strRemove);
                        } else {
                            aVar.put(str, str2);
                        }
                    }
                }
            }
        }
        return aVar;
    }

    public static void e(androidx.fragment.app.a aVar, SparseArray<h> sparseArray, boolean z10) {
        if (aVar.f3133t.o0().d()) {
            for (int size = aVar.f3361c.size() - 1; size >= 0; size--) {
                b(aVar, aVar.f3361c.get(size), sparseArray, true, z10);
            }
        }
    }

    static void f(Fragment fragment, Fragment fragment2, boolean z10, o.a<String, View> aVar, boolean z11) {
        if (z10) {
            fragment2.getEnterTransitionCallback();
        } else {
            fragment.getEnterTransitionCallback();
        }
    }

    private static boolean g(z zVar, List<Object> list) {
        int size = list.size();
        for (int i10 = 0; i10 < size; i10++) {
            if (!zVar.e(list.get(i10))) {
                return false;
            }
        }
        return true;
    }

    static o.a<String, View> h(z zVar, o.a<String, String> aVar, Object obj, h hVar) {
        ArrayList<String> arrayList;
        Fragment fragment = hVar.f3423a;
        View view = fragment.getView();
        if (aVar.isEmpty() || obj == null || view == null) {
            aVar.clear();
            return null;
        }
        o.a<String, View> aVar2 = new o.a<>();
        zVar.j(aVar2, view);
        androidx.fragment.app.a aVar3 = hVar.f3425c;
        if (hVar.f3424b) {
            fragment.getExitTransitionCallback();
            arrayList = aVar3.f3374p;
        } else {
            fragment.getEnterTransitionCallback();
            arrayList = aVar3.f3375q;
        }
        if (arrayList != null) {
            aVar2.q(arrayList);
            aVar2.q(aVar.values());
        }
        x(aVar, aVar2);
        return aVar2;
    }

    private static o.a<String, View> i(z zVar, o.a<String, String> aVar, Object obj, h hVar) {
        ArrayList<String> arrayList;
        if (aVar.isEmpty() || obj == null) {
            aVar.clear();
            return null;
        }
        Fragment fragment = hVar.f3426d;
        o.a<String, View> aVar2 = new o.a<>();
        zVar.j(aVar2, fragment.requireView());
        androidx.fragment.app.a aVar3 = hVar.f3428f;
        if (hVar.f3427e) {
            fragment.getEnterTransitionCallback();
            arrayList = aVar3.f3375q;
        } else {
            fragment.getExitTransitionCallback();
            arrayList = aVar3.f3374p;
        }
        if (arrayList != null) {
            aVar2.q(arrayList);
        }
        aVar.q(aVar2.keySet());
        return aVar2;
    }

    private static z j(Fragment fragment, Fragment fragment2) {
        ArrayList arrayList = new ArrayList();
        if (fragment != null) {
            Object exitTransition = fragment.getExitTransition();
            if (exitTransition != null) {
                arrayList.add(exitTransition);
            }
            Object returnTransition = fragment.getReturnTransition();
            if (returnTransition != null) {
                arrayList.add(returnTransition);
            }
            Object sharedElementReturnTransition = fragment.getSharedElementReturnTransition();
            if (sharedElementReturnTransition != null) {
                arrayList.add(sharedElementReturnTransition);
            }
        }
        if (fragment2 != null) {
            Object enterTransition = fragment2.getEnterTransition();
            if (enterTransition != null) {
                arrayList.add(enterTransition);
            }
            Object reenterTransition = fragment2.getReenterTransition();
            if (reenterTransition != null) {
                arrayList.add(reenterTransition);
            }
            Object sharedElementEnterTransition = fragment2.getSharedElementEnterTransition();
            if (sharedElementEnterTransition != null) {
                arrayList.add(sharedElementEnterTransition);
            }
        }
        if (arrayList.isEmpty()) {
            return null;
        }
        z zVar = f3387b;
        if (zVar != null && g(zVar, arrayList)) {
            return zVar;
        }
        z zVar2 = f3388c;
        if (zVar2 != null && g(zVar2, arrayList)) {
            return zVar2;
        }
        if (zVar == null && zVar2 == null) {
            return null;
        }
        throw new IllegalArgumentException("Invalid Transition types");
    }

    static ArrayList<View> k(z zVar, Object obj, Fragment fragment, ArrayList<View> arrayList, View view) {
        if (obj == null) {
            return null;
        }
        ArrayList<View> arrayList2 = new ArrayList<>();
        View view2 = fragment.getView();
        if (view2 != null) {
            zVar.f(arrayList2, view2);
        }
        if (arrayList != null) {
            arrayList2.removeAll(arrayList);
        }
        if (arrayList2.isEmpty()) {
            return arrayList2;
        }
        arrayList2.add(view);
        zVar.b(obj, arrayList2);
        return arrayList2;
    }

    private static Object l(z zVar, ViewGroup viewGroup, View view, o.a<String, String> aVar, h hVar, ArrayList<View> arrayList, ArrayList<View> arrayList2, Object obj, Object obj2) {
        Object objT;
        o.a<String, String> aVar2;
        Object obj3;
        Rect rect;
        Fragment fragment = hVar.f3423a;
        Fragment fragment2 = hVar.f3426d;
        if (fragment == null || fragment2 == null) {
            return null;
        }
        boolean z10 = hVar.f3424b;
        if (aVar.isEmpty()) {
            aVar2 = aVar;
            objT = null;
        } else {
            objT = t(zVar, fragment, fragment2, z10);
            aVar2 = aVar;
        }
        o.a<String, View> aVarI = i(zVar, aVar2, objT, hVar);
        if (aVar.isEmpty()) {
            obj3 = null;
        } else {
            arrayList.addAll(aVarI.values());
            obj3 = objT;
        }
        if (obj == null && obj2 == null && obj3 == null) {
            return null;
        }
        f(fragment, fragment2, z10, aVarI, true);
        if (obj3 != null) {
            rect = new Rect();
            zVar.z(obj3, view, arrayList);
            z(zVar, obj3, obj2, aVarI, hVar.f3427e, hVar.f3428f);
            if (obj != null) {
                zVar.u(obj, rect);
            }
        } else {
            rect = null;
        }
        androidx.core.view.x.a(viewGroup, new f(zVar, aVar, obj3, hVar, arrayList2, view, fragment, fragment2, z10, arrayList, obj, rect));
        return obj3;
    }

    private static Object m(z zVar, ViewGroup viewGroup, View view, o.a<String, String> aVar, h hVar, ArrayList<View> arrayList, ArrayList<View> arrayList2, Object obj, Object obj2) {
        Object obj3;
        View view2;
        Rect rect;
        Fragment fragment = hVar.f3423a;
        Fragment fragment2 = hVar.f3426d;
        if (fragment != null) {
            fragment.requireView().setVisibility(0);
        }
        if (fragment == null || fragment2 == null) {
            return null;
        }
        boolean z10 = hVar.f3424b;
        Object objT = aVar.isEmpty() ? null : t(zVar, fragment, fragment2, z10);
        o.a<String, View> aVarI = i(zVar, aVar, objT, hVar);
        o.a<String, View> aVarH = h(zVar, aVar, objT, hVar);
        if (aVar.isEmpty()) {
            if (aVarI != null) {
                aVarI.clear();
            }
            if (aVarH != null) {
                aVarH.clear();
            }
            obj3 = null;
        } else {
            a(arrayList, aVarI, aVar.keySet());
            a(arrayList2, aVarH, aVar.values());
            obj3 = objT;
        }
        if (obj == null && obj2 == null && obj3 == null) {
            return null;
        }
        f(fragment, fragment2, z10, aVarI, true);
        if (obj3 != null) {
            arrayList2.add(view);
            zVar.z(obj3, view, arrayList);
            z(zVar, obj3, obj2, aVarI, hVar.f3427e, hVar.f3428f);
            Rect rect2 = new Rect();
            View viewS = s(aVarH, hVar, obj, z10);
            if (viewS != null) {
                zVar.u(obj, rect2);
            }
            rect = rect2;
            view2 = viewS;
        } else {
            view2 = null;
            rect = null;
        }
        androidx.core.view.x.a(viewGroup, new e(fragment, fragment2, z10, aVarH, view2, zVar, rect));
        return obj3;
    }

    private static void n(ViewGroup viewGroup, h hVar, View view, o.a<String, String> aVar, g gVar) {
        Object obj;
        Fragment fragment = hVar.f3423a;
        Fragment fragment2 = hVar.f3426d;
        z zVarJ = j(fragment2, fragment);
        if (zVarJ == null) {
            return;
        }
        boolean z10 = hVar.f3424b;
        boolean z11 = hVar.f3427e;
        Object objQ = q(zVarJ, fragment, z10);
        Object objR = r(zVarJ, fragment2, z11);
        ArrayList arrayList = new ArrayList();
        ArrayList<View> arrayList2 = new ArrayList<>();
        Object objL = l(zVarJ, viewGroup, view, aVar, hVar, arrayList, arrayList2, objQ, objR);
        if (objQ == null && objL == null) {
            obj = objR;
            if (obj == null) {
                return;
            }
        } else {
            obj = objR;
        }
        ArrayList<View> arrayListK = k(zVarJ, obj, fragment2, arrayList, view);
        if (arrayListK == null || arrayListK.isEmpty()) {
            obj = null;
        }
        Object obj2 = obj;
        zVarJ.a(objQ, view);
        Object objU = u(zVarJ, objQ, obj2, objL, fragment, hVar.f3424b);
        if (fragment2 != null && arrayListK != null && (arrayListK.size() > 0 || arrayList.size() > 0)) {
            androidx.core.os.e eVar = new androidx.core.os.e();
            gVar.b(fragment2, eVar);
            zVarJ.w(fragment2, objU, eVar, new c(gVar, fragment2, eVar));
        }
        if (objU != null) {
            ArrayList<View> arrayList3 = new ArrayList<>();
            zVarJ.t(objU, objQ, arrayList3, obj2, arrayListK, objL, arrayList2);
            y(zVarJ, viewGroup, fragment, view, arrayList2, objQ, arrayList3, obj2, arrayListK);
            zVarJ.x(viewGroup, arrayList2, aVar);
            zVarJ.c(viewGroup, objU);
            zVarJ.s(viewGroup, arrayList2, aVar);
        }
    }

    private static void o(ViewGroup viewGroup, h hVar, View view, o.a<String, String> aVar, g gVar) {
        Object obj;
        Fragment fragment = hVar.f3423a;
        Fragment fragment2 = hVar.f3426d;
        z zVarJ = j(fragment2, fragment);
        if (zVarJ == null) {
            return;
        }
        boolean z10 = hVar.f3424b;
        boolean z11 = hVar.f3427e;
        ArrayList<View> arrayList = new ArrayList<>();
        ArrayList<View> arrayList2 = new ArrayList<>();
        Object objQ = q(zVarJ, fragment, z10);
        Object objR = r(zVarJ, fragment2, z11);
        Object objM = m(zVarJ, viewGroup, view, aVar, hVar, arrayList2, arrayList, objQ, objR);
        if (objQ == null && objM == null) {
            obj = objR;
            if (obj == null) {
                return;
            }
        } else {
            obj = objR;
        }
        ArrayList<View> arrayListK = k(zVarJ, obj, fragment2, arrayList2, view);
        ArrayList<View> arrayListK2 = k(zVarJ, objQ, fragment, arrayList, view);
        A(arrayListK2, 4);
        Object objU = u(zVarJ, objQ, obj, objM, fragment, z10);
        if (fragment2 != null && arrayListK != null && (arrayListK.size() > 0 || arrayList2.size() > 0)) {
            androidx.core.os.e eVar = new androidx.core.os.e();
            gVar.b(fragment2, eVar);
            zVarJ.w(fragment2, objU, eVar, new a(gVar, fragment2, eVar));
        }
        if (objU != null) {
            v(zVarJ, obj, fragment2, arrayListK);
            ArrayList<String> arrayListO = zVarJ.o(arrayList);
            zVarJ.t(objU, objQ, arrayListK2, obj, arrayListK, objM, arrayList);
            zVarJ.c(viewGroup, objU);
            zVarJ.y(viewGroup, arrayList2, arrayList, arrayListO, aVar);
            A(arrayListK2, 0);
            zVarJ.A(objM, arrayList2, arrayList);
        }
    }

    private static h p(h hVar, SparseArray<h> sparseArray, int i10) {
        if (hVar != null) {
            return hVar;
        }
        h hVar2 = new h();
        sparseArray.put(i10, hVar2);
        return hVar2;
    }

    private static Object q(z zVar, Fragment fragment, boolean z10) {
        if (fragment == null) {
            return null;
        }
        return zVar.g(z10 ? fragment.getReenterTransition() : fragment.getEnterTransition());
    }

    private static Object r(z zVar, Fragment fragment, boolean z10) {
        if (fragment == null) {
            return null;
        }
        return zVar.g(z10 ? fragment.getReturnTransition() : fragment.getExitTransition());
    }

    static View s(o.a<String, View> aVar, h hVar, Object obj, boolean z10) {
        ArrayList<String> arrayList;
        androidx.fragment.app.a aVar2 = hVar.f3425c;
        if (obj == null || aVar == null || (arrayList = aVar2.f3374p) == null || arrayList.isEmpty()) {
            return null;
        }
        return aVar.get(z10 ? aVar2.f3374p.get(0) : aVar2.f3375q.get(0));
    }

    private static Object t(z zVar, Fragment fragment, Fragment fragment2, boolean z10) {
        if (fragment == null || fragment2 == null) {
            return null;
        }
        return zVar.B(zVar.g(z10 ? fragment2.getSharedElementReturnTransition() : fragment.getSharedElementEnterTransition()));
    }

    private static Object u(z zVar, Object obj, Object obj2, Object obj3, Fragment fragment, boolean z10) {
        return (obj == null || obj2 == null || fragment == null) ? true : z10 ? fragment.getAllowReturnTransitionOverlap() : fragment.getAllowEnterTransitionOverlap() ? zVar.n(obj2, obj, obj3) : zVar.m(obj2, obj, obj3);
    }

    private static void v(z zVar, Object obj, Fragment fragment, ArrayList<View> arrayList) {
        if (fragment != null && obj != null && fragment.mAdded && fragment.mHidden && fragment.mHiddenChanged) {
            fragment.setHideReplaced(true);
            zVar.r(obj, fragment.getView(), arrayList);
            androidx.core.view.x.a(fragment.mContainer, new b(arrayList));
        }
    }

    private static z w() {
        try {
            return (z) g1.e.class.getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (Exception unused) {
            return null;
        }
    }

    static void x(o.a<String, String> aVar, o.a<String, View> aVar2) {
        for (int size = aVar.size() - 1; size >= 0; size--) {
            if (!aVar2.containsKey(aVar.o(size))) {
                aVar.m(size);
            }
        }
    }

    private static void y(z zVar, ViewGroup viewGroup, Fragment fragment, View view, ArrayList<View> arrayList, Object obj, ArrayList<View> arrayList2, Object obj2, ArrayList<View> arrayList3) {
        androidx.core.view.x.a(viewGroup, new d(obj, zVar, view, fragment, arrayList, arrayList2, arrayList3, obj2));
    }

    private static void z(z zVar, Object obj, Object obj2, o.a<String, View> aVar, boolean z10, androidx.fragment.app.a aVar2) {
        ArrayList<String> arrayList = aVar2.f3374p;
        if (arrayList == null || arrayList.isEmpty()) {
            return;
        }
        View view = aVar.get(z10 ? aVar2.f3375q.get(0) : aVar2.f3374p.get(0));
        zVar.v(obj, view);
        if (obj2 != null) {
            zVar.v(obj2, view);
        }
    }
}
