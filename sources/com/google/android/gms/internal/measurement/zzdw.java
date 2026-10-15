package com.google.android.gms.internal.measurement;

import android.app.Activity;
import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.dynamic.ObjectWrapper;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-sdk-api@@20.1.2 */
/* JADX INFO: loaded from: classes2.dex */
final class zzdw extends zzdt {

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    final /* synthetic */ Bundle f23457s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    final /* synthetic */ Activity f23458t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    final /* synthetic */ zzed f23459u;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    zzdw(zzed zzedVar, Bundle bundle, Activity activity) {
        super(zzedVar.f23474o, true);
        this.f23459u = zzedVar;
        this.f23457s = bundle;
        this.f23458t = activity;
    }

    @Override // com.google.android.gms.internal.measurement.zzdt
    final void a() throws RemoteException {
        Bundle bundle;
        if (this.f23457s != null) {
            bundle = new Bundle();
            if (this.f23457s.containsKey("com.google.app_measurement.screen_service")) {
                Object obj = this.f23457s.get("com.google.app_measurement.screen_service");
                if (obj instanceof Bundle) {
                    bundle.putBundle("com.google.app_measurement.screen_service", (Bundle) obj);
                }
            }
        } else {
            bundle = null;
        }
        ((zzcc) Preconditions.k(this.f23459u.f23474o.f23484i)).onActivityCreated(ObjectWrapper.Q4(this.f23458t), bundle, this.f23452p);
    }
}
