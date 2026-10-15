package com.google.android.gms.ads.internal.util;

import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes.dex */
final class d implements Runnable {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    final /* synthetic */ Context f6039o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    final /* synthetic */ String f6040p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    final /* synthetic */ boolean f6041q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    final /* synthetic */ boolean f6042r;

    d(zzaw zzawVar, Context context, String str, boolean z10, boolean z11) {
        this.f6039o = context;
        this.f6040p = str;
        this.f6041q = z10;
        this.f6042r = z11;
    }

    @Override // java.lang.Runnable
    public final void run() {
        com.google.android.gms.ads.internal.zzt.r();
        AlertDialog.Builder builderG = zzs.g(this.f6039o);
        builderG.setMessage(this.f6040p);
        if (this.f6041q) {
            builderG.setTitle("Error");
        } else {
            builderG.setTitle("Info");
        }
        if (this.f6042r) {
            builderG.setNeutralButton("Dismiss", (DialogInterface.OnClickListener) null);
        } else {
            builderG.setPositiveButton("Learn More", new c(this));
            builderG.setNegativeButton("Dismiss", (DialogInterface.OnClickListener) null);
        }
        builderG.create().show();
    }
}
