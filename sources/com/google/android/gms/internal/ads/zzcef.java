package com.google.android.gms.internal.ads;

import android.content.DialogInterface;
import android.webkit.JsPromptResult;
import android.widget.EditText;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzcef implements DialogInterface.OnClickListener {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    final /* synthetic */ JsPromptResult f11997o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    final /* synthetic */ EditText f11998p;

    zzcef(JsPromptResult jsPromptResult, EditText editText) {
        this.f11997o = jsPromptResult;
        this.f11998p = editText;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i10) {
        this.f11997o.confirm(this.f11998p.getText().toString());
    }
}
