package androidx.fragment.app;

import android.app.Activity;
import android.content.res.Resources;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.Log;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import androidx.fragment.app.c0;
import androidx.lifecycle.j;
import androidx.lifecycle.m0;
import com.facebook.internal.AnalyticsEvents;

/* JADX INFO: compiled from: FragmentStateManager.java */
/* JADX INFO: loaded from: classes.dex */
class u {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final m f3348a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final v f3349b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Fragment f3350c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f3351d = false;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f3352e = -1;

    /* JADX INFO: compiled from: FragmentStateManager.java */
    class a implements View.OnAttachStateChangeListener {

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        final /* synthetic */ View f3353o;

        a(View view) {
            this.f3353o = view;
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewAttachedToWindow(View view) {
            this.f3353o.removeOnAttachStateChangeListener(this);
            androidx.core.view.a0.n0(this.f3353o);
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewDetachedFromWindow(View view) {
        }
    }

    /* JADX INFO: compiled from: FragmentStateManager.java */
    static /* synthetic */ class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f3355a;

        static {
            int[] iArr = new int[j.c.values().length];
            f3355a = iArr;
            try {
                iArr[j.c.RESUMED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f3355a[j.c.STARTED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f3355a[j.c.CREATED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f3355a[j.c.INITIALIZED.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    u(m mVar, v vVar, Fragment fragment) {
        this.f3348a = mVar;
        this.f3349b = vVar;
        this.f3350c = fragment;
    }

    private boolean l(View view) {
        if (view == this.f3350c.mView) {
            return true;
        }
        for (ViewParent parent = view.getParent(); parent != null; parent = parent.getParent()) {
            if (parent == this.f3350c.mView) {
                return true;
            }
        }
        return false;
    }

    private Bundle q() {
        Bundle bundle = new Bundle();
        this.f3350c.performSaveInstanceState(bundle);
        this.f3348a.j(this.f3350c, bundle, false);
        if (bundle.isEmpty()) {
            bundle = null;
        }
        if (this.f3350c.mView != null) {
            s();
        }
        if (this.f3350c.mSavedViewState != null) {
            if (bundle == null) {
                bundle = new Bundle();
            }
            bundle.putSparseParcelableArray("android:view_state", this.f3350c.mSavedViewState);
        }
        if (this.f3350c.mSavedViewRegistryState != null) {
            if (bundle == null) {
                bundle = new Bundle();
            }
            bundle.putBundle("android:view_registry_state", this.f3350c.mSavedViewRegistryState);
        }
        if (!this.f3350c.mUserVisibleHint) {
            if (bundle == null) {
                bundle = new Bundle();
            }
            bundle.putBoolean("android:user_visible_hint", this.f3350c.mUserVisibleHint);
        }
        return bundle;
    }

    void a() {
        if (n.F0(3)) {
            Log.d("FragmentManager", "moveto ACTIVITY_CREATED: " + this.f3350c);
        }
        Fragment fragment = this.f3350c;
        fragment.performActivityCreated(fragment.mSavedFragmentState);
        m mVar = this.f3348a;
        Fragment fragment2 = this.f3350c;
        mVar.a(fragment2, fragment2.mSavedFragmentState, false);
    }

    void b() {
        int iJ = this.f3349b.j(this.f3350c);
        Fragment fragment = this.f3350c;
        fragment.mContainer.addView(fragment.mView, iJ);
    }

    void c() {
        if (n.F0(3)) {
            Log.d("FragmentManager", "moveto ATTACHED: " + this.f3350c);
        }
        Fragment fragment = this.f3350c;
        Fragment fragment2 = fragment.mTarget;
        u uVarM = null;
        if (fragment2 != null) {
            u uVarM2 = this.f3349b.m(fragment2.mWho);
            if (uVarM2 == null) {
                throw new IllegalStateException("Fragment " + this.f3350c + " declared target fragment " + this.f3350c.mTarget + " that does not belong to this FragmentManager!");
            }
            Fragment fragment3 = this.f3350c;
            fragment3.mTargetWho = fragment3.mTarget.mWho;
            fragment3.mTarget = null;
            uVarM = uVarM2;
        } else {
            String str = fragment.mTargetWho;
            if (str != null && (uVarM = this.f3349b.m(str)) == null) {
                throw new IllegalStateException("Fragment " + this.f3350c + " declared target fragment " + this.f3350c.mTargetWho + " that does not belong to this FragmentManager!");
            }
        }
        if (uVarM != null && (n.P || uVarM.k().mState < 1)) {
            uVarM.m();
        }
        Fragment fragment4 = this.f3350c;
        fragment4.mHost = fragment4.mFragmentManager.t0();
        Fragment fragment5 = this.f3350c;
        fragment5.mParentFragment = fragment5.mFragmentManager.w0();
        this.f3348a.g(this.f3350c, false);
        this.f3350c.performAttach();
        this.f3348a.b(this.f3350c, false);
    }

    int d() {
        Fragment fragment;
        ViewGroup viewGroup;
        Fragment fragment2 = this.f3350c;
        if (fragment2.mFragmentManager == null) {
            return fragment2.mState;
        }
        int iMin = this.f3352e;
        int i10 = b.f3355a[fragment2.mMaxState.ordinal()];
        if (i10 != 1) {
            iMin = i10 != 2 ? i10 != 3 ? i10 != 4 ? Math.min(iMin, -1) : Math.min(iMin, 0) : Math.min(iMin, 1) : Math.min(iMin, 5);
        }
        Fragment fragment3 = this.f3350c;
        if (fragment3.mFromLayout) {
            if (fragment3.mInLayout) {
                iMin = Math.max(this.f3352e, 2);
                View view = this.f3350c.mView;
                if (view != null && view.getParent() == null) {
                    iMin = Math.min(iMin, 2);
                }
            } else {
                iMin = this.f3352e < 4 ? Math.min(iMin, fragment3.mState) : Math.min(iMin, 1);
            }
        }
        if (!this.f3350c.mAdded) {
            iMin = Math.min(iMin, 1);
        }
        c0.e.b bVarL = null;
        if (n.P && (viewGroup = (fragment = this.f3350c).mContainer) != null) {
            bVarL = c0.n(viewGroup, fragment.getParentFragmentManager()).l(this);
        }
        if (bVarL == c0.e.b.ADDING) {
            iMin = Math.min(iMin, 6);
        } else if (bVarL == c0.e.b.REMOVING) {
            iMin = Math.max(iMin, 3);
        } else {
            Fragment fragment4 = this.f3350c;
            if (fragment4.mRemoving) {
                iMin = fragment4.isInBackStack() ? Math.min(iMin, 1) : Math.min(iMin, -1);
            }
        }
        Fragment fragment5 = this.f3350c;
        if (fragment5.mDeferStart && fragment5.mState < 5) {
            iMin = Math.min(iMin, 4);
        }
        if (n.F0(2)) {
            Log.v("FragmentManager", "computeExpectedState() of " + iMin + " for " + this.f3350c);
        }
        return iMin;
    }

    void e() {
        if (n.F0(3)) {
            Log.d("FragmentManager", "moveto CREATED: " + this.f3350c);
        }
        Fragment fragment = this.f3350c;
        if (fragment.mIsCreated) {
            fragment.restoreChildFragmentState(fragment.mSavedFragmentState);
            this.f3350c.mState = 1;
            return;
        }
        this.f3348a.h(fragment, fragment.mSavedFragmentState, false);
        Fragment fragment2 = this.f3350c;
        fragment2.performCreate(fragment2.mSavedFragmentState);
        m mVar = this.f3348a;
        Fragment fragment3 = this.f3350c;
        mVar.c(fragment3, fragment3.mSavedFragmentState, false);
    }

    void f() {
        String resourceName;
        if (this.f3350c.mFromLayout) {
            return;
        }
        if (n.F0(3)) {
            Log.d("FragmentManager", "moveto CREATE_VIEW: " + this.f3350c);
        }
        Fragment fragment = this.f3350c;
        LayoutInflater layoutInflaterPerformGetLayoutInflater = fragment.performGetLayoutInflater(fragment.mSavedFragmentState);
        ViewGroup viewGroup = null;
        Fragment fragment2 = this.f3350c;
        ViewGroup viewGroup2 = fragment2.mContainer;
        if (viewGroup2 != null) {
            viewGroup = viewGroup2;
        } else {
            int i10 = fragment2.mContainerId;
            if (i10 != 0) {
                if (i10 == -1) {
                    throw new IllegalArgumentException("Cannot create fragment " + this.f3350c + " for a container view with no id");
                }
                viewGroup = (ViewGroup) fragment2.mFragmentManager.o0().c(this.f3350c.mContainerId);
                if (viewGroup == null) {
                    Fragment fragment3 = this.f3350c;
                    if (!fragment3.mRestored) {
                        try {
                            resourceName = fragment3.getResources().getResourceName(this.f3350c.mContainerId);
                        } catch (Resources.NotFoundException unused) {
                            resourceName = "unknown";
                        }
                        throw new IllegalArgumentException("No view found for id 0x" + Integer.toHexString(this.f3350c.mContainerId) + " (" + resourceName + ") for fragment " + this.f3350c);
                    }
                }
            }
        }
        Fragment fragment4 = this.f3350c;
        fragment4.mContainer = viewGroup;
        fragment4.performCreateView(layoutInflaterPerformGetLayoutInflater, viewGroup, fragment4.mSavedFragmentState);
        View view = this.f3350c.mView;
        if (view != null) {
            boolean z10 = false;
            view.setSaveFromParentEnabled(false);
            Fragment fragment5 = this.f3350c;
            fragment5.mView.setTag(o0.b.f32867a, fragment5);
            if (viewGroup != null) {
                b();
            }
            Fragment fragment6 = this.f3350c;
            if (fragment6.mHidden) {
                fragment6.mView.setVisibility(8);
            }
            if (androidx.core.view.a0.T(this.f3350c.mView)) {
                androidx.core.view.a0.n0(this.f3350c.mView);
            } else {
                View view2 = this.f3350c.mView;
                view2.addOnAttachStateChangeListener(new a(view2));
            }
            this.f3350c.performViewCreated();
            m mVar = this.f3348a;
            Fragment fragment7 = this.f3350c;
            mVar.m(fragment7, fragment7.mView, fragment7.mSavedFragmentState, false);
            int visibility = this.f3350c.mView.getVisibility();
            float alpha = this.f3350c.mView.getAlpha();
            if (n.P) {
                this.f3350c.setPostOnViewCreatedAlpha(alpha);
                Fragment fragment8 = this.f3350c;
                if (fragment8.mContainer != null && visibility == 0) {
                    View viewFindFocus = fragment8.mView.findFocus();
                    if (viewFindFocus != null) {
                        this.f3350c.setFocusedView(viewFindFocus);
                        if (n.F0(2)) {
                            Log.v("FragmentManager", "requestFocus: Saved focused view " + viewFindFocus + " for Fragment " + this.f3350c);
                        }
                    }
                    this.f3350c.mView.setAlpha(0.0f);
                }
            } else {
                Fragment fragment9 = this.f3350c;
                if (visibility == 0 && fragment9.mContainer != null) {
                    z10 = true;
                }
                fragment9.mIsNewlyAdded = z10;
            }
        }
        this.f3350c.mState = 2;
    }

    void g() {
        Fragment fragmentF;
        if (n.F0(3)) {
            Log.d("FragmentManager", "movefrom CREATED: " + this.f3350c);
        }
        Fragment fragment = this.f3350c;
        boolean zIsChangingConfigurations = true;
        boolean z10 = fragment.mRemoving && !fragment.isInBackStack();
        if (!(z10 || this.f3349b.o().t(this.f3350c))) {
            String str = this.f3350c.mTargetWho;
            if (str != null && (fragmentF = this.f3349b.f(str)) != null && fragmentF.mRetainInstance) {
                this.f3350c.mTarget = fragmentF;
            }
            this.f3350c.mState = 0;
            return;
        }
        k<?> kVar = this.f3350c.mHost;
        if (kVar instanceof m0) {
            zIsChangingConfigurations = this.f3349b.o().q();
        } else if (kVar.f() instanceof Activity) {
            zIsChangingConfigurations = true ^ ((Activity) kVar.f()).isChangingConfigurations();
        }
        if (z10 || zIsChangingConfigurations) {
            this.f3349b.o().k(this.f3350c);
        }
        this.f3350c.performDestroy();
        this.f3348a.d(this.f3350c, false);
        for (u uVar : this.f3349b.k()) {
            if (uVar != null) {
                Fragment fragmentK = uVar.k();
                if (this.f3350c.mWho.equals(fragmentK.mTargetWho)) {
                    fragmentK.mTarget = this.f3350c;
                    fragmentK.mTargetWho = null;
                }
            }
        }
        Fragment fragment2 = this.f3350c;
        String str2 = fragment2.mTargetWho;
        if (str2 != null) {
            fragment2.mTarget = this.f3349b.f(str2);
        }
        this.f3349b.q(this);
    }

    void h() {
        View view;
        if (n.F0(3)) {
            Log.d("FragmentManager", "movefrom CREATE_VIEW: " + this.f3350c);
        }
        Fragment fragment = this.f3350c;
        ViewGroup viewGroup = fragment.mContainer;
        if (viewGroup != null && (view = fragment.mView) != null) {
            viewGroup.removeView(view);
        }
        this.f3350c.performDestroyView();
        this.f3348a.n(this.f3350c, false);
        Fragment fragment2 = this.f3350c;
        fragment2.mContainer = null;
        fragment2.mView = null;
        fragment2.mViewLifecycleOwner = null;
        fragment2.mViewLifecycleOwnerLiveData.n(null);
        this.f3350c.mInLayout = false;
    }

    void i() {
        if (n.F0(3)) {
            Log.d("FragmentManager", "movefrom ATTACHED: " + this.f3350c);
        }
        this.f3350c.performDetach();
        boolean z10 = false;
        this.f3348a.e(this.f3350c, false);
        Fragment fragment = this.f3350c;
        fragment.mState = -1;
        fragment.mHost = null;
        fragment.mParentFragment = null;
        fragment.mFragmentManager = null;
        if (fragment.mRemoving && !fragment.isInBackStack()) {
            z10 = true;
        }
        if (z10 || this.f3349b.o().t(this.f3350c)) {
            if (n.F0(3)) {
                Log.d("FragmentManager", "initState called for fragment: " + this.f3350c);
            }
            this.f3350c.initState();
        }
    }

    void j() {
        Fragment fragment = this.f3350c;
        if (fragment.mFromLayout && fragment.mInLayout && !fragment.mPerformedCreateView) {
            if (n.F0(3)) {
                Log.d("FragmentManager", "moveto CREATE_VIEW: " + this.f3350c);
            }
            Fragment fragment2 = this.f3350c;
            fragment2.performCreateView(fragment2.performGetLayoutInflater(fragment2.mSavedFragmentState), null, this.f3350c.mSavedFragmentState);
            View view = this.f3350c.mView;
            if (view != null) {
                view.setSaveFromParentEnabled(false);
                Fragment fragment3 = this.f3350c;
                fragment3.mView.setTag(o0.b.f32867a, fragment3);
                Fragment fragment4 = this.f3350c;
                if (fragment4.mHidden) {
                    fragment4.mView.setVisibility(8);
                }
                this.f3350c.performViewCreated();
                m mVar = this.f3348a;
                Fragment fragment5 = this.f3350c;
                mVar.m(fragment5, fragment5.mView, fragment5.mSavedFragmentState, false);
                this.f3350c.mState = 2;
            }
        }
    }

    Fragment k() {
        return this.f3350c;
    }

    void m() {
        ViewGroup viewGroup;
        ViewGroup viewGroup2;
        ViewGroup viewGroup3;
        if (this.f3351d) {
            if (n.F0(2)) {
                Log.v("FragmentManager", "Ignoring re-entrant call to moveToExpectedState() for " + k());
                return;
            }
            return;
        }
        try {
            this.f3351d = true;
            while (true) {
                int iD = d();
                Fragment fragment = this.f3350c;
                int i10 = fragment.mState;
                if (iD == i10) {
                    if (n.P && fragment.mHiddenChanged) {
                        if (fragment.mView != null && (viewGroup = fragment.mContainer) != null) {
                            c0 c0VarN = c0.n(viewGroup, fragment.getParentFragmentManager());
                            if (this.f3350c.mHidden) {
                                c0VarN.c(this);
                            } else {
                                c0VarN.e(this);
                            }
                        }
                        Fragment fragment2 = this.f3350c;
                        n nVar = fragment2.mFragmentManager;
                        if (nVar != null) {
                            nVar.D0(fragment2);
                        }
                        Fragment fragment3 = this.f3350c;
                        fragment3.mHiddenChanged = false;
                        fragment3.onHiddenChanged(fragment3.mHidden);
                    }
                    return;
                }
                if (iD <= i10) {
                    switch (i10 - 1) {
                        case -1:
                            i();
                            break;
                        case 0:
                            g();
                            break;
                        case 1:
                            h();
                            this.f3350c.mState = 1;
                            break;
                        case 2:
                            fragment.mInLayout = false;
                            fragment.mState = 2;
                            break;
                        case 3:
                            if (n.F0(3)) {
                                Log.d("FragmentManager", "movefrom ACTIVITY_CREATED: " + this.f3350c);
                            }
                            Fragment fragment4 = this.f3350c;
                            if (fragment4.mView != null && fragment4.mSavedViewState == null) {
                                s();
                            }
                            Fragment fragment5 = this.f3350c;
                            if (fragment5.mView != null && (viewGroup3 = fragment5.mContainer) != null) {
                                c0.n(viewGroup3, fragment5.getParentFragmentManager()).d(this);
                            }
                            this.f3350c.mState = 3;
                            break;
                        case 4:
                            v();
                            break;
                        case 5:
                            fragment.mState = 5;
                            break;
                        case 6:
                            n();
                            break;
                    }
                } else {
                    switch (i10 + 1) {
                        case 0:
                            c();
                            break;
                        case 1:
                            e();
                            break;
                        case 2:
                            j();
                            f();
                            break;
                        case 3:
                            a();
                            break;
                        case 4:
                            if (fragment.mView != null && (viewGroup2 = fragment.mContainer) != null) {
                                c0.n(viewGroup2, fragment.getParentFragmentManager()).b(c0.e.c.e(this.f3350c.mView.getVisibility()), this);
                            }
                            this.f3350c.mState = 4;
                            break;
                        case 5:
                            u();
                            break;
                        case 6:
                            fragment.mState = 6;
                            break;
                        case 7:
                            p();
                            break;
                    }
                }
            }
        } finally {
            this.f3351d = false;
        }
    }

    void n() {
        if (n.F0(3)) {
            Log.d("FragmentManager", "movefrom RESUMED: " + this.f3350c);
        }
        this.f3350c.performPause();
        this.f3348a.f(this.f3350c, false);
    }

    void o(ClassLoader classLoader) {
        Bundle bundle = this.f3350c.mSavedFragmentState;
        if (bundle == null) {
            return;
        }
        bundle.setClassLoader(classLoader);
        Fragment fragment = this.f3350c;
        fragment.mSavedViewState = fragment.mSavedFragmentState.getSparseParcelableArray("android:view_state");
        Fragment fragment2 = this.f3350c;
        fragment2.mSavedViewRegistryState = fragment2.mSavedFragmentState.getBundle("android:view_registry_state");
        Fragment fragment3 = this.f3350c;
        fragment3.mTargetWho = fragment3.mSavedFragmentState.getString("android:target_state");
        Fragment fragment4 = this.f3350c;
        if (fragment4.mTargetWho != null) {
            fragment4.mTargetRequestCode = fragment4.mSavedFragmentState.getInt("android:target_req_state", 0);
        }
        Fragment fragment5 = this.f3350c;
        Boolean bool = fragment5.mSavedUserVisibleHint;
        if (bool != null) {
            fragment5.mUserVisibleHint = bool.booleanValue();
            this.f3350c.mSavedUserVisibleHint = null;
        } else {
            fragment5.mUserVisibleHint = fragment5.mSavedFragmentState.getBoolean("android:user_visible_hint", true);
        }
        Fragment fragment6 = this.f3350c;
        if (fragment6.mUserVisibleHint) {
            return;
        }
        fragment6.mDeferStart = true;
    }

    void p() {
        if (n.F0(3)) {
            Log.d("FragmentManager", "moveto RESUMED: " + this.f3350c);
        }
        View focusedView = this.f3350c.getFocusedView();
        if (focusedView != null && l(focusedView)) {
            boolean zRequestFocus = focusedView.requestFocus();
            if (n.F0(2)) {
                StringBuilder sb = new StringBuilder();
                sb.append("requestFocus: Restoring focused view ");
                sb.append(focusedView);
                sb.append(" ");
                sb.append(zRequestFocus ? AnalyticsEvents.PARAMETER_SHARE_OUTCOME_SUCCEEDED : "failed");
                sb.append(" on Fragment ");
                sb.append(this.f3350c);
                sb.append(" resulting in focused view ");
                sb.append(this.f3350c.mView.findFocus());
                Log.v("FragmentManager", sb.toString());
            }
        }
        this.f3350c.setFocusedView(null);
        this.f3350c.performResume();
        this.f3348a.i(this.f3350c, false);
        Fragment fragment = this.f3350c;
        fragment.mSavedFragmentState = null;
        fragment.mSavedViewState = null;
        fragment.mSavedViewRegistryState = null;
    }

    t r() {
        t tVar = new t(this.f3350c);
        Fragment fragment = this.f3350c;
        if (fragment.mState <= -1 || tVar.A != null) {
            tVar.A = fragment.mSavedFragmentState;
        } else {
            Bundle bundleQ = q();
            tVar.A = bundleQ;
            if (this.f3350c.mTargetWho != null) {
                if (bundleQ == null) {
                    tVar.A = new Bundle();
                }
                tVar.A.putString("android:target_state", this.f3350c.mTargetWho);
                int i10 = this.f3350c.mTargetRequestCode;
                if (i10 != 0) {
                    tVar.A.putInt("android:target_req_state", i10);
                }
            }
        }
        return tVar;
    }

    void s() {
        if (this.f3350c.mView == null) {
            return;
        }
        SparseArray<Parcelable> sparseArray = new SparseArray<>();
        this.f3350c.mView.saveHierarchyState(sparseArray);
        if (sparseArray.size() > 0) {
            this.f3350c.mSavedViewState = sparseArray;
        }
        Bundle bundle = new Bundle();
        this.f3350c.mViewLifecycleOwner.e(bundle);
        if (bundle.isEmpty()) {
            return;
        }
        this.f3350c.mSavedViewRegistryState = bundle;
    }

    void t(int i10) {
        this.f3352e = i10;
    }

    void u() {
        if (n.F0(3)) {
            Log.d("FragmentManager", "moveto STARTED: " + this.f3350c);
        }
        this.f3350c.performStart();
        this.f3348a.k(this.f3350c, false);
    }

    void v() {
        if (n.F0(3)) {
            Log.d("FragmentManager", "movefrom STARTED: " + this.f3350c);
        }
        this.f3350c.performStop();
        this.f3348a.l(this.f3350c, false);
    }

    u(m mVar, v vVar, ClassLoader classLoader, j jVar, t tVar) {
        this.f3348a = mVar;
        this.f3349b = vVar;
        Fragment fragmentA = jVar.a(classLoader, tVar.f3336o);
        this.f3350c = fragmentA;
        Bundle bundle = tVar.f3345x;
        if (bundle != null) {
            bundle.setClassLoader(classLoader);
        }
        fragmentA.setArguments(tVar.f3345x);
        fragmentA.mWho = tVar.f3337p;
        fragmentA.mFromLayout = tVar.f3338q;
        fragmentA.mRestored = true;
        fragmentA.mFragmentId = tVar.f3339r;
        fragmentA.mContainerId = tVar.f3340s;
        fragmentA.mTag = tVar.f3341t;
        fragmentA.mRetainInstance = tVar.f3342u;
        fragmentA.mRemoving = tVar.f3343v;
        fragmentA.mDetached = tVar.f3344w;
        fragmentA.mHidden = tVar.f3346y;
        fragmentA.mMaxState = j.c.values()[tVar.f3347z];
        Bundle bundle2 = tVar.A;
        if (bundle2 != null) {
            fragmentA.mSavedFragmentState = bundle2;
        } else {
            fragmentA.mSavedFragmentState = new Bundle();
        }
        if (n.F0(2)) {
            Log.v("FragmentManager", "Instantiated fragment " + fragmentA);
        }
    }

    u(m mVar, v vVar, Fragment fragment, t tVar) {
        this.f3348a = mVar;
        this.f3349b = vVar;
        this.f3350c = fragment;
        fragment.mSavedViewState = null;
        fragment.mSavedViewRegistryState = null;
        fragment.mBackStackNesting = 0;
        fragment.mInLayout = false;
        fragment.mAdded = false;
        Fragment fragment2 = fragment.mTarget;
        fragment.mTargetWho = fragment2 != null ? fragment2.mWho : null;
        fragment.mTarget = null;
        Bundle bundle = tVar.A;
        if (bundle != null) {
            fragment.mSavedFragmentState = bundle;
        } else {
            fragment.mSavedFragmentState = new Bundle();
        }
    }
}
