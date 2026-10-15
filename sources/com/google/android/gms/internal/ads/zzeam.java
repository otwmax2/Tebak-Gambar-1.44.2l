package com.google.android.gms.internal.ads;

import android.app.AlertDialog;
import java.util.Timer;
import java.util.TimerTask;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzeam extends TimerTask {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    final /* synthetic */ AlertDialog f16100o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    final /* synthetic */ Timer f16101p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    final /* synthetic */ com.google.android.gms.ads.internal.overlay.zzl f16102q;

    zzeam(AlertDialog alertDialog, Timer timer, com.google.android.gms.ads.internal.overlay.zzl zzlVar) {
        this.f16100o = alertDialog;
        this.f16101p = timer;
        this.f16102q = zzlVar;
    }

    @Override // java.util.TimerTask, java.lang.Runnable
    public final void run() {
        this.f16100o.dismiss();
        this.f16101p.cancel();
        com.google.android.gms.ads.internal.overlay.zzl zzlVar = this.f16102q;
        if (zzlVar != null) {
            zzlVar.zzb();
        }
    }
}
