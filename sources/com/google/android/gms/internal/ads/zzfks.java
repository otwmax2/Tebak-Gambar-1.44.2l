package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzfks {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f18352a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final long f18353b;

    public zzfks() {
        this.f18352a = null;
        this.f18353b = -1L;
    }

    public zzfks(String str, long j10) {
        this.f18352a = str;
        this.f18353b = j10;
    }

    public final long a() {
        return this.f18353b;
    }

    public final String b() {
        return this.f18352a;
    }

    public final boolean c() {
        return this.f18352a != null && this.f18353b >= 0;
    }
}
