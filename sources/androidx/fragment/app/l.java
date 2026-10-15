package androidx.fragment.app;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;

/* JADX INFO: compiled from: FragmentLayoutInflaterFactory.java */
/* JADX INFO: loaded from: classes.dex */
class l implements LayoutInflater.Factory2 {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    final n f3264o;

    /* JADX INFO: compiled from: FragmentLayoutInflaterFactory.java */
    class a implements View.OnAttachStateChangeListener {

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        final /* synthetic */ u f3265o;

        a(u uVar) {
            this.f3265o = uVar;
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewAttachedToWindow(View view) {
            Fragment fragmentK = this.f3265o.k();
            this.f3265o.m();
            c0.n((ViewGroup) fragmentK.mView.getParent(), l.this.f3264o).j();
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewDetachedFromWindow(View view) {
        }
    }

    l(n nVar) {
        this.f3264o = nVar;
    }

    @Override // android.view.LayoutInflater.Factory
    public View onCreateView(String str, Context context, AttributeSet attributeSet) {
        return onCreateView(null, str, context, attributeSet);
    }

    @Override // android.view.LayoutInflater.Factory2
    public View onCreateView(View view, String str, Context context, AttributeSet attributeSet) {
        u uVarW;
        if (h.class.getName().equals(str)) {
            return new h(context, attributeSet, this.f3264o);
        }
        if (!"fragment".equals(str)) {
            return null;
        }
        String attributeValue = attributeSet.getAttributeValue(null, "class");
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, o0.c.f32873d);
        if (attributeValue == null) {
            attributeValue = typedArrayObtainStyledAttributes.getString(o0.c.f32874e);
        }
        int resourceId = typedArrayObtainStyledAttributes.getResourceId(o0.c.f32875f, -1);
        String string = typedArrayObtainStyledAttributes.getString(o0.c.f32876g);
        typedArrayObtainStyledAttributes.recycle();
        if (attributeValue == null || !j.b(context.getClassLoader(), attributeValue)) {
            return null;
        }
        int id = view != null ? view.getId() : 0;
        if (id == -1 && resourceId == -1 && string == null) {
            throw new IllegalArgumentException(attributeSet.getPositionDescription() + ": Must specify unique android:id, android:tag, or have a parent with an id for " + attributeValue);
        }
        Fragment fragmentH0 = resourceId != -1 ? this.f3264o.h0(resourceId) : null;
        if (fragmentH0 == null && string != null) {
            fragmentH0 = this.f3264o.i0(string);
        }
        if (fragmentH0 == null && id != -1) {
            fragmentH0 = this.f3264o.h0(id);
        }
        if (fragmentH0 == null) {
            fragmentH0 = this.f3264o.q0().a(context.getClassLoader(), attributeValue);
            fragmentH0.mFromLayout = true;
            fragmentH0.mFragmentId = resourceId != 0 ? resourceId : id;
            fragmentH0.mContainerId = id;
            fragmentH0.mTag = string;
            fragmentH0.mInLayout = true;
            n nVar = this.f3264o;
            fragmentH0.mFragmentManager = nVar;
            fragmentH0.mHost = nVar.t0();
            fragmentH0.onInflate(this.f3264o.t0().f(), attributeSet, fragmentH0.mSavedFragmentState);
            uVarW = this.f3264o.g(fragmentH0);
            if (n.F0(2)) {
                Log.v("FragmentManager", "Fragment " + fragmentH0 + " has been inflated via the <fragment> tag: id=0x" + Integer.toHexString(resourceId));
            }
        } else {
            if (fragmentH0.mInLayout) {
                throw new IllegalArgumentException(attributeSet.getPositionDescription() + ": Duplicate id 0x" + Integer.toHexString(resourceId) + ", tag " + string + ", or parent id 0x" + Integer.toHexString(id) + " with another fragment for " + attributeValue);
            }
            fragmentH0.mInLayout = true;
            n nVar2 = this.f3264o;
            fragmentH0.mFragmentManager = nVar2;
            fragmentH0.mHost = nVar2.t0();
            fragmentH0.onInflate(this.f3264o.t0().f(), attributeSet, fragmentH0.mSavedFragmentState);
            uVarW = this.f3264o.w(fragmentH0);
            if (n.F0(2)) {
                Log.v("FragmentManager", "Retained Fragment " + fragmentH0 + " has been re-attached via the <fragment> tag: id=0x" + Integer.toHexString(resourceId));
            }
        }
        fragmentH0.mContainer = (ViewGroup) view;
        uVarW.m();
        uVarW.j();
        View view2 = fragmentH0.mView;
        if (view2 == null) {
            throw new IllegalStateException("Fragment " + attributeValue + " did not create a view.");
        }
        if (resourceId != 0) {
            view2.setId(resourceId);
        }
        if (fragmentH0.mView.getTag() == null) {
            fragmentH0.mView.setTag(string);
        }
        fragmentH0.mView.addOnAttachStateChangeListener(new a(uVarW));
        return fragmentH0.mView;
    }
}
