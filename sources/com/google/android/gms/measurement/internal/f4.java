package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import android.os.RemoteException;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-sdk@@20.1.2 */
/* JADX INFO: loaded from: classes2.dex */
final class f4 implements zzhj {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final com.google.android.gms.internal.measurement.zzci f24092a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final /* synthetic */ AppMeasurementDynamiteService f24093b;

    f4(AppMeasurementDynamiteService appMeasurementDynamiteService, com.google.android.gms.internal.measurement.zzci zzciVar) {
        this.f24093b = appMeasurementDynamiteService;
        this.f24092a = zzciVar;
    }

    @Override // com.google.android.gms.measurement.internal.zzhj
    public final void a(String str, String str2, Bundle bundle, long j10) {
        try {
            this.f24092a.L1(str, str2, bundle, j10);
        } catch (RemoteException e10) {
            zzgi zzgiVar = this.f24093b.f23971o;
            if (zzgiVar != null) {
                zzgiVar.U().r().b("Event listener threw exception", e10);
            }
        }
    }
}
