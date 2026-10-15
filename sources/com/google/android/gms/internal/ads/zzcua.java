package com.google.android.gms.internal.ads;

import android.content.Context;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzcua implements zzgwy {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzctz f14056a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final zzgxl f14057b;

    public zzcua(zzctz zzctzVar, zzgxl zzgxlVar) {
        this.f14056a = zzctzVar;
        this.f14057b = zzgxlVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgxl
    public final /* bridge */ /* synthetic */ Object zzb() {
        Context contextA = this.f14056a.a(((zzcgj) this.f14057b).a());
        zzgxg.b(contextA);
        return contextA;
    }
}
