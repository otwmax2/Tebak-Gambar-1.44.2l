package com.google.android.gms.common.internal;

import android.app.PendingIntent;
import android.os.Bundle;
import com.google.android.gms.common.ConnectionResult;

/* JADX INFO: compiled from: com.google.android.gms:play-services-basement@@18.1.0 */
/* JADX INFO: loaded from: classes.dex */
abstract class h extends zzc {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int f7446d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Bundle f7447e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    final /* synthetic */ BaseGmsClient f7448f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    protected h(BaseGmsClient baseGmsClient, int i10, Bundle bundle) {
        super(baseGmsClient, Boolean.TRUE);
        this.f7448f = baseGmsClient;
        this.f7446d = i10;
        this.f7447e = bundle;
    }

    @Override // com.google.android.gms.common.internal.zzc
    protected final /* bridge */ /* synthetic */ void a(Object obj) {
        if (this.f7446d != 0) {
            this.f7448f.n0(1, null);
            Bundle bundle = this.f7447e;
            f(new ConnectionResult(this.f7446d, bundle != null ? (PendingIntent) bundle.getParcelable("pendingIntent") : null));
        } else {
            if (g()) {
                return;
            }
            this.f7448f.n0(1, null);
            f(new ConnectionResult(8, null));
        }
    }

    @Override // com.google.android.gms.common.internal.zzc
    protected final void b() {
    }

    protected abstract void f(ConnectionResult connectionResult);

    protected abstract boolean g();
}
