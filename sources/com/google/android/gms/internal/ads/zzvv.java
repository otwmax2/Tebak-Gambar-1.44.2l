package com.google.android.gms.internal.ads;

import android.content.Context;
import android.media.AudioFormat;
import android.media.AudioManager;
import android.media.Spatializer;
import android.os.Handler;
import android.os.Looper;
import java.util.concurrent.Executor;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzvv {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Spatializer f20898a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final boolean f20899b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Handler f20900c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Spatializer.OnSpatializerStateChangedListener f20901d;

    private zzvv(Spatializer spatializer) {
        this.f20898a = spatializer;
        this.f20899b = spatializer.getImmersiveAudioLevel() != 0;
    }

    public static zzvv a(Context context) {
        AudioManager audioManager = (AudioManager) context.getSystemService("audio");
        if (audioManager == null) {
            return null;
        }
        return new zzvv(audioManager.getSpatializer());
    }

    public final void b(zzwc zzwcVar, Looper looper) {
        if (this.f20901d == null && this.f20900c == null) {
            this.f20901d = new zzvu(this, zzwcVar);
            final Handler handler = new Handler(looper);
            this.f20900c = handler;
            this.f20898a.addOnSpatializerStateChangedListener(new Executor() { // from class: com.google.android.gms.internal.ads.zzvt
                @Override // java.util.concurrent.Executor
                public final void execute(Runnable runnable) {
                    handler.post(runnable);
                }
            }, this.f20901d);
        }
    }

    public final void c() {
        Spatializer.OnSpatializerStateChangedListener onSpatializerStateChangedListener = this.f20901d;
        if (onSpatializerStateChangedListener == null || this.f20900c == null) {
            return;
        }
        this.f20898a.removeOnSpatializerStateChangedListener(onSpatializerStateChangedListener);
        Handler handler = this.f20900c;
        int i10 = zzew.f17494a;
        handler.removeCallbacksAndMessages(null);
        this.f20900c = null;
        this.f20901d = null;
    }

    public final boolean d(zzk zzkVar, zzaf zzafVar) {
        AudioFormat.Builder channelMask = new AudioFormat.Builder().setEncoding(2).setChannelMask(zzew.U(("audio/eac3-joc".equals(zzafVar.f8731l) && zzafVar.f8744y == 16) ? 12 : zzafVar.f8744y));
        int i10 = zzafVar.f8745z;
        if (i10 != -1) {
            channelMask.setSampleRate(i10);
        }
        return this.f20898a.canBeSpatialized(zzkVar.a().f19844a, channelMask.build());
    }

    public final boolean e() {
        return this.f20898a.isAvailable();
    }

    public final boolean f() {
        return this.f20898a.isEnabled();
    }

    public final boolean g() {
        return this.f20899b;
    }
}
