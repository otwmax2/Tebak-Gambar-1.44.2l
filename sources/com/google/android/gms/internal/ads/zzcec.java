package com.google.android.gms.internal.ads;

import android.content.DialogInterface;
import android.webkit.JsResult;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzcec implements DialogInterface.OnClickListener {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    final /* synthetic */ JsResult f11994o;

    zzcec(JsResult jsResult) {
        this.f11994o = jsResult;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i10) {
        this.f11994o.confirm();
    }
}
