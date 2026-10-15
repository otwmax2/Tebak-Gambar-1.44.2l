package com.google.android.gms.dynamic;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import androidx.fragment.app.Fragment;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.dynamic.IFragmentWrapper;

/* JADX INFO: compiled from: com.google.android.gms:play-services-basement@@18.1.0 */
/* JADX INFO: loaded from: classes.dex */
@KeepForSdk
public final class SupportFragmentWrapper extends IFragmentWrapper.Stub {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private Fragment f7909o;

    private SupportFragmentWrapper(Fragment fragment) {
        this.f7909o = fragment;
    }

    @KeepForSdk
    public static SupportFragmentWrapper X0(Fragment fragment) {
        if (fragment != null) {
            return new SupportFragmentWrapper(fragment);
        }
        return null;
    }

    @Override // com.google.android.gms.dynamic.IFragmentWrapper
    public final void A1(boolean z10) {
        this.f7909o.setHasOptionsMenu(z10);
    }

    @Override // com.google.android.gms.dynamic.IFragmentWrapper
    public final boolean B() {
        return this.f7909o.isVisible();
    }

    @Override // com.google.android.gms.dynamic.IFragmentWrapper
    public final boolean C() {
        return this.f7909o.isHidden();
    }

    @Override // com.google.android.gms.dynamic.IFragmentWrapper
    public final void C0(boolean z10) {
        this.f7909o.setMenuVisibility(z10);
    }

    @Override // com.google.android.gms.dynamic.IFragmentWrapper
    public final boolean E() {
        return this.f7909o.isRemoving();
    }

    @Override // com.google.android.gms.dynamic.IFragmentWrapper
    public final void F4(Intent intent, int i10) {
        this.f7909o.startActivityForResult(intent, i10);
    }

    @Override // com.google.android.gms.dynamic.IFragmentWrapper
    public final void G0(boolean z10) {
        this.f7909o.setRetainInstance(z10);
    }

    @Override // com.google.android.gms.dynamic.IFragmentWrapper
    public final boolean N() {
        return this.f7909o.isResumed();
    }

    @Override // com.google.android.gms.dynamic.IFragmentWrapper
    public final int a() {
        return this.f7909o.getTargetRequestCode();
    }

    @Override // com.google.android.gms.dynamic.IFragmentWrapper
    public final IFragmentWrapper b() {
        return X0(this.f7909o.getParentFragment());
    }

    @Override // com.google.android.gms.dynamic.IFragmentWrapper
    public final IFragmentWrapper c() {
        return X0(this.f7909o.getTargetFragment());
    }

    @Override // com.google.android.gms.dynamic.IFragmentWrapper
    public final void c0(IObjectWrapper iObjectWrapper) {
        View view = (View) ObjectWrapper.t1(iObjectWrapper);
        Fragment fragment = this.f7909o;
        Preconditions.k(view);
        fragment.unregisterForContextMenu(view);
    }

    @Override // com.google.android.gms.dynamic.IFragmentWrapper
    public final void c1(IObjectWrapper iObjectWrapper) {
        View view = (View) ObjectWrapper.t1(iObjectWrapper);
        Fragment fragment = this.f7909o;
        Preconditions.k(view);
        fragment.registerForContextMenu(view);
    }

    @Override // com.google.android.gms.dynamic.IFragmentWrapper
    public final Bundle d() {
        return this.f7909o.getArguments();
    }

    @Override // com.google.android.gms.dynamic.IFragmentWrapper
    public final IObjectWrapper e() {
        return ObjectWrapper.Q4(this.f7909o.getActivity());
    }

    @Override // com.google.android.gms.dynamic.IFragmentWrapper
    public final IObjectWrapper f() {
        return ObjectWrapper.Q4(this.f7909o.getResources());
    }

    @Override // com.google.android.gms.dynamic.IFragmentWrapper
    public final IObjectWrapper g() {
        return ObjectWrapper.Q4(this.f7909o.getView());
    }

    @Override // com.google.android.gms.dynamic.IFragmentWrapper
    public final String h() {
        return this.f7909o.getTag();
    }

    @Override // com.google.android.gms.dynamic.IFragmentWrapper
    public final boolean q() {
        return this.f7909o.getRetainInstance();
    }

    @Override // com.google.android.gms.dynamic.IFragmentWrapper
    public final boolean t() {
        return this.f7909o.isDetached();
    }

    @Override // com.google.android.gms.dynamic.IFragmentWrapper
    public final boolean v() {
        return this.f7909o.isAdded();
    }

    @Override // com.google.android.gms.dynamic.IFragmentWrapper
    public final void v4(Intent intent) {
        this.f7909o.startActivity(intent);
    }

    @Override // com.google.android.gms.dynamic.IFragmentWrapper
    public final void w9(boolean z10) {
        this.f7909o.setUserVisibleHint(z10);
    }

    @Override // com.google.android.gms.dynamic.IFragmentWrapper
    public final boolean x() {
        return this.f7909o.getUserVisibleHint();
    }

    @Override // com.google.android.gms.dynamic.IFragmentWrapper
    public final boolean y() {
        return this.f7909o.isInLayout();
    }

    @Override // com.google.android.gms.dynamic.IFragmentWrapper
    public final int zzb() {
        return this.f7909o.getId();
    }
}
