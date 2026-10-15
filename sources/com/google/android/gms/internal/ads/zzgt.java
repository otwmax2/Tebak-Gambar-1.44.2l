package com.google.android.gms.internal.ads;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Handler;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzgt extends BroadcastReceiver implements Runnable {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final zzgu f19605o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final Handler f19606p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    final /* synthetic */ zzgv f19607q;

    public zzgt(zzgv zzgvVar, Handler handler, zzgu zzguVar) {
        this.f19607q = zzgvVar;
        this.f19606p = handler;
        this.f19605o = zzguVar;
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        if ("android.media.AUDIO_BECOMING_NOISY".equals(intent.getAction())) {
            this.f19606p.post(this);
        }
    }

    @Override // java.lang.Runnable
    public final void run() {
    }
}
