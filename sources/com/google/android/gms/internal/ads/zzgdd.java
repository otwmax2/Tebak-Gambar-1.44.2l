package com.google.android.gms.internal.ads;

import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzgdd {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final zzgdd f19047b = new zzgdd();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final zzgdc f19048c = new zzgdc(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final AtomicReference f19049a = new AtomicReference();

    public static zzgdd a() {
        return f19047b;
    }

    public final zzggn b() {
        zzggn zzggnVar = (zzggn) this.f19049a.get();
        return zzggnVar == null ? f19048c : zzggnVar;
    }
}
