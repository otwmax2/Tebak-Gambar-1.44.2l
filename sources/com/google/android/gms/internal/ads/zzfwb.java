package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.util.Collections;
import java.util.Set;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzfwb implements zzfwe {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ zzfvy f18772a;

    zzfwb(zzfvy zzfvyVar) {
        this.f18772a = zzfvyVar;
    }

    @Override // com.google.android.gms.internal.ads.zzfwe
    public final Class a() {
        return this.f18772a.getClass();
    }

    @Override // com.google.android.gms.internal.ads.zzfwe
    public final Set b() {
        return Collections.singleton(this.f18772a.a());
    }

    @Override // com.google.android.gms.internal.ads.zzfwe
    public final zzfvy c(Class cls) throws GeneralSecurityException {
        if (this.f18772a.a().equals(cls)) {
            return this.f18772a;
        }
        throw new InternalError("This should never be called, as we always first check supportedPrimitives.");
    }

    @Override // com.google.android.gms.internal.ads.zzfwe
    public final Class d() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzfwe
    public final zzfvy zzb() {
        return this.f18772a;
    }
}
