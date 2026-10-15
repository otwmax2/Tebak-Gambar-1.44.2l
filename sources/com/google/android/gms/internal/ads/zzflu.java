package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.tasks.TaskCompletionSource;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzflu extends zzfml {

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    final /* synthetic */ zzflo f18411p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    final /* synthetic */ zzfmc f18412q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    final /* synthetic */ TaskCompletionSource f18413r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    final /* synthetic */ zzflx f18414s;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    zzflu(zzflx zzflxVar, TaskCompletionSource taskCompletionSource, zzflo zzfloVar, zzfmc zzfmcVar, TaskCompletionSource taskCompletionSource2) {
        super(taskCompletionSource);
        this.f18414s = zzflxVar;
        this.f18411p = zzfloVar;
        this.f18412q = zzfmcVar;
        this.f18413r = taskCompletionSource2;
    }

    /* JADX WARN: Type inference failed for: r0v3, types: [android.os.IInterface, com.google.android.gms.internal.ads.zzfmh] */
    @Override // com.google.android.gms.internal.ads.zzfml
    protected final void a() {
        try {
            ?? E = this.f18414s.f18424a.e();
            zzflo zzfloVar = this.f18411p;
            String str = this.f18414s.f18425b;
            Bundle bundle = new Bundle();
            bundle.putString("sessionToken", zzfloVar.b());
            bundle.putString("callerPackage", str);
            bundle.putString("appId", zzfloVar.a());
            E.i8(bundle, new zzflw(this.f18414s, this.f18412q));
        } catch (RemoteException e10) {
            zzflx.f18422c.b(e10, "dismiss overlay display from: %s", this.f18414s.f18425b);
            this.f18413r.d(new RuntimeException(e10));
        }
    }
}
