package com.google.android.gms.internal.ads;

import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.Executor;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
@Deprecated
public final class zzdpn extends zzdpp {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final zzfds f15340i;

    public zzdpn(Executor executor, zzbzf zzbzfVar, zzfds zzfdsVar, zzfdu zzfduVar) {
        super(executor, zzbzfVar, zzfduVar);
        this.f15340i = zzfdsVar;
        zzfdsVar.a(this.f15344b);
    }

    public final Map f() {
        return new HashMap(this.f15344b);
    }
}
