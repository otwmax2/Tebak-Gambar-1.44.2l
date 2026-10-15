package com.google.android.material.textfield;

import android.content.Context;
import com.google.android.material.internal.CheckableImageButton;

/* JADX INFO: compiled from: EndIconDelegate.java */
/* JADX INFO: loaded from: classes2.dex */
abstract class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    TextInputLayout f25691a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    Context f25692b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    CheckableImageButton f25693c;

    e(TextInputLayout textInputLayout) {
        this.f25691a = textInputLayout;
        this.f25692b = textInputLayout.getContext();
        this.f25693c = textInputLayout.getEndIconView();
    }

    abstract void a();

    boolean b(int i10) {
        return true;
    }

    void c(boolean z10) {
    }

    boolean d() {
        return false;
    }
}
