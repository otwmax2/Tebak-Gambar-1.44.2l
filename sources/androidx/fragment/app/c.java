package androidx.fragment.app;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.content.Context;
import android.graphics.Rect;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import androidx.core.os.e;
import androidx.fragment.app.c0;
import androidx.fragment.app.f;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: compiled from: DefaultSpecialEffectsController.java */
/* JADX INFO: loaded from: classes.dex */
class c extends c0 {

    /* JADX INFO: compiled from: DefaultSpecialEffectsController.java */
    static /* synthetic */ class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f3155a;

        static {
            int[] iArr = new int[c0.e.c.values().length];
            f3155a = iArr;
            try {
                iArr[c0.e.c.GONE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f3155a[c0.e.c.INVISIBLE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f3155a[c0.e.c.REMOVED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f3155a[c0.e.c.VISIBLE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    /* JADX INFO: compiled from: DefaultSpecialEffectsController.java */
    class b implements Runnable {

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        final /* synthetic */ List f3156o;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        final /* synthetic */ c0.e f3157p;

        b(List list, c0.e eVar) {
            this.f3156o = list;
            this.f3157p = eVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.f3156o.contains(this.f3157p)) {
                this.f3156o.remove(this.f3157p);
                c.this.s(this.f3157p);
            }
        }
    }

    /* JADX INFO: renamed from: androidx.fragment.app.c$c, reason: collision with other inner class name */
    /* JADX INFO: compiled from: DefaultSpecialEffectsController.java */
    class C0051c extends AnimatorListenerAdapter {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ ViewGroup f3159a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ View f3160b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ boolean f3161c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ c0.e f3162d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ k f3163e;

        C0051c(ViewGroup viewGroup, View view, boolean z10, c0.e eVar, k kVar) {
            this.f3159a = viewGroup;
            this.f3160b = view;
            this.f3161c = z10;
            this.f3162d = eVar;
            this.f3163e = kVar;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            this.f3159a.endViewTransition(this.f3160b);
            if (this.f3161c) {
                this.f3162d.e().c(this.f3160b);
            }
            this.f3163e.a();
        }
    }

    /* JADX INFO: compiled from: DefaultSpecialEffectsController.java */
    class d implements e.b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Animator f3165a;

        d(Animator animator) {
            this.f3165a = animator;
        }

        @Override // androidx.core.os.e.b
        public void onCancel() {
            this.f3165a.end();
        }
    }

    /* JADX INFO: compiled from: DefaultSpecialEffectsController.java */
    class e implements Animation.AnimationListener {

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        final /* synthetic */ ViewGroup f3167o;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        final /* synthetic */ View f3168p;

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        final /* synthetic */ k f3169q;

        /* JADX INFO: compiled from: DefaultSpecialEffectsController.java */
        class a implements Runnable {
            a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                e eVar = e.this;
                eVar.f3167o.endViewTransition(eVar.f3168p);
                e.this.f3169q.a();
            }
        }

        e(ViewGroup viewGroup, View view, k kVar) {
            this.f3167o = viewGroup;
            this.f3168p = view;
            this.f3169q = kVar;
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationEnd(Animation animation) {
            this.f3167o.post(new a());
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationRepeat(Animation animation) {
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationStart(Animation animation) {
        }
    }

    /* JADX INFO: compiled from: DefaultSpecialEffectsController.java */
    class f implements e.b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ View f3172a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ ViewGroup f3173b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ k f3174c;

        f(View view, ViewGroup viewGroup, k kVar) {
            this.f3172a = view;
            this.f3173b = viewGroup;
            this.f3174c = kVar;
        }

        @Override // androidx.core.os.e.b
        public void onCancel() {
            this.f3172a.clearAnimation();
            this.f3173b.endViewTransition(this.f3172a);
            this.f3174c.a();
        }
    }

    /* JADX INFO: compiled from: DefaultSpecialEffectsController.java */
    class g implements Runnable {

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        final /* synthetic */ c0.e f3176o;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        final /* synthetic */ c0.e f3177p;

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        final /* synthetic */ boolean f3178q;

        /* JADX INFO: renamed from: r, reason: collision with root package name */
        final /* synthetic */ o.a f3179r;

        g(c0.e eVar, c0.e eVar2, boolean z10, o.a aVar) {
            this.f3176o = eVar;
            this.f3177p = eVar2;
            this.f3178q = z10;
            this.f3179r = aVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            x.f(this.f3176o.f(), this.f3177p.f(), this.f3178q, this.f3179r, false);
        }
    }

    /* JADX INFO: compiled from: DefaultSpecialEffectsController.java */
    class h implements Runnable {

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        final /* synthetic */ z f3181o;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        final /* synthetic */ View f3182p;

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        final /* synthetic */ Rect f3183q;

        h(z zVar, View view, Rect rect) {
            this.f3181o = zVar;
            this.f3182p = view;
            this.f3183q = rect;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f3181o.k(this.f3182p, this.f3183q);
        }
    }

    /* JADX INFO: compiled from: DefaultSpecialEffectsController.java */
    class i implements Runnable {

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        final /* synthetic */ ArrayList f3185o;

        i(ArrayList arrayList) {
            this.f3185o = arrayList;
        }

        @Override // java.lang.Runnable
        public void run() {
            x.A(this.f3185o, 4);
        }
    }

    /* JADX INFO: compiled from: DefaultSpecialEffectsController.java */
    class j implements Runnable {

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        final /* synthetic */ m f3187o;

        j(m mVar) {
            this.f3187o = mVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f3187o.a();
        }
    }

    /* JADX INFO: compiled from: DefaultSpecialEffectsController.java */
    private static class k extends l {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private boolean f3189c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private boolean f3190d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private f.d f3191e;

        k(c0.e eVar, androidx.core.os.e eVar2, boolean z10) {
            super(eVar, eVar2);
            this.f3190d = false;
            this.f3189c = z10;
        }

        f.d e(Context context) {
            if (this.f3190d) {
                return this.f3191e;
            }
            f.d dVarC = androidx.fragment.app.f.c(context, b().f(), b().e() == c0.e.c.VISIBLE, this.f3189c);
            this.f3191e = dVarC;
            this.f3190d = true;
            return dVarC;
        }
    }

    /* JADX INFO: compiled from: DefaultSpecialEffectsController.java */
    private static class l {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final c0.e f3192a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final androidx.core.os.e f3193b;

        l(c0.e eVar, androidx.core.os.e eVar2) {
            this.f3192a = eVar;
            this.f3193b = eVar2;
        }

        void a() {
            this.f3192a.d(this.f3193b);
        }

        c0.e b() {
            return this.f3192a;
        }

        androidx.core.os.e c() {
            return this.f3193b;
        }

        boolean d() {
            c0.e.c cVar;
            c0.e.c cVarF = c0.e.c.f(this.f3192a.f().mView);
            c0.e.c cVarE = this.f3192a.e();
            return cVarF == cVarE || !(cVarF == (cVar = c0.e.c.VISIBLE) || cVarE == cVar);
        }
    }

    /* JADX INFO: compiled from: DefaultSpecialEffectsController.java */
    private static class m extends l {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final Object f3194c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final boolean f3195d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private final Object f3196e;

        m(c0.e eVar, androidx.core.os.e eVar2, boolean z10, boolean z11) {
            super(eVar, eVar2);
            if (eVar.e() == c0.e.c.VISIBLE) {
                this.f3194c = z10 ? eVar.f().getReenterTransition() : eVar.f().getEnterTransition();
                this.f3195d = z10 ? eVar.f().getAllowReturnTransitionOverlap() : eVar.f().getAllowEnterTransitionOverlap();
            } else {
                this.f3194c = z10 ? eVar.f().getReturnTransition() : eVar.f().getExitTransition();
                this.f3195d = true;
            }
            if (!z11) {
                this.f3196e = null;
            } else if (z10) {
                this.f3196e = eVar.f().getSharedElementReturnTransition();
            } else {
                this.f3196e = eVar.f().getSharedElementEnterTransition();
            }
        }

        private z f(Object obj) {
            if (obj == null) {
                return null;
            }
            z zVar = x.f3387b;
            if (zVar != null && zVar.e(obj)) {
                return zVar;
            }
            z zVar2 = x.f3388c;
            if (zVar2 != null && zVar2.e(obj)) {
                return zVar2;
            }
            throw new IllegalArgumentException("Transition " + obj + " for fragment " + b().f() + " is not a valid framework Transition or AndroidX Transition");
        }

        z e() {
            z zVarF = f(this.f3194c);
            z zVarF2 = f(this.f3196e);
            if (zVarF == null || zVarF2 == null || zVarF == zVarF2) {
                return zVarF != null ? zVarF : zVarF2;
            }
            throw new IllegalArgumentException("Mixing framework transitions and AndroidX transitions is not allowed. Fragment " + b().f() + " returned Transition " + this.f3194c + " which uses a different Transition  type than its shared element transition " + this.f3196e);
        }

        public Object g() {
            return this.f3196e;
        }

        Object h() {
            return this.f3194c;
        }

        public boolean i() {
            return this.f3196e != null;
        }

        boolean j() {
            return this.f3195d;
        }
    }

    c(ViewGroup viewGroup) {
        super(viewGroup);
    }

    private void w(List<k> list, List<c0.e> list2, boolean z10, Map<c0.e, Boolean> map) {
        ViewGroup viewGroupM = m();
        Context context = viewGroupM.getContext();
        ArrayList<k> arrayList = new ArrayList();
        boolean z11 = false;
        for (k kVar : list) {
            if (kVar.d()) {
                kVar.a();
            } else {
                f.d dVarE = kVar.e(context);
                if (dVarE == null) {
                    kVar.a();
                } else {
                    Animator animator = dVarE.f3247b;
                    if (animator == null) {
                        arrayList.add(kVar);
                    } else {
                        c0.e eVarB = kVar.b();
                        Fragment fragmentF = eVarB.f();
                        if (Boolean.TRUE.equals(map.get(eVarB))) {
                            if (n.F0(2)) {
                                Log.v("FragmentManager", "Ignoring Animator set on " + fragmentF + " as this Fragment was involved in a Transition.");
                            }
                            kVar.a();
                        } else {
                            boolean z12 = eVarB.e() == c0.e.c.GONE;
                            if (z12) {
                                list2.remove(eVarB);
                            }
                            View view = fragmentF.mView;
                            viewGroupM.startViewTransition(view);
                            animator.addListener(new C0051c(viewGroupM, view, z12, eVarB, kVar));
                            animator.setTarget(view);
                            animator.start();
                            kVar.c().c(new d(animator));
                            z11 = true;
                        }
                    }
                }
            }
        }
        for (k kVar2 : arrayList) {
            c0.e eVarB2 = kVar2.b();
            Fragment fragmentF2 = eVarB2.f();
            if (z10) {
                if (n.F0(2)) {
                    Log.v("FragmentManager", "Ignoring Animation set on " + fragmentF2 + " as Animations cannot run alongside Transitions.");
                }
                kVar2.a();
            } else if (z11) {
                if (n.F0(2)) {
                    Log.v("FragmentManager", "Ignoring Animation set on " + fragmentF2 + " as Animations cannot run alongside Animators.");
                }
                kVar2.a();
            } else {
                View view2 = fragmentF2.mView;
                Animation animation = (Animation) androidx.core.util.h.f(((f.d) androidx.core.util.h.f(kVar2.e(context))).f3246a);
                if (eVarB2.e() != c0.e.c.REMOVED) {
                    view2.startAnimation(animation);
                    kVar2.a();
                } else {
                    viewGroupM.startViewTransition(view2);
                    f.e eVar = new f.e(animation, viewGroupM, view2);
                    eVar.setAnimationListener(new e(viewGroupM, view2, kVar2));
                    view2.startAnimation(eVar);
                }
                kVar2.c().c(new f(view2, viewGroupM, kVar2));
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private Map<c0.e, Boolean> x(List<m> list, List<c0.e> list2, boolean z10, c0.e eVar, c0.e eVar2) {
        View view;
        Object obj;
        ArrayList<View> arrayList;
        Object obj2;
        ArrayList<View> arrayList2;
        c0.e eVar3;
        c0.e eVar4;
        View view2;
        Object objN;
        o.a aVar;
        ArrayList<View> arrayList3;
        c0.e eVar5;
        ArrayList<View> arrayList4;
        Rect rect;
        View view3;
        z zVar;
        c0.e eVar6;
        View view4;
        boolean z11 = z10;
        c0.e eVar7 = eVar;
        c0.e eVar8 = eVar2;
        HashMap map = new HashMap();
        z zVar2 = null;
        for (m mVar : list) {
            if (!mVar.d()) {
                z zVarE = mVar.e();
                if (zVar2 == null) {
                    zVar2 = zVarE;
                } else if (zVarE != null && zVar2 != zVarE) {
                    throw new IllegalArgumentException("Mixing framework transitions and AndroidX transitions is not allowed. Fragment " + mVar.b().f() + " returned Transition " + mVar.h() + " which uses a different Transition  type than other Fragments.");
                }
            }
        }
        if (zVar2 == null) {
            for (m mVar2 : list) {
                map.put(mVar2.b(), Boolean.FALSE);
                mVar2.a();
            }
            return map;
        }
        View view5 = new View(m().getContext());
        Rect rect2 = new Rect();
        ArrayList<View> arrayList5 = new ArrayList<>();
        ArrayList<View> arrayList6 = new ArrayList<>();
        o.a aVar2 = new o.a();
        Object obj3 = null;
        View view6 = null;
        boolean z12 = false;
        for (m mVar3 : list) {
            if (!mVar3.i() || eVar7 == null || eVar8 == null) {
                aVar = aVar2;
                arrayList3 = arrayList6;
                eVar5 = eVar7;
                arrayList4 = arrayList5;
                rect = rect2;
                view3 = view5;
                zVar = zVar2;
                eVar6 = eVar8;
                view6 = view6;
            } else {
                Object objB = zVar2.B(zVar2.g(mVar3.g()));
                ArrayList<String> sharedElementSourceNames = eVar2.f().getSharedElementSourceNames();
                ArrayList<String> sharedElementSourceNames2 = eVar.f().getSharedElementSourceNames();
                ArrayList<String> sharedElementTargetNames = eVar.f().getSharedElementTargetNames();
                View view7 = view6;
                int i10 = 0;
                while (i10 < sharedElementTargetNames.size()) {
                    int iIndexOf = sharedElementSourceNames.indexOf(sharedElementTargetNames.get(i10));
                    ArrayList<String> arrayList7 = sharedElementTargetNames;
                    if (iIndexOf != -1) {
                        sharedElementSourceNames.set(iIndexOf, sharedElementSourceNames2.get(i10));
                    }
                    i10++;
                    sharedElementTargetNames = arrayList7;
                }
                ArrayList<String> sharedElementTargetNames2 = eVar2.f().getSharedElementTargetNames();
                if (z11) {
                    eVar.f().getEnterTransitionCallback();
                    eVar2.f().getExitTransitionCallback();
                } else {
                    eVar.f().getExitTransitionCallback();
                    eVar2.f().getEnterTransitionCallback();
                }
                int i11 = 0;
                for (int size = sharedElementSourceNames.size(); i11 < size; size = size) {
                    aVar2.put(sharedElementSourceNames.get(i11), sharedElementTargetNames2.get(i11));
                    i11++;
                }
                o.a<String, View> aVar3 = new o.a<>();
                u(aVar3, eVar.f().mView);
                aVar3.q(sharedElementSourceNames);
                aVar2.q(aVar3.keySet());
                o.a<String, View> aVar4 = new o.a<>();
                u(aVar4, eVar2.f().mView);
                aVar4.q(sharedElementTargetNames2);
                aVar4.q(aVar2.values());
                x.x(aVar2, aVar4);
                v(aVar3, aVar2.keySet());
                v(aVar4, aVar2.values());
                if (aVar2.isEmpty()) {
                    arrayList5.clear();
                    arrayList6.clear();
                    aVar = aVar2;
                    arrayList3 = arrayList6;
                    eVar5 = eVar7;
                    arrayList4 = arrayList5;
                    rect = rect2;
                    view3 = view5;
                    zVar = zVar2;
                    view6 = view7;
                    obj3 = null;
                    eVar6 = eVar8;
                } else {
                    x.f(eVar2.f(), eVar.f(), z11, aVar3, true);
                    aVar = aVar2;
                    ArrayList<View> arrayList8 = arrayList6;
                    androidx.core.view.x.a(m(), new g(eVar2, eVar, z10, aVar4));
                    arrayList5.addAll(aVar3.values());
                    if (sharedElementSourceNames.isEmpty()) {
                        view6 = view7;
                    } else {
                        View view8 = (View) aVar3.get(sharedElementSourceNames.get(0));
                        zVar2.v(objB, view8);
                        view6 = view8;
                    }
                    arrayList3 = arrayList8;
                    arrayList3.addAll(aVar4.values());
                    if (!sharedElementTargetNames2.isEmpty() && (view4 = (View) aVar4.get(sharedElementTargetNames2.get(0))) != null) {
                        androidx.core.view.x.a(m(), new h(zVar2, view4, rect2));
                        z12 = true;
                    }
                    zVar2.z(objB, view5, arrayList5);
                    arrayList4 = arrayList5;
                    rect = rect2;
                    view3 = view5;
                    zVar = zVar2;
                    zVar2.t(objB, null, null, null, null, objB, arrayList3);
                    Boolean bool = Boolean.TRUE;
                    eVar5 = eVar;
                    map.put(eVar5, bool);
                    eVar6 = eVar2;
                    map.put(eVar6, bool);
                    obj3 = objB;
                }
            }
            eVar7 = eVar5;
            arrayList5 = arrayList4;
            rect2 = rect;
            view5 = view3;
            eVar8 = eVar6;
            aVar2 = aVar;
            z11 = z10;
            arrayList6 = arrayList3;
            zVar2 = zVar;
        }
        View view9 = view6;
        o.a aVar5 = aVar2;
        ArrayList<View> arrayList9 = arrayList6;
        c0.e eVar9 = eVar7;
        ArrayList<View> arrayList10 = arrayList5;
        Rect rect3 = rect2;
        View view10 = view5;
        z zVar3 = zVar2;
        c0.e eVar10 = eVar8;
        ArrayList arrayList11 = new ArrayList();
        Object obj4 = null;
        Object objN2 = null;
        for (m mVar4 : list) {
            if (mVar4.d()) {
                map.put(mVar4.b(), Boolean.FALSE);
                mVar4.a();
            } else {
                Object objG = zVar3.g(mVar4.h());
                c0.e eVarB = mVar4.b();
                boolean z13 = obj3 != null && (eVarB == eVar9 || eVarB == eVar10);
                if (objG == null) {
                    if (!z13) {
                        map.put(eVarB, Boolean.FALSE);
                        mVar4.a();
                    }
                    arrayList2 = arrayList9;
                    arrayList = arrayList10;
                    view = view10;
                    objN = obj4;
                    eVar3 = eVar10;
                    view2 = view9;
                } else {
                    ArrayList<View> arrayList12 = new ArrayList<>();
                    Object obj5 = obj4;
                    t(arrayList12, eVarB.f().mView);
                    if (z13) {
                        if (eVarB == eVar9) {
                            arrayList12.removeAll(arrayList10);
                        } else {
                            arrayList12.removeAll(arrayList9);
                        }
                    }
                    if (arrayList12.isEmpty()) {
                        zVar3.a(objG, view10);
                        arrayList2 = arrayList9;
                        arrayList = arrayList10;
                        view = view10;
                        eVar4 = eVarB;
                        obj2 = objN2;
                        eVar3 = eVar10;
                        obj = obj5;
                    } else {
                        zVar3.b(objG, arrayList12);
                        view = view10;
                        obj = obj5;
                        arrayList = arrayList10;
                        obj2 = objN2;
                        arrayList2 = arrayList9;
                        eVar3 = eVar10;
                        zVar3.t(objG, objG, arrayList12, null, null, null, null);
                        if (eVarB.e() == c0.e.c.GONE) {
                            eVar4 = eVarB;
                            list2.remove(eVar4);
                            ArrayList<View> arrayList13 = new ArrayList<>(arrayList12);
                            arrayList13.remove(eVar4.f().mView);
                            zVar3.r(objG, eVar4.f().mView, arrayList13);
                            androidx.core.view.x.a(m(), new i(arrayList12));
                        } else {
                            eVar4 = eVarB;
                        }
                    }
                    if (eVar4.e() == c0.e.c.VISIBLE) {
                        arrayList11.addAll(arrayList12);
                        if (z12) {
                            zVar3.u(objG, rect3);
                        }
                        view2 = view9;
                    } else {
                        view2 = view9;
                        zVar3.v(objG, view2);
                    }
                    map.put(eVar4, Boolean.TRUE);
                    if (mVar4.j()) {
                        objN2 = zVar3.n(obj2, objG, null);
                        objN = obj;
                    } else {
                        objN = zVar3.n(obj, objG, null);
                        objN2 = obj2;
                    }
                }
                eVar10 = eVar3;
                obj4 = objN;
                view9 = view2;
                view10 = view;
                arrayList10 = arrayList;
                arrayList9 = arrayList2;
            }
        }
        ArrayList<View> arrayList14 = arrayList9;
        ArrayList<View> arrayList15 = arrayList10;
        c0.e eVar11 = eVar10;
        Object objM = zVar3.m(objN2, obj4, obj3);
        for (m mVar5 : list) {
            if (!mVar5.d()) {
                Object objH = mVar5.h();
                c0.e eVarB2 = mVar5.b();
                boolean z14 = obj3 != null && (eVarB2 == eVar9 || eVarB2 == eVar11);
                if (objH != null || z14) {
                    if (androidx.core.view.a0.U(m())) {
                        zVar3.w(mVar5.b().f(), objM, mVar5.c(), new j(mVar5));
                    } else {
                        if (n.F0(2)) {
                            Log.v("FragmentManager", "SpecialEffectsController: Container " + m() + " has not been laid out. Completing operation " + eVarB2);
                        }
                        mVar5.a();
                    }
                }
            }
        }
        if (!androidx.core.view.a0.U(m())) {
            return map;
        }
        x.A(arrayList11, 4);
        ArrayList<String> arrayListO = zVar3.o(arrayList14);
        zVar3.c(m(), objM);
        zVar3.y(m(), arrayList15, arrayList14, arrayListO, aVar5);
        x.A(arrayList11, 0);
        zVar3.A(obj3, arrayList15, arrayList14);
        return map;
    }

    /* JADX WARN: Removed duplicated region for block: B:29:0x0085  */
    @Override // androidx.fragment.app.c0
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    void f(java.util.List<androidx.fragment.app.c0.e> r11, boolean r12) {
        /*
            r10 = this;
            java.util.Iterator r0 = r11.iterator()
            r1 = 0
            r6 = r1
            r7 = r6
        L7:
            boolean r1 = r0.hasNext()
            r2 = 1
            if (r1 == 0) goto L44
            java.lang.Object r1 = r0.next()
            androidx.fragment.app.c0$e r1 = (androidx.fragment.app.c0.e) r1
            androidx.fragment.app.Fragment r3 = r1.f()
            android.view.View r3 = r3.mView
            androidx.fragment.app.c0$e$c r3 = androidx.fragment.app.c0.e.c.f(r3)
            int[] r4 = androidx.fragment.app.c.a.f3155a
            androidx.fragment.app.c0$e$c r5 = r1.e()
            int r5 = r5.ordinal()
            r4 = r4[r5]
            if (r4 == r2) goto L3c
            r2 = 2
            if (r4 == r2) goto L3c
            r2 = 3
            if (r4 == r2) goto L3c
            r2 = 4
            if (r4 == r2) goto L36
            goto L7
        L36:
            androidx.fragment.app.c0$e$c r2 = androidx.fragment.app.c0.e.c.VISIBLE
            if (r3 == r2) goto L7
            r7 = r1
            goto L7
        L3c:
            androidx.fragment.app.c0$e$c r2 = androidx.fragment.app.c0.e.c.VISIBLE
            if (r3 != r2) goto L7
            if (r6 != 0) goto L7
            r6 = r1
            goto L7
        L44:
            java.util.ArrayList r0 = new java.util.ArrayList
            r0.<init>()
            java.util.ArrayList r3 = new java.util.ArrayList
            r3.<init>()
            java.util.ArrayList r1 = new java.util.ArrayList
            r1.<init>(r11)
            java.util.Iterator r11 = r11.iterator()
        L57:
            boolean r4 = r11.hasNext()
            if (r4 == 0) goto L95
            java.lang.Object r4 = r11.next()
            androidx.fragment.app.c0$e r4 = (androidx.fragment.app.c0.e) r4
            androidx.core.os.e r5 = new androidx.core.os.e
            r5.<init>()
            r4.j(r5)
            androidx.fragment.app.c$k r8 = new androidx.fragment.app.c$k
            r8.<init>(r4, r5, r12)
            r0.add(r8)
            androidx.core.os.e r5 = new androidx.core.os.e
            r5.<init>()
            r4.j(r5)
            androidx.fragment.app.c$m r8 = new androidx.fragment.app.c$m
            r9 = 0
            if (r12 == 0) goto L83
            if (r4 != r6) goto L86
            goto L85
        L83:
            if (r4 != r7) goto L86
        L85:
            r9 = 1
        L86:
            r8.<init>(r4, r5, r12, r9)
            r3.add(r8)
            androidx.fragment.app.c$b r5 = new androidx.fragment.app.c$b
            r5.<init>(r1, r4)
            r4.a(r5)
            goto L57
        L95:
            r2 = r10
            r4 = r1
            r5 = r12
            java.util.Map r11 = r2.x(r3, r4, r5, r6, r7)
            java.lang.Boolean r12 = java.lang.Boolean.TRUE
            boolean r12 = r11.containsValue(r12)
            r10.w(r0, r1, r12, r11)
            java.util.Iterator r11 = r1.iterator()
        La9:
            boolean r12 = r11.hasNext()
            if (r12 == 0) goto Lb9
            java.lang.Object r12 = r11.next()
            androidx.fragment.app.c0$e r12 = (androidx.fragment.app.c0.e) r12
            r10.s(r12)
            goto La9
        Lb9:
            r1.clear()
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.fragment.app.c.f(java.util.List, boolean):void");
    }

    void s(c0.e eVar) {
        eVar.e().c(eVar.f().mView);
    }

    void t(ArrayList<View> arrayList, View view) {
        if (!(view instanceof ViewGroup)) {
            if (arrayList.contains(view)) {
                return;
            }
            arrayList.add(view);
            return;
        }
        ViewGroup viewGroup = (ViewGroup) view;
        if (androidx.core.view.d0.a(viewGroup)) {
            if (arrayList.contains(view)) {
                return;
            }
            arrayList.add(viewGroup);
            return;
        }
        int childCount = viewGroup.getChildCount();
        for (int i10 = 0; i10 < childCount; i10++) {
            View childAt = viewGroup.getChildAt(i10);
            if (childAt.getVisibility() == 0) {
                t(arrayList, childAt);
            }
        }
    }

    void u(Map<String, View> map, View view) {
        String strM = androidx.core.view.a0.M(view);
        if (strM != null) {
            map.put(strM, view);
        }
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            int childCount = viewGroup.getChildCount();
            for (int i10 = 0; i10 < childCount; i10++) {
                View childAt = viewGroup.getChildAt(i10);
                if (childAt.getVisibility() == 0) {
                    u(map, childAt);
                }
            }
        }
    }

    void v(o.a<String, View> aVar, Collection<String> collection) {
        Iterator<Map.Entry<String, View>> it = aVar.entrySet().iterator();
        while (it.hasNext()) {
            if (!collection.contains(androidx.core.view.a0.M(it.next().getValue()))) {
                it.remove();
            }
        }
    }
}
