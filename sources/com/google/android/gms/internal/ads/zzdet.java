package com.google.android.gms.internal.ads;

import java.util.Collections;
import java.util.Set;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzdet implements zzgwy {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzgxl f14465a;

    public zzdet(zzgxl zzgxlVar) {
        this.f14465a = zzgxlVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgxl
    public final /* bridge */ /* synthetic */ Object zzb() {
        Set setSingleton = ((zzdeq) this.f14465a).a().e() != null ? Collections.singleton("banner") : Collections.emptySet();
        zzgxg.b(setSingleton);
        return setSingleton;
    }
}
