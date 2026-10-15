package com.google.android.gms.internal.ads;

import com.vungle.mediation.BuildConfig;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes.dex */
final class zzevl implements zzfnj {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ zzevp f17476a;

    zzevl(zzevp zzevpVar) {
        this.f17476a = zzevpVar;
    }

    @Override // com.google.android.gms.internal.ads.zzfnj
    @NullableDecl
    public final /* bridge */ /* synthetic */ Object a(@NullableDecl Object obj) {
        zzbza.e(BuildConfig.FLAVOR, (zzdvi) obj);
        com.google.android.gms.ads.internal.util.zze.k("Failed to get a cache key, reverting to legacy flow.");
        zzevp zzevpVar = this.f17476a;
        zzevpVar.f17483d = new zzevo(null, zzevpVar.e(), null);
        return this.f17476a.f17483d;
    }
}
