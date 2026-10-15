package com.google.android.gms.internal.firebase_messaging;

import d6.d;
import d6.f;
import java.io.IOException;
import java.io.OutputStream;
import java.util.Map;

/* JADX INFO: compiled from: com.google.firebase:firebase-messaging@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzae {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Map<Class<?>, d<?>> f22985a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Map<Class<?>, f<?>> f22986b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final d<Object> f22987c;

    zzae(Map<Class<?>, d<?>> map, Map<Class<?>, f<?>> map2, d<Object> dVar) {
        this.f22985a = map;
        this.f22986b = map2;
        this.f22987c = dVar;
    }

    public final void a(Object obj, OutputStream outputStream) throws IOException {
        new zzab(outputStream, this.f22985a, this.f22986b, this.f22987c).k(obj);
    }
}
