package com.google.android.gms.internal.ads;

import android.content.DialogInterface;
import android.webkit.JsResult;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzcea implements DialogInterface.OnCancelListener {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    final /* synthetic */ JsResult f11992o;

    zzcea(JsResult jsResult) {
        this.f11992o = jsResult;
    }

    @Override // android.content.DialogInterface.OnCancelListener
    public final void onCancel(DialogInterface dialogInterface) {
        this.f11992o.cancel();
    }
}
