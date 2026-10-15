package com.google.android.gms.internal.ads;

import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.ConcurrentMap;
import javax.annotation.Nullable;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes.dex */
public final class zzfxb {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ConcurrentMap f18811a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final zzfwx f18812b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Class f18813c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final zzggl f18814d;

    /* synthetic */ zzfxb(ConcurrentMap concurrentMap, zzfwx zzfwxVar, zzggl zzgglVar, Class cls, zzfxa zzfxaVar) {
        this.f18811a = concurrentMap;
        this.f18812b = zzfwxVar;
        this.f18813c = cls;
        this.f18814d = zzgglVar;
    }

    @Nullable
    public final zzfwx a() {
        return this.f18812b;
    }

    public final zzggl b() {
        return this.f18814d;
    }

    public final Class c() {
        return this.f18813c;
    }

    public final Collection d() {
        return this.f18811a.values();
    }

    public final List e(byte[] bArr) {
        List list = (List) this.f18811a.get(new zzfwz(bArr, null));
        return list != null ? list : Collections.emptyList();
    }

    public final boolean f() {
        return !this.f18814d.a().isEmpty();
    }
}
