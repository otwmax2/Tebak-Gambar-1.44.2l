package com.google.android.gms.internal.base;

import android.graphics.drawable.Drawable;

/* JADX INFO: compiled from: com.google.android.gms:play-services-base@@18.0.1 */
/* JADX INFO: loaded from: classes2.dex */
final class zah extends Drawable.ConstantState {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    int f21652a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    int f21653b;

    zah(zah zahVar) {
        if (zahVar != null) {
            this.f21652a = zahVar.f21652a;
            this.f21653b = zahVar.f21653b;
        }
    }

    @Override // android.graphics.drawable.Drawable.ConstantState
    public final int getChangingConfigurations() {
        return this.f21652a;
    }

    @Override // android.graphics.drawable.Drawable.ConstantState
    public final Drawable newDrawable() {
        return new zai(this);
    }
}
