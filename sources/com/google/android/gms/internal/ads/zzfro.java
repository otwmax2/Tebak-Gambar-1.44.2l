package com.google.android.gms.internal.ads;

import java.util.Collection;
import java.util.Map;
import java.util.Set;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzfro extends zzfoo {

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    final transient zzfok f18633t;

    zzfro(Map map, zzfok zzfokVar) {
        super(map);
        this.f18633t = zzfokVar;
    }

    @Override // com.google.android.gms.internal.ads.zzfpf, com.google.android.gms.internal.ads.zzfpi
    final Map d() {
        return r();
    }

    @Override // com.google.android.gms.internal.ads.zzfpf, com.google.android.gms.internal.ads.zzfpi
    final Set e() {
        return s();
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [java.lang.Object, java.util.Collection] */
    @Override // com.google.android.gms.internal.ads.zzfoo, com.google.android.gms.internal.ads.zzfpf
    protected final /* bridge */ /* synthetic */ Collection h() {
        return this.f18633t.zza();
    }
}
