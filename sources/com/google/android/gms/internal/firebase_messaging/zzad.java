package com.google.android.gms.internal.firebase_messaging;

import d6.d;
import d6.f;
import e6.b;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: compiled from: com.google.firebase:firebase-messaging@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzad implements b<zzad> {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final d<Object> f22980d = zzac.f22979a;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final /* synthetic */ int f22981e = 0;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Map<Class<?>, d<?>> f22982a = new HashMap();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Map<Class<?>, f<?>> f22983b = new HashMap();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final d<Object> f22984c = f22980d;

    @Override // e6.b
    public final /* bridge */ /* synthetic */ b a(Class cls, d dVar) {
        this.f22982a.put(cls, dVar);
        this.f22983b.remove(cls);
        return this;
    }

    public final zzae b() {
        return new zzae(new HashMap(this.f22982a), new HashMap(this.f22983b), this.f22984c);
    }
}
