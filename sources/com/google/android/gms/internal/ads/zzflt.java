package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.tasks.TaskCompletionSource;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzflt extends zzfml {

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    final /* synthetic */ zzflz f18407p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    final /* synthetic */ zzfmc f18408q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    final /* synthetic */ TaskCompletionSource f18409r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    final /* synthetic */ zzflx f18410s;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    zzflt(zzflx zzflxVar, TaskCompletionSource taskCompletionSource, zzflz zzflzVar, zzfmc zzfmcVar, TaskCompletionSource taskCompletionSource2) {
        super(taskCompletionSource);
        this.f18410s = zzflxVar;
        this.f18407p = zzflzVar;
        this.f18408q = zzfmcVar;
        this.f18409r = taskCompletionSource2;
    }

    /* JADX WARN: Type inference failed for: r1v3, types: [android.os.IInterface, com.google.android.gms.internal.ads.zzfmh] */
    @Override // com.google.android.gms.internal.ads.zzfml
    protected final void a() {
        try {
            ?? E = this.f18410s.f18424a.e();
            zzflx zzflxVar = this.f18410s;
            String str = zzflxVar.f18425b;
            zzflz zzflzVar = this.f18407p;
            String str2 = zzflxVar.f18425b;
            Bundle bundle = new Bundle();
            bundle.putBinder("windowToken", zzflzVar.e());
            bundle.putString("adFieldEnifd", zzflzVar.f());
            bundle.putInt("layoutGravity", zzflzVar.c());
            bundle.putFloat("layoutVerticalMargin", zzflzVar.a());
            bundle.putInt("displayMode", 0);
            bundle.putInt("windowWidthPx", zzflzVar.d());
            bundle.putBoolean("stableSessionToken", false);
            bundle.putString("callerPackage", str2);
            if (zzflzVar.g() != null) {
                bundle.putString("appId", zzflzVar.g());
            }
            E.M9(str, bundle, new zzflw(this.f18410s, this.f18408q));
        } catch (RemoteException e10) {
            zzflx.f18422c.b(e10, "show overlay display from: %s", this.f18410s.f18425b);
            this.f18409r.d(new RuntimeException(e10));
        }
    }
}
