package com.google.android.gms.internal.ads;

import android.media.AudioTrack;
import android.os.Handler;
import android.os.Looper;
import java.util.concurrent.Executor;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzpd {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Handler f20383a = new Handler(Looper.myLooper());

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final AudioTrack.StreamEventCallback f20384b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final /* synthetic */ zzpf f20385c;

    public zzpd(zzpf zzpfVar) {
        this.f20385c = zzpfVar;
        this.f20384b = new zzpc(this, zzpfVar);
    }

    public final void a(AudioTrack audioTrack) {
        final Handler handler = this.f20383a;
        audioTrack.registerStreamEventCallback(new Executor() { // from class: com.google.android.gms.internal.ads.zzpb
            @Override // java.util.concurrent.Executor
            public final void execute(Runnable runnable) {
                handler.post(runnable);
            }
        }, this.f20384b);
    }

    public final void b(AudioTrack audioTrack) {
        audioTrack.unregisterStreamEventCallback(this.f20384b);
        this.f20383a.removeCallbacksAndMessages(null);
    }
}
