package com.google.android.gms.internal.ads;

import android.media.MediaPlayer;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzcaf implements Runnable {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    final /* synthetic */ MediaPlayer f11651o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    final /* synthetic */ zzcan f11652p;

    zzcaf(zzcan zzcanVar, MediaPlayer mediaPlayer) {
        this.f11652p = zzcanVar;
        this.f11651o = mediaPlayer;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzcan.J(this.f11652p, this.f11651o);
        zzcan zzcanVar = this.f11652p;
        if (zzcanVar.E != null) {
            zzcanVar.E.c();
        }
    }
}
