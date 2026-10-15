package com.google.android.gms.ads.internal;

import android.view.MotionEvent;
import android.view.View;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes.dex */
final class c implements View.OnTouchListener {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    final /* synthetic */ zzs f5719o;

    c(zzs zzsVar) {
        this.f5719o = zzsVar;
    }

    @Override // android.view.View.OnTouchListener
    public final boolean onTouch(View view, MotionEvent motionEvent) {
        zzs zzsVar = this.f5719o;
        if (zzsVar.f6241v == null) {
            return false;
        }
        zzsVar.f6241v.d(motionEvent);
        return false;
    }
}
