package androidx.fragment.app;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.annotation.SuppressLint;
import android.content.Context;
import android.content.Intent;
import android.content.IntentSender;
import android.content.res.Configuration;
import android.os.Bundle;
import android.os.Looper;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import androidx.activity.OnBackPressedDispatcher;
import androidx.activity.result.ActivityResultRegistry;
import androidx.activity.result.e;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.f;
import androidx.fragment.app.w;
import androidx.fragment.app.x;
import androidx.lifecycle.j;
import androidx.lifecycle.l0;
import androidx.lifecycle.m0;
import com.facebook.internal.security.CertificateUtil;
import com.vungle.mediation.BuildConfig;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: compiled from: FragmentManager.java */
/* JADX INFO: loaded from: classes.dex */
public abstract class n {
    private static boolean O = false;
    static boolean P = true;
    private androidx.activity.result.c<androidx.activity.result.e> A;
    private androidx.activity.result.c<String[]> B;
    private boolean D;
    private boolean E;
    private boolean F;
    private boolean G;
    private boolean H;
    private ArrayList<androidx.fragment.app.a> I;
    private ArrayList<Boolean> J;
    private ArrayList<Fragment> K;
    private ArrayList<q> L;
    private androidx.fragment.app.q M;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean f3272b;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    ArrayList<androidx.fragment.app.a> f3274d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private ArrayList<Fragment> f3275e;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private OnBackPressedDispatcher f3277g;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private ArrayList<InterfaceC0053n> f3282l;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private androidx.fragment.app.k<?> f3288r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private androidx.fragment.app.g f3289s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private Fragment f3290t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    Fragment f3291u;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private androidx.activity.result.c<Intent> f3296z;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ArrayList<o> f3271a = new ArrayList<>();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final v f3273c = new v();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final androidx.fragment.app.l f3276f = new androidx.fragment.app.l(this);

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final androidx.activity.g f3278h = new c(false);

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final AtomicInteger f3279i = new AtomicInteger();

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final Map<String, Bundle> f3280j = Collections.synchronizedMap(new HashMap());

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final Map<String, Object> f3281k = Collections.synchronizedMap(new HashMap());

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private Map<Fragment, HashSet<androidx.core.os.e>> f3283m = Collections.synchronizedMap(new HashMap());

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private final x.g f3284n = new d();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final androidx.fragment.app.m f3285o = new androidx.fragment.app.m(this);

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final CopyOnWriteArrayList<r> f3286p = new CopyOnWriteArrayList<>();

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    int f3287q = -1;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private androidx.fragment.app.j f3292v = null;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private androidx.fragment.app.j f3293w = new e();

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private d0 f3294x = null;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private d0 f3295y = new f();
    ArrayDeque<m> C = new ArrayDeque<>();
    private Runnable N = new g();

    /* JADX INFO: compiled from: FragmentManager.java */
    class a implements androidx.activity.result.b<androidx.activity.result.a> {
        a() {
        }

        @Override // androidx.activity.result.b
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void a(androidx.activity.result.a aVar) {
            m mVarPollFirst = n.this.C.pollFirst();
            if (mVarPollFirst == null) {
                Log.w("FragmentManager", "No IntentSenders were started for " + this);
                return;
            }
            String str = mVarPollFirst.f3311o;
            int i10 = mVarPollFirst.f3312p;
            Fragment fragmentI = n.this.f3273c.i(str);
            if (fragmentI != null) {
                fragmentI.onActivityResult(i10, aVar.t(), aVar.h());
                return;
            }
            Log.w("FragmentManager", "Intent Sender result delivered for unknown Fragment " + str);
        }
    }

    /* JADX INFO: compiled from: FragmentManager.java */
    class b implements androidx.activity.result.b<Map<String, Boolean>> {
        b() {
        }

        @Override // androidx.activity.result.b
        @SuppressLint({"SyntheticAccessor"})
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void a(Map<String, Boolean> map) {
            String[] strArr = (String[]) map.keySet().toArray(new String[0]);
            ArrayList arrayList = new ArrayList(map.values());
            int[] iArr = new int[arrayList.size()];
            for (int i10 = 0; i10 < arrayList.size(); i10++) {
                iArr[i10] = ((Boolean) arrayList.get(i10)).booleanValue() ? 0 : -1;
            }
            m mVarPollFirst = n.this.C.pollFirst();
            if (mVarPollFirst == null) {
                Log.w("FragmentManager", "No permissions were requested for " + this);
                return;
            }
            String str = mVarPollFirst.f3311o;
            int i11 = mVarPollFirst.f3312p;
            Fragment fragmentI = n.this.f3273c.i(str);
            if (fragmentI != null) {
                fragmentI.onRequestPermissionsResult(i11, strArr, iArr);
                return;
            }
            Log.w("FragmentManager", "Permission request result delivered for unknown Fragment " + str);
        }
    }

    /* JADX INFO: compiled from: FragmentManager.java */
    class c extends androidx.activity.g {
        c(boolean z10) {
            super(z10);
        }

        @Override // androidx.activity.g
        public void b() {
            n.this.B0();
        }
    }

    /* JADX INFO: compiled from: FragmentManager.java */
    class d implements x.g {
        d() {
        }

        @Override // androidx.fragment.app.x.g
        public void a(Fragment fragment, androidx.core.os.e eVar) {
            if (eVar.b()) {
                return;
            }
            n.this.b1(fragment, eVar);
        }

        @Override // androidx.fragment.app.x.g
        public void b(Fragment fragment, androidx.core.os.e eVar) {
            n.this.f(fragment, eVar);
        }
    }

    /* JADX INFO: compiled from: FragmentManager.java */
    class e extends androidx.fragment.app.j {
        e() {
        }

        @Override // androidx.fragment.app.j
        public Fragment a(ClassLoader classLoader, String str) {
            return n.this.t0().b(n.this.t0().f(), str, null);
        }
    }

    /* JADX INFO: compiled from: FragmentManager.java */
    class f implements d0 {
        f() {
        }

        @Override // androidx.fragment.app.d0
        public c0 a(ViewGroup viewGroup) {
            return new androidx.fragment.app.c(viewGroup);
        }
    }

    /* JADX INFO: compiled from: FragmentManager.java */
    class g implements Runnable {
        g() {
        }

        @Override // java.lang.Runnable
        public void run() {
            n.this.b0(true);
        }
    }

    /* JADX INFO: compiled from: FragmentManager.java */
    class h extends AnimatorListenerAdapter {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ ViewGroup f3304a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ View f3305b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ Fragment f3306c;

        h(ViewGroup viewGroup, View view, Fragment fragment) {
            this.f3304a = viewGroup;
            this.f3305b = view;
            this.f3306c = fragment;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            this.f3304a.endViewTransition(this.f3305b);
            animator.removeListener(this);
            Fragment fragment = this.f3306c;
            View view = fragment.mView;
            if (view == null || !fragment.mHidden) {
                return;
            }
            view.setVisibility(8);
        }
    }

    /* JADX INFO: compiled from: FragmentManager.java */
    class i implements r {

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        final /* synthetic */ Fragment f3308o;

        i(Fragment fragment) {
            this.f3308o = fragment;
        }

        @Override // androidx.fragment.app.r
        public void a(n nVar, Fragment fragment) {
            this.f3308o.onAttachFragment(fragment);
        }
    }

    /* JADX INFO: compiled from: FragmentManager.java */
    class j implements androidx.activity.result.b<androidx.activity.result.a> {
        j() {
        }

        @Override // androidx.activity.result.b
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void a(androidx.activity.result.a aVar) {
            m mVarPollFirst = n.this.C.pollFirst();
            if (mVarPollFirst == null) {
                Log.w("FragmentManager", "No Activities were started for result for " + this);
                return;
            }
            String str = mVarPollFirst.f3311o;
            int i10 = mVarPollFirst.f3312p;
            Fragment fragmentI = n.this.f3273c.i(str);
            if (fragmentI != null) {
                fragmentI.onActivityResult(i10, aVar.t(), aVar.h());
                return;
            }
            Log.w("FragmentManager", "Activity result delivered for unknown Fragment " + str);
        }
    }

    /* JADX INFO: compiled from: FragmentManager.java */
    static class k extends e.a<androidx.activity.result.e, androidx.activity.result.a> {
        k() {
        }

        @Override // e.a
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Intent createIntent(Context context, androidx.activity.result.e eVar) {
            Bundle bundleExtra;
            Intent intent = new Intent("androidx.activity.result.contract.action.INTENT_SENDER_REQUEST");
            Intent intentH = eVar.h();
            if (intentH != null && (bundleExtra = intentH.getBundleExtra("androidx.activity.result.contract.extra.ACTIVITY_OPTIONS_BUNDLE")) != null) {
                intent.putExtra("androidx.activity.result.contract.extra.ACTIVITY_OPTIONS_BUNDLE", bundleExtra);
                intentH.removeExtra("androidx.activity.result.contract.extra.ACTIVITY_OPTIONS_BUNDLE");
                if (intentH.getBooleanExtra("androidx.fragment.extra.ACTIVITY_OPTIONS_BUNDLE", false)) {
                    eVar = new e.b(eVar.w()).b(null).c(eVar.v(), eVar.t()).a();
                }
            }
            intent.putExtra("androidx.activity.result.contract.extra.INTENT_SENDER_REQUEST", eVar);
            if (n.F0(2)) {
                Log.v("FragmentManager", "CreateIntent created the following intent: " + intent);
            }
            return intent;
        }

        @Override // e.a
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public androidx.activity.result.a parseResult(int i10, Intent intent) {
            return new androidx.activity.result.a(i10, intent);
        }
    }

    /* JADX INFO: compiled from: FragmentManager.java */
    public static abstract class l {
    }

    /* JADX INFO: renamed from: androidx.fragment.app.n$n, reason: collision with other inner class name */
    /* JADX INFO: compiled from: FragmentManager.java */
    public interface InterfaceC0053n {
        void a();
    }

    /* JADX INFO: compiled from: FragmentManager.java */
    interface o {
        boolean a(ArrayList<androidx.fragment.app.a> arrayList, ArrayList<Boolean> arrayList2);
    }

    /* JADX INFO: compiled from: FragmentManager.java */
    private class p implements o {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final String f3313a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final int f3314b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final int f3315c;

        p(String str, int i10, int i11) {
            this.f3313a = str;
            this.f3314b = i10;
            this.f3315c = i11;
        }

        @Override // androidx.fragment.app.n.o
        public boolean a(ArrayList<androidx.fragment.app.a> arrayList, ArrayList<Boolean> arrayList2) {
            Fragment fragment = n.this.f3291u;
            if (fragment == null || this.f3314b >= 0 || this.f3313a != null || !fragment.getChildFragmentManager().X0()) {
                return n.this.Z0(arrayList, arrayList2, this.f3313a, this.f3314b, this.f3315c);
            }
            return false;
        }
    }

    /* JADX INFO: compiled from: FragmentManager.java */
    static class q implements Fragment.l {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final boolean f3317a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final androidx.fragment.app.a f3318b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private int f3319c;

        q(androidx.fragment.app.a aVar, boolean z10) {
            this.f3317a = z10;
            this.f3318b = aVar;
        }

        @Override // androidx.fragment.app.Fragment.l
        public void a() {
            this.f3319c++;
        }

        @Override // androidx.fragment.app.Fragment.l
        public void b() {
            int i10 = this.f3319c - 1;
            this.f3319c = i10;
            if (i10 != 0) {
                return;
            }
            this.f3318b.f3133t.j1();
        }

        void c() {
            androidx.fragment.app.a aVar = this.f3318b;
            aVar.f3133t.u(aVar, this.f3317a, false, false);
        }

        void d() {
            boolean z10 = this.f3319c > 0;
            for (Fragment fragment : this.f3318b.f3133t.s0()) {
                fragment.setOnStartEnterTransitionListener(null);
                if (z10 && fragment.isPostponed()) {
                    fragment.startPostponedEnterTransition();
                }
            }
            androidx.fragment.app.a aVar = this.f3318b;
            aVar.f3133t.u(aVar, this.f3317a, !z10, true);
        }

        public boolean e() {
            return this.f3319c == 0;
        }
    }

    static boolean F0(int i10) {
        return O || Log.isLoggable("FragmentManager", i10);
    }

    private boolean G0(Fragment fragment) {
        return (fragment.mHasMenu && fragment.mMenuVisible) || fragment.mChildFragmentManager.o();
    }

    private void M(Fragment fragment) {
        if (fragment == null || !fragment.equals(g0(fragment.mWho))) {
            return;
        }
        fragment.performPrimaryNavigationFragmentChanged();
    }

    private void O0(o.b<Fragment> bVar) {
        int size = bVar.size();
        for (int i10 = 0; i10 < size; i10++) {
            Fragment fragmentN = bVar.n(i10);
            if (!fragmentN.mAdded) {
                View viewRequireView = fragmentN.requireView();
                fragmentN.mPostponedAlpha = viewRequireView.getAlpha();
                viewRequireView.setAlpha(0.0f);
            }
        }
    }

    private void T(int i10) {
        try {
            this.f3272b = true;
            this.f3273c.d(i10);
            Q0(i10, false);
            if (P) {
                Iterator<c0> it = s().iterator();
                while (it.hasNext()) {
                    it.next().j();
                }
            }
            this.f3272b = false;
            b0(true);
        } catch (Throwable th) {
            this.f3272b = false;
            throw th;
        }
    }

    private void W() {
        if (this.H) {
            this.H = false;
            p1();
        }
    }

    private void Y() {
        if (P) {
            Iterator<c0> it = s().iterator();
            while (it.hasNext()) {
                it.next().j();
            }
        } else {
            if (this.f3283m.isEmpty()) {
                return;
            }
            for (Fragment fragment : this.f3283m.keySet()) {
                n(fragment);
                R0(fragment);
            }
        }
    }

    private boolean Y0(String str, int i10, int i11) {
        b0(false);
        a0(true);
        Fragment fragment = this.f3291u;
        if (fragment != null && i10 < 0 && str == null && fragment.getChildFragmentManager().X0()) {
            return true;
        }
        boolean zZ0 = Z0(this.I, this.J, str, i10, i11);
        if (zZ0) {
            this.f3272b = true;
            try {
                d1(this.I, this.J);
            } finally {
                q();
            }
        }
        q1();
        W();
        this.f3273c.b();
        return zZ0;
    }

    private void a0(boolean z10) {
        if (this.f3272b) {
            throw new IllegalStateException("FragmentManager is already executing transactions");
        }
        if (this.f3288r == null) {
            if (!this.G) {
                throw new IllegalStateException("FragmentManager has not been attached to a host.");
            }
            throw new IllegalStateException("FragmentManager has been destroyed");
        }
        if (Looper.myLooper() != this.f3288r.g().getLooper()) {
            throw new IllegalStateException("Must be called from main thread of fragment host");
        }
        if (!z10) {
            p();
        }
        if (this.I == null) {
            this.I = new ArrayList<>();
            this.J = new ArrayList<>();
        }
        this.f3272b = true;
        try {
            f0(null, null);
        } finally {
            this.f3272b = false;
        }
    }

    private int a1(ArrayList<androidx.fragment.app.a> arrayList, ArrayList<Boolean> arrayList2, int i10, int i11, o.b<Fragment> bVar) {
        int i12 = i11;
        for (int i13 = i11 - 1; i13 >= i10; i13--) {
            androidx.fragment.app.a aVar = arrayList.get(i13);
            boolean zBooleanValue = arrayList2.get(i13).booleanValue();
            if (aVar.A() && !aVar.y(arrayList, i13 + 1, i11)) {
                if (this.L == null) {
                    this.L = new ArrayList<>();
                }
                q qVar = new q(aVar, zBooleanValue);
                this.L.add(qVar);
                aVar.C(qVar);
                if (zBooleanValue) {
                    aVar.t();
                } else {
                    aVar.u(false);
                }
                i12--;
                if (i13 != i12) {
                    arrayList.remove(i13);
                    arrayList.add(i12, aVar);
                }
                d(bVar);
            }
        }
        return i12;
    }

    private void d(o.b<Fragment> bVar) {
        int i10 = this.f3287q;
        if (i10 < 1) {
            return;
        }
        int iMin = Math.min(i10, 5);
        for (Fragment fragment : this.f3273c.n()) {
            if (fragment.mState < iMin) {
                S0(fragment, iMin);
                if (fragment.mView != null && !fragment.mHidden && fragment.mIsNewlyAdded) {
                    bVar.add(fragment);
                }
            }
        }
    }

    private static void d0(ArrayList<androidx.fragment.app.a> arrayList, ArrayList<Boolean> arrayList2, int i10, int i11) {
        while (i10 < i11) {
            androidx.fragment.app.a aVar = arrayList.get(i10);
            if (arrayList2.get(i10).booleanValue()) {
                aVar.p(-1);
                aVar.u(i10 == i11 + (-1));
            } else {
                aVar.p(1);
                aVar.t();
            }
            i10++;
        }
    }

    private void d1(ArrayList<androidx.fragment.app.a> arrayList, ArrayList<Boolean> arrayList2) {
        if (arrayList.isEmpty()) {
            return;
        }
        if (arrayList.size() != arrayList2.size()) {
            throw new IllegalStateException("Internal error with the back stack records");
        }
        f0(arrayList, arrayList2);
        int size = arrayList.size();
        int i10 = 0;
        int i11 = 0;
        while (i10 < size) {
            if (!arrayList.get(i10).f3376r) {
                if (i11 != i10) {
                    e0(arrayList, arrayList2, i11, i10);
                }
                i11 = i10 + 1;
                if (arrayList2.get(i10).booleanValue()) {
                    while (i11 < size && arrayList2.get(i11).booleanValue() && !arrayList.get(i11).f3376r) {
                        i11++;
                    }
                }
                e0(arrayList, arrayList2, i10, i11);
                i10 = i11 - 1;
            }
            i10++;
        }
        if (i11 != size) {
            e0(arrayList, arrayList2, i11, size);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v17 */
    /* JADX WARN: Type inference failed for: r1v3 */
    /* JADX WARN: Type inference failed for: r1v4, types: [boolean, int] */
    private void e0(ArrayList<androidx.fragment.app.a> arrayList, ArrayList<Boolean> arrayList2, int i10, int i11) {
        ?? r12;
        boolean z10;
        int i12;
        int i13;
        ArrayList<Boolean> arrayList3;
        int i14;
        int iA1;
        ArrayList<Boolean> arrayList4;
        int i15;
        boolean z11;
        boolean z12 = arrayList.get(i10).f3376r;
        ArrayList<Fragment> arrayList5 = this.K;
        if (arrayList5 == null) {
            this.K = new ArrayList<>();
        } else {
            arrayList5.clear();
        }
        this.K.addAll(this.f3273c.n());
        Fragment fragmentX0 = x0();
        boolean z13 = false;
        for (int i16 = i10; i16 < i11; i16++) {
            androidx.fragment.app.a aVar = arrayList.get(i16);
            fragmentX0 = !arrayList2.get(i16).booleanValue() ? aVar.v(this.K, fragmentX0) : aVar.D(this.K, fragmentX0);
            z13 = z13 || aVar.f3367i;
        }
        this.K.clear();
        if (z12 || this.f3287q < 1) {
            r12 = 1;
        } else if (P) {
            for (int i17 = i10; i17 < i11; i17++) {
                Iterator<w.a> it = arrayList.get(i17).f3361c.iterator();
                while (it.hasNext()) {
                    Fragment fragment = it.next().f3379b;
                    if (fragment != null && fragment.mFragmentManager != null) {
                        this.f3273c.p(w(fragment));
                    }
                }
            }
            r12 = 1;
        } else {
            r12 = 1;
            x.B(this.f3288r.f(), this.f3289s, arrayList, arrayList2, i10, i11, false, this.f3284n);
        }
        d0(arrayList, arrayList2, i10, i11);
        if (P) {
            boolean zBooleanValue = arrayList2.get(i11 - 1).booleanValue();
            for (int i18 = i10; i18 < i11; i18++) {
                androidx.fragment.app.a aVar2 = arrayList.get(i18);
                if (zBooleanValue) {
                    for (int size = aVar2.f3361c.size() - r12; size >= 0; size--) {
                        Fragment fragment2 = aVar2.f3361c.get(size).f3379b;
                        if (fragment2 != null) {
                            w(fragment2).m();
                        }
                    }
                } else {
                    Iterator<w.a> it2 = aVar2.f3361c.iterator();
                    while (it2.hasNext()) {
                        Fragment fragment3 = it2.next().f3379b;
                        if (fragment3 != null) {
                            w(fragment3).m();
                        }
                    }
                }
            }
            Q0(this.f3287q, r12);
            for (c0 c0Var : t(arrayList, i10, i11)) {
                c0Var.r(zBooleanValue);
                c0Var.p();
                c0Var.g();
            }
            i15 = i11;
            arrayList4 = arrayList2;
        } else {
            if (z12) {
                o.b bVar = new o.b();
                d(bVar);
                i14 = 1;
                z10 = z12;
                i12 = i11;
                i13 = i10;
                arrayList3 = arrayList2;
                iA1 = a1(arrayList, arrayList2, i10, i11, bVar);
                O0(bVar);
            } else {
                z10 = z12;
                i12 = i11;
                i13 = i10;
                arrayList3 = arrayList2;
                i14 = 1;
                iA1 = i12;
            }
            if (iA1 == i13 || !z10) {
                arrayList4 = arrayList3;
                i15 = i12;
            } else {
                if (this.f3287q >= i14) {
                    arrayList4 = arrayList3;
                    int i19 = iA1;
                    i15 = i12;
                    z11 = true;
                    x.B(this.f3288r.f(), this.f3289s, arrayList, arrayList2, i10, i19, true, this.f3284n);
                } else {
                    arrayList4 = arrayList3;
                    i15 = i12;
                    z11 = true;
                }
                Q0(this.f3287q, z11);
            }
        }
        for (int i20 = i10; i20 < i15; i20++) {
            androidx.fragment.app.a aVar3 = arrayList.get(i20);
            if (arrayList4.get(i20).booleanValue() && aVar3.f3135v >= 0) {
                aVar3.f3135v = -1;
            }
            aVar3.B();
        }
        if (z13) {
            f1();
        }
    }

    private void f0(ArrayList<androidx.fragment.app.a> arrayList, ArrayList<Boolean> arrayList2) {
        int iIndexOf;
        int iIndexOf2;
        ArrayList<q> arrayList3 = this.L;
        int size = arrayList3 == null ? 0 : arrayList3.size();
        int i10 = 0;
        while (i10 < size) {
            q qVar = this.L.get(i10);
            if (arrayList != null && !qVar.f3317a && (iIndexOf2 = arrayList.indexOf(qVar.f3318b)) != -1 && arrayList2 != null && arrayList2.get(iIndexOf2).booleanValue()) {
                this.L.remove(i10);
                i10--;
                size--;
                qVar.c();
            } else if (qVar.e() || (arrayList != null && qVar.f3318b.y(arrayList, 0, arrayList.size()))) {
                this.L.remove(i10);
                i10--;
                size--;
                if (arrayList == null || qVar.f3317a || (iIndexOf = arrayList.indexOf(qVar.f3318b)) == -1 || arrayList2 == null || !arrayList2.get(iIndexOf).booleanValue()) {
                    qVar.d();
                } else {
                    qVar.c();
                }
            }
            i10++;
        }
    }

    private void f1() {
        if (this.f3282l != null) {
            for (int i10 = 0; i10 < this.f3282l.size(); i10++) {
                this.f3282l.get(i10).a();
            }
        }
    }

    static int h1(int i10) {
        if (i10 == 4097) {
            return 8194;
        }
        if (i10 != 4099) {
            return i10 != 8194 ? 0 : 4097;
        }
        return 4099;
    }

    private void k0() {
        if (P) {
            Iterator<c0> it = s().iterator();
            while (it.hasNext()) {
                it.next().k();
            }
        } else if (this.L != null) {
            while (!this.L.isEmpty()) {
                this.L.remove(0).d();
            }
        }
    }

    private boolean l0(ArrayList<androidx.fragment.app.a> arrayList, ArrayList<Boolean> arrayList2) {
        synchronized (this.f3271a) {
            if (this.f3271a.isEmpty()) {
                return false;
            }
            int size = this.f3271a.size();
            boolean zA = false;
            for (int i10 = 0; i10 < size; i10++) {
                zA |= this.f3271a.get(i10).a(arrayList, arrayList2);
            }
            this.f3271a.clear();
            this.f3288r.g().removeCallbacks(this.N);
            return zA;
        }
    }

    private void n(Fragment fragment) {
        HashSet<androidx.core.os.e> hashSet = this.f3283m.get(fragment);
        if (hashSet != null) {
            Iterator<androidx.core.os.e> it = hashSet.iterator();
            while (it.hasNext()) {
                it.next().a();
            }
            hashSet.clear();
            x(fragment);
            this.f3283m.remove(fragment);
        }
    }

    private androidx.fragment.app.q n0(Fragment fragment) {
        return this.M.m(fragment);
    }

    private void n1(Fragment fragment) {
        ViewGroup viewGroupP0 = p0(fragment);
        if (viewGroupP0 == null || fragment.getEnterAnim() + fragment.getExitAnim() + fragment.getPopEnterAnim() + fragment.getPopExitAnim() <= 0) {
            return;
        }
        int i10 = o0.b.f32869c;
        if (viewGroupP0.getTag(i10) == null) {
            viewGroupP0.setTag(i10, fragment);
        }
        ((Fragment) viewGroupP0.getTag(i10)).setPopDirection(fragment.getPopDirection());
    }

    private void p() {
        if (K0()) {
            throw new IllegalStateException("Can not perform this action after onSaveInstanceState");
        }
    }

    private ViewGroup p0(Fragment fragment) {
        ViewGroup viewGroup = fragment.mContainer;
        if (viewGroup != null) {
            return viewGroup;
        }
        if (fragment.mContainerId > 0 && this.f3289s.d()) {
            View viewC = this.f3289s.c(fragment.mContainerId);
            if (viewC instanceof ViewGroup) {
                return (ViewGroup) viewC;
            }
        }
        return null;
    }

    private void p1() {
        Iterator<u> it = this.f3273c.k().iterator();
        while (it.hasNext()) {
            V0(it.next());
        }
    }

    private void q() {
        this.f3272b = false;
        this.J.clear();
        this.I.clear();
    }

    private void q1() {
        synchronized (this.f3271a) {
            if (this.f3271a.isEmpty()) {
                this.f3278h.f(m0() > 0 && I0(this.f3290t));
            } else {
                this.f3278h.f(true);
            }
        }
    }

    private Set<c0> s() {
        HashSet hashSet = new HashSet();
        Iterator<u> it = this.f3273c.k().iterator();
        while (it.hasNext()) {
            ViewGroup viewGroup = it.next().k().mContainer;
            if (viewGroup != null) {
                hashSet.add(c0.o(viewGroup, y0()));
            }
        }
        return hashSet;
    }

    private Set<c0> t(ArrayList<androidx.fragment.app.a> arrayList, int i10, int i11) {
        ViewGroup viewGroup;
        HashSet hashSet = new HashSet();
        while (i10 < i11) {
            Iterator<w.a> it = arrayList.get(i10).f3361c.iterator();
            while (it.hasNext()) {
                Fragment fragment = it.next().f3379b;
                if (fragment != null && (viewGroup = fragment.mContainer) != null) {
                    hashSet.add(c0.n(viewGroup, this));
                }
            }
            i10++;
        }
        return hashSet;
    }

    private void v(Fragment fragment) {
        Animator animator;
        if (fragment.mView != null) {
            f.d dVarC = androidx.fragment.app.f.c(this.f3288r.f(), fragment, !fragment.mHidden, fragment.getPopDirection());
            if (dVarC == null || (animator = dVarC.f3247b) == null) {
                if (dVarC != null) {
                    fragment.mView.startAnimation(dVarC.f3246a);
                    dVarC.f3246a.start();
                }
                fragment.mView.setVisibility((!fragment.mHidden || fragment.isHideReplaced()) ? 0 : 8);
                if (fragment.isHideReplaced()) {
                    fragment.setHideReplaced(false);
                }
            } else {
                animator.setTarget(fragment.mView);
                if (!fragment.mHidden) {
                    fragment.mView.setVisibility(0);
                } else if (fragment.isHideReplaced()) {
                    fragment.setHideReplaced(false);
                } else {
                    ViewGroup viewGroup = fragment.mContainer;
                    View view = fragment.mView;
                    viewGroup.startViewTransition(view);
                    dVarC.f3247b.addListener(new h(viewGroup, view, fragment));
                }
                dVarC.f3247b.start();
            }
        }
        D0(fragment);
        fragment.mHiddenChanged = false;
        fragment.onHiddenChanged(fragment.mHidden);
    }

    private void x(Fragment fragment) {
        fragment.performDestroyView();
        this.f3285o.n(fragment, false);
        fragment.mContainer = null;
        fragment.mView = null;
        fragment.mViewLifecycleOwner = null;
        fragment.mViewLifecycleOwnerLiveData.n(null);
        fragment.mInLayout = false;
    }

    static Fragment z0(View view) {
        Object tag = view.getTag(o0.b.f32867a);
        if (tag instanceof Fragment) {
            return (Fragment) tag;
        }
        return null;
    }

    void A() {
        this.E = false;
        this.F = false;
        this.M.s(false);
        T(0);
    }

    l0 A0(Fragment fragment) {
        return this.M.p(fragment);
    }

    void B(Configuration configuration) {
        for (Fragment fragment : this.f3273c.n()) {
            if (fragment != null) {
                fragment.performConfigurationChanged(configuration);
            }
        }
    }

    void B0() {
        b0(true);
        if (this.f3278h.c()) {
            X0();
        } else {
            this.f3277g.g();
        }
    }

    boolean C(MenuItem menuItem) {
        if (this.f3287q < 1) {
            return false;
        }
        for (Fragment fragment : this.f3273c.n()) {
            if (fragment != null && fragment.performContextItemSelected(menuItem)) {
                return true;
            }
        }
        return false;
    }

    void C0(Fragment fragment) {
        if (F0(2)) {
            Log.v("FragmentManager", "hide: " + fragment);
        }
        if (fragment.mHidden) {
            return;
        }
        fragment.mHidden = true;
        fragment.mHiddenChanged = true ^ fragment.mHiddenChanged;
        n1(fragment);
    }

    void D() {
        this.E = false;
        this.F = false;
        this.M.s(false);
        T(1);
    }

    void D0(Fragment fragment) {
        if (fragment.mAdded && G0(fragment)) {
            this.D = true;
        }
    }

    boolean E(Menu menu, MenuInflater menuInflater) {
        if (this.f3287q < 1) {
            return false;
        }
        ArrayList<Fragment> arrayList = null;
        boolean z10 = false;
        for (Fragment fragment : this.f3273c.n()) {
            if (fragment != null && H0(fragment) && fragment.performCreateOptionsMenu(menu, menuInflater)) {
                if (arrayList == null) {
                    arrayList = new ArrayList<>();
                }
                arrayList.add(fragment);
                z10 = true;
            }
        }
        if (this.f3275e != null) {
            for (int i10 = 0; i10 < this.f3275e.size(); i10++) {
                Fragment fragment2 = this.f3275e.get(i10);
                if (arrayList == null || !arrayList.contains(fragment2)) {
                    fragment2.onDestroyOptionsMenu();
                }
            }
        }
        this.f3275e = arrayList;
        return z10;
    }

    public boolean E0() {
        return this.G;
    }

    void F() {
        this.G = true;
        b0(true);
        Y();
        T(-1);
        this.f3288r = null;
        this.f3289s = null;
        this.f3290t = null;
        if (this.f3277g != null) {
            this.f3278h.d();
            this.f3277g = null;
        }
        androidx.activity.result.c<Intent> cVar = this.f3296z;
        if (cVar != null) {
            cVar.d();
            this.A.d();
            this.B.d();
        }
    }

    void G() {
        T(1);
    }

    void H() {
        for (Fragment fragment : this.f3273c.n()) {
            if (fragment != null) {
                fragment.performLowMemory();
            }
        }
    }

    boolean H0(Fragment fragment) {
        if (fragment == null) {
            return true;
        }
        return fragment.isMenuVisible();
    }

    void I(boolean z10) {
        for (Fragment fragment : this.f3273c.n()) {
            if (fragment != null) {
                fragment.performMultiWindowModeChanged(z10);
            }
        }
    }

    boolean I0(Fragment fragment) {
        if (fragment == null) {
            return true;
        }
        n nVar = fragment.mFragmentManager;
        return fragment.equals(nVar.x0()) && I0(nVar.f3290t);
    }

    void J(Fragment fragment) {
        Iterator<r> it = this.f3286p.iterator();
        while (it.hasNext()) {
            it.next().a(this, fragment);
        }
    }

    boolean J0(int i10) {
        return this.f3287q >= i10;
    }

    boolean K(MenuItem menuItem) {
        if (this.f3287q < 1) {
            return false;
        }
        for (Fragment fragment : this.f3273c.n()) {
            if (fragment != null && fragment.performOptionsItemSelected(menuItem)) {
                return true;
            }
        }
        return false;
    }

    public boolean K0() {
        return this.E || this.F;
    }

    void L(Menu menu) {
        if (this.f3287q < 1) {
            return;
        }
        for (Fragment fragment : this.f3273c.n()) {
            if (fragment != null) {
                fragment.performOptionsMenuClosed(menu);
            }
        }
    }

    void L0(Fragment fragment, String[] strArr, int i10) {
        if (this.B == null) {
            this.f3288r.j(fragment, strArr, i10);
            return;
        }
        this.C.addLast(new m(fragment.mWho, i10));
        this.B.b(strArr);
    }

    void M0(Fragment fragment, @SuppressLint({"UnknownNullness"}) Intent intent, int i10, Bundle bundle) {
        if (this.f3296z == null) {
            this.f3288r.m(fragment, intent, i10, bundle);
            return;
        }
        this.C.addLast(new m(fragment.mWho, i10));
        if (intent != null && bundle != null) {
            intent.putExtra("androidx.activity.result.contract.extra.ACTIVITY_OPTIONS_BUNDLE", bundle);
        }
        this.f3296z.b(intent);
    }

    void N() {
        T(5);
    }

    void N0(Fragment fragment, @SuppressLint({"UnknownNullness"}) IntentSender intentSender, int i10, Intent intent, int i11, int i12, int i13, Bundle bundle) throws IntentSender.SendIntentException {
        Intent intent2;
        if (this.A == null) {
            this.f3288r.n(fragment, intentSender, i10, intent, i11, i12, i13, bundle);
            return;
        }
        if (bundle != null) {
            if (intent == null) {
                intent2 = new Intent();
                intent2.putExtra("androidx.fragment.extra.ACTIVITY_OPTIONS_BUNDLE", true);
            } else {
                intent2 = intent;
            }
            if (F0(2)) {
                Log.v("FragmentManager", "ActivityOptions " + bundle + " were added to fillInIntent " + intent2 + " for fragment " + fragment);
            }
            intent2.putExtra("androidx.activity.result.contract.extra.ACTIVITY_OPTIONS_BUNDLE", bundle);
        } else {
            intent2 = intent;
        }
        androidx.activity.result.e eVarA = new e.b(intentSender).b(intent2).c(i12, i11).a();
        this.C.addLast(new m(fragment.mWho, i10));
        if (F0(2)) {
            Log.v("FragmentManager", "Fragment " + fragment + "is launching an IntentSender for result ");
        }
        this.A.b(eVarA);
    }

    void O(boolean z10) {
        for (Fragment fragment : this.f3273c.n()) {
            if (fragment != null) {
                fragment.performPictureInPictureModeChanged(z10);
            }
        }
    }

    boolean P(Menu menu) {
        boolean z10 = false;
        if (this.f3287q < 1) {
            return false;
        }
        for (Fragment fragment : this.f3273c.n()) {
            if (fragment != null && H0(fragment) && fragment.performPrepareOptionsMenu(menu)) {
                z10 = true;
            }
        }
        return z10;
    }

    void P0(Fragment fragment) {
        if (!this.f3273c.c(fragment.mWho)) {
            if (F0(3)) {
                Log.d("FragmentManager", "Ignoring moving " + fragment + " to state " + this.f3287q + "since it is not added to " + this);
                return;
            }
            return;
        }
        R0(fragment);
        View view = fragment.mView;
        if (view != null && fragment.mIsNewlyAdded && fragment.mContainer != null) {
            float f10 = fragment.mPostponedAlpha;
            if (f10 > 0.0f) {
                view.setAlpha(f10);
            }
            fragment.mPostponedAlpha = 0.0f;
            fragment.mIsNewlyAdded = false;
            f.d dVarC = androidx.fragment.app.f.c(this.f3288r.f(), fragment, true, fragment.getPopDirection());
            if (dVarC != null) {
                Animation animation = dVarC.f3246a;
                if (animation != null) {
                    fragment.mView.startAnimation(animation);
                } else {
                    dVarC.f3247b.setTarget(fragment.mView);
                    dVarC.f3247b.start();
                }
            }
        }
        if (fragment.mHiddenChanged) {
            v(fragment);
        }
    }

    void Q() {
        q1();
        M(this.f3291u);
    }

    void Q0(int i10, boolean z10) {
        androidx.fragment.app.k<?> kVar;
        if (this.f3288r == null && i10 != -1) {
            throw new IllegalStateException("No activity");
        }
        if (z10 || i10 != this.f3287q) {
            this.f3287q = i10;
            if (P) {
                this.f3273c.r();
            } else {
                Iterator<Fragment> it = this.f3273c.n().iterator();
                while (it.hasNext()) {
                    P0(it.next());
                }
                for (u uVar : this.f3273c.k()) {
                    Fragment fragmentK = uVar.k();
                    if (!fragmentK.mIsNewlyAdded) {
                        P0(fragmentK);
                    }
                    if (fragmentK.mRemoving && !fragmentK.isInBackStack()) {
                        this.f3273c.q(uVar);
                    }
                }
            }
            p1();
            if (this.D && (kVar = this.f3288r) != null && this.f3287q == 7) {
                kVar.o();
                this.D = false;
            }
        }
    }

    void R() {
        this.E = false;
        this.F = false;
        this.M.s(false);
        T(7);
    }

    void R0(Fragment fragment) {
        S0(fragment, this.f3287q);
    }

    void S() {
        this.E = false;
        this.F = false;
        this.M.s(false);
        T(5);
    }

    /* JADX WARN: Removed duplicated region for block: B:31:0x0063  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0068  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x006d  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0072  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x0077  */
    /* JADX WARN: Removed duplicated region for block: B:97:0x015d  */
    /* JADX WARN: Removed duplicated region for block: B:99:0x0160  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    void S0(androidx.fragment.app.Fragment r11, int r12) {
        /*
            Method dump skipped, instruction units count: 407
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.fragment.app.n.S0(androidx.fragment.app.Fragment, int):void");
    }

    void T0() {
        if (this.f3288r == null) {
            return;
        }
        this.E = false;
        this.F = false;
        this.M.s(false);
        for (Fragment fragment : this.f3273c.n()) {
            if (fragment != null) {
                fragment.noteStateNotSaved();
            }
        }
    }

    void U() {
        this.F = true;
        this.M.s(true);
        T(4);
    }

    void U0(androidx.fragment.app.h hVar) {
        View view;
        for (u uVar : this.f3273c.k()) {
            Fragment fragmentK = uVar.k();
            if (fragmentK.mContainerId == hVar.getId() && (view = fragmentK.mView) != null && view.getParent() == null) {
                fragmentK.mContainer = hVar;
                uVar.b();
            }
        }
    }

    void V() {
        T(2);
    }

    void V0(u uVar) {
        Fragment fragmentK = uVar.k();
        if (fragmentK.mDeferStart) {
            if (this.f3272b) {
                this.H = true;
                return;
            }
            fragmentK.mDeferStart = false;
            if (P) {
                uVar.m();
            } else {
                R0(fragmentK);
            }
        }
    }

    public void W0(int i10, int i11) {
        if (i10 >= 0) {
            Z(new p(null, i10, i11), false);
            return;
        }
        throw new IllegalArgumentException("Bad id: " + i10);
    }

    public void X(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        int size;
        int size2;
        String str2 = str + "    ";
        this.f3273c.e(str, fileDescriptor, printWriter, strArr);
        ArrayList<Fragment> arrayList = this.f3275e;
        if (arrayList != null && (size2 = arrayList.size()) > 0) {
            printWriter.print(str);
            printWriter.println("Fragments Created Menus:");
            for (int i10 = 0; i10 < size2; i10++) {
                Fragment fragment = this.f3275e.get(i10);
                printWriter.print(str);
                printWriter.print("  #");
                printWriter.print(i10);
                printWriter.print(": ");
                printWriter.println(fragment.toString());
            }
        }
        ArrayList<androidx.fragment.app.a> arrayList2 = this.f3274d;
        if (arrayList2 != null && (size = arrayList2.size()) > 0) {
            printWriter.print(str);
            printWriter.println("Back Stack:");
            for (int i11 = 0; i11 < size; i11++) {
                androidx.fragment.app.a aVar = this.f3274d.get(i11);
                printWriter.print(str);
                printWriter.print("  #");
                printWriter.print(i11);
                printWriter.print(": ");
                printWriter.println(aVar.toString());
                aVar.r(str2, printWriter);
            }
        }
        printWriter.print(str);
        printWriter.println("Back Stack Index: " + this.f3279i.get());
        synchronized (this.f3271a) {
            int size3 = this.f3271a.size();
            if (size3 > 0) {
                printWriter.print(str);
                printWriter.println("Pending Actions:");
                for (int i12 = 0; i12 < size3; i12++) {
                    o oVar = this.f3271a.get(i12);
                    printWriter.print(str);
                    printWriter.print("  #");
                    printWriter.print(i12);
                    printWriter.print(": ");
                    printWriter.println(oVar);
                }
            }
        }
        printWriter.print(str);
        printWriter.println("FragmentManager misc state:");
        printWriter.print(str);
        printWriter.print("  mHost=");
        printWriter.println(this.f3288r);
        printWriter.print(str);
        printWriter.print("  mContainer=");
        printWriter.println(this.f3289s);
        if (this.f3290t != null) {
            printWriter.print(str);
            printWriter.print("  mParent=");
            printWriter.println(this.f3290t);
        }
        printWriter.print(str);
        printWriter.print("  mCurState=");
        printWriter.print(this.f3287q);
        printWriter.print(" mStateSaved=");
        printWriter.print(this.E);
        printWriter.print(" mStopped=");
        printWriter.print(this.F);
        printWriter.print(" mDestroyed=");
        printWriter.println(this.G);
        if (this.D) {
            printWriter.print(str);
            printWriter.print("  mNeedMenuInvalidate=");
            printWriter.println(this.D);
        }
    }

    public boolean X0() {
        return Y0(null, -1, 0);
    }

    void Z(o oVar, boolean z10) {
        if (!z10) {
            if (this.f3288r == null) {
                if (!this.G) {
                    throw new IllegalStateException("FragmentManager has not been attached to a host.");
                }
                throw new IllegalStateException("FragmentManager has been destroyed");
            }
            p();
        }
        synchronized (this.f3271a) {
            if (this.f3288r == null) {
                if (!z10) {
                    throw new IllegalStateException("Activity has been destroyed");
                }
            } else {
                this.f3271a.add(oVar);
                j1();
            }
        }
    }

    boolean Z0(ArrayList<androidx.fragment.app.a> arrayList, ArrayList<Boolean> arrayList2, String str, int i10, int i11) {
        int i12;
        ArrayList<androidx.fragment.app.a> arrayList3 = this.f3274d;
        if (arrayList3 == null) {
            return false;
        }
        if (str == null && i10 < 0 && (i11 & 1) == 0) {
            int size = arrayList3.size() - 1;
            if (size < 0) {
                return false;
            }
            arrayList.add(this.f3274d.remove(size));
            arrayList2.add(Boolean.TRUE);
        } else {
            if (str != null || i10 >= 0) {
                int size2 = arrayList3.size() - 1;
                while (size2 >= 0) {
                    androidx.fragment.app.a aVar = this.f3274d.get(size2);
                    if ((str != null && str.equals(aVar.w())) || (i10 >= 0 && i10 == aVar.f3135v)) {
                        break;
                    }
                    size2--;
                }
                if (size2 < 0) {
                    return false;
                }
                if ((i11 & 1) != 0) {
                    while (true) {
                        size2--;
                        if (size2 < 0) {
                            break;
                        }
                        androidx.fragment.app.a aVar2 = this.f3274d.get(size2);
                        if (str == null || !str.equals(aVar2.w())) {
                            if (i10 < 0 || i10 != aVar2.f3135v) {
                                break;
                            }
                        }
                    }
                }
                i12 = size2;
            } else {
                i12 = -1;
            }
            if (i12 == this.f3274d.size() - 1) {
                return false;
            }
            for (int size3 = this.f3274d.size() - 1; size3 > i12; size3--) {
                arrayList.add(this.f3274d.remove(size3));
                arrayList2.add(Boolean.TRUE);
            }
        }
        return true;
    }

    boolean b0(boolean z10) {
        a0(z10);
        boolean z11 = false;
        while (l0(this.I, this.J)) {
            this.f3272b = true;
            try {
                d1(this.I, this.J);
                q();
                z11 = true;
            } catch (Throwable th) {
                q();
                throw th;
            }
        }
        q1();
        W();
        this.f3273c.b();
        return z11;
    }

    void b1(Fragment fragment, androidx.core.os.e eVar) {
        HashSet<androidx.core.os.e> hashSet = this.f3283m.get(fragment);
        if (hashSet != null && hashSet.remove(eVar) && hashSet.isEmpty()) {
            this.f3283m.remove(fragment);
            if (fragment.mState < 5) {
                x(fragment);
                R0(fragment);
            }
        }
    }

    void c0(o oVar, boolean z10) {
        if (z10 && (this.f3288r == null || this.G)) {
            return;
        }
        a0(z10);
        if (oVar.a(this.I, this.J)) {
            this.f3272b = true;
            try {
                d1(this.I, this.J);
            } finally {
                q();
            }
        }
        q1();
        W();
        this.f3273c.b();
    }

    void c1(Fragment fragment) {
        if (F0(2)) {
            Log.v("FragmentManager", "remove: " + fragment + " nesting=" + fragment.mBackStackNesting);
        }
        boolean z10 = !fragment.isInBackStack();
        if (!fragment.mDetached || z10) {
            this.f3273c.s(fragment);
            if (G0(fragment)) {
                this.D = true;
            }
            fragment.mRemoving = true;
            n1(fragment);
        }
    }

    void e(androidx.fragment.app.a aVar) {
        if (this.f3274d == null) {
            this.f3274d = new ArrayList<>();
        }
        this.f3274d.add(aVar);
    }

    void e1(Fragment fragment) {
        this.M.r(fragment);
    }

    void f(Fragment fragment, androidx.core.os.e eVar) {
        if (this.f3283m.get(fragment) == null) {
            this.f3283m.put(fragment, new HashSet<>());
        }
        this.f3283m.get(fragment).add(eVar);
    }

    u g(Fragment fragment) {
        if (F0(2)) {
            Log.v("FragmentManager", "add: " + fragment);
        }
        u uVarW = w(fragment);
        fragment.mFragmentManager = this;
        this.f3273c.p(uVarW);
        if (!fragment.mDetached) {
            this.f3273c.a(fragment);
            fragment.mRemoving = false;
            if (fragment.mView == null) {
                fragment.mHiddenChanged = false;
            }
            if (G0(fragment)) {
                this.D = true;
            }
        }
        return uVarW;
    }

    Fragment g0(String str) {
        return this.f3273c.f(str);
    }

    void g1(Parcelable parcelable) {
        u uVar;
        if (parcelable == null) {
            return;
        }
        androidx.fragment.app.p pVar = (androidx.fragment.app.p) parcelable;
        if (pVar.f3320o == null) {
            return;
        }
        this.f3273c.t();
        for (t tVar : pVar.f3320o) {
            if (tVar != null) {
                Fragment fragmentL = this.M.l(tVar.f3337p);
                if (fragmentL != null) {
                    if (F0(2)) {
                        Log.v("FragmentManager", "restoreSaveState: re-attaching retained " + fragmentL);
                    }
                    uVar = new u(this.f3285o, this.f3273c, fragmentL, tVar);
                } else {
                    uVar = new u(this.f3285o, this.f3273c, this.f3288r.f().getClassLoader(), q0(), tVar);
                }
                Fragment fragmentK = uVar.k();
                fragmentK.mFragmentManager = this;
                if (F0(2)) {
                    Log.v("FragmentManager", "restoreSaveState: active (" + fragmentK.mWho + "): " + fragmentK);
                }
                uVar.o(this.f3288r.f().getClassLoader());
                this.f3273c.p(uVar);
                uVar.t(this.f3287q);
            }
        }
        for (Fragment fragment : this.M.o()) {
            if (!this.f3273c.c(fragment.mWho)) {
                if (F0(2)) {
                    Log.v("FragmentManager", "Discarding retained Fragment " + fragment + " that was not found in the set of active Fragments " + pVar.f3320o);
                }
                this.M.r(fragment);
                fragment.mFragmentManager = this;
                u uVar2 = new u(this.f3285o, this.f3273c, fragment);
                uVar2.t(1);
                uVar2.m();
                fragment.mRemoving = true;
                uVar2.m();
            }
        }
        this.f3273c.u(pVar.f3321p);
        if (pVar.f3322q != null) {
            this.f3274d = new ArrayList<>(pVar.f3322q.length);
            int i10 = 0;
            while (true) {
                androidx.fragment.app.b[] bVarArr = pVar.f3322q;
                if (i10 >= bVarArr.length) {
                    break;
                }
                androidx.fragment.app.a aVarH = bVarArr[i10].h(this);
                if (F0(2)) {
                    Log.v("FragmentManager", "restoreAllState: back stack #" + i10 + " (index " + aVarH.f3135v + "): " + aVarH);
                    PrintWriter printWriter = new PrintWriter(new b0("FragmentManager"));
                    aVarH.s("  ", printWriter, false);
                    printWriter.close();
                }
                this.f3274d.add(aVarH);
                i10++;
            }
        } else {
            this.f3274d = null;
        }
        this.f3279i.set(pVar.f3323r);
        String str = pVar.f3324s;
        if (str != null) {
            Fragment fragmentG0 = g0(str);
            this.f3291u = fragmentG0;
            M(fragmentG0);
        }
        ArrayList<String> arrayList = pVar.f3325t;
        if (arrayList != null) {
            for (int i11 = 0; i11 < arrayList.size(); i11++) {
                Bundle bundle = pVar.f3326u.get(i11);
                bundle.setClassLoader(this.f3288r.f().getClassLoader());
                this.f3280j.put(arrayList.get(i11), bundle);
            }
        }
        this.C = new ArrayDeque<>(pVar.f3327v);
    }

    public void h(r rVar) {
        this.f3286p.add(rVar);
    }

    public Fragment h0(int i10) {
        return this.f3273c.g(i10);
    }

    void i(Fragment fragment) {
        this.M.j(fragment);
    }

    public Fragment i0(String str) {
        return this.f3273c.h(str);
    }

    Parcelable i1() {
        int size;
        k0();
        Y();
        b0(true);
        this.E = true;
        this.M.s(true);
        ArrayList<t> arrayListV = this.f3273c.v();
        androidx.fragment.app.b[] bVarArr = null;
        if (arrayListV.isEmpty()) {
            if (F0(2)) {
                Log.v("FragmentManager", "saveAllState: no fragments!");
            }
            return null;
        }
        ArrayList<String> arrayListW = this.f3273c.w();
        ArrayList<androidx.fragment.app.a> arrayList = this.f3274d;
        if (arrayList != null && (size = arrayList.size()) > 0) {
            bVarArr = new androidx.fragment.app.b[size];
            for (int i10 = 0; i10 < size; i10++) {
                bVarArr[i10] = new androidx.fragment.app.b(this.f3274d.get(i10));
                if (F0(2)) {
                    Log.v("FragmentManager", "saveAllState: adding back stack #" + i10 + ": " + this.f3274d.get(i10));
                }
            }
        }
        androidx.fragment.app.p pVar = new androidx.fragment.app.p();
        pVar.f3320o = arrayListV;
        pVar.f3321p = arrayListW;
        pVar.f3322q = bVarArr;
        pVar.f3323r = this.f3279i.get();
        Fragment fragment = this.f3291u;
        if (fragment != null) {
            pVar.f3324s = fragment.mWho;
        }
        pVar.f3325t.addAll(this.f3280j.keySet());
        pVar.f3326u.addAll(this.f3280j.values());
        pVar.f3327v = new ArrayList<>(this.C);
        return pVar;
    }

    int j() {
        return this.f3279i.getAndIncrement();
    }

    Fragment j0(String str) {
        return this.f3273c.i(str);
    }

    void j1() {
        synchronized (this.f3271a) {
            ArrayList<q> arrayList = this.L;
            boolean z10 = (arrayList == null || arrayList.isEmpty()) ? false : true;
            boolean z11 = this.f3271a.size() == 1;
            if (z10 || z11) {
                this.f3288r.g().removeCallbacks(this.N);
                this.f3288r.g().post(this.N);
                q1();
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @SuppressLint({"SyntheticAccessor"})
    void k(androidx.fragment.app.k<?> kVar, androidx.fragment.app.g gVar, Fragment fragment) {
        String str;
        if (this.f3288r != null) {
            throw new IllegalStateException("Already attached");
        }
        this.f3288r = kVar;
        this.f3289s = gVar;
        this.f3290t = fragment;
        if (fragment != null) {
            h(new i(fragment));
        } else if (kVar instanceof r) {
            h((r) kVar);
        }
        if (this.f3290t != null) {
            q1();
        }
        if (kVar instanceof androidx.activity.i) {
            androidx.activity.i iVar = (androidx.activity.i) kVar;
            OnBackPressedDispatcher onBackPressedDispatcher = iVar.getOnBackPressedDispatcher();
            this.f3277g = onBackPressedDispatcher;
            androidx.lifecycle.n nVar = iVar;
            if (fragment != null) {
                nVar = fragment;
            }
            onBackPressedDispatcher.c(nVar, this.f3278h);
        }
        if (fragment != null) {
            this.M = fragment.mFragmentManager.n0(fragment);
        } else if (kVar instanceof m0) {
            this.M = androidx.fragment.app.q.n(((m0) kVar).getViewModelStore());
        } else {
            this.M = new androidx.fragment.app.q(false);
        }
        this.M.s(K0());
        this.f3273c.x(this.M);
        Object obj = this.f3288r;
        if (obj instanceof androidx.activity.result.d) {
            ActivityResultRegistry activityResultRegistry = ((androidx.activity.result.d) obj).getActivityResultRegistry();
            if (fragment != null) {
                str = fragment.mWho + CertificateUtil.DELIMITER;
            } else {
                str = BuildConfig.FLAVOR;
            }
            String str2 = "FragmentManager:" + str;
            this.f3296z = activityResultRegistry.j(str2 + "StartActivityForResult", new e.c(), new j());
            this.A = activityResultRegistry.j(str2 + "StartIntentSenderForResult", new k(), new a());
            this.B = activityResultRegistry.j(str2 + "RequestPermissions", new e.b(), new b());
        }
    }

    void k1(Fragment fragment, boolean z10) {
        ViewGroup viewGroupP0 = p0(fragment);
        if (viewGroupP0 == null || !(viewGroupP0 instanceof androidx.fragment.app.h)) {
            return;
        }
        ((androidx.fragment.app.h) viewGroupP0).setDrawDisappearingViewsLast(!z10);
    }

    void l(Fragment fragment) {
        if (F0(2)) {
            Log.v("FragmentManager", "attach: " + fragment);
        }
        if (fragment.mDetached) {
            fragment.mDetached = false;
            if (fragment.mAdded) {
                return;
            }
            this.f3273c.a(fragment);
            if (F0(2)) {
                Log.v("FragmentManager", "add from attach: " + fragment);
            }
            if (G0(fragment)) {
                this.D = true;
            }
        }
    }

    void l1(Fragment fragment, j.c cVar) {
        if (fragment.equals(g0(fragment.mWho)) && (fragment.mHost == null || fragment.mFragmentManager == this)) {
            fragment.mMaxState = cVar;
            return;
        }
        throw new IllegalArgumentException("Fragment " + fragment + " is not an active fragment of FragmentManager " + this);
    }

    public w m() {
        return new androidx.fragment.app.a(this);
    }

    public int m0() {
        ArrayList<androidx.fragment.app.a> arrayList = this.f3274d;
        if (arrayList != null) {
            return arrayList.size();
        }
        return 0;
    }

    void m1(Fragment fragment) {
        if (fragment == null || (fragment.equals(g0(fragment.mWho)) && (fragment.mHost == null || fragment.mFragmentManager == this))) {
            Fragment fragment2 = this.f3291u;
            this.f3291u = fragment;
            M(fragment2);
            M(this.f3291u);
            return;
        }
        throw new IllegalArgumentException("Fragment " + fragment + " is not an active fragment of FragmentManager " + this);
    }

    boolean o() {
        boolean zG0 = false;
        for (Fragment fragment : this.f3273c.l()) {
            if (fragment != null) {
                zG0 = G0(fragment);
            }
            if (zG0) {
                return true;
            }
        }
        return false;
    }

    androidx.fragment.app.g o0() {
        return this.f3289s;
    }

    void o1(Fragment fragment) {
        if (F0(2)) {
            Log.v("FragmentManager", "show: " + fragment);
        }
        if (fragment.mHidden) {
            fragment.mHidden = false;
            fragment.mHiddenChanged = !fragment.mHiddenChanged;
        }
    }

    public androidx.fragment.app.j q0() {
        androidx.fragment.app.j jVar = this.f3292v;
        if (jVar != null) {
            return jVar;
        }
        Fragment fragment = this.f3290t;
        return fragment != null ? fragment.mFragmentManager.q0() : this.f3293w;
    }

    public final void r(String str) {
        this.f3280j.remove(str);
    }

    v r0() {
        return this.f3273c;
    }

    public List<Fragment> s0() {
        return this.f3273c.n();
    }

    androidx.fragment.app.k<?> t0() {
        return this.f3288r;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(128);
        sb.append("FragmentManager{");
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        sb.append(" in ");
        Fragment fragment = this.f3290t;
        if (fragment != null) {
            sb.append(fragment.getClass().getSimpleName());
            sb.append("{");
            sb.append(Integer.toHexString(System.identityHashCode(this.f3290t)));
            sb.append("}");
        } else {
            androidx.fragment.app.k<?> kVar = this.f3288r;
            if (kVar != null) {
                sb.append(kVar.getClass().getSimpleName());
                sb.append("{");
                sb.append(Integer.toHexString(System.identityHashCode(this.f3288r)));
                sb.append("}");
            } else {
                sb.append("null");
            }
        }
        sb.append("}}");
        return sb.toString();
    }

    void u(androidx.fragment.app.a aVar, boolean z10, boolean z11, boolean z12) {
        if (z10) {
            aVar.u(z12);
        } else {
            aVar.t();
        }
        ArrayList arrayList = new ArrayList(1);
        ArrayList arrayList2 = new ArrayList(1);
        arrayList.add(aVar);
        arrayList2.add(Boolean.valueOf(z10));
        if (z11 && this.f3287q >= 1) {
            x.B(this.f3288r.f(), this.f3289s, arrayList, arrayList2, 0, 1, true, this.f3284n);
        }
        if (z12) {
            Q0(this.f3287q, true);
        }
        for (Fragment fragment : this.f3273c.l()) {
            if (fragment != null && fragment.mView != null && fragment.mIsNewlyAdded && aVar.x(fragment.mContainerId)) {
                float f10 = fragment.mPostponedAlpha;
                if (f10 > 0.0f) {
                    fragment.mView.setAlpha(f10);
                }
                if (z12) {
                    fragment.mPostponedAlpha = 0.0f;
                } else {
                    fragment.mPostponedAlpha = -1.0f;
                    fragment.mIsNewlyAdded = false;
                }
            }
        }
    }

    LayoutInflater.Factory2 u0() {
        return this.f3276f;
    }

    androidx.fragment.app.m v0() {
        return this.f3285o;
    }

    u w(Fragment fragment) {
        u uVarM = this.f3273c.m(fragment.mWho);
        if (uVarM != null) {
            return uVarM;
        }
        u uVar = new u(this.f3285o, this.f3273c, fragment);
        uVar.o(this.f3288r.f().getClassLoader());
        uVar.t(this.f3287q);
        return uVar;
    }

    Fragment w0() {
        return this.f3290t;
    }

    public Fragment x0() {
        return this.f3291u;
    }

    void y(Fragment fragment) {
        if (F0(2)) {
            Log.v("FragmentManager", "detach: " + fragment);
        }
        if (fragment.mDetached) {
            return;
        }
        fragment.mDetached = true;
        if (fragment.mAdded) {
            if (F0(2)) {
                Log.v("FragmentManager", "remove from detach: " + fragment);
            }
            this.f3273c.s(fragment);
            if (G0(fragment)) {
                this.D = true;
            }
            n1(fragment);
        }
    }

    d0 y0() {
        d0 d0Var = this.f3294x;
        if (d0Var != null) {
            return d0Var;
        }
        Fragment fragment = this.f3290t;
        return fragment != null ? fragment.mFragmentManager.y0() : this.f3295y;
    }

    void z() {
        this.E = false;
        this.F = false;
        this.M.s(false);
        T(4);
    }

    /* JADX INFO: compiled from: FragmentManager.java */
    @SuppressLint({"BanParcelableUsage"})
    static class m implements Parcelable {
        public static final Parcelable.Creator<m> CREATOR = new a();

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        String f3311o;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        int f3312p;

        /* JADX INFO: compiled from: FragmentManager.java */
        class a implements Parcelable.Creator<m> {
            a() {
            }

            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public m createFromParcel(Parcel parcel) {
                return new m(parcel);
            }

            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
            public m[] newArray(int i10) {
                return new m[i10];
            }
        }

        m(String str, int i10) {
            this.f3311o = str;
            this.f3312p = i10;
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i10) {
            parcel.writeString(this.f3311o);
            parcel.writeInt(this.f3312p);
        }

        m(Parcel parcel) {
            this.f3311o = parcel.readString();
            this.f3312p = parcel.readInt();
        }
    }
}
