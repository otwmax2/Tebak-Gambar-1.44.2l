package com.google.android.gms.internal.auth;

import com.google.android.gms.common.api.Status;

/* JADX INFO: compiled from: com.google.android.gms:play-services-auth-base@@17.1.4 */
/* JADX INFO: loaded from: classes2.dex */
final class zzaf extends zzah {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    final /* synthetic */ zzag f21325o;

    zzaf(zzag zzagVar) {
        this.f21325o = zzagVar;
    }

    @Override // com.google.android.gms.internal.auth.zzah, com.google.android.gms.auth.account.zzb
    public final void Y5(boolean z10) {
        this.f21325o.k(new zzak(z10 ? Status.f6973u : zzal.f21332a));
    }
}
