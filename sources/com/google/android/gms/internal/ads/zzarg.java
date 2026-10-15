package com.google.android.gms.internal.ads;

import android.app.AppOpsManager;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzarg implements AppOpsManager.OnOpActiveChangedListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ zzarh f9809a;

    zzarg(zzarh zzarhVar) {
        this.f9809a = zzarhVar;
    }

    @Override // android.app.AppOpsManager.OnOpActiveChangedListener
    public final void onOpActiveChanged(String str, int i10, String str2, boolean z10) {
        if (z10) {
            this.f9809a.f9811a = System.currentTimeMillis();
            this.f9809a.f9814d = true;
        } else {
            long jCurrentTimeMillis = System.currentTimeMillis();
            zzarh zzarhVar = this.f9809a;
            if (zzarhVar.f9812b > 0 && jCurrentTimeMillis >= zzarhVar.f9812b) {
                zzarhVar.f9813c = jCurrentTimeMillis - zzarhVar.f9812b;
            }
            this.f9809a.f9814d = false;
        }
    }
}
