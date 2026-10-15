package com.google.android.gms.internal.ads;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.content.Context;
import android.content.Intent;
import com.google.android.gms.tasks.TaskCompletionSource;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
@SuppressLint({"RestrictedApi"})
@TargetApi(18)
final class zzflx {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final zzfmk f18422c = new zzfmk("OverlayDisplayService");

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final Intent f18423d = new Intent("com.google.android.play.core.lmd.BIND_OVERLAY_DISPLAY_SERVICE").setPackage("com.android.vending");

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final zzfmv f18424a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f18425b;

    zzflx(Context context) {
        if (zzfmy.a(context)) {
            this.f18424a = new zzfmv(context.getApplicationContext(), f18422c, "OverlayDisplayService", f18423d, zzfls.f18406a, null, null);
        } else {
            this.f18424a = null;
        }
        this.f18425b = context.getPackageName();
    }

    final void c() {
        if (this.f18424a == null) {
            return;
        }
        f18422c.c("unbind LMD display overlay service", new Object[0]);
        this.f18424a.u();
    }

    final void d(zzflo zzfloVar, zzfmc zzfmcVar) {
        if (this.f18424a == null) {
            f18422c.a("error: %s", "Play Store not found.");
        } else {
            TaskCompletionSource taskCompletionSource = new TaskCompletionSource();
            this.f18424a.s(new zzflu(this, taskCompletionSource, zzfloVar, zzfmcVar, taskCompletionSource), taskCompletionSource);
        }
    }

    final void e(zzflz zzflzVar, zzfmc zzfmcVar) {
        if (this.f18424a == null) {
            f18422c.a("error: %s", "Play Store not found.");
            return;
        }
        if (zzflzVar.g() != null) {
            TaskCompletionSource taskCompletionSource = new TaskCompletionSource();
            this.f18424a.s(new zzflt(this, taskCompletionSource, zzflzVar, zzfmcVar, taskCompletionSource), taskCompletionSource);
        } else {
            f18422c.a("Failed to convert OverlayDisplayShowRequest when to create a new session: appId cannot be null.", new Object[0]);
            zzfma zzfmaVarC = zzfmb.c();
            zzfmaVarC.b(8160);
            zzfmcVar.a(zzfmaVarC.c());
        }
    }

    final void f(zzfme zzfmeVar, zzfmc zzfmcVar, int i10) {
        if (this.f18424a == null) {
            f18422c.a("error: %s", "Play Store not found.");
        } else {
            TaskCompletionSource taskCompletionSource = new TaskCompletionSource();
            this.f18424a.s(new zzflv(this, taskCompletionSource, zzfmeVar, i10, zzfmcVar, taskCompletionSource), taskCompletionSource);
        }
    }
}
