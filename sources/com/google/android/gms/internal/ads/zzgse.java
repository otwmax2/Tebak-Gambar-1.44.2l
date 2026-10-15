package com.google.android.gms.internal.ads;

import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzgse {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final zzgse f19570c = new zzgse();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final ConcurrentMap f19572b = new ConcurrentHashMap();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzgsq f19571a = new zzgro();

    private zzgse() {
    }

    public static zzgse a() {
        return f19570c;
    }

    public final zzgsp b(Class cls) {
        zzgqw.f(cls, "messageType");
        zzgsp zzgspVarC = (zzgsp) this.f19572b.get(cls);
        if (zzgspVarC == null) {
            zzgspVarC = this.f19571a.c(cls);
            zzgqw.f(cls, "messageType");
            zzgqw.f(zzgspVarC, "schema");
            zzgsp zzgspVar = (zzgsp) this.f19572b.putIfAbsent(cls, zzgspVarC);
            if (zzgspVar != null) {
                return zzgspVar;
            }
        }
        return zzgspVarC;
    }
}
