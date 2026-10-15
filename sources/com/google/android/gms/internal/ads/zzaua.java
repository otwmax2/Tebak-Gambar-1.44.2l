package com.google.android.gms.internal.ads;

import android.view.View;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzaua implements Runnable {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    final /* synthetic */ View f9948o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    final /* synthetic */ zzaue f9949p;

    zzaua(zzaue zzaueVar, View view) {
        this.f9949p = zzaueVar;
        this.f9948o = view;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f9949p.c(this.f9948o);
    }
}
