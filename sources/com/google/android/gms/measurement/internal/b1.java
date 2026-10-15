package com.google.android.gms.measurement.internal;

import android.util.Log;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-impl@@20.1.2 */
/* JADX INFO: loaded from: classes2.dex */
final class b1 implements zzes {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ zzgi f23988a;

    b1(zzhl zzhlVar, zzgi zzgiVar) {
        this.f23988a = zzgiVar;
    }

    @Override // com.google.android.gms.measurement.internal.zzes
    public final boolean zza() {
        return this.f23988a.l() && Log.isLoggable(this.f23988a.U().z(), 3);
    }
}
