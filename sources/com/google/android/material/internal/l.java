package com.google.android.material.internal;

import android.annotation.SuppressLint;
import android.widget.ImageButton;

/* JADX INFO: compiled from: VisibilityAwareImageButton.java */
/* JADX INFO: loaded from: classes2.dex */
@SuppressLint({"AppCompatCustomView"})
public class l extends ImageButton {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private int f25571o;

    public final void b(int i10, boolean z10) {
        super.setVisibility(i10);
        if (z10) {
            this.f25571o = i10;
        }
    }

    public final int getUserSetVisibility() {
        return this.f25571o;
    }

    @Override // android.widget.ImageView, android.view.View
    public void setVisibility(int i10) {
        b(i10, true);
    }
}
