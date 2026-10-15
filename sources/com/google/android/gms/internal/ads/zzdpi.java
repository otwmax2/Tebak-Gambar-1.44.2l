package com.google.android.gms.internal.ads;

import java.util.Map;
import java.util.concurrent.Executor;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
@Deprecated
public final class zzdpi {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzdpn f15325a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Executor f15326b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Map f15327c;

    public zzdpi(zzdpn zzdpnVar, Executor executor) {
        this.f15325a = zzdpnVar;
        this.f15327c = zzdpnVar.f();
        this.f15326b = executor;
    }

    public final zzdph a() {
        zzdph zzdphVar = new zzdph(this);
        zzdph.a(zzdphVar);
        return zzdphVar;
    }
}
