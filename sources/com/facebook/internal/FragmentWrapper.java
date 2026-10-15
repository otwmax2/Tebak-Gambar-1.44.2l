package com.facebook.internal;

import android.app.Activity;
import android.app.Fragment;
import android.content.Intent;

/* JADX INFO: compiled from: FragmentWrapper.kt */
/* JADX INFO: loaded from: classes.dex */
public final class FragmentWrapper {
    private Fragment nativeFragment;
    private androidx.fragment.app.Fragment supportFragment;

    public FragmentWrapper(androidx.fragment.app.Fragment fragment) {
        t9.m.e(fragment, "fragment");
        this.supportFragment = fragment;
    }

    public final Activity getActivity() {
        androidx.fragment.app.Fragment fragment = this.supportFragment;
        if (fragment != null) {
            if (fragment == null) {
                return null;
            }
            return fragment.getActivity();
        }
        Fragment fragment2 = this.nativeFragment;
        if (fragment2 == null) {
            return null;
        }
        return fragment2.getActivity();
    }

    public final Fragment getNativeFragment() {
        return this.nativeFragment;
    }

    public final androidx.fragment.app.Fragment getSupportFragment() {
        return this.supportFragment;
    }

    public final void startActivityForResult(Intent intent, int i10) {
        androidx.fragment.app.Fragment fragment = this.supportFragment;
        if (fragment != null) {
            if (fragment == null) {
                return;
            }
            fragment.startActivityForResult(intent, i10);
        } else {
            Fragment fragment2 = this.nativeFragment;
            if (fragment2 == null) {
                return;
            }
            fragment2.startActivityForResult(intent, i10);
        }
    }

    public FragmentWrapper(Fragment fragment) {
        t9.m.e(fragment, "fragment");
        this.nativeFragment = fragment;
    }
}
