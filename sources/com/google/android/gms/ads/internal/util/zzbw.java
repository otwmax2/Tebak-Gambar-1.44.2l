package com.google.android.gms.ads.internal.util;

import android.graphics.Bitmap;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes.dex */
public final class zzbw {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final Map f6128a = new ConcurrentHashMap();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final AtomicInteger f6129b = new AtomicInteger(0);

    public final Bitmap a(Integer num) {
        return (Bitmap) this.f6128a.get(num);
    }
}
