package com.google.android.gms.internal.ads;

import java.util.Map;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzfdx implements zzfdk {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzfdu f17976a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final zzfds f17977b;

    public zzfdx(zzfdu zzfduVar, zzfds zzfdsVar) {
        this.f17976a = zzfduVar;
        this.f17977b = zzfdsVar;
    }

    @Override // com.google.android.gms.internal.ads.zzfdk
    public final void a(zzfdj zzfdjVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzfdk
    public final String b(zzfdj zzfdjVar) {
        zzfdu zzfduVar = this.f17976a;
        Map mapJ = zzfdjVar.j();
        this.f17977b.a(mapJ);
        return zzfduVar.a(mapJ);
    }
}
