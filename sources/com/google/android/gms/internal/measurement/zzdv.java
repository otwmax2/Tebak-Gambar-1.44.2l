package com.google.android.gms.internal.measurement;

import android.os.Bundle;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-sdk-api@@20.1.2 */
/* JADX INFO: loaded from: classes2.dex */
final class zzdv extends zzch {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final com.google.android.gms.measurement.internal.zzhj f23456o;

    zzdv(com.google.android.gms.measurement.internal.zzhj zzhjVar) {
        this.f23456o = zzhjVar;
    }

    @Override // com.google.android.gms.internal.measurement.zzci
    public final void L1(String str, String str2, Bundle bundle, long j10) {
        this.f23456o.a(str, str2, bundle, j10);
    }

    @Override // com.google.android.gms.internal.measurement.zzci
    public final int d() {
        return System.identityHashCode(this.f23456o);
    }
}
