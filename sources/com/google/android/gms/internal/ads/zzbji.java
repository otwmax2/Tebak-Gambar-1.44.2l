package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.DeadObjectException;
import com.google.android.gms.common.internal.BaseGmsClient;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzbji implements BaseGmsClient.BaseConnectionCallbacks {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    final /* synthetic */ zzbzs f10794o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    final /* synthetic */ zzbjk f10795p;

    zzbji(zzbjk zzbjkVar, zzbzs zzbzsVar) {
        this.f10795p = zzbjkVar;
        this.f10794o = zzbzsVar;
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.BaseConnectionCallbacks
    public final void P0(int i10) {
        this.f10794o.d(new RuntimeException("onConnectionSuspended: " + i10));
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.BaseConnectionCallbacks
    public final void t1(Bundle bundle) {
        try {
            this.f10794o.c(this.f10795p.f10797a.o0());
        } catch (DeadObjectException e10) {
            this.f10794o.d(e10);
        }
    }
}
