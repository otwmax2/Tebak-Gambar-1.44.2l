package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.tasks.TaskCompletionSource;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzflv extends zzfml {

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    final /* synthetic */ zzfme f18415p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    final /* synthetic */ int f18416q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    final /* synthetic */ zzfmc f18417r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    final /* synthetic */ TaskCompletionSource f18418s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    final /* synthetic */ zzflx f18419t;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    zzflv(zzflx zzflxVar, TaskCompletionSource taskCompletionSource, zzfme zzfmeVar, int i10, zzfmc zzfmcVar, TaskCompletionSource taskCompletionSource2) {
        super(taskCompletionSource);
        this.f18419t = zzflxVar;
        this.f18415p = zzfmeVar;
        this.f18416q = i10;
        this.f18417r = zzfmcVar;
        this.f18418s = taskCompletionSource2;
    }

    /* JADX WARN: Type inference failed for: r0v3, types: [android.os.IInterface, com.google.android.gms.internal.ads.zzfmh] */
    @Override // com.google.android.gms.internal.ads.zzfml
    protected final void a() {
        try {
            ?? E = this.f18419t.f18424a.e();
            zzfme zzfmeVar = this.f18415p;
            String str = this.f18419t.f18425b;
            int i10 = this.f18416q;
            Bundle bundle = new Bundle();
            bundle.putString("sessionToken", zzfmeVar.b());
            bundle.putInt("displayMode", i10);
            bundle.putString("callerPackage", str);
            bundle.putString("appId", zzfmeVar.a());
            E.z5(bundle, new zzflw(this.f18419t, this.f18417r));
        } catch (RemoteException e10) {
            zzflx.f18422c.b(e10, "switchDisplayMode overlay display to %d from: %s", Integer.valueOf(this.f18416q), this.f18419t.f18425b);
            this.f18418s.d(new RuntimeException(e10));
        }
    }
}
