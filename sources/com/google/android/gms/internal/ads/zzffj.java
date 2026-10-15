package com.google.android.gms.internal.ads;

import android.app.Application;
import android.content.Context;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzffj {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private boolean f18087a;

    final void a(Context context) {
        zzfgr.b(context, "Application Context cannot be null");
        if (this.f18087a) {
            return;
        }
        this.f18087a = true;
        zzfgf.b().c(context);
        zzfga zzfgaVarA = zzfga.a();
        if (context instanceof Application) {
            ((Application) context).registerActivityLifecycleCallbacks(zzfgaVarA);
        }
        zzfgp.g(context);
        zzfgc.b().c(context);
    }

    final boolean b() {
        return this.f18087a;
    }
}
