package com.google.android.gms.internal.ads;

import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes.dex */
final class zzevd implements zzfuf {
    zzevd(zzevf zzevfVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzfuf
    public final void a(Throwable th) {
        com.google.android.gms.ads.internal.util.zze.k("Notification of cache hit failed.");
    }

    @Override // com.google.android.gms.internal.ads.zzfuf
    public final /* synthetic */ void c(@NullableDecl Object obj) {
        com.google.android.gms.ads.internal.util.zze.k("Notification of cache hit successful.");
    }
}
