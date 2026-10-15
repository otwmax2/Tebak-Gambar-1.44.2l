package androidx.fragment.app;

import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import androidx.core.os.e;
import com.vungle.mediation.BuildConfig;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: compiled from: SpecialEffectsController.java */
/* JADX INFO: loaded from: classes.dex */
abstract class c0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ViewGroup f3197a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final ArrayList<e> f3198b = new ArrayList<>();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final ArrayList<e> f3199c = new ArrayList<>();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    boolean f3200d = false;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    boolean f3201e = false;

    /* JADX INFO: compiled from: SpecialEffectsController.java */
    class a implements Runnable {

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        final /* synthetic */ d f3202o;

        a(d dVar) {
            this.f3202o = dVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (c0.this.f3198b.contains(this.f3202o)) {
                this.f3202o.e().c(this.f3202o.f().mView);
            }
        }
    }

    /* JADX INFO: compiled from: SpecialEffectsController.java */
    class b implements Runnable {

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        final /* synthetic */ d f3204o;

        b(d dVar) {
            this.f3204o = dVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            c0.this.f3198b.remove(this.f3204o);
            c0.this.f3199c.remove(this.f3204o);
        }
    }

    /* JADX INFO: compiled from: SpecialEffectsController.java */
    static /* synthetic */ class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f3206a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        static final /* synthetic */ int[] f3207b;

        static {
            int[] iArr = new int[e.b.values().length];
            f3207b = iArr;
            try {
                iArr[e.b.ADDING.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f3207b[e.b.REMOVING.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f3207b[e.b.NONE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            int[] iArr2 = new int[e.c.values().length];
            f3206a = iArr2;
            try {
                iArr2[e.c.REMOVED.ordinal()] = 1;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f3206a[e.c.VISIBLE.ordinal()] = 2;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f3206a[e.c.GONE.ordinal()] = 3;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f3206a[e.c.INVISIBLE.ordinal()] = 4;
            } catch (NoSuchFieldError unused7) {
            }
        }
    }

    /* JADX INFO: compiled from: SpecialEffectsController.java */
    private static class d extends e {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private final u f3208h;

        d(e.c cVar, e.b bVar, u uVar, androidx.core.os.e eVar) {
            super(cVar, bVar, uVar.k(), eVar);
            this.f3208h = uVar;
        }

        @Override // androidx.fragment.app.c0.e
        public void c() {
            super.c();
            this.f3208h.m();
        }

        @Override // androidx.fragment.app.c0.e
        void l() {
            if (g() == e.b.ADDING) {
                Fragment fragmentK = this.f3208h.k();
                View viewFindFocus = fragmentK.mView.findFocus();
                if (viewFindFocus != null) {
                    fragmentK.setFocusedView(viewFindFocus);
                    if (n.F0(2)) {
                        Log.v("FragmentManager", "requestFocus: Saved focused view " + viewFindFocus + " for Fragment " + fragmentK);
                    }
                }
                View viewRequireView = f().requireView();
                if (viewRequireView.getParent() == null) {
                    this.f3208h.b();
                    viewRequireView.setAlpha(0.0f);
                }
                if (viewRequireView.getAlpha() == 0.0f && viewRequireView.getVisibility() == 0) {
                    viewRequireView.setVisibility(4);
                }
                viewRequireView.setAlpha(fragmentK.getPostOnViewCreatedAlpha());
            }
        }
    }

    /* JADX INFO: compiled from: SpecialEffectsController.java */
    static class e {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private c f3209a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private b f3210b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final Fragment f3211c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final List<Runnable> f3212d = new ArrayList();

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private final HashSet<androidx.core.os.e> f3213e = new HashSet<>();

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private boolean f3214f = false;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private boolean f3215g = false;

        /* JADX INFO: compiled from: SpecialEffectsController.java */
        class a implements e.b {
            a() {
            }

            @Override // androidx.core.os.e.b
            public void onCancel() {
                e.this.b();
            }
        }

        /* JADX INFO: compiled from: SpecialEffectsController.java */
        enum b {
            NONE,
            ADDING,
            REMOVING
        }

        /* JADX INFO: compiled from: SpecialEffectsController.java */
        enum c {
            REMOVED,
            VISIBLE,
            GONE,
            INVISIBLE;

            static c e(int i10) {
                if (i10 == 0) {
                    return VISIBLE;
                }
                if (i10 == 4) {
                    return INVISIBLE;
                }
                if (i10 == 8) {
                    return GONE;
                }
                throw new IllegalArgumentException("Unknown visibility " + i10);
            }

            static c f(View view) {
                return (view.getAlpha() == 0.0f && view.getVisibility() == 0) ? INVISIBLE : e(view.getVisibility());
            }

            void c(View view) {
                int i10 = c.f3206a[ordinal()];
                if (i10 == 1) {
                    ViewGroup viewGroup = (ViewGroup) view.getParent();
                    if (viewGroup != null) {
                        if (n.F0(2)) {
                            Log.v("FragmentManager", "SpecialEffectsController: Removing view " + view + " from container " + viewGroup);
                        }
                        viewGroup.removeView(view);
                        return;
                    }
                    return;
                }
                if (i10 == 2) {
                    if (n.F0(2)) {
                        Log.v("FragmentManager", "SpecialEffectsController: Setting view " + view + " to VISIBLE");
                    }
                    view.setVisibility(0);
                    return;
                }
                if (i10 == 3) {
                    if (n.F0(2)) {
                        Log.v("FragmentManager", "SpecialEffectsController: Setting view " + view + " to GONE");
                    }
                    view.setVisibility(8);
                    return;
                }
                if (i10 != 4) {
                    return;
                }
                if (n.F0(2)) {
                    Log.v("FragmentManager", "SpecialEffectsController: Setting view " + view + " to INVISIBLE");
                }
                view.setVisibility(4);
            }
        }

        e(c cVar, b bVar, Fragment fragment, androidx.core.os.e eVar) {
            this.f3209a = cVar;
            this.f3210b = bVar;
            this.f3211c = fragment;
            eVar.c(new a());
        }

        final void a(Runnable runnable) {
            this.f3212d.add(runnable);
        }

        final void b() {
            if (h()) {
                return;
            }
            this.f3214f = true;
            if (this.f3213e.isEmpty()) {
                c();
                return;
            }
            Iterator it = new ArrayList(this.f3213e).iterator();
            while (it.hasNext()) {
                ((androidx.core.os.e) it.next()).a();
            }
        }

        public void c() {
            if (this.f3215g) {
                return;
            }
            if (n.F0(2)) {
                Log.v("FragmentManager", "SpecialEffectsController: " + this + " has called complete.");
            }
            this.f3215g = true;
            Iterator<Runnable> it = this.f3212d.iterator();
            while (it.hasNext()) {
                it.next().run();
            }
        }

        public final void d(androidx.core.os.e eVar) {
            if (this.f3213e.remove(eVar) && this.f3213e.isEmpty()) {
                c();
            }
        }

        public c e() {
            return this.f3209a;
        }

        public final Fragment f() {
            return this.f3211c;
        }

        b g() {
            return this.f3210b;
        }

        final boolean h() {
            return this.f3214f;
        }

        final boolean i() {
            return this.f3215g;
        }

        public final void j(androidx.core.os.e eVar) {
            l();
            this.f3213e.add(eVar);
        }

        final void k(c cVar, b bVar) {
            int i10 = c.f3207b[bVar.ordinal()];
            if (i10 == 1) {
                if (this.f3209a == c.REMOVED) {
                    if (n.F0(2)) {
                        Log.v("FragmentManager", "SpecialEffectsController: For fragment " + this.f3211c + " mFinalState = REMOVED -> VISIBLE. mLifecycleImpact = " + this.f3210b + " to ADDING.");
                    }
                    this.f3209a = c.VISIBLE;
                    this.f3210b = b.ADDING;
                    return;
                }
                return;
            }
            if (i10 == 2) {
                if (n.F0(2)) {
                    Log.v("FragmentManager", "SpecialEffectsController: For fragment " + this.f3211c + " mFinalState = " + this.f3209a + " -> REMOVED. mLifecycleImpact  = " + this.f3210b + " to REMOVING.");
                }
                this.f3209a = c.REMOVED;
                this.f3210b = b.REMOVING;
                return;
            }
            if (i10 == 3 && this.f3209a != c.REMOVED) {
                if (n.F0(2)) {
                    Log.v("FragmentManager", "SpecialEffectsController: For fragment " + this.f3211c + " mFinalState = " + this.f3209a + " -> " + cVar + ". ");
                }
                this.f3209a = cVar;
            }
        }

        void l() {
        }

        public String toString() {
            return "Operation {" + Integer.toHexString(System.identityHashCode(this)) + "} {mFinalState = " + this.f3209a + "} {mLifecycleImpact = " + this.f3210b + "} {mFragment = " + this.f3211c + "}";
        }
    }

    c0(ViewGroup viewGroup) {
        this.f3197a = viewGroup;
    }

    private void a(e.c cVar, e.b bVar, u uVar) {
        synchronized (this.f3198b) {
            androidx.core.os.e eVar = new androidx.core.os.e();
            e eVarH = h(uVar.k());
            if (eVarH != null) {
                eVarH.k(cVar, bVar);
                return;
            }
            d dVar = new d(cVar, bVar, uVar, eVar);
            this.f3198b.add(dVar);
            dVar.a(new a(dVar));
            dVar.a(new b(dVar));
        }
    }

    private e h(Fragment fragment) {
        for (e eVar : this.f3198b) {
            if (eVar.f().equals(fragment) && !eVar.h()) {
                return eVar;
            }
        }
        return null;
    }

    private e i(Fragment fragment) {
        for (e eVar : this.f3199c) {
            if (eVar.f().equals(fragment) && !eVar.h()) {
                return eVar;
            }
        }
        return null;
    }

    static c0 n(ViewGroup viewGroup, n nVar) {
        return o(viewGroup, nVar.y0());
    }

    static c0 o(ViewGroup viewGroup, d0 d0Var) {
        int i10 = o0.b.f32868b;
        Object tag = viewGroup.getTag(i10);
        if (tag instanceof c0) {
            return (c0) tag;
        }
        c0 c0VarA = d0Var.a(viewGroup);
        viewGroup.setTag(i10, c0VarA);
        return c0VarA;
    }

    private void q() {
        for (e eVar : this.f3198b) {
            if (eVar.g() == e.b.ADDING) {
                eVar.k(e.c.e(eVar.f().requireView().getVisibility()), e.b.NONE);
            }
        }
    }

    void b(e.c cVar, u uVar) {
        if (n.F0(2)) {
            Log.v("FragmentManager", "SpecialEffectsController: Enqueuing add operation for fragment " + uVar.k());
        }
        a(cVar, e.b.ADDING, uVar);
    }

    void c(u uVar) {
        if (n.F0(2)) {
            Log.v("FragmentManager", "SpecialEffectsController: Enqueuing hide operation for fragment " + uVar.k());
        }
        a(e.c.GONE, e.b.NONE, uVar);
    }

    void d(u uVar) {
        if (n.F0(2)) {
            Log.v("FragmentManager", "SpecialEffectsController: Enqueuing remove operation for fragment " + uVar.k());
        }
        a(e.c.REMOVED, e.b.REMOVING, uVar);
    }

    void e(u uVar) {
        if (n.F0(2)) {
            Log.v("FragmentManager", "SpecialEffectsController: Enqueuing show operation for fragment " + uVar.k());
        }
        a(e.c.VISIBLE, e.b.NONE, uVar);
    }

    abstract void f(List<e> list, boolean z10);

    void g() {
        if (this.f3201e) {
            return;
        }
        if (!androidx.core.view.a0.T(this.f3197a)) {
            j();
            this.f3200d = false;
            return;
        }
        synchronized (this.f3198b) {
            if (!this.f3198b.isEmpty()) {
                ArrayList<e> arrayList = new ArrayList(this.f3199c);
                this.f3199c.clear();
                for (e eVar : arrayList) {
                    if (n.F0(2)) {
                        Log.v("FragmentManager", "SpecialEffectsController: Cancelling operation " + eVar);
                    }
                    eVar.b();
                    if (!eVar.i()) {
                        this.f3199c.add(eVar);
                    }
                }
                q();
                ArrayList arrayList2 = new ArrayList(this.f3198b);
                this.f3198b.clear();
                this.f3199c.addAll(arrayList2);
                Iterator it = arrayList2.iterator();
                while (it.hasNext()) {
                    ((e) it.next()).l();
                }
                f(arrayList2, this.f3200d);
                this.f3200d = false;
            }
        }
    }

    void j() {
        boolean zT = androidx.core.view.a0.T(this.f3197a);
        synchronized (this.f3198b) {
            q();
            Iterator<e> it = this.f3198b.iterator();
            while (it.hasNext()) {
                it.next().l();
            }
            for (e eVar : new ArrayList(this.f3199c)) {
                if (n.F0(2)) {
                    StringBuilder sb = new StringBuilder();
                    sb.append("SpecialEffectsController: ");
                    sb.append(zT ? BuildConfig.FLAVOR : "Container " + this.f3197a + " is not attached to window. ");
                    sb.append("Cancelling running operation ");
                    sb.append(eVar);
                    Log.v("FragmentManager", sb.toString());
                }
                eVar.b();
            }
            for (e eVar2 : new ArrayList(this.f3198b)) {
                if (n.F0(2)) {
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("SpecialEffectsController: ");
                    sb2.append(zT ? BuildConfig.FLAVOR : "Container " + this.f3197a + " is not attached to window. ");
                    sb2.append("Cancelling pending operation ");
                    sb2.append(eVar2);
                    Log.v("FragmentManager", sb2.toString());
                }
                eVar2.b();
            }
        }
    }

    void k() {
        if (this.f3201e) {
            this.f3201e = false;
            g();
        }
    }

    e.b l(u uVar) {
        e eVarH = h(uVar.k());
        e.b bVarG = eVarH != null ? eVarH.g() : null;
        e eVarI = i(uVar.k());
        return (eVarI == null || !(bVarG == null || bVarG == e.b.NONE)) ? bVarG : eVarI.g();
    }

    public ViewGroup m() {
        return this.f3197a;
    }

    void p() {
        synchronized (this.f3198b) {
            q();
            this.f3201e = false;
            int size = this.f3198b.size() - 1;
            while (true) {
                if (size < 0) {
                    break;
                }
                e eVar = this.f3198b.get(size);
                e.c cVarF = e.c.f(eVar.f().mView);
                e.c cVarE = eVar.e();
                e.c cVar = e.c.VISIBLE;
                if (cVarE == cVar && cVarF != cVar) {
                    this.f3201e = eVar.f().isPostponed();
                    break;
                }
                size--;
            }
        }
    }

    void r(boolean z10) {
        this.f3200d = z10;
    }
}
