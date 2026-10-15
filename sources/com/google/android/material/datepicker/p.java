package com.google.android.material.datepicker;

import androidx.fragment.app.Fragment;
import java.util.LinkedHashSet;

/* JADX INFO: compiled from: PickerFragment.java */
/* JADX INFO: loaded from: classes2.dex */
abstract class p<S> extends Fragment {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    protected final LinkedHashSet<o<S>> f25408o = new LinkedHashSet<>();

    p() {
    }

    boolean o(o<S> oVar) {
        return this.f25408o.add(oVar);
    }

    void p() {
        this.f25408o.clear();
    }
}
