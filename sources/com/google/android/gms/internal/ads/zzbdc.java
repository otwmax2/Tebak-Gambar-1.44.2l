package com.google.android.gms.internal.ads;

import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzbdc {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final AtomicReference f10622a = new AtomicReference();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final AtomicReference f10623b = new AtomicReference();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    static final AtomicBoolean f10624c = new AtomicBoolean();

    static zzbda a() {
        return (zzbda) f10622a.get();
    }

    static zzbdb b() {
        return (zzbdb) f10623b.get();
    }

    public static void c(zzbda zzbdaVar) {
        f10622a.set(zzbdaVar);
    }
}
