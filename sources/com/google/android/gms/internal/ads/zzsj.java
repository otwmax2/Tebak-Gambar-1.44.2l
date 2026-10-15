package com.google.android.gms.internal.ads;

import android.net.Uri;
import java.util.Map;
import java.util.concurrent.atomic.AtomicLong;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzsj {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final AtomicLong f20614d = new AtomicLong();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final zzfl f20615a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Uri f20616b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Map f20617c;

    public zzsj(long j10, zzfl zzflVar, Uri uri, Map map, long j11, long j12, long j13) {
        this.f20615a = zzflVar;
        this.f20616b = uri;
        this.f20617c = map;
    }

    public static long a() {
        return f20614d.getAndIncrement();
    }
}
