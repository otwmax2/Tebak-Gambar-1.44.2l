package com.google.android.gms.internal.ads;

import android.view.View;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzcem implements View.OnAttachStateChangeListener {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    final /* synthetic */ zzbwb f12007o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    final /* synthetic */ zzcep f12008p;

    zzcem(zzcep zzcepVar, zzbwb zzbwbVar) {
        this.f12008p = zzcepVar;
        this.f12007o = zzbwbVar;
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewAttachedToWindow(View view) {
        this.f12008p.w(view, this.f12007o, 10);
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewDetachedFromWindow(View view) {
    }
}
