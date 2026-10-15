package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzfft {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f18140a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f18141b;

    private zzfft(String str, String str2) {
        this.f18140a = str;
        this.f18141b = str2;
    }

    public static zzfft a(String str, String str2) {
        zzfgr.a(str, "Name is null or empty");
        zzfgr.a(str2, "Version is null or empty");
        return new zzfft(str, str2);
    }

    public final String b() {
        return this.f18140a;
    }

    public final String c() {
        return this.f18141b;
    }
}
