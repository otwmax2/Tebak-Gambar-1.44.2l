package com.google.android.gms.internal.ads;

import java.util.Map;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzfdq implements zzfdk {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzfdu f17963a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final zzfds f17964b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final zzfdh f17965c;

    public zzfdq(zzfdh zzfdhVar, zzfdu zzfduVar, zzfds zzfdsVar, byte[] bArr) {
        this.f17965c = zzfdhVar;
        this.f17963a = zzfduVar;
        this.f17964b = zzfdsVar;
    }

    @Override // com.google.android.gms.internal.ads.zzfdk
    public final void a(zzfdj zzfdjVar) {
        this.f17965c.b(b(zzfdjVar));
    }

    @Override // com.google.android.gms.internal.ads.zzfdk
    public final String b(zzfdj zzfdjVar) {
        zzfdu zzfduVar = this.f17963a;
        Map mapJ = zzfdjVar.j();
        this.f17964b.a(mapJ);
        return zzfduVar.a(mapJ);
    }
}
