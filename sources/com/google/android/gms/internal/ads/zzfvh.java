package com.google.android.gms.internal.ads;

import java.util.Objects;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzfvh extends zzfus {

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final zzftp f18757q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    final /* synthetic */ zzfvj f18758r;

    zzfvh(zzfvj zzfvjVar, zzftp zzftpVar) {
        this.f18758r = zzfvjVar;
        Objects.requireNonNull(zzftpVar);
        this.f18757q = zzftpVar;
    }

    @Override // com.google.android.gms.internal.ads.zzfus
    final /* bridge */ /* synthetic */ Object a() throws Exception {
        zzfut zzfutVarZza = this.f18757q.zza();
        zzfnu.d(zzfutVarZza, "AsyncCallable.call returned null instead of a Future. Did you mean to return immediateFuture(null)? %s", this.f18757q);
        return zzfutVarZza;
    }

    @Override // com.google.android.gms.internal.ads.zzfus
    final String b() {
        return this.f18757q.toString();
    }

    @Override // com.google.android.gms.internal.ads.zzfus
    final void d(Throwable th) {
        this.f18758r.i(th);
    }

    @Override // com.google.android.gms.internal.ads.zzfus
    final /* synthetic */ void e(Object obj) {
        this.f18758r.w((zzfut) obj);
    }

    @Override // com.google.android.gms.internal.ads.zzfus
    final boolean f() {
        return this.f18758r.isDone();
    }
}
