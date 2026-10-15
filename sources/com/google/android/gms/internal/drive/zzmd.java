package com.google.android.gms.internal.drive;

import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;

/* JADX INFO: loaded from: classes2.dex */
final class zzmd {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final zzmd f22270c = new zzmd();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final ConcurrentMap<Class<?>, zzmf<?>> f22272b = new ConcurrentHashMap();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzmg f22271a = new zzlf();

    private zzmd() {
    }

    public static zzmd a() {
        return f22270c;
    }

    public final <T> zzmf<T> b(Class<T> cls) {
        zzkm.e(cls, "messageType");
        zzmf<T> zzmfVar = (zzmf) this.f22272b.get(cls);
        if (zzmfVar != null) {
            return zzmfVar;
        }
        zzmf<T> zzmfVarA = this.f22271a.a(cls);
        zzkm.e(cls, "messageType");
        zzkm.e(zzmfVarA, "schema");
        zzmf<T> zzmfVar2 = (zzmf) this.f22272b.putIfAbsent(cls, zzmfVarA);
        return zzmfVar2 != null ? zzmfVar2 : zzmfVarA;
    }

    public final <T> zzmf<T> c(T t10) {
        return b(t10.getClass());
    }
}
