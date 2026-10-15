package com.google.android.gms.internal.ads;

import android.media.AudioManager;
import android.os.Handler;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzgx implements AudioManager.OnAudioFocusChangeListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Handler f19730a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final /* synthetic */ zzgz f19731b;

    public zzgx(zzgz zzgzVar, Handler handler) {
        this.f19731b = zzgzVar;
        this.f19730a = handler;
    }

    @Override // android.media.AudioManager.OnAudioFocusChangeListener
    public final void onAudioFocusChange(final int i10) {
        this.f19730a.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzgw
            @Override // java.lang.Runnable
            public final void run() {
                zzgx zzgxVar = this.f19677o;
                zzgz.c(zzgxVar.f19731b, i10);
            }
        });
    }
}
