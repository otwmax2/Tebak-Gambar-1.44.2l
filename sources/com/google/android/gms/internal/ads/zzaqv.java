package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.pm.PackageInfo;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzaqv implements Runnable {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    final /* synthetic */ int f9746o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    final /* synthetic */ zzaqx f9747p;

    zzaqv(zzaqx zzaqxVar, int i10, boolean z10) {
        this.f9747p = zzaqxVar;
        this.f9746o = i10;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzans zzansVarA;
        zzaqx zzaqxVar = this.f9747p;
        if (this.f9746o > 0) {
            try {
                Thread.sleep(r1 * 1000);
            } catch (InterruptedException unused) {
            }
        }
        try {
            PackageInfo packageInfo = zzaqxVar.f9750a.getPackageManager().getPackageInfo(zzaqxVar.f9750a.getPackageName(), 0);
            Context context = zzaqxVar.f9750a;
            zzansVarA = zzfhx.a(context, context.getPackageName(), Integer.toString(packageInfo.versionCode));
        } catch (Throwable unused2) {
            zzansVarA = null;
        }
        this.f9747p.f9759j = zzansVarA;
        if (this.f9746o < 4) {
            if (zzansVarA != null && zzansVarA.t0() && !zzansVarA.I0().equals("0000000000000000000000000000000000000000000000000000000000000000") && zzansVarA.u0() && zzansVarA.G0().L() && zzansVarA.G0().I() != -2) {
                return;
            }
            this.f9747p.o(this.f9746o + 1, true);
        }
    }
}
