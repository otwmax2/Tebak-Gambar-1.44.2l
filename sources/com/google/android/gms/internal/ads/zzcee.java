package com.google.android.gms.internal.ads;

import android.content.DialogInterface;
import android.webkit.JsPromptResult;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzcee implements DialogInterface.OnClickListener {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    final /* synthetic */ JsPromptResult f11996o;

    zzcee(JsPromptResult jsPromptResult) {
        this.f11996o = jsPromptResult;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i10) {
        this.f11996o.cancel();
    }
}
