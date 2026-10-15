package com.google.android.gms.internal.firebase_auth;

import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;

/* JADX INFO: compiled from: com.google.firebase:firebase-auth@@19.3.1 */
/* JADX INFO: loaded from: classes2.dex */
final class zzjz {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final zzjz f22831c = new zzjz();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final ConcurrentMap<Class<?>, zzkd<?>> f22833b = new ConcurrentHashMap();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzkg f22832a = new zzje();

    private zzjz() {
    }

    public static zzjz a() {
        return f22831c;
    }

    public final <T> zzkd<T> b(Class<T> cls) {
        zzii.f(cls, "messageType");
        zzkd<T> zzkdVar = (zzkd) this.f22833b.get(cls);
        if (zzkdVar != null) {
            return zzkdVar;
        }
        zzkd<T> zzkdVarC = this.f22832a.c(cls);
        zzii.f(cls, "messageType");
        zzii.f(zzkdVarC, "schema");
        zzkd<T> zzkdVar2 = (zzkd) this.f22833b.putIfAbsent(cls, zzkdVarC);
        return zzkdVar2 != null ? zzkdVar2 : zzkdVarC;
    }

    public final <T> zzkd<T> c(T t10) {
        return b(t10.getClass());
    }
}
