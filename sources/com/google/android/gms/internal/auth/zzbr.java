package com.google.android.gms.internal.auth;

import com.google.android.gms.common.api.Status;

/* JADX INFO: compiled from: com.google.android.gms:play-services-auth-base@@17.1.4 */
/* JADX INFO: loaded from: classes2.dex */
final class zzbr extends zzbd {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    final /* synthetic */ zzbs f21353o;

    zzbr(zzbs zzbsVar) {
        this.f21353o = zzbsVar;
    }

    @Override // com.google.android.gms.internal.auth.zzbd, com.google.android.gms.internal.auth.zzbg
    public final void D(String str) {
        if (str != null) {
            this.f21353o.k(new zzbv(str));
        } else {
            this.f21353o.k(new zzbv(new Status(3006)));
        }
    }
}
