package com.google.android.gms.internal.auth;

import com.google.android.gms.auth.api.proxy.ProxyResponse;

/* JADX INFO: compiled from: com.google.android.gms:play-services-auth-base@@17.1.4 */
/* JADX INFO: loaded from: classes2.dex */
final class zzbp extends zzbd {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    final /* synthetic */ zzbq f21351o;

    zzbp(zzbq zzbqVar) {
        this.f21351o = zzbqVar;
    }

    @Override // com.google.android.gms.internal.auth.zzbd, com.google.android.gms.internal.auth.zzbg
    public final void E1(ProxyResponse proxyResponse) {
        this.f21351o.k(new zzbu(proxyResponse));
    }
}
