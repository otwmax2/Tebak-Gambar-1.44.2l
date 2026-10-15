package com.google.android.gms.internal.measurement;

import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-base@@20.1.2 */
/* JADX INFO: loaded from: classes2.dex */
final class zzlr {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final zzlr f23724c = new zzlr();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final ConcurrentMap f23726b = new ConcurrentHashMap();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzlv f23725a = new zzlb();

    private zzlr() {
    }

    public static zzlr a() {
        return f23724c;
    }

    public final zzlu b(Class cls) {
        zzkk.f(cls, "messageType");
        zzlu zzluVarC = (zzlu) this.f23726b.get(cls);
        if (zzluVarC == null) {
            zzluVarC = this.f23725a.c(cls);
            zzkk.f(cls, "messageType");
            zzkk.f(zzluVarC, "schema");
            zzlu zzluVar = (zzlu) this.f23726b.putIfAbsent(cls, zzluVarC);
            if (zzluVar != null) {
                return zzluVar;
            }
        }
        return zzluVarC;
    }
}
