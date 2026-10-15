package com.google.android.gms.measurement.internal;

import com.google.android.gms.common.internal.Preconditions;
import java.util.Map;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement@@20.1.2 */
/* JADX INFO: loaded from: classes2.dex */
final class t implements Runnable {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final s f24281o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final int f24282p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final Throwable f24283q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private final byte[] f24284r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private final String f24285s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private final Map f24286t;

    /* synthetic */ t(String str, s sVar, int i10, Throwable th, byte[] bArr, Map map, zzfb zzfbVar) {
        Preconditions.k(sVar);
        this.f24281o = sVar;
        this.f24282p = i10;
        this.f24283q = th;
        this.f24284r = bArr;
        this.f24285s = str;
        this.f24286t = map;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f24281o.a(this.f24285s, this.f24282p, this.f24283q, this.f24284r, this.f24286t);
    }
}
