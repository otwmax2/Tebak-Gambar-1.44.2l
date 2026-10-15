package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzfql {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Object f18604a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Object f18605b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Object f18606c;

    zzfql(Object obj, Object obj2, Object obj3) {
        this.f18604a = obj;
        this.f18605b = obj2;
        this.f18606c = obj3;
    }

    final IllegalArgumentException a() {
        return new IllegalArgumentException("Multiple entries with same key: " + this.f18604a + "=" + this.f18605b + " and " + this.f18604a + "=" + this.f18606c);
    }
}
