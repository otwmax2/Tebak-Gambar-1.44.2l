package com.google.android.gms.internal.ads;

import android.content.DialogInterface;
import android.webkit.JsPromptResult;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzced implements DialogInterface.OnCancelListener {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    final /* synthetic */ JsPromptResult f11995o;

    zzced(JsPromptResult jsPromptResult) {
        this.f11995o = jsPromptResult;
    }

    @Override // android.content.DialogInterface.OnCancelListener
    public final void onCancel(DialogInterface dialogInterface) {
        this.f11995o.cancel();
    }
}
