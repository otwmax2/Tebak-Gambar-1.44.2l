package com.google.android.gms.common.internal;

import android.os.Bundle;
import android.os.IBinder;
import android.util.Log;
import com.google.android.gms.common.util.VisibleForTesting;

/* JADX INFO: compiled from: com.google.android.gms:play-services-basement@@18.1.0 */
/* JADX INFO: loaded from: classes.dex */
@VisibleForTesting
public final class zzd extends zzab {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private BaseGmsClient f7511o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final int f7512p;

    public zzd(BaseGmsClient baseGmsClient, int i10) {
        this.f7511o = baseGmsClient;
        this.f7512p = i10;
    }

    @Override // com.google.android.gms.common.internal.IGmsCallbacks
    public final void N6(int i10, IBinder iBinder, zzj zzjVar) {
        BaseGmsClient baseGmsClient = this.f7511o;
        Preconditions.l(baseGmsClient, "onPostInitCompleteWithConnectionInfo can be called only once per call togetRemoteService");
        Preconditions.k(zzjVar);
        BaseGmsClient.h0(baseGmsClient, zzjVar);
        m6(i10, iBinder, zzjVar.f7518o);
    }

    @Override // com.google.android.gms.common.internal.IGmsCallbacks
    public final void m6(int i10, IBinder iBinder, Bundle bundle) {
        Preconditions.l(this.f7511o, "onPostInitComplete can be called only once per call to getRemoteService");
        this.f7511o.S(i10, iBinder, bundle, this.f7512p);
        this.f7511o = null;
    }

    @Override // com.google.android.gms.common.internal.IGmsCallbacks
    public final void p0(int i10, Bundle bundle) {
        Log.wtf("GmsClient", "received deprecated onAccountValidationComplete callback, ignoring", new Exception());
    }
}
