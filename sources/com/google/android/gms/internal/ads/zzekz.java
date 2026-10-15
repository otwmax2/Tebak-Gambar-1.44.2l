package com.google.android.gms.internal.ads;

import android.content.Context;
import android.media.AudioManager;
import java.util.concurrent.Callable;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzekz implements zzepn {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzfuu f16876a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Context f16877b;

    public zzekz(zzfuu zzfuuVar, Context context) {
        this.f16876a = zzfuuVar;
        this.f16877b = context;
    }

    final /* synthetic */ zzela a() throws Exception {
        int i10;
        AudioManager audioManager = (AudioManager) this.f16877b.getSystemService("audio");
        int mode = audioManager.getMode();
        boolean zIsMusicActive = audioManager.isMusicActive();
        boolean zIsSpeakerphoneOn = audioManager.isSpeakerphoneOn();
        int streamVolume = audioManager.getStreamVolume(3);
        int streamMaxVolume = -1;
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.f10300m9)).booleanValue()) {
            i10 = com.google.android.gms.ads.internal.zzt.s().i(audioManager);
            streamMaxVolume = audioManager.getStreamMaxVolume(3);
        } else {
            i10 = -1;
        }
        return new zzela(mode, zIsMusicActive, zIsSpeakerphoneOn, streamVolume, i10, streamMaxVolume, audioManager.getRingerMode(), audioManager.getStreamVolume(2), com.google.android.gms.ads.internal.zzt.t().a(), com.google.android.gms.ads.internal.zzt.t().e());
    }

    @Override // com.google.android.gms.internal.ads.zzepn
    public final int zza() {
        return 13;
    }

    @Override // com.google.android.gms.internal.ads.zzepn
    public final zzfut zzb() {
        return this.f16876a.e(new Callable() { // from class: com.google.android.gms.internal.ads.zzeky
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.f16875a.a();
            }
        });
    }
}
