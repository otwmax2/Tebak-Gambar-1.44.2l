package com.google.android.gms.common.internal;

import android.os.Bundle;
import com.google.android.gms.common.ConnectionResult;

/* JADX INFO: compiled from: com.google.android.gms:play-services-basement@@18.1.0 */
/* JADX INFO: loaded from: classes.dex */
public final class zzg extends h {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    final /* synthetic */ BaseGmsClient f7517g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzg(BaseGmsClient baseGmsClient, int i10, Bundle bundle) {
        super(baseGmsClient, i10, null);
        this.f7517g = baseGmsClient;
    }

    @Override // com.google.android.gms.common.internal.h
    protected final void f(ConnectionResult connectionResult) {
        if (this.f7517g.y() && BaseGmsClient.m0(this.f7517g)) {
            BaseGmsClient.i0(this.f7517g, 16);
        } else {
            this.f7517g.D.a(connectionResult);
            this.f7517g.Q(connectionResult);
        }
    }

    @Override // com.google.android.gms.common.internal.h
    protected final boolean g() {
        this.f7517g.D.a(ConnectionResult.f6898s);
        return true;
    }
}
