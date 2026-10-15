package com.google.android.gms.internal.auth;

import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;

/* JADX INFO: compiled from: com.google.android.gms:play-services-auth-base@@17.1.4 */
/* JADX INFO: loaded from: classes2.dex */
final class zzfy {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final zzfy f21537c = new zzfy();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final ConcurrentMap<Class<?>, zzgb<?>> f21539b = new ConcurrentHashMap();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzgc f21538a = new zzfi();

    private zzfy() {
    }

    public static zzfy a() {
        return f21537c;
    }

    public final <T> zzgb<T> b(Class<T> cls) {
        zzev.f(cls, "messageType");
        zzgb<T> zzgbVarC = (zzgb) this.f21539b.get(cls);
        if (zzgbVarC == null) {
            zzgbVarC = this.f21538a.c(cls);
            zzev.f(cls, "messageType");
            zzev.f(zzgbVarC, "schema");
            zzgb<T> zzgbVar = (zzgb) this.f21539b.putIfAbsent(cls, zzgbVarC);
            if (zzgbVar != null) {
                return zzgbVar;
            }
        }
        return zzgbVarC;
    }
}
